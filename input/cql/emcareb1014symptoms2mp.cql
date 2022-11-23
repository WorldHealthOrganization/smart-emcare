/*
@author: Patrick Delcroix
@description: This library is part of the project EmCare
*/
library emcareb1014symptoms2mp version '0.99.99'
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers 
include EmCareBase version '0.99.99' called Base
include EmCareObservation version '0.99.99' called obs
include EmCareValueSet version '0.99.99' called val
include emcarecombineddataelements version '0.99.99' called clas


parameter "encounterid"  String


context Patient    

/* emcare.b.g.de01 : Danger Signs*/
define "emcare.b.g.de01":
    clas."emcare.b.g.de01"

/* alias danger signs : emcare.b.g.de01*/
define "danger signs":
    "emcare.b.g.de01"

/* ageinmonths : Age*/
define "ageinmonths":
    AgeInMonths()

/* alias age : ageinmonths*/
define "age":
    "ageinmonths"

/* emcare.b12s1.de01 : Measured Fever*/
define "emcare.b12s1.de01":
    Coalesce(Base.GetObsValue('EmCare.B6.DE01')   >= 37.5 'Cel' or Base.GetObsValue('EmCare.B6.DE05')  = true, false)

/* alias measured fever : emcare.b12s1.de01*/
define "measured fever":
    "emcare.b12s1.de01"
