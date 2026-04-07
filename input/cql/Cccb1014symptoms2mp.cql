/*
@author: Patrick Delcroix
@description: This library is part of the project Ccc
*/
library Cccb1014symptoms2mp version '1.0.1.rc12.build.457'
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers 
include Cccbase version '1.0.1.rc12.build.457' called Base
include Cccobservation version '1.0.1.rc12.build.457' called obs
include Cccvalueset version '1.0.1.rc12.build.457' called val
include Ccccombineddataelements version '1.0.1.rc12.build.457' called c




context Patient


/* 
none : Danger Signs
    c."Ccc.b.g.de01"
*/
define "none":
    c."Ccc.b.g.de01"

/* 
none : Ccc.B12S1.DE01
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
