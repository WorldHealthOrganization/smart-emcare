/*
@author: Patrick Delcroix
@description: This library is part of the project EmCare
*/
library EmCareZScore version '0.99.99'
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers 
include EmCareBase version '0.99.99' called Base
include WeightForAge version '0.99.99' called weianthro


parameter "encounterid" String

context Patient

define "Weight code":
  Base.coding('EmCare.B6.DE06')

/* pastweight : Previous Weight*/
define "pastweight":
    if AgeInMonths()< 4 and Base.HasObsHistory("Weight code", 63) is not null then
      Base.HasObsHistory("Weight code", 63)  as FHIR.Quantity
    else  if AgeInMonths()< 6 and Base.HasObsHistory("Weight code", 94)   is not null then
      Base.HasObsHistory("Weight code", 94)  as  FHIR.Quantity
    else if AgeInMonths()< 6 and Base.HasObsHistory("Weight code", 126)   is not null then
       Base.HasObsHistory("Weight code", 126)  as FHIR.Quantity
    else if Base.HasObsHistory("Weight code", 201)  is not null then
       Base.HasObsHistory("Weight code", 201)  as FHIR.Quantity
    else
      null


/* patientsex : Patient sex*/
define "patientsex":
    if Patient.gender = 'female' then 'female' else 'male'

/* ageatpastweight : Age at Previous Weight*/
define "ageatpastweight":
    if "pastweight" is not null  then
      (difference in days between ToDate(Last([Observation:"Weight code" ] O where  O.status in { 'final', 'amended', 'corrected'}).issued) and Patient.birthDate) * ( 1.0 as System.Decimal )
    else
     null

/* pastweightzscore : Z-Score at Previous Weight*/
define "pastweightzscore":
    if "pastweight" is not null  then
      weianthro.generateZScoreWeightForAge("patientsex", "ageatpastweight" , ((convert "pastweight" to 'kg').value * ( 1.0 as System.Decimal)))
    else
      null

/* z-score at previous weight : Z-Score at Previous Weight*/
define "z-score at previous weight":
    if "pastweight" is not null  then
      weianthro.generateZScoreWeightForAge("patientsex", "ageatpastweight" , ((convert "pastweight" to 'kg').value * ( 1.0 as System.Decimal )))
    else
      null

/* pastweightactualised : Weight from  at Previous Weight*/
define "pastweightactualised":
    if "pastweight" is not null then
      weianthro.generateWeightFromAge("patientsex",AgeInDays() * ( 1.0 as System.Decimal ), "pastweightzscore")
    else
      null

/* weight from  at previous weight : Weight from  at Previous Weight*/
define "weight from  at previous weight":
    if "pastweight">0 then
      weianthro.generateWeightFromAge("patientsex",AgeInDays() * ( 1.0 as System.Decimal ), "pastweightzscore")
    else
      null


/*
(convert Base.HasObs("Weight code") to 'Kg') does not work, so let's assume the weight is in Kg
*/
define "WAZ":
    if Base.HasObs("Weight code") is null   then 
        "z-score at previous weight"
    else if Base.HasObs("Weight code") is not null then
         weianthro.generateZScoreWeightForAge("patientsex", "ageatpastweight" , ( Base.HasObs("Weight code").value * ( 1.0 as System.Decimal )))
    else
        null

