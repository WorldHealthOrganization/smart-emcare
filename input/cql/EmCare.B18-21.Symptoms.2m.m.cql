library emcareb1821symptoms2mm
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers 
include EmCareBase called Base


context Patient


/* EmCare.B7.DE02 : The client is convulsing now*/
define "EmCare.B7.DE02":

    HasObs({c('EmCare.B7.DE02')},'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')