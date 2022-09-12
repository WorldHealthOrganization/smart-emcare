library emcarearegistrationp
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers 


context Patient


/* 9 : The date and time of the client's visit*/
define "9":
    now()
