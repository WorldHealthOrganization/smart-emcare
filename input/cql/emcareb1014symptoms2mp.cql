/*
@author: Patrick Delcroix
@description: This library is part of the project EmCare
*/
library emcareb1014symptoms2mp version '1.0.1.rc12.build.176'
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers 
include emcarebase version '1.0.1.rc12.build.176' called Base
include emcareobservation version '1.0.1.rc12.build.176' called obs
include emcarevalueset version '1.0.1.rc12.build.176' called val
include emcarecombineddataelements version '1.0.1.rc12.build.176' called c




context Patient


/* 
danger signs : nan
    c."emcare.b.g.de01"
*/
define "danger signs":
    c."emcare.b.g.de01"

/* 
emcare.b12s1.de01 : nan
    c."fever"
*/
define "emcare.b12s1.de01":
    c."fever"

/* 
ageinmonths : Age
    AgeInMonths()
*/
define "ageinmonths":
    AgeInMonths()

/* alias age : ageinmonths*/
define "age":
    "ageinmonths"
