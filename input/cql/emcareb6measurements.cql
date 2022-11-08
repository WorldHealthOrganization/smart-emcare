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
      

/* ageindays.cql : Age in Days*/
define "ageindays.cql":
    AgeInDays()

/* age in days : Age in Days*/
define "age in days":
    AgeInDays()

/* pastweightactualised : nan*/
define "pastweightactualised":
    Z."pastweightactualised"

/* ageinmonths.cql : Age in months*/
define "ageinmonths.cql":
    AgeInMonths()

/* age in months : Age in months*/
define "age in months":
    AgeInMonths()

/* ageinyears.cql : Age in years*/
define "ageinyears.cql":
    AgeInYears()

/* age in years : Age in years*/
define "age in years":
    AgeInYears()
