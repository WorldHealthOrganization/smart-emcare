/*
@author: Patrick Delcroix
@description: This library is part of the project CHE
*/
library cheb24de01respiratoryr version '1.0.243+build.386'
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers 
include chebase version '1.0.243+build.386' called Base
include chevalueset version '1.0.243+build.386' called val
include b24combineddataelement version '1.0.243+build.386' called C
include cheobservation version '1.0.243+build.386' called obs




context Patient


/* 
OBSdefine.CHE.B24.G.DE05 : Fast Breathing

*/
define "OBSdefine.CHE.B24.G.DE05":
    Base.GetObsValue('CHE.B24.G.DE05')

/* 
OBSdefine.CHE.B24.G.DE04 : Respiratory Rate Second Count Not Possible

*/
define "OBSdefine.CHE.B24.G.DE04":
    Base.GetObsValue('CHE.B24.G.DE04')

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
    "OBSdefine.CHE.B24.G.DE05"

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
    "OBSdefine.CHE.B24.G.DE04"

/* 
BackReference : 
back reference to resource
*/
define "BackReference":
    Reference {reference: string { value: 'Questionnaire/che.b24.de01.respiratory.r'}}
