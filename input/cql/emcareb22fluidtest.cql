/*
@author: Patrick Delcroix
@description: This library is part of the project EmCare
*/
library emcareb22fluidtest version '1.0.1.rc11.build.71'
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers 
include emcarebase version '1.0.1.rc11.build.71' called Base
include emcareobservation version '1.0.1.rc11.build.71' called obs
include emcarevalueset version '1.0.1.rc11.build.71' called val
include emcarecombineddataelements version '1.0.1.rc11.build.71' called c




context Patient


/* 
danger signs : nan
    Coalesce(c."emcare.b.g.de01", false)
*/
define "danger signs":
    Coalesce(c."emcare.b.g.de01", false)

/* 
emcare.b7.de09 : Not able to drink or breastfeed
    Coalesce(o"Not able to drink or breastfeed",false)
*/
define "emcare.b7.de09":
    Coalesce(Base.GetObsValue('EmCare.B7.DE09'),false)

/* alias not able to drink or breastfeed : emcare.b7.de09*/
define "not able to drink or breastfeed":
    "emcare.b7.de09"

/* 
emcare.b7.de10 : Vomiting Everything
    Coalesce(o"Vomiting Everything",false)
*/
define "emcare.b7.de10":
    Coalesce(Base.GetObsValue('EmCare.B7.DE10'),false)

/* alias vomiting everything : emcare.b7.de10*/
define "vomiting everything":
    "emcare.b7.de10"
