/*
@author: Patrick Delcroix
@description: This library is part of the project EmCare
*/
library emcareb1014symptoms2mp version '1.0.1.rc12.build.457'
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers 
include emcarebase version '1.0.1.rc12.build.457' called Base
include emcareobservation version '1.0.1.rc12.build.457' called obs
include emcarevalueset version '1.0.1.rc12.build.457' called val
include emcarecombineddataelements version '1.0.1.rc12.build.457' called c




context Patient


/* 
none : Danger Signs
    c."emcare.b.g.de01"
*/
define "none":
    c."emcare.b.g.de01"

/* 
none : EmCare.B12S1.DE01
    c."fever"
*/
define "none":
    c."fever"

/* 
none : AgeInMonths
    AgeInMonths()
*/
define "none":
    AgeInMonths()

/* alias age : ageinmonths*/
define "age":
    "ageinmonths"
