/*
@author: Patrick Delcroix
@description: This library is part of the project EmCare
*/
library emcareb22respiratoryrate version '0.99.99'
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers 
include EmCareBase version '0.99.99' called Base
include EmCareObservation version '0.99.99' called obs
include EmCareValueSet version '0.99.99' called val


parameter "encounter"  Encounter


context Patient    

/* ageinmonths : Age*/
define "ageinmonths":
    AgeInMonths()

/* alias age : ageinmonths*/
define "age":
    "ageinmonths"
