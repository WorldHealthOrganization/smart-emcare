/*
@author: Patrick Delcroix
@description: This library is part of the project EmCare
*/
library emcareb6measurements version '1.0.3.build.168'
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers 
include emcarebase version '1.0.3.build.168' called Base
include emcarevalueset version '1.0.3.build.168' called val




context Patient


/* 
BackReference : 
back reference to resource
*/
define "BackReference":
    Reference {reference: string { value: 'Questionnaire/emcare.b6.measurements'}}
