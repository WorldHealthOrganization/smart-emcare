/*
@author: Patrick Delcroix
@description: This library is part of the project CHE
*/
library cheb1821symptoms2mm version '1.0.240+build.383'
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers 
include chebase version '1.0.240+build.383' called Base
include chevalueset version '1.0.240+build.383' called val
include cheobservation version '1.0.240+build.383' called obs




context Patient


/* 
OBSdefine.CHE.B7.DE02 : Convulsing Now

*/
define "OBSdefine.CHE.B7.DE02":
    Base.GetObsValue('CHE.B7.DE02')

/* 
Convulsing Now : 
o"Convulsing Now"
*/
define "Convulsing Now":
    "OBSdefine.CHE.B7.DE02"

/* 
BackReference : 
back reference to resource
*/
define "BackReference":
    Reference {reference: string { value: 'Questionnaire/che.b18-21.symptoms.2.m.m'}}
