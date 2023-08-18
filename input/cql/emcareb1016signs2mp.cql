/*
@author: Patrick Delcroix
@description: This library is part of the project EmCare
*/
library emcareb1016signs2mp version '1.0.111+build.254'
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers 
include emcarebase version '1.0.111+build.254' called Base
include emcarevalueset version '1.0.111+build.254' called val
include b24combineddataelement version '1.0.111+build.254' called C
include emcareobservation version '1.0.111+build.254' called obs




context Patient


/* 
OBSdefine.EmCare.B10S1.DE05 : Cough

*/
define "OBSdefine.EmCare.B10S1.DE05":
    Base.GetObsValue('EmCare.B10S1.DE05')

/* 
OBSdefine.EmCare.B10S1.DE01 : Difficulty Breathing

*/
define "OBSdefine.EmCare.B10S1.DE01":
    Base.GetObsValue('EmCare.B10S1.DE01')

/* 
OBSdefine.EmCare.B11S1.DE01 : Diarrhoea

*/
define "OBSdefine.EmCare.B11S1.DE01":
    Base.GetObsValue('EmCare.B11S1.DE01')

/* 
OBSdefine.EmCare.B13S1.DE01 : Ear Problem

*/
define "OBSdefine.EmCare.B13S1.DE01":
    Base.GetObsValue('EmCare.B13S1.DE01')

/* 
OBSdefine.EmCare.B13S1.DE03 : Ear discharge

*/
define "OBSdefine.EmCare.B13S1.DE03":
    Base.GetObsValue('EmCare.B13S1.DE03')

/* 
OBSdefine.EmCare.B14S1.DE02 : Skin Problem

*/
define "OBSdefine.EmCare.B14S1.DE02":
    Base.GetObsValue('EmCare.B14S1.DE02')

/* 
Cough : 
o"Cough"
*/
define "Cough":
    "OBSdefine.EmCare.B10S1.DE05"

/* 
Difficulty Breathing : 
o"Difficulty Breathing"
*/
define "Difficulty Breathing":
    "OBSdefine.EmCare.B10S1.DE01"

/* 
Danger Signs : 
C."Danger Signs"
*/
define "Danger Signs":
    C."Danger Signs"

/* 
Fever : 
C."Fever"
*/
define "Fever":
    C."Fever"

/* 
Diarrhoea : 
o"Diarrhoea"
*/
define "Diarrhoea":
    "OBSdefine.EmCare.B11S1.DE01"

/* 
Ear Problem : 
o"Ear Problem"
*/
define "Ear Problem":
    "OBSdefine.EmCare.B13S1.DE01"

/* 
Ear discharge : 
o"Ear discharge"
*/
define "Ear discharge":
    "OBSdefine.EmCare.B13S1.DE03"

/* 
Skin problem : 
o"Skin Problem"
*/
define "Skin problem":
    "OBSdefine.EmCare.B14S1.DE02"

/* 
BackReference : 
back reference to resource
*/
define "BackReference":
    Reference {reference: string { value: 'Questionnaire/emcare.b10-16.signs.2m.p'}}
