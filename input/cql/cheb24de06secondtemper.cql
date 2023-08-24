/*
@author: Patrick Delcroix
@description: This library is part of the project CHE
*/
library cheb24de06secondtemper version '1.0.243+build.386'
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers 
include chebase version '1.0.243+build.386' called Base
include chevalueset version '1.0.243+build.386' called val




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
    Reference {reference: string { value: 'Questionnaire/che.b24.de06.second.temper'}}
