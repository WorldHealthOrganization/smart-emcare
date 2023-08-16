/*
@author: Patrick Delcroix
@description: This library is part of the project EmCare
*/
library emcareb24de02fluidtest version '1.0.71+build.214'
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers 
include emcarebase version '1.0.71+build.214' called Base
include emcarevalueset version '1.0.71+build.214' called val
include emcareobservation version '1.0.71+build.214' called obs




context Patient


/* 
OBSdefine.EmCare.B7.DE09 : Not able to drink or breastfeed

*/
define "OBSdefine.EmCare.B7.DE09":
    Base.GetObsValue('EmCare.B7.DE09')

/* 
OBSdefine.EmCare.B7.DE10 : Vomiting

*/
define "OBSdefine.EmCare.B7.DE10":
    Base.GetObsValue('EmCare.B7.DE10')

/* 
EmCare.B7.DE09 : 
Coalesce( o"Not able to drink or breastfeed" , false)
*/
define "EmCare.B7.DE09":
    Coalesce( "OBSdefine.EmCare.B7.DE09" , false)

/* 
Not able to drink or breastfeed : EmCare.B7.DE09
Alias
*/
define "Not able to drink or breastfeed":
    "EmCare.B7.DE09"

/* 
EmCare.B7.DE10 : 
o"Vomiting"
*/
define "EmCare.B7.DE10":
    "OBSdefine.EmCare.B7.DE10"

/* 
Vomiting : EmCare.B7.DE10
Alias
*/
define "Vomiting":
    "EmCare.B7.DE10"

/* 
BackReference : 
back reference to resource
*/
define "BackReference":
    Reference {reference: string { value: 'Questionnaire/emcare.b24.de02.fluidtest'}}
