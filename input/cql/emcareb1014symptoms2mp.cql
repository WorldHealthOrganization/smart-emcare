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
      

/* emcare.b.g.de01 : Danger Signs*/
define "emcare.b.g.de01":
    Base.HasObs('EmCare.B6.DE01','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* danger signs : Danger Signs*/
define "danger signs":
    Base.HasObs('EmCare.B6.DE01','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* emcare.b6.de01 : Axiliary Temperature*/
define "emcare.b6.de01":
    Base.HasObs('EmCare.B6.DE01','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* axiliary temperature : Axiliary Temperature*/
define "axiliary temperature":
    Base.HasObs('EmCare.B6.DE01','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* emcare.b6.de05 : Hot to Touch*/
define "emcare.b6.de05":
    Base.HasObs('EmCare.B6.DE05','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* hot to touch : Hot to Touch*/
define "hot to touch":
    Base.HasObs('EmCare.B6.DE05','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* emcare.b8-b9.de03 : Has danger signs*/
define "emcare.b8-b9.de03":
    Base.HasObs('EmCare.B8-B9.DE03','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* has danger signs : Has danger signs*/
define "has danger signs":
    Base.HasObs('EmCare.B8-B9.DE03','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* ageinmonths : Age*/
define "ageinmonths":
    AgeInMonths()

/* age : Age*/
define "age":
    AgeInMonths()

/* emcare.b14s2.de05 : Generalised or Localised Skin Problem*/
define "emcare.b14s2.de05":
    Base.HasObs('EmCare.B14S2.DE05','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* generalised or localised skin problem : Generalised or Localised Skin Problem*/
define "generalised or localised skin problem":
    Base.HasObs('EmCare.B14S2.DE05','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* emcare.b12s2.de09 : Measles Rash*/
define "emcare.b12s2.de09":
    Base.HasObs('EmCare.B12S2.DE09','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* measles rash : Measles Rash*/
define "measles rash":
    Base.HasObs('EmCare.B12S2.DE09','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
