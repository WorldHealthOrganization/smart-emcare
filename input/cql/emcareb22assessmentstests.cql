/*
@author: Patrick Delcroix
@description: This library is part of the project EmCare
*/
library emcareb22assessmentstests version '1.0.1.rc12.build.158'
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers 
include emcarebase version '1.0.1.rc12.build.158' called Base
include emcareobservation version '1.0.1.rc12.build.158' called obs
include emcarevalueset version '1.0.1.rc12.build.158' called val
include emcarecombineddataelements version '1.0.1.rc12.build.158' called c




context Patient


/* 
ageinmonths : nan
    AgeInMonths()
*/
define "ageinmonths":
    AgeInMonths()

/* 
ageindays : nan
    AgeInDays()
*/
define "ageindays":
    AgeInDays()

/* 
a-breastfeedingtest : applicability-BreastFeedingTest
    (    AgeInMonths()>=2 and AgeInMonths()<6 and  c."severe classification up to assessments and tests excluding severe dehydration" !=true)
     or (    AgeInMonths()<2 and  and  "Breastfed" = true and c."yi severe classification other than severe dehydration" !=true)
*/
define "a-breastfeedingtest":
    (    AgeInMonths()>=2 and AgeInMonths()<6 and  Coalesce(c."severe classification up to assessments and tests excluding severe dehydration",false)!=true)
     or (    AgeInMonths()<2 and  and  Base.GetObsValue('EmCare.B21S1.DE06') = true and Coalesce(c."yi severe classification other than severe dehydration",false)!=true)

/* alias applicability-breastfeedingtest : a-breastfeedingtest*/
define "applicability-breastfeedingtest":
    "a-breastfeedingtest"

/* 
a-respiratoryrate : applicability-RespiratoryRate
    ("Cough" = true or "Difficulty Breathing" = true or "AgeInMonths"<2) and o"Fast Breathing" is null
*/
define "a-respiratoryrate":
    (Base.GetObsValue('EmCare.B10S1.DE05') = true or Base.GetObsValue('EmCare.B10S1.DE01') = true or "ageinmonths"<2) and Base.GetObsValue('EmCare.B22.DE07') is null

/* alias applicability-respiratoryrate : a-respiratoryrate*/
define "applicability-respiratoryrate":
    "a-respiratoryrate"

/* 
a-bronchodilatortest : applicability-BronchodilatorTest
    ("Cough" = true or "Difficulty Breathing" = true) and "Wheezing" = true and (o"Fast Breathing" = true or "Chest Indrawing" = true) and  c."danger signs" != true and "Stridor in a calm child"= false and "Oxygen Saturation" >= 90 '%'
*/
define "a-bronchodilatortest":
    (Base.GetObsValue('EmCare.B10S1.DE05') = true or Base.GetObsValue('EmCare.B10S1.DE01') = true) and Base.GetObsValue('EmCare.B10S2.DE05') = true and (Base.GetObsValue('EmCare.B22.DE07') = true or Base.GetObsValue('EmCare.B10S2.DE03') = true) and  Coalesce(c."danger signs",false)!=true and Base.GetObsValue('EmCare.B10S2.DE04')= false and Base.GetObsValue('EmCare.B10S2.DE07') >= 90 '%'

/* alias applicability-bronchodilatortest : a-bronchodilatortest*/
define "applicability-bronchodilatortest":
    "a-bronchodilatortest"

/* 
a-hemoglobin : applicability-Hemoglobin
    "Palmar pallor" = "Some palmar pallor" or "Palmar Pallor" = "Severe Palmar Pallor" or "Mucous membrane pallor" = "Some mucous membrane pallor" or "Mucous membrane pallor" = "Severe mucous membrane pallor"
*/
define "a-hemoglobin":
    Base.HasObsValueCode('EmCare.B15S2.DE01', 'EmCare.B15S2.DE03') or Base.HasObsValueCode('EmCare.B15S2.DE01', 'EmCare.B15S2.DE02') or Base.HasObsValueCode('EmCare.B15S2.DE09', 'EmCare.B15S2.DE11') or Base.HasObsValueCode('EmCare.B15S2.DE09', 'EmCare.B15S2.DE10')

/* alias applicability-hemoglobin : a-hemoglobin*/
define "applicability-hemoglobin":
    "a-hemoglobin"

/* 
a-secondtemperature : applicability-SecondTemperature
    c."psbi other than temperature" != true and AgeInMonths()<2 and "Axillary Temperature" > 38.5 'Cel'
*/
define "a-secondtemperature":
    Coalesce(c."psbi other than temperature",false)!=true and AgeInMonths()<2 and Base.GetObsValue('EmCare.B6.DE01') > 38.5 'Cel'

/* alias applicability-secondtemperature : a-secondtemperature*/
define "applicability-secondtemperature":
    "a-secondtemperature"

/* 
a-fluidtest : applicability-FluidTest
    ("Not able to drink or breastfeed" = true or "Vomiting Everything" = true or "Diarrhoea" = true) and o"Oral Fluid Test Results" is null
*/
define "a-fluidtest":
    ("not able to drink or breastfeed" = true or "vomiting everything" = true or Base.GetObsValue('EmCare.B11S1.DE01') = true) and Base.GetObsValue('EmCare.B22.DE08') is null

/* alias applicability-fluidtest : a-fluidtest*/
define "applicability-fluidtest":
    "a-fluidtest"

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

/* 
oftrp : Unable to Perform Oral Fluid Test Profile
    o"Unable to Perform Oral Fluid Test"
*/
define "oftrp":
    Base.GetObsValue('EmCare.B22.DE14')

/* alias unable to perform oral fluid test profile : oftrp*/
define "unable to perform oral fluid test profile":
    "oftrp"

/* 
ds : Danger Signs
    Coalesce(c."danger signs",false)
*/
define "ds":
    Coalesce(c."danger signs",false)

/* alias danger signs : ds*/
define "danger signs":
    "ds"

/* 
emcare.b7.de09 : Not able to drink or breastfeed
    Coalesce(o"Not able to drink or breastfeed",false)
*/
define "emcare.b7.de09":
    Coalesce(Base.GetObsValue('EmCare.B7.DE09'),false)

/* alias not able to drink or breastfeed : emcare.b7.de09*/
define "not able to drink or breastfeed":
    "emcare.b7.de09"

/* 
emcare.b7.de10 : Vomiting Everything
    Coalesce(o"Vomiting Everything",false)
*/
define "emcare.b7.de10":
    Coalesce(Base.GetObsValue('EmCare.B7.DE10'),false)

/* alias vomiting everything : emcare.b7.de10*/
define "vomiting everything":
    "emcare.b7.de10"
