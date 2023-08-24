/*
@author: Patrick Delcroix
@description: This library is part of the project CHE
*/
library cheabregistrationp version '1.0.243+build.386'
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers 
include chebase version '1.0.243+build.386' called Base
include chevalueset version '1.0.243+build.386' called val




context Patient


/* 
BackReference : 
back reference to resource
*/
define "BackReference":
    Reference {reference: string { value: 'Questionnaire/che.ab.registration.p'}}
