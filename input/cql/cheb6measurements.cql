/*
@author: Patrick Delcroix
@description: This library is part of the project CHE
*/
library cheb6measurements version '1.0.252+build.395'
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers 
include chebase version '1.0.252+build.395' called Base
include chevalueset version '1.0.252+build.395' called val
include chezscore version '1.0.252+build.395' called Z




context Patient


/* 
pastWeightActualised : 
Z."pastweightactualised"
*/
define "pastWeightActualised":
    Z."pastweightactualised"

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
    Reference {reference: string { value: 'Questionnaire/che.b6.measurements'}}
