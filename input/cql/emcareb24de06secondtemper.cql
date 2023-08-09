/*
@author: Patrick Delcroix
@description: This library is part of the project EmCare
*/
library emcareb24de06secondtemper version '1.0.3.build.244'
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers 
include emcarebase version '1.0.3.build.244' called Base
include emcarevalueset version '1.0.3.build.244' called val




context Patient


/* 
ageinmonths : 
AgeInMonths()
*/
define "ageinmonths":
    AgeInMonths()

/* 
AgeInMonths : ageinmonths
Alias
*/
define "AgeInMonths":
    "ageinmonths"

/* 
BackReference : 
back reference to resource
*/
define "BackReference":
    Reference {reference: string { value: 'Questionnaire/emcare.b24.de06.second.temper'}}
