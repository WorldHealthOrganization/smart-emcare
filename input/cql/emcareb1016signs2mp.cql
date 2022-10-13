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

/* Cough : nan*/
define "Cough":
    Base.HasObs('EmCare.B10S1.DE05','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* Difficulty Breathing : nan*/
define "Difficulty Breathing":
    Base.HasObs('EmCare.B10S1.DE01','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* Oral Fluid Test Results : nan*/
define "Oral Fluid Test Results":
    Base.HasObs('EmCare.B22.DE08','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes') = val."Completely unable to drink" or  Base.HasObs('EmCare.B22.DE08','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes') =  val."Unable to perform test - assumes vomits everything/unable to drink"

/* Diarrhoea : nan*/
define "Diarrhoea":
    Base.HasObs('EmCare.B11S1.DE01','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* Not able to drink or breastfeed : nan*/
define "Not able to drink or breastfeed":
    Base.HasObs('EmCare.B7.DE09','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* Unconscious or Lethargic : nan*/
define "Unconscious or Lethargic":
    Base.HasObs('EmCare.B7.DE08','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes') is not null and Base.HasObs('EmCare.B7.DE08','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes') != Base."No" or Base.HasObs('EmCare.B7.DE08a','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes') is not null and Base.HasObs('EmCare.B7.DE08a','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes') != Base."No"

/* Fever : nan*/
define "Fever":
    Base.HasObs('EmCare.B12S1.DE02','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* Refusal to Use a Limb : nan*/
define "Refusal to Use a Limb":
    Base.HasObs('EmCare.B12S1.DE07','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* Has danger signs : nan*/
define "Has danger signs":
    Base.HasObs('EmCare.B8-B9.DE03','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* Ear problem : nan*/
define "Ear problem":
    Base.HasObs('EmCare.B13S1.DE01','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* Eye Problem : nan*/
define "Eye Problem":
    Base.HasObs('EmCare.B14S1.DE03','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* Skin Problem : nan*/
define "Skin Problem":
    Base.HasObs('EmCare.B14S1.DE01','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* Ear discharge : nan*/
define "Ear discharge":
    Base.HasObs('EmCare.B13S1.DE03','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* Ear discharge for how long? : nan*/
define "Ear discharge for how long?":
    Base.HasObs('EmCare.B13S1.DE04','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* Itchy Skin : nan*/
define "Itchy Skin":
    Base.HasObs('EmCare.B14S1.DE02','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
