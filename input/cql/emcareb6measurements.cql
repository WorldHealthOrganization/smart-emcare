/*
@author: Patrick Delcroix
@description: This library is part of the project EmCare
*/
library emcareb6measurements version '0.99.99'
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers 
include EmCareBase version '0.99.99' called Base
include EmCareObservation version '0.99.99' called obs
include EmCareValueSet version '0.99.99' called val
include WeightForAge version '0.99.99' called weianthro


context Patient
      

/* ageindays.cql : Age in Days*/
define "ageindays.cql":
    AgeInDays()

/* age in days : Age in Days*/
define "age in days":
    AgeInDays()

/* pastweight : Previous Weight*/
define "pastweight":
    if AgeInMonths()< 4 and Base.HasObsHistory('EmCare.B6.DE06','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes', 63) as FHIR.Quantity is not null then
      Base.HasObsHistory('EmCare.B6.DE06','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes', 63)  as FHIR.Quantity
    else  if AgeInMonths()< 6 and Base.HasObsHistory('EmCare.B6.DE06','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes', 94) as FHIR.Quantity  is not null then
      Base.HasObsHistory('EmCare.B6.DE06','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes', 94)  as  FHIR.Quantity
    else if AgeInMonths()< 6 and Base.HasObsHistory('EmCare.B6.DE06','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes', 126) as FHIR.Quantity  is not null then
       Base.HasObsHistory('EmCare.B6.DE06','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes', 126)  as FHIR.Quantity
    else if Base.HasObsHistory('EmCare.B6.DE06','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes', 201) as FHIR.Quantity  is not null then
       Base.HasObsHistory('EmCare.B6.DE06','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes', 201)  as FHIR.Quantity
    else
      null

/* previous weight : Previous Weight*/
define "previous weight":
    if AgeInMonths()< 4 and Base.HasObsHistory('EmCare.B6.DE06','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes', 63) as FHIR.Quantity is not null then
      Base.HasObsHistory('EmCare.B6.DE06','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes', 63)  as FHIR.Quantity
    else  if AgeInMonths()< 6 and Base.HasObsHistory('EmCare.B6.DE06','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes', 94) as FHIR.Quantity  is not null then
      Base.HasObsHistory('EmCare.B6.DE06','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes', 94)  as  FHIR.Quantity
    else if AgeInMonths()< 6 and Base.HasObsHistory('EmCare.B6.DE06','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes', 126) as FHIR.Quantity  is not null then
       Base.HasObsHistory('EmCare.B6.DE06','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes', 126)  as FHIR.Quantity
    else if Base.HasObsHistory('EmCare.B6.DE06','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes', 201) as FHIR.Quantity  is not null then
       Base.HasObsHistory('EmCare.B6.DE06','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes', 201)  as FHIR.Quantity
    else
      null

/* patientsex : Patient sex*/
define "patientsex":
    if Patient.gender = 'female' then 'female' else 'male'

/* patient sex : Patient sex*/
define "patient sex":
    if Patient.gender = 'female' then 'female' else 'male'

/* ageatpastweight : Age at Previous Weight*/
define "ageatpastweight":
    if "pastweight" >0  then
      (difference in days between ToDate(Last([Observation ] O where  O.status in { 'final', 'amended', 'corrected'} and  exists(O.code.coding C where C.code = 'EmCare.B6.DE06'  and C.system = FHIR.uri {value : 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes'})).issued) and Patient.birthDate) * ( 1.0 as System.Decimal )
    else
     null

/* age at previous weight : Age at Previous Weight*/
define "age at previous weight":
    if "pastweight" >0  then
      (difference in days between ToDate(Last([Observation ] O where  O.status in { 'final', 'amended', 'corrected'} and  exists(O.code.coding C where C.code = 'EmCare.B6.DE06'  and C.system = FHIR.uri {value : 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes'})).issued) and Patient.birthDate) * ( 1.0 as System.Decimal )
    else
     null

/* pastweightzscore : Z-Score at Previous Weight*/
define "pastweightzscore":
    if "pastweight" >0   then
      weianthro.generateZScoreWeightForAge("patientsex", "ageatpastweight" , ("pastweight".value * ( 1.0 as System.Decimal )))
    else
      null

/* z-score at previous weight : Z-Score at Previous Weight*/
define "z-score at previous weight":
    if "pastweight" >0   then
      weianthro.generateZScoreWeightForAge("patientsex", "ageatpastweight" , ("pastweight".value * ( 1.0 as System.Decimal )))
    else
      null

/* pastweightactualised : Weight from  at Previous Weight*/
define "pastweightactualised":
    if "pastweight">0 then
      weianthro.generateWeightFromAge("patientsex",AgeInDays() * ( 1.0 as System.Decimal ), "pastweightzscore")
    else
      null

/* weight from  at previous weight : Weight from  at Previous Weight*/
define "weight from  at previous weight":
    if "pastweight">0 then
      weianthro.generateWeightFromAge("patientsex",AgeInDays() * ( 1.0 as System.Decimal ), "pastweightzscore")
    else
      null

/* ageinmonth.cql : Age in months*/
define "ageinmonth.cql":
    AgeInMonths()

/* age in months : Age in months*/
define "age in months":
    AgeInMonths()

/* ageinyears.cql : Age in years*/
define "ageinyears.cql":
    AgeInYears()

/* age in years : Age in years*/
define "age in years":
    AgeInYears()
