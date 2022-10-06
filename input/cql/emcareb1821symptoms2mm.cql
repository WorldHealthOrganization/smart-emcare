/*
@author: Patrick Delcroix
@description: This library is part of the project EmCare
*/
library emcareb1821symptoms2mm version '0.99.99'
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers 
include EmCareBase version '0.99.99' called Base
include EmCareObservation version '0.99.99' called obs
include EmCareValueSet version '0.99.99' called val


context Patient
      

/* EmCare.B7.DE02 : Convulsing Now*/
define "EmCare.B7.DE02":
    Base.HasObs('EmCare.B7.DE02','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* Convulsing Now : Convulsing Now*/
define "Convulsing Now":
    Base.HasObs('EmCare.B7.DE02','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
