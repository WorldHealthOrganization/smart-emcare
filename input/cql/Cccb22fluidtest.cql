/*
@author: Patrick Delcroix
@description: This library is part of the project Ccc
*/
library Cccb22fluidtest version '1.0.1.rc12.build.457'
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers 
include Cccbase version '1.0.1.rc12.build.457' called Base
include Cccobservation version '1.0.1.rc12.build.457' called obs
include Cccvalueset version '1.0.1.rc12.build.457' called val
include Ccccombineddataelements version '1.0.1.rc12.build.457' called c




context Patient


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

/* 
none : Ccc.B7.DE09
    Coalesce(o"Not able to drink or breastfeed",false)
*/
define "none":
    Coalesce(Base.GetObsValue('Ccc.B7.DE09'),false)

/* alias not able to drink or breastfeed : Ccc.b7.de09*/
define "not able to drink or breastfeed":
    "Ccc.b7.de09"

/* 
none : Ccc.B7.DE10
    Coalesce(o"Vomiting Everything",false)
*/
define "none":
    Coalesce(Base.GetObsValue('Ccc.B7.DE10'),false)

/* alias vomiting everything : Ccc.b7.de10*/
define "vomiting everything":
    "Ccc.b7.de10"
