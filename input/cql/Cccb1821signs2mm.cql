/*
@author: Patrick Delcroix
@description: This library is part of the project EmCare
*/
library emcareb1821signs2mm version '1.0.1.rc12.build.457'
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers 
include emcarebase version '1.0.1.rc12.build.457' called Base
include emcareobservation version '1.0.1.rc12.build.457' called obs
include emcarevalueset version '1.0.1.rc12.build.457' called val
include emcarezscore version '1.0.1.rc12.build.457' called Z
include emcarecombineddataelements version '1.0.1.rc12.build.457' called c




context Patient


/* 
none : Fever
    c."fever"
*/
define "none":
    c."fever"

/* 
none : zscore
    Z."WAZ"
*/
define "none":
    Z."WAZ"

/* 
none : AgeInMonths
    AgeInMonths()
*/
define "none":
    AgeInMonths()

/* alias age in month : ageinmonths*/
define "age in month":
    "ageinmonths"

/* 
none : AgeInDays
    AgeInDays()
*/
define "none":
    AgeInDays()

/* 
none : EmCare.B20S1.DE01
    o"Diarrhoea"
*/
define "none":
    Base.GetObsValue('EmCare.B11S1.DE01')

/* alias diarrhoea : emcare.b20s1.de01*/
define "diarrhoea":
    "emcare.b20s1.de01"

/* 
none : EmCare.A.DE31
    Base."Biological Mother Vital Status"
*/
define "none":
    Base."Biological Mother Vital Status"

/* alias biological mother vital status : emcare.a.de31*/
define "biological mother vital status":
    "emcare.a.de31"

/* 
none : EmCare.B21S1.DE01
    o"Breastfed"
*/
define "none":
    Base.GetObsValue('EmCare.B21S1.DE06')

/* alias breastfed : emcare.b21s1.de01*/
define "breastfed":
    "emcare.b21s1.de01"

/* 
none : EmCare.B18S1.DE02
    o"Difficulty with Feeding"
*/
define "none":
    Base.GetObsValue('EmCare.B18S1.DE02')

/* alias difficulty with feeding : emcare.b18s1.de02*/
define "difficulty with feeding":
    "emcare.b18s1.de02"

/* 
none : YI_sever_but_dhey
    c."yi severe classification other than severe dehydration"
*/
define "none":
    c."yi severe classification other than severe dehydration"

/* alias yi severe classification other than severe dehydration : yi_sever_but_dhey*/
define "yi severe classification other than severe dehydration":
    "yi_sever_but_dhey"

/* 
none : YI_sever
    c."yi severe classification"
*/
define "none":
    c."yi severe classification"

/* alias yi severe classification : yi_sever*/
define "yi severe classification":
    "yi_sever"

/* 
none : EmCare.B7.DE03
    o"Convulsion(s) in this Illness"
*/
define "none":
    Base.GetObsValue('EmCare.B7.DE03')

/* alias convulsion(s) in this illness : emcare.b7.de03*/
define "convulsion(s) in this illness":
    "emcare.b7.de03"

/* 
none : Respiratory Rate profile
    o"Respiratory Rate (breaths per minute)"
*/
define "none":
    Base.GetObsValue('EmCare.B22.DE01')

/* 
none : force-collection
    false
*/
define "none":
    false

/* 
none : Respiratory Rate Second Count Profile
    o"Respiratory Rate Second Count (breaths per minute)"
*/
define "none":
    Base.GetObsValue('EmCare.B22.DE04')

/* 
none : Fast Breathing profile
    o"Fast Breathing"
*/
define "none":
    Base.GetObsValue('EmCare.B22.DE07')
