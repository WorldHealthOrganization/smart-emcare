/*
@author: Patrick Delcroix
@description: This library is part of the project EmCare
*/
library emcareb24de01respiratoryr version '1.0.40+build.183'
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers 
include emcarebase version '1.0.40+build.183' called Base
include emcarevalueset version '1.0.40+build.183' called val
include emcareobservation version '1.0.40+build.183' called obs




context Patient


/* 
OBSdefine.EmCare.B24.G.DE05 : Fast Breathing

*/
define "OBSdefine.EmCare.B24.G.DE05":
    Base.GetObsValue('EmCare.B24.G.DE05')

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
o”AgeInMonths”
*/
define "AgeInMonths":
    o”AgeInMonths”

/* 
Respiratory Rate (Second Count) Not Possible : 
o”Respiratory Rate (Second Count) Not Possible”
*/
define "Respiratory Rate (Second Count) Not Possible":
    o”Respiratory Rate (Second Count) Not Possible”

/* 
BackReference : 
back reference to resource
*/
define "BackReference":
    Reference {reference: string { value: 'Questionnaire/emcare.b24.de01.respiratory.r'}}
