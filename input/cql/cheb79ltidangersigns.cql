/*
@author: Patrick Delcroix
@description: This library is part of the project CHE
*/
library cheb79ltidangersigns version '1.0.240+build.383'
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers 
include chebase version '1.0.240+build.383' called Base
include chevalueset version '1.0.240+build.383' called val




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
    Reference {reference: string { value: 'Questionnaire/che.b7-9.lti-dangersigns'}}
