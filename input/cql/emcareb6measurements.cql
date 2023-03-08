/*
@author: Patrick Delcroix
@description: This library is part of the project EmCare
*/
library emcareb6measurements version '1.0.1.rc12.build.185'
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers 
include emcarebase version '1.0.1.rc12.build.185' called Base
include emcareobservation version '1.0.1.rc12.build.185' called obs
include emcarevalueset version '1.0.1.rc12.build.185' called val
include emcarezscore version '1.0.1.rc12.build.185' called Z




context Patient


/* 
ageindays : Age in Days
    AgeInDays()
*/
define "ageindays":
    AgeInDays()

/* alias age in days : ageindays*/
define "age in days":
    "ageindays"

/* 
pastweightactualised : Weight based on the previous mesurements
    Z."pastweightactualised"
*/
define "pastweightactualised":
    Z."pastweightactualised"

/* alias weight based on the previous mesurements : pastweightactualised*/
define "weight based on the previous mesurements":
    "pastweightactualised"

/* 
ageinmonths : Age in months
    AgeInMonths()
*/
define "ageinmonths":
    AgeInMonths()

/* alias age in months : ageinmonths*/
define "age in months":
    "ageinmonths"

/* 
ageinyears : Age in years
    AgeInYears()
*/
define "ageinyears":
    AgeInYears()

/* alias age in years : ageinyears*/
define "age in years":
    "ageinyears"
