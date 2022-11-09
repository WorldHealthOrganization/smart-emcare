/*
@author: Patrick Delcroix
@description: This library is part of the project EmCare
*/
library EmCareZScore version '0.99.99'
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers 
include EmCareBase version '0.99.99' called Base
include WeightForAge version '0.99.99' called weianthro



context Encounter
context Patient
      
define "Weight code":
    Base.c('EmCare.B6.DE06')

/* pastweight : Previous Weight*/
define "pastweight":
    if AgeInMonths()< 4 and Base.HasObsHistory("Weight code",'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes', 63) as FHIR.Quantity is not null then
      Base.HasObsHistory("Weight code",'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes', 63)  as FHIR.Quantity
    else  if AgeInMonths()< 6 and Base.HasObsHistory("Weight code",'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes', 94) as FHIR.Quantity  is not null then
      Base.HasObsHistory("Weight code",'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes', 94)  as  FHIR.Quantity
    else if AgeInMonths()< 6 and Base.HasObsHistory("Weight code",'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes', 126) as FHIR.Quantity  is not null then
       Base.HasObsHistory("Weight code",'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes', 126)  as FHIR.Quantity
    else if Base.HasObsHistory("Weight code",'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes', 201) as FHIR.Quantity  is not null then
       Base.HasObsHistory("Weight code",'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes', 201)  as FHIR.Quantity
    else
      null


/* patientsex : Patient sex*/
define "patientsex":
    if Patient.gender = 'female' then 'female' else 'male'

/* ageatpastweight : Age at Previous Weight*/
define "ageatpastweight":
    if "pastweight" is not null  then
      (difference in days between ToDate(Last([Observation ] O where  O.status in { 'final', 'amended', 'corrected'} and  exists(O.code.coding C where C.code = "Weight code"  and C.system = FHIR.uri {value : 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes'})).issued) and Patient.birthDate) * ( 1.0 as System.Decimal )
    else
     null

/* pastweightzscore : Z-Score at Previous Weight*/
define "pastweightzscore":
    if "pastweight" is not null  then
      weianthro.generateZScoreWeightForAge("patientsex", "ageatpastweight" , ((convert "pastweight" to 'Kg').value * ( 1.0 as System.Decimal)))
    else
      null

/* z-score at previous weight : Z-Score at Previous Weight*/
define "z-score at previous weight":
    if "pastweight" is not null  then
      weianthro.generateZScoreWeightForAge("patientsex", "ageatpastweight" , ((convert "pastweight" to 'Kg').value * ( 1.0 as System.Decimal )))
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

define "WAZ":
    if Base.HasObs("Weight code",'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes') = Base."No"   then 
        "z-score at previous weight"
    else if Base.HasObs("Weight code",'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes') is not null then
         weianthro.generateZScoreWeightForAge("patientsex", "ageatpastweight" , ((convert Base.HasObs("Weight code",'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes') to 'Kg').value * ( 1.0 as System.Decimal )))
    else
        null

