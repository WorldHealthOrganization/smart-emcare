/*
@author: Patrick Delcroix
@description: This library is part of the project EmCare
*/
library emcareb22respiratoryrate version '1.0.1.rc12.build.185'
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers 
include emcarebase version '1.0.1.rc12.build.185' called Base
include emcareobservation version '1.0.1.rc12.build.185' called obs
include emcarevalueset version '1.0.1.rc12.build.185' called val




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

/* 
respiratory rate profile : nan
    o"Respiratory Rate"
*/
define "respiratory rate profile":
    Base.GetObsValue('EmCare.B22.DE01')

/* 
respiratory rate second count profile : nan
    o"Respiratory Rate Second Count"
*/
define "respiratory rate second count profile":
    Base.GetObsValue('EmCare.B22.DE04')

/* 
fast breathing profile : nan
    o"Fast Breathing"
*/
define "fast breathing profile":
    Base.GetObsValue('EmCare.B22.DE07')
