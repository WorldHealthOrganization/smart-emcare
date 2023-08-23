/*
@author: Patrick Delcroix
@description: This library is part of the project CHE
*/
library cheb1016signs2mp version '1.0.239+build.382'
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers 
include chebase version '1.0.239+build.382' called Base
include chevalueset version '1.0.239+build.382' called val
include b24combineddataelement version '1.0.239+build.382' called C
include cheobservation version '1.0.239+build.382' called obs




context Patient


/* 
OBSdefine.CHE.B10S1.DE05 : Cough

*/
define "OBSdefine.CHE.B10S1.DE05":
    Base.GetObsValue('CHE.B10S1.DE05')

/* 
OBSdefine.CHE.B10S1.DE01 : Difficulty Breathing

*/
define "OBSdefine.CHE.B10S1.DE01":
    Base.GetObsValue('CHE.B10S1.DE01')

/* 
OBSdefine.CHE.B11S1.DE01 : Diarrhoea

*/
define "OBSdefine.CHE.B11S1.DE01":
    Base.GetObsValue('CHE.B11S1.DE01')

/* 
OBSdefine.CHE.B13S1.DE01 : Ear Problem

*/
define "OBSdefine.CHE.B13S1.DE01":
    Base.GetObsValue('CHE.B13S1.DE01')

/* 
OBSdefine.CHE.B13S1.DE03 : Ear discharge

*/
define "OBSdefine.CHE.B13S1.DE03":
    Base.GetObsValue('CHE.B13S1.DE03')

/* 
OBSdefine.CHE.B14S1.DE02 : Skin Problem

*/
define "OBSdefine.CHE.B14S1.DE02":
    Base.GetObsValue('CHE.B14S1.DE02')

/* 
Cough : 
o"Cough"
*/
define "Cough":
    "OBSdefine.CHE.B10S1.DE05"

/* 
Difficulty Breathing : 
o"Difficulty Breathing"
*/
define "Difficulty Breathing":
    "OBSdefine.CHE.B10S1.DE01"

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
    "OBSdefine.CHE.B11S1.DE01"

/* 
Ear Problem : 
o"Ear Problem"
*/
define "Ear Problem":
    "OBSdefine.CHE.B13S1.DE01"

/* 
Ear discharge : 
o"Ear discharge"
*/
define "Ear discharge":
    "OBSdefine.CHE.B13S1.DE03"

/* 
Skin problem : 
o"Skin Problem"
*/
define "Skin problem":
    "OBSdefine.CHE.B14S1.DE02"

/* 
BackReference : 
back reference to resource
*/
define "BackReference":
    Reference {reference: string { value: 'Questionnaire/che.b10-16.signs.2m.p'}}
