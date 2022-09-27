library emcarebregistratione version '4.0.1'
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers 


context Patient


/* EmCare.A.DE07 : The date and time of the client's visit*/
define "EmCare.A.DE07":
    now()
