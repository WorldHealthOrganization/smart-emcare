/*
@author: Patrick Delcroix
@description: This library is part of the project EmCare
*/
library emcareb1821signs2mm version '1.0.1.rc12.build.12'
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers 
include emcarebase version '1.0.1.rc12.build.12' called Base
include emcareobservation version '1.0.1.rc12.build.12' called obs
include emcarevalueset version '1.0.1.rc12.build.12' called val
include emcarezscore version '1.0.1.rc12.build.12' called Z
include emcarecombineddataelements version '1.0.1.rc12.build.12' called c




context Patient


/* 
fever : nan
    c."fever"
*/
define "fever":
    c."fever"

/* 
zscore : nan
    Z."WAZ"
*/
define "zscore":
    Z."WAZ"

/* 
ageinmonths : Age in Month
    AgeInMonths()
*/
define "ageinmonths":
    AgeInMonths()

/* alias age in month : ageinmonths*/
define "age in month":
    "ageinmonths"

/* 
ageindays : nan
    AgeInDays()
*/
define "ageindays":
    AgeInDays()

/* 
emcare.b20s1.de01 : Diarrhoea
    GetObsValue('EmCare.B20S1.DE01')
*/
define "emcare.b20s1.de01":
    Base.GetObsValue('EmCare.B20S1.DE01')

/* alias diarrhoea : emcare.b20s1.de01*/
define "diarrhoea":
    "emcare.b20s1.de01"

/* 
emcare.a.de31 : Biological Mother Vital Status
    GetObsValue('EmCare.A.DE31')
*/
define "emcare.a.de31":
    Base.GetObsValue('EmCare.A.DE31')

/* alias biological mother vital status : emcare.a.de31*/
define "biological mother vital status":
    "emcare.a.de31"

/* 
emcare.b21s1.de01 : Breastfed
    GetObsValue('EmCare.B21S1.DE01')
*/
define "emcare.b21s1.de01":
    Base.GetObsValue('EmCare.B21S1.DE01')

/* alias breastfed : emcare.b21s1.de01*/
define "breastfed":
    "emcare.b21s1.de01"

/* 
emcare.b18s1.de02 : Difficulty with Feeding
    GetObsValue('EmCare.B18S1.DE02')
*/
define "emcare.b18s1.de02":
    Base.GetObsValue('EmCare.B18S1.DE02')

/* alias difficulty with feeding : emcare.b18s1.de02*/
define "difficulty with feeding":
    "emcare.b18s1.de02"

/* 
emcare.b6.de06 : Weight
    GetObsValue('EmCare.B6.DE06')
*/
define "emcare.b6.de06":
    Base.GetObsValue('EmCare.B6.DE06')

/* alias weight : emcare.b6.de06*/
define "weight":
    "emcare.b6.de06"

/* 
yi_sever_but_dhey : YI severe classification other than severe dehydration
    c."yi severe classification other than severe dehydration"
*/
define "yi_sever_but_dhey":
    c."yi severe classification other than severe dehydration"

/* alias yi severe classification other than severe dehydration : yi_sever_but_dhey*/
define "yi severe classification other than severe dehydration":
    "yi_sever_but_dhey"

/* 
yi_sever : YI severe classification
    c."yi severe classification"
*/
define "yi_sever":
    c."yi severe classification"

/* alias yi severe classification : yi_sever*/
define "yi severe classification":
    "yi_sever"

/* 
emcare.b7.de03 : Convulsion(s) in this Illness
    o"Convulsion(s) in this Illness"
*/
define "emcare.b7.de03":
    Base.GetObsValue('EmCare.B7.DE03')

/* alias convulsion(s) in this illness : emcare.b7.de03*/
define "convulsion(s) in this illness":
    "emcare.b7.de03"

/* 
respiratory rate profile : nan
    o"Respiratory Rate"
*/
define "respiratory rate profile":
    Base.GetObsValue('EmCare.B22.DE01')

/* 
respiratory rate second count profile : nan
    o"Respiratory Rate Second Count"
*/
define "respiratory rate second count profile":
    Base.GetObsValue('EmCare.B22.DE04')

/* 
fast breathing profile : nan
    o"Fast Breathing"
*/
define "fast breathing profile":
    Base.GetObsValue('EmCare.B22.DE07')
