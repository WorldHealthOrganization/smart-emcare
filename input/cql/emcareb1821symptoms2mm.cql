/*
@author: Patrick Delcroix
@description: This library is part of the project EmCare
*/
library emcareb1821symptoms2mm version '1.0.1.rc12.build.185'
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers 
include emcarebase version '1.0.1.rc12.build.185' called Base
include emcareobservation version '1.0.1.rc12.build.185' called obs
include emcarevalueset version '1.0.1.rc12.build.185' called val




context Patient


/* 
convulsing now : nan
    o"Convulsing Now"
*/
define "convulsing now":
    Base.GetObsValue('EmCare.B7.DE02')
