/*
@author: Patrick Delcroix
@description: This library is part of the project EmCare
*/
library emcareb24de01respiratoryr version '1.0.1.rc12.build.144'
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers 
include emcarebase version '1.0.1.rc12.build.144' called Base
include emcarevalueset version '1.0.1.rc12.build.144' called val
include emcareobservation version '1.0.1.rc12.build.144' called obs




context Patient


/* 
OBSdefine.EmCare.B24.G.DE01 : Respiratory Rate (breaths per minute)

*/
define "OBSdefine.EmCare.B24.G.DE01":
    Base.GetObsValue('EmCare.B24.G.DE01')

/* 
OBSdefine.EmCare.B24.G.DE05 : Fast Breathing

*/
define "OBSdefine.EmCare.B24.G.DE05":
    Base.GetObsValue('EmCare.B24.G.DE05')

/* 
Respiratory Rate profile : 
o"Respiratory Rate (breaths per minute)"
*/
define "Respiratory Rate profile":
    "OBSdefine.EmCare.B24.G.DE01"

/* 
force-collection : 
false
*/
define "force-collection":
    false

/* 
Respiratory Rate (Second Count) (breaths per minute) : 
o"Respiratory Rate (Second Count) (breaths per minute)"
*/
define "Respiratory Rate (Second Count) (breaths per minute)":
    o"Respiratory Rate (Second Count) (breaths per minute)"

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
