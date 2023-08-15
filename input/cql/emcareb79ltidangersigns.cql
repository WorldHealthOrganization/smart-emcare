/*
@author: Patrick Delcroix
@description: This library is part of the project EmCare
*/
library emcareb79ltidangersigns version '1.0.62+build.205'
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers 
include emcarebase version '1.0.62+build.205' called Base
include emcarevalueset version '1.0.62+build.205' called val




context Patient


/* 
ageinmonths : 
AgeInMonths()
*/
define "ageinmonths":
    AgeInMonths()

/* 
BackReference : 
back reference to resource
*/
define "BackReference":
    Reference {reference: string { value: 'Questionnaire/emcare.b7-9.lti-dangersigns'}}
