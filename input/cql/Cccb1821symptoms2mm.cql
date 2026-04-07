/*
@author: Patrick Delcroix
@description: This library is part of the project Ccc
*/
library Cccb1821symptoms2mm version '1.0.1.rc12.build.457'
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers 
include Cccbase version '1.0.1.rc12.build.457' called Base
include Cccobservation version '1.0.1.rc12.build.457' called obs
include Cccvalueset version '1.0.1.rc12.build.457' called val




context Patient


/* 
none : Convulsing Now
    o"Convulsing Now"
*/
define "none":
    Base.GetObsValue('Ccc.B7.DE02')
