/*
@author: Patrick Delcroix
@description: This library is part of the project EmCare
*/
library emcareb1016signs2mp version '0.99.99'
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers 
include EmCareBase version '0.99.99' called Base
include EmCareObservation version '0.99.99' called obs
include EmCareValueSet version '0.99.99' called val


context Patient
      

/* AgeInMonths : Age*/
define "AgeInMonths":
    AgeInMonths()

/* Age : Age*/
define "Age":
    AgeInMonths()

/* EmCare.B10S1.DE05 : Cough*/
define "EmCare.B10S1.DE05":
    Base.HasObs('EmCare.B10S1.DE05','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* Cough : Cough*/
define "Cough":
    Base.HasObs('EmCare.B10S1.DE05','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* EmCare.B10S1.DE01 : Difficulty Breathing*/
define "EmCare.B10S1.DE01":
    Base.HasObs('EmCare.B10S1.DE01','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* Difficulty Breathing : Difficulty Breathing*/
define "Difficulty Breathing":
    Base.HasObs('EmCare.B10S1.DE01','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* EmCare.B22.DE08 : Oral Fluid Test Results*/
define "EmCare.B22.DE08":
    Base.HasObs('EmCare.B22.DE08','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes') = val."Completely unable to drink" or  Base.HasObs('EmCare.B22.DE08','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes') =  val."Unable to perform test - assumes vomits everything/unable to drink"

/* Oral Fluid Test Results : Oral Fluid Test Results*/
define "Oral Fluid Test Results":
    Base.HasObs('EmCare.B22.DE08','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes') = val."Completely unable to drink" or  Base.HasObs('EmCare.B22.DE08','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes') =  val."Unable to perform test - assumes vomits everything/unable to drink"

/* EmCare.B11S1.DE01 : Diarrhoea*/
define "EmCare.B11S1.DE01":
    Base.HasObs('EmCare.B11S1.DE01','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* Diarrhoea : Diarrhoea*/
define "Diarrhoea":
    Base.HasObs('EmCare.B11S1.DE01','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* EmCare.B7.DE09 : Not able to drink or breastfeed*/
define "EmCare.B7.DE09":
    Base.HasObs('EmCare.B7.DE09','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* Not able to drink or breastfeed : Not able to drink or breastfeed*/
define "Not able to drink or breastfeed":
    Base.HasObs('EmCare.B7.DE09','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* EmCare.B7.DE08 : Unconscious or Lethargic*/
define "EmCare.B7.DE08":
    Exists(Base.HasObs('EmCare.B7.DE08','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes') as FHIR.Coding) and Base.HasObs('EmCare.B7.DE08','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes') != Base."No" or Exists(Base.HasObs('EmCare.B7.DE08a','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes') as FHIR.Coding) and Base.HasObs('EmCare.B7.DE08a','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes') != Base."No"

/* Unconscious or Lethargic : Unconscious or Lethargic*/
define "Unconscious or Lethargic":
    Exists(Base.HasObs('EmCare.B7.DE08','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes') as FHIR.Coding) and Base.HasObs('EmCare.B7.DE08','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes') != Base."No" or Exists(Base.HasObs('EmCare.B7.DE08a','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes') as FHIR.Coding) and Base.HasObs('EmCare.B7.DE08a','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes') != Base."No"

/* EmCare.B12S1.DE02 : Fever*/
define "EmCare.B12S1.DE02":
    Base.HasObs('EmCare.B12S1.DE02','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* Fever : Fever*/
define "Fever":
    Base.HasObs('EmCare.B12S1.DE02','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* EmCare.B12S1.DE07 : Refusal to Use a Limb*/
define "EmCare.B12S1.DE07":
    Base.HasObs('EmCare.B12S1.DE07','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* Refusal to Use a Limb : Refusal to Use a Limb*/
define "Refusal to Use a Limb":
    Base.HasObs('EmCare.B12S1.DE07','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* EmCare.B8-B9.DE03 : Has danger signs*/
define "EmCare.B8-B9.DE03":
    Base.HasObs('EmCare.B8-B9.DE03','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* Has danger signs : Has danger signs*/
define "Has danger signs":
    Base.HasObs('EmCare.B8-B9.DE03','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* EmCare.B13S1.DE01 : Ear problem*/
define "EmCare.B13S1.DE01":
    Base.HasObs('EmCare.B13S1.DE01','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* Ear problem : Ear problem*/
define "Ear problem":
    Base.HasObs('EmCare.B13S1.DE01','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* EmCare.B14S1.DE03 : Eye Problem*/
define "EmCare.B14S1.DE03":
    Base.HasObs('EmCare.B14S1.DE03','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* Eye Problem : Eye Problem*/
define "Eye Problem":
    Base.HasObs('EmCare.B14S1.DE03','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* EmCare.B14S1.DE01 : Skin Problem*/
define "EmCare.B14S1.DE01":
    Base.HasObs('EmCare.B14S1.DE01','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* Skin Problem : Skin Problem*/
define "Skin Problem":
    Base.HasObs('EmCare.B14S1.DE01','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* EmCare.B13S1.DE03 : Ear discharge*/
define "EmCare.B13S1.DE03":
    Base.HasObs('EmCare.B13S1.DE03','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* Ear discharge : Ear discharge*/
define "Ear discharge":
    Base.HasObs('EmCare.B13S1.DE03','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* EmCare.B13S1.DE04 : Ear discharge for how long?*/
define "EmCare.B13S1.DE04":
    Base.HasObs('EmCare.B13S1.DE04','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* Ear discharge for how long? : Ear discharge for how long?*/
define "Ear discharge for how long?":
    Base.HasObs('EmCare.B13S1.DE04','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
