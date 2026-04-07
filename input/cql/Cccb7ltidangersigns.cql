/*
@author: Patrick Delcroix
@description: This library is part of the project Ccc
*/
library Cccb7ltidangersigns version '1.0.1.rc12.build.457'
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers 
include Cccbase version '1.0.1.rc12.build.457' called Base
include Cccobservation version '1.0.1.rc12.build.457' called obs
include Cccvalueset version '1.0.1.rc12.build.457' called val
include Ccccombineddataelements version '1.0.1.rc12.build.457' called c




context Patient


/* 
none : AgeInMonth.cql
    AgeInMonths()
*/
define "none":
    AgeInMonths()

/* 
none : oftrp
    o"Unable to Perform Oral Fluid Test"
*/
define "none":
    Base.GetObsValue('Ccc.B22.DE14')

/* alias unable to perform oral fluid test profile : oftrp*/
define "unable to perform oral fluid test profile":
    "oftrp"

/* 
none : DS
    Coalesce(c."danger signs",false)
*/
define "none":
    Coalesce(c."danger signs",false)

/* alias danger signs : ds*/
define "danger signs":
    "ds"
