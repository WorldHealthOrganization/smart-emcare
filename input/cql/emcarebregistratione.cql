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
      

/* emcare.a.de07 : Visit date*/
define "emcare.a.de07":
    today()

/* visit date : Visit date*/
define "visit date":
    today()
