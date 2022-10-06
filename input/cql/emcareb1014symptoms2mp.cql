/*
@author: Patrick Delcroix
@description: This library is part of the project EmCare
*/
library emcareb1014symptoms2mp version '0.99.99'
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers 
include EmCareBase version '0.99.99' called Base
include EmCareObservation version '0.99.99' called obs
include EmCareValueSet version '0.99.99' called val


context Patient
      

/* EmCare.B.G.DE01 : Danger Signs*/
define "EmCare.B.G.DE01":
    Base.HasObs('EmCare.B6.DE01','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* Danger Signs : Danger Signs*/
define "Danger Signs":
    Base.HasObs('EmCare.B6.DE01','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* EmCare.B6.DE01 : Axiliary Temperature*/
define "EmCare.B6.DE01":
    Base.HasObs('EmCare.B6.DE01','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* Axiliary Temperature : Axiliary Temperature*/
define "Axiliary Temperature":
    Base.HasObs('EmCare.B6.DE01','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* EmCare.B6.DE05 : Hot to Touch*/
define "EmCare.B6.DE05":
    Base.HasObs('EmCare.B6.DE05','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* Hot to Touch : Hot to Touch*/
define "Hot to Touch":
    Base.HasObs('EmCare.B6.DE05','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* EmCare.B8-B9.DE03 : Has danger signs*/
define "EmCare.B8-B9.DE03":
    Base.HasObs('EmCare.B8-B9.DE03','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* Has danger signs : Has danger signs*/
define "Has danger signs":
    Base.HasObs('EmCare.B8-B9.DE03','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* AgeInMonths : Age*/
define "AgeInMonths":
    AgeInMonths()

/* Age : Age*/
define "Age":
    AgeInMonths()

/* EmCare.B14S2.DE05 : Generalised or Localised Skin Problem*/
define "EmCare.B14S2.DE05":
    Base.HasObs('EmCare.B14S2.DE05','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* Generalised or Localised Skin Problem : Generalised or Localised Skin Problem*/
define "Generalised or Localised Skin Problem":
    Base.HasObs('EmCare.B14S2.DE05','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* EmCare.B12S2.DE09 : Measles Rash*/
define "EmCare.B12S2.DE09":
    Base.HasObs('EmCare.B12S2.DE09','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* Measles Rash : Measles Rash*/
define "Measles Rash":
    Base.HasObs('EmCare.B12S2.DE09','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
