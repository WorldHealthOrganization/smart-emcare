/*
@author: Patrick Delcroix
@description: This library is part of the project EmCare
*/
library emcareb22secondtemperature version '1.0.1.rc12.build.158'
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers 
include emcarebase version '1.0.1.rc12.build.158' called Base
include emcareobservation version '1.0.1.rc12.build.158' called obs
include emcarevalueset version '1.0.1.rc12.build.158' called val




context Patient


/* 
ageinmonths : Age
    AgeInMonths()
*/
define "ageinmonths":
    AgeInMonths()

/* alias age : ageinmonths*/
define "age":
    "ageinmonths"
