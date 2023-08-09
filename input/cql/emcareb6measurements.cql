/*
@author: Patrick Delcroix
@description: This library is part of the project EmCare
*/
library emcareb6measurements version '0.0.1.build.171'
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers 
include emcarebase version '0.0.1.build.171' called Base
include emcarevalueset version '0.0.1.build.171' called val
include emcarezscore version '0.0.1.build.171' called Z




context Patient


/* 
AgeInDays : 
AgeInDays()
*/
define "AgeInDays":
    AgeInDays()

/* 
Age in Days : AgeInDays
Alias
*/
define "Age in Days":
    "AgeInDays"

/* 
pastWeightActualised : 
Z."pastweightactualised"
*/
define "pastWeightActualised":
    Z."pastweightactualised"

/* 
Weight based on the previous mesurements : pastWeightActualised
Alias
*/
define "Weight based on the previous mesurements":
    "pastWeightActualised"

/* 
AgeInMonths : 
AgeInMonths()
*/
define "AgeInMonths":
    AgeInMonths()

/* 
Age in months : AgeInMonths
Alias
*/
define "Age in months":
    "AgeInMonths"

/* 
AgeInYears : 
AgeInYears()
*/
define "AgeInYears":
    AgeInYears()

/* 
Age in years : AgeInYears
Alias
*/
define "Age in years":
    "AgeInYears"

/* 
BackReference : 
back reference to resource
*/
define "BackReference":
    Reference {reference: string { value: 'Questionnaire/emcare.b6.measurements'}}
