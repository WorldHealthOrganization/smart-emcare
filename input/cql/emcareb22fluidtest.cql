/*
@author: Patrick Delcroix
@description: This library is part of the project EmCare
*/
library emcareb22fluidtest version '0.99.99'
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers 
include EmCareBase version '0.99.99' called Base
include EmCareObservation version '0.99.99' called obs
include EmCareValueSet version '0.99.99' called val


context Patient
      

/* EmCare.B8-B9.DE03 : Has danger signs*/
define "EmCare.B8-B9.DE03":
    Base.HasObs('EmCare.B8-B9.DE03','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* Has danger signs : Has danger signs*/
define "Has danger signs":
    Base.HasObs('EmCare.B8-B9.DE03','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
