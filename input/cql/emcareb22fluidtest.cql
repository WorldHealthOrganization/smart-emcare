/*
@author: Patrick Delcroix
@description: This library is part of the project EmCare
*/
library emcareb22fluidtest version '1.0.1.rc12.build.457'
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers 
include emcarebase version '1.0.1.rc12.build.457' called Base
include emcareobservation version '1.0.1.rc12.build.457' called obs
include emcarevalueset version '1.0.1.rc12.build.457' called val
include emcarecombineddataelements version '1.0.1.rc12.build.457' called c




context Patient


/* 
none : oftrp
    o"Unable to Perform Oral Fluid Test"
*/
define "none":
    Base.GetObsValue('EmCare.B22.DE14')

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

/* 
none : EmCare.B7.DE09
    Coalesce(o"Not able to drink or breastfeed",false)
*/
define "none":
    Coalesce(Base.GetObsValue('EmCare.B7.DE09'),false)

/* alias not able to drink or breastfeed : emcare.b7.de09*/
define "not able to drink or breastfeed":
    "emcare.b7.de09"

/* 
none : EmCare.B7.DE10
    Coalesce(o"Vomiting Everything",false)
*/
define "none":
    Coalesce(Base.GetObsValue('EmCare.B7.DE10'),false)

/* alias vomiting everything : emcare.b7.de10*/
define "vomiting everything":
    "emcare.b7.de10"
