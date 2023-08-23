/*
@author: Patrick Delcroix
@description: This library is part of the project CHE
*/
library cheb17healthprevention version '1.0.239+build.382'
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers 
include chebase version '1.0.239+build.382' called Base
include chevalueset version '1.0.239+build.382' called val




context Patient


/* 
BackReference : 
back reference to resource
*/
define "BackReference":
    Reference {reference: string { value: 'Questionnaire/che.b17.health.prevention'}}
