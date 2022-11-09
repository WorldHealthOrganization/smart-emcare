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
include emcareb23classification version '0.99.99' called clas


context Patient
      

/* emcare.b.g.de01 : Danger Signs*/
define "emcare.b.g.de01":
    clas."emcare.b.g.de01"

/* danger signs : Danger Signs*/
define "danger signs":
    clas."emcare.b.g.de01"

/* emcare.b6.de01 : Axiliary Temperature*/
define "emcare.b6.de01":
    Base.GetObsValue('EmCare.B6.DE01','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* axiliary temperature : Axiliary Temperature*/
define "axiliary temperature":
    Base.GetObsValue('EmCare.B6.DE01','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* emcare.b6.de05 : Hot to Touch*/
define "emcare.b6.de05":
    Base.GetObsValue('EmCare.B6.DE05','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* hot to touch : Hot to Touch*/
define "hot to touch":
    Base.GetObsValue('EmCare.B6.DE05','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* ageinmonths : Age*/
define "ageinmonths":
    AgeInMonths()

/* age : Age*/
define "age":
    AgeInMonths()
