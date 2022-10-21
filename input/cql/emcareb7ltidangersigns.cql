/*
@author: Patrick Delcroix
@description: This library is part of the project EmCare
*/
library emcareb7ltidangersigns version '0.99.99'
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers 
include EmCareBase version '0.99.99' called Base
include EmCareObservation version '0.99.99' called obs
include EmCareValueSet version '0.99.99' called val


context Patient
      

/* ageinmonth.cql : nan*/
define "ageinmonth.cql":
    AgeInMonths()

/* ageinyears.cql : Age in years*/
define "ageinyears.cql":
    AgeInYears()

/* age in years : Age in years*/
define "age in years":
    AgeInYears()

/* age2mp : nan*/
define "age2mp":
    AgeInMonths() >= 2 and AgeInYears() <5
