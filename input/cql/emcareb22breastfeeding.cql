/*
@author: Patrick Delcroix
@description: This library is part of the project EmCare
*/
library emcareb22breastfeeding version '0.99.99'
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers 
include EmCareBase version '0.99.99' called Base
include EmCareObservation version '0.99.99' called obs
include EmCareValueSet version '0.99.99' called val

context Encounter

define Patient:
    Base.EmCarePatient    

/* ageinmonths : Age*/
define "ageinmonths":
    Base.AgeInMonths

/* alias age : ageinmonths*/
define "age":
    "ageinmonths"
