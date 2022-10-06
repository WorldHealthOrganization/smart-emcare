/*
@author: Patrick Delcroix
@description: This library is part of the project EmCare
*/
library emcarebregistratione version '0.99.99'
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers 
include EmCareBase version '0.99.99' called Base
include EmCareObservation version '0.99.99' called obs
include EmCareValueSet version '0.99.99' called val


context Patient
      

/* EmCare.A.DE07 : Visit date*/
define "EmCare.A.DE07":
    now()

/* Visit date : Visit date*/
define "Visit date":
    now()
