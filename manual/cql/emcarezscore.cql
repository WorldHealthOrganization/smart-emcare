/*
@author: Patrick Delcroix
@description: This library is part of the project EmCare
*/
library emcarezscore version '{{LIB_VERSION}}'
using FHIR version '{{FHIR_VERSION}}'
include FHIRHelpers version '{{FHIR_VERSION}}' called FHIRHelpers 
include emcarebase version '{{LIB_VERSION}}' called Base
include WeightForAge version '1.0.0' called weianthro


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
      (difference in days between Patient.birthDate and ToDate(Last([Observation:"Weight code" ] O where  O.status in { 'final', 'amended', 'corrected'}).issued) ) * ( 1.0 as System.Decimal )
    else
     null

/* pastweightzscore : Z-Score at Previous Weight*/
define "pastweightzscore":
    if "pastweight" is not null  then
      weianthro.generateZScoreWeightForAge("patientsex", "ageatpastweight" , ((convert "pastweight" to 'kg').value * ( 1.0 as System.Decimal)))
    else
      null



/* pastweightactualised : Weight from  at Previous Weight*/
define "pastweightactualised":
    if "pastweightzscore" is not null then
      weianthro.generateWeightFromAge("patientsex",AgeInDays() * ( 1.0 as System.Decimal ), "pastweightzscore")
    else
      null



/*
(convert Base.HasObs("Weight code") to 'Kg') does not work, so let's assume the weight is in Kg
*/
define "WAZ":
    if Base.HasObs("Weight code") is null   then 
        "pastweightzscore"
    else if Base.HasObs("Weight code") is not null then
         weianthro.generateZScoreWeightForAge("patientsex", "ageatpastweight" , ( Base.HasObs("Weight code").value * ( 1.0 as System.Decimal )))
    else
        null

