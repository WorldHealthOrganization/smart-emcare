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
include weianthro version '0.99.99' called weianthro


context Patient
      

/* AgeInDays.cql : Age in Days*/
define "AgeInDays.cql":
    AgeInDays()

/* Age in Days : Age in Days*/
define "Age in Days":
    AgeInDays()

/* pastWeight : Previous Weight*/
define "pastWeight":
    if AgeInMonths()< 4 and Exists(Base.HasObsHistory('EmCare.B6.DE06','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes', 63) as FHIR.Quantity) then
      Base.HasObsHistory('EmCare.B6.DE06','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes', 63)  as FHIR.Quantity
    else  if AgeInMonths()< 6 and Exists(Base.HasObsHistory('EmCare.B6.DE06','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes', 94) as FHIR.Quantity) then
      Base.HasObsHistory('EmCare.B6.DE06','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes', 94)  as  FHIR.Quantity
    else if AgeInMonths()< 6 and Exists(Base.HasObsHistory('EmCare.B6.DE06','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes', 126) as FHIR.Quantity) then
       Base.HasObsHistory('EmCare.B6.DE06','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes', 126)  as FHIR.Quantity
    else if Exists(Base.HasObsHistory('EmCare.B6.DE06','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes', 201) as FHIR.Quantity) then
       Base.HasObsHistory('EmCare.B6.DE06','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes', 201)  as FHIR.Quantity
    else
      null

/* Previous Weight : Previous Weight*/
define "Previous Weight":
    if AgeInMonths()< 4 and Exists(Base.HasObsHistory('EmCare.B6.DE06','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes', 63) as FHIR.Quantity) then
      Base.HasObsHistory('EmCare.B6.DE06','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes', 63)  as FHIR.Quantity
    else  if AgeInMonths()< 6 and Exists(Base.HasObsHistory('EmCare.B6.DE06','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes', 94) as FHIR.Quantity) then
      Base.HasObsHistory('EmCare.B6.DE06','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes', 94)  as  FHIR.Quantity
    else if AgeInMonths()< 6 and Exists(Base.HasObsHistory('EmCare.B6.DE06','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes', 126) as FHIR.Quantity) then
       Base.HasObsHistory('EmCare.B6.DE06','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes', 126)  as FHIR.Quantity
    else if Exists(Base.HasObsHistory('EmCare.B6.DE06','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes', 201) as FHIR.Quantity) then
       Base.HasObsHistory('EmCare.B6.DE06','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes', 201)  as FHIR.Quantity
    else
      null

/* PatientSex : Patient sex*/
define "PatientSex":
    if Patient.gender = 'female' then 'female' else 'male'

/* Patient sex : Patient sex*/
define "Patient sex":
    if Patient.gender = 'female' then 'female' else 'male'

/* AgeAtPastWeight : Age at Previous Weight*/
define "AgeAtPastWeight":
    if "pastWeight" >0  then
      difference in days between ToDate(Last([Observation ] O where  O.status in { 'final', 'amended', 'corrected'} and  exists(O.code.coding C where C.code = 'EmCare.B6.DE06'  and C.system = FHIR.uri {value : 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes'})).issued) and Patient.birthDate
    else
     null

/* Age at Previous Weight : Age at Previous Weight*/
define "Age at Previous Weight":
    if "pastWeight" >0  then
      difference in days between ToDate(Last([Observation ] O where  O.status in { 'final', 'amended', 'corrected'} and  exists(O.code.coding C where C.code = 'EmCare.B6.DE06'  and C.system = FHIR.uri {value : 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes'})).issued) and Patient.birthDate
    else
     null

/* pastWeightZscore : Z-Score at Previous Weight*/
define "pastWeightZscore":
    if "pastWeight" >0   then
      weianthro.generateZScoreWeightForAge("PatientSex", "AgeAtPastWeight", ("pastWeight".value * ( 1.0 as System.Decimal )))
    else
      null

/* Z-Score at Previous Weight : Z-Score at Previous Weight*/
define "Z-Score at Previous Weight":
    if "pastWeight" >0   then
      weianthro.generateZScoreWeightForAge("PatientSex", "AgeAtPastWeight", ("pastWeight".value * ( 1.0 as System.Decimal )))
    else
      null

/* pastWeightActualised : Weight from  at Previous Weight*/
define "pastWeightActualised":
    if "pastWeight">0 then
      weianthro.generateWeightFromAge("PatientSex",AgeInDays(), "pastWeightZscore")
    else
      null

/* Weight from  at Previous Weight : Weight from  at Previous Weight*/
define "Weight from  at Previous Weight":
    if "pastWeight">0 then
      weianthro.generateWeightFromAge("PatientSex",AgeInDays(), "pastWeightZscore")
    else
      null

/* AgeInMonth.cql : Age in months*/
define "AgeInMonth.cql":
    AgeInMonths()

/* Age in months : Age in months*/
define "Age in months":
    AgeInMonths()

/* AgeInYears.cql : Age in years*/
define "AgeInYears.cql":
    AgeInYears()

/* Age in years : Age in years*/
define "Age in years":
    AgeInYears()
