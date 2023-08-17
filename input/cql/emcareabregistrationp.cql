/*
@author: Patrick Delcroix
@description: This library is part of the project EmCare
*/
library emcareabregistrationp version '1.0.73+build.216'
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers 
include emcarebase version '1.0.73+build.216' called Base
include emcarevalueset version '1.0.73+build.216' called val




context Patient


/* 
BackReference : 
back reference to resource
*/
define "BackReference":
    Reference {reference: string { value: 'Questionnaire/emcare.ab.registration.p'}}
