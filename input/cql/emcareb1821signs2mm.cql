/*
@author: Patrick Delcroix
@description: This library is part of the project EmCare
*/
library emcareb1821signs2mm version '0.99.99'
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers 
include EmCareBase version '0.99.99' called Base
include EmCareObservation version '0.99.99' called obs
include EmCareValueSet version '0.99.99' called val


parameter "encounter"  Encounter


context Patient    

/* ageinmonths : Age in Month*/
define "ageinmonths":
    AgeInMonths()

/* alias age in month : ageinmonths*/
define "age in month":
    "ageinmonths"

/* emcare.b20s1.de01 : Diarrhoea*/
define "emcare.b20s1.de01":
    Base.GetObsValue('EmCare.B20S1.DE01')

/* alias diarrhoea : emcare.b20s1.de01*/
define "diarrhoea":
    "emcare.b20s1.de01"

/* emcare.a.de31 : Biological Mother Vital Status*/
define "emcare.a.de31":
    Base.GetObsValue('EmCare.A.DE31')

/* alias biological mother vital status : emcare.a.de31*/
define "biological mother vital status":
    "emcare.a.de31"

/* emcare.b21s1.de01 : Breastfed*/
define "emcare.b21s1.de01":
    Base.GetObsValue('EmCare.B21S1.DE01')

/* alias breastfed : emcare.b21s1.de01*/
define "breastfed":
    "emcare.b21s1.de01"

/* emcare.b18s1.de02 : Difficulty with Feeding*/
define "emcare.b18s1.de02":
    Base.GetObsValue('EmCare.B18S1.DE02')

/* alias difficulty with feeding : emcare.b18s1.de02*/
define "difficulty with feeding":
    "emcare.b18s1.de02"

/* emcare.b6.de06 : Weight*/
define "emcare.b6.de06":
    Base.GetObsValue('EmCare.B6.DE06')

/* alias weight : emcare.b6.de06*/
define "weight":
    "emcare.b6.de06"
