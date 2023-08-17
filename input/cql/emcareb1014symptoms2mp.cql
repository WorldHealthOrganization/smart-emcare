/*
@author: Patrick Delcroix
@description: This library is part of the project EmCare
*/
library emcareb1014symptoms2mp version '1.0.73+build.216'
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers 
include emcarebase version '1.0.73+build.216' called Base
include emcarevalueset version '1.0.73+build.216' called val
include b24combineddataelement version '1.0.73+build.216' called C




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
    Reference {reference: string { value: 'Questionnaire/emcare.b10-14.symptoms.2m.p'}}
