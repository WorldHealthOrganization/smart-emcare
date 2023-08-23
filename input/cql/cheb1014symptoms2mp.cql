/*
@author: Patrick Delcroix
@description: This library is part of the project CHE
*/
library cheb1014symptoms2mp version '1.0.239+build.382'
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers 
include chebase version '1.0.239+build.382' called Base
include chevalueset version '1.0.239+build.382' called val
include b24combineddataelement version '1.0.239+build.382' called C




context Patient


/* 
Fever : 
C."Fever"
*/
define "Fever":
    C."Fever"

/* 
Danger Signs : 
C."Danger Signs"
*/
define "Danger Signs":
    C."Danger Signs"

/* 
BackReference : 
back reference to resource
*/
define "BackReference":
    Reference {reference: string { value: 'Questionnaire/che.b10-14.symptoms.2m.p'}}
