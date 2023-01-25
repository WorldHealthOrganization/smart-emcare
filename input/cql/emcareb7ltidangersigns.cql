/*
@author: Patrick Delcroix
@description: This library is part of the project EmCare
*/
library emcareb7ltidangersigns version '1.0.1.rc11.build.71'
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers 
include emcarebase version '1.0.1.rc11.build.71' called Base
include emcareobservation version '1.0.1.rc11.build.71' called obs
include emcarevalueset version '1.0.1.rc11.build.71' called val
include emcarecombineddataelements version '1.0.1.rc11.build.71' called c




context Patient


/* 
ageinmonth.cql : nan
    AgeInMonths()
*/
define "ageinmonth.cql":
    AgeInMonths()

/* 
danger signs : nan
    Coalesce(c."emcare.b.g.de01", false)
*/
define "danger signs":
    Coalesce(c."emcare.b.g.de01", false)
