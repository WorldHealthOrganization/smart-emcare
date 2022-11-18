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
include emcarecombineddataelements version '0.99.99' called clas

context Encounter

define Patient:
    Base.EmCarePatient    

/* ageinmonth.cql : nan*/
define "ageinmonth.cql":
    Base.AgeInMonths

/* has danger signs : nan*/
define "has danger signs":
    clas."emcare.b.g.de01"
