/*
@author: Patrick Delcroix
@description: This library is part of the project EmCare
*/
library emcareb1016signs2mp version '1.0.1.rc12.build.144'
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers 
include emcarebase version '1.0.1.rc12.build.144' called Base
include emcarevalueset version '1.0.1.rc12.build.144' called val
include emcareobservation version '1.0.1.rc12.build.144' called obs




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
Cough : 
o"Cough"
*/
define "Cough":
    "OBSdefine.EmCare.B10S1.DE05"

/* 
Difficulty Breathing : 
o"Difficulty Breathing""
*/
define "Difficulty Breathing":
    "OBSdefine.EmCare.B10S1.DE01""

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
Pus seen draining from the ear : 
o"Pus seen draining from the ear"
*/
define "Pus seen draining from the ear":
    o"Pus seen draining from the ear"

/* 
Ear discharge : 
o"Ear discharge"
*/
define "Ear discharge":
    "OBSdefine.EmCare.B13S1.DE03"

/* 
Eye problem : 
o"Eye problem"
*/
define "Eye problem":
    o"Eye problem"

/* 
Clouding of the cornea : 
o"Clouding of the cornea"
*/
define "Clouding of the cornea":
    o"Clouding of the cornea"

/* 
Is clouding of the cornea a new problem : 
o"Is clouding of the cornea a new problem"
*/
define "Is clouding of the cornea a new problem":
    o"Is clouding of the cornea a new problem"

/* 
Runny Nose : 
o"Runny Nose"
*/
define "Runny Nose":
    o"Runny Nose"

/* 
Skin problem : 
o"Skin problem"
*/
define "Skin problem":
    o"Skin problem"

/* 
Itchy Skin : 
o"Itchy Skin"
*/
define "Itchy Skin":
    o"Itchy Skin"

/* 
Generalised skin problem/Localised skin problem : 
o"Generalised skin problem/Localised skin problem"
*/
define "Generalised skin problem/Localised skin problem":
    o"Generalised skin problem/Localised skin problem"

/* 
Ringworm (Tinea) : 
o"Ringworm (Tinea)"
*/
define "Ringworm (Tinea)":
    o"Ringworm (Tinea)"

/* 
Herpes Zoster : 
o"Herpes Zoster"
*/
define "Herpes Zoster":
    o"Herpes Zoster"

/* 
Impetigo or Folliculitis : 
o"Impetigo or Folliculitis"
*/
define "Impetigo or Folliculitis":
    o"Impetigo or Folliculitis"

/* 
Types of Skin Problem : 
o"Types of Skin Problem"
*/
define "Types of Skin Problem":
    o"Types of Skin Problem"

/* 
BackReference : 
back reference to resource
*/
define "BackReference":
    Reference {reference: string { value: 'Questionnaire/emcare.b10-16.signs.2m.p'}}
