/*
@author: Patrick Delcroix
@description: This library is part of the project EmCare
*/
library emcareb1821symptoms2mm version '0.99.99'
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers 
include EmCareBase version '0.99.99' called Base
include EmCareObservation version '0.99.99' called obs
include EmCareValueSet version '0.99.99' called val


parameter "encounterid"  String


context Patient    

/* emcare.b7.de02 : Convulsing Now*/
define "emcare.b7.de02":
    Base.GetObsValue('EmCare.B7.DE02')

/* alias convulsing now : emcare.b7.de02*/
define "convulsing now":
    "emcare.b7.de02"
