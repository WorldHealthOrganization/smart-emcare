/*
@author: Patrick Delcroix
@description: This library is part of the project EmCare
*/
library emcareb24de01respiratoryr version '1.0.109+build.252'
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers 
include emcarebase version '1.0.109+build.252' called Base
include emcarevalueset version '1.0.109+build.252' called val
include b24combineddataelement version '1.0.109+build.252' called C
include emcareobservation version '1.0.109+build.252' called obs




context Patient


/* 
OBSdefine.EmCare.B24.G.DE05 : Fast Breathing

*/
define "OBSdefine.EmCare.B24.G.DE05":
    Base.GetObsValue('EmCare.B24.G.DE05')

/* 
OBSdefine.EmCare.B24.G.DE04 : Respiratory Rate Second Count Not Possible

*/
define "OBSdefine.EmCare.B24.G.DE04":
    Base.GetObsValue('EmCare.B24.G.DE04')

/* 
force-collection : 
false
*/
define "force-collection":
    false

/* 
Fast Breathing profile : 
o"Fast Breathing"
*/
define "Fast Breathing profile":
    "OBSdefine.EmCare.B24.G.DE05"

/* 
AgeInMonths : 
AgeInMonths()
*/
define "AgeInMonths":
    AgeInMonths()

/* 
Respiratory Rate (Second Count) Not Possible : 
o"Respiratory Rate Second Count Not Possible"
*/
define "Respiratory Rate (Second Count) Not Possible":
    "OBSdefine.EmCare.B24.G.DE04"

/* 
BackReference : 
back reference to resource
*/
define "BackReference":
    Reference {reference: string { value: 'Questionnaire/emcare.b24.de01.respiratory.r'}}
