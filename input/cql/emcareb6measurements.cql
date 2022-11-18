/*
@author: Patrick Delcroix
@description: This library is part of the project EmCare
*/
library emcareb6measurements version '0.99.99'
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers 
include EmCareBase version '0.99.99' called Base
include EmCareObservation version '0.99.99' called obs
include EmCareValueSet version '0.99.99' called val
include EmCareZScore version '0.99.99' called Z


context Patient
context Encounter      

/* ageindays.cql : Age in Days*/
define "ageindays.cql":
    AgeInDays()

/* alias age in days : ageindays.cql*/
define "age in days":
    "ageindays.cql"

/* pastweightactualised : nan*/
define "pastweightactualised":
    Z."pastweightactualised"

/* ageinmonths.cql : Age in months*/
define "ageinmonths.cql":
    AgeInMonths()

/* alias age in months : ageinmonths.cql*/
define "age in months":
    "ageinmonths.cql"

/* ageinyears.cql : Age in years*/
define "ageinyears.cql":
    AgeInYears()

/* alias age in years : ageinyears.cql*/
define "age in years":
    "ageinyears.cql"
