/*
@author: Patrick Delcroix
@description: This library is part of the project EmCare
*/
library emcareb6measurements version '1.0.1.rc12.build.457'
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers 
include emcarebase version '1.0.1.rc12.build.457' called Base
include emcareobservation version '1.0.1.rc12.build.457' called obs
include emcarevalueset version '1.0.1.rc12.build.457' called val
include emcarezscore version '1.0.1.rc12.build.457' called Z




context Patient


/* 
none : AgeInDays
    AgeInDays()
*/
define "none":
    AgeInDays()

/* alias age in days : ageindays*/
define "age in days":
    "ageindays"

/* 
none : pastWeightActualised
    Z."pastweightactualised"
*/
define "none":
    Z."pastweightactualised"

/* alias weight based on the previous mesurements : pastweightactualised*/
define "weight based on the previous mesurements":
    "pastweightactualised"

/* 
none : AgeInMonths
    AgeInMonths()
*/
define "none":
    AgeInMonths()

/* alias age in months : ageinmonths*/
define "age in months":
    "ageinmonths"

/* 
none : AgeInYears
    AgeInYears()
*/
define "none":
    AgeInYears()

/* alias age in years : ageinyears*/
define "age in years":
    "ageinyears"
