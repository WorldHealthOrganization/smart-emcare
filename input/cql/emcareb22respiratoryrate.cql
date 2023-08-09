/*
@author: Patrick Delcroix
@description: This library is part of the project EmCare
*/
library emcareb22respiratoryrate version '1.0.1.rc12.build.457'
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers 
include emcarebase version '1.0.1.rc12.build.457' called Base
include emcareobservation version '1.0.1.rc12.build.457' called obs
include emcarevalueset version '1.0.1.rc12.build.457' called val




context Patient


/* 
none : AgeInMonths
    AgeInMonths()
*/
define "none":
    AgeInMonths()

/* alias age : ageinmonths*/
define "age":
    "ageinmonths"

/* 
none : Respiratory Rate profile
    o"Respiratory Rate (breaths per minute)"
*/
define "none":
    Base.GetObsValue('EmCare.B22.DE01')

/* 
none : force-collection
    false
*/
define "none":
    false

/* 
none : Respiratory Rate Second Count Profile
    o"Respiratory Rate Second Count (breaths per minute)"
*/
define "none":
    Base.GetObsValue('EmCare.B22.DE04')

/* 
none : Fast Breathing profile
    o"Fast Breathing"
*/
define "none":
    Base.GetObsValue('EmCare.B22.DE07')
