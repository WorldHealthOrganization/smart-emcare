/*
@author: Patrick Delcroix
@description: This library is part of the project EmCare
*/
library emcareb22assessmentstests version '1.0.1.rc12.build.457'
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers 
include emcarebase version '1.0.1.rc12.build.457' called Base
include emcareobservation version '1.0.1.rc12.build.457' called obs
include emcarevalueset version '1.0.1.rc12.build.457' called val
include emcarecombineddataelements version '1.0.1.rc12.build.457' called c




context Patient


/* 
none : force-collection
    true
*/
define "none":
    true

/* 
none : AgeInMonths
    AgeInMonths()
*/
define "none":
    AgeInMonths()

/* 
none : AgeInDays
    AgeInDays()
*/
define "none":
    AgeInDays()

/* alias applicability-breastfeedingtest : a-breastfeedingtest*/
define "applicability-breastfeedingtest":
    "a-breastfeedingtest"

/* 
none : a-RespiratoryRate
    ("Cough" = true or "Difficulty Breathing" = true or "AgeInMonths"<2) and o"Fast Breathing" is null
*/
define "none":
    (Base.GetObsValue('EmCare.B10S1.DE05') = true or Base.GetObsValue('EmCare.B10S1.DE01') = true or "ageinmonths"<2) and Base.GetObsValue('EmCare.B22.DE07') is null

/* alias applicability-respiratoryrate : a-respiratoryrate*/
define "applicability-respiratoryrate":
    "a-respiratoryrate"

/* 
none : a-BronchodilatorTest
    ("Cough" = true or "Difficulty Breathing" = true) and "Wheezing" = true and (o"Fast Breathing" = true or "Chest Indrawing" = true) and  c."danger signs" != true and "Stridor in a calm child"= false and "Oxygen Saturation" >= 90 '%'
*/
define "none":
    (Base.GetObsValue('EmCare.B10S1.DE05') = true or Base.GetObsValue('EmCare.B10S1.DE01') = true) and Base.GetObsValue('EmCare.B10S2.DE05') = true and (Base.GetObsValue('EmCare.B22.DE07') = true or Base.GetObsValue('EmCare.B10S2.DE03') = true) and  Coalesce(c."danger signs",false)!=true and Base.GetObsValue('EmCare.B10S2.DE04')= false and Base.GetObsValue('EmCare.B10S2.DE07') >= 90 '%'

/* alias applicability-bronchodilatortest : a-bronchodilatortest*/
define "applicability-bronchodilatortest":
    "a-bronchodilatortest"

/* 
none : a-Hemoglobin
    "Palmar pallor" = "Some palmar pallor" or "Palmar Pallor" = "Severe Palmar Pallor" or "Mucous membrane pallor" = "Some mucous membrane pallor" or "Mucous membrane pallor" = "Severe mucous membrane pallor"
*/
define "none":
    Base.HasObsValueCode('EmCare.B15S2.DE01', 'EmCare.B15S2.DE03') or Base.HasObsValueCode('EmCare.B15S2.DE01', 'EmCare.B15S2.DE02') or Base.HasObsValueCode('EmCare.B15S2.DE09', 'EmCare.B15S2.DE11') or Base.HasObsValueCode('EmCare.B15S2.DE09', 'EmCare.B15S2.DE10')

/* alias applicability-hemoglobin : a-hemoglobin*/
define "applicability-hemoglobin":
    "a-hemoglobin"

/* 
none : a-SecondTemperature
    c."psbi other than temperature" != true and AgeInMonths()<2 and "Axillary Temperature  (degrees Celcius)" > 38.5 'Cel'
*/
define "none":
    Coalesce(c."psbi other than temperature",false)!=true and AgeInMonths()<2 and Base.GetObsValue('EmCare.B6.DE01') > 38.5 'Cel'

/* alias applicability-secondtemperature : a-secondtemperature*/
define "applicability-secondtemperature":
    "a-secondtemperature"

/* 
none : a-FluidTest
    ("Not able to drink or breastfeed" = true or "Vomiting Everything" = true or "Diarrhoea" = true) and o"Oral Fluid Test Results" is null
*/
define "none":
    ("not able to drink or breastfeed" = true or "vomiting everything" = true or Base.GetObsValue('EmCare.B11S1.DE01') = true) and Base.GetObsValue('EmCare.B22.DE08') is null

/* alias applicability-fluidtest : a-fluidtest*/
define "applicability-fluidtest":
    "a-fluidtest"

/* 
none : Respiratory Rate profile
    o"Respiratory Rate (breaths per minute)"
*/
define "none":
    Base.GetObsValue('EmCare.B22.DE01')

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

/* 
none : oftrp
    o"Unable to Perform Oral Fluid Test"
*/
define "none":
    Base.GetObsValue('EmCare.B22.DE14')

/* alias unable to perform oral fluid test profile : oftrp*/
define "unable to perform oral fluid test profile":
    "oftrp"

/* 
none : DS
    Coalesce(c."danger signs",false)
*/
define "none":
    Coalesce(c."danger signs",false)

/* alias danger signs : ds*/
define "danger signs":
    "ds"

/* 
none : EmCare.B7.DE09
    Coalesce(o"Not able to drink or breastfeed",false)
*/
define "none":
    Coalesce(Base.GetObsValue('EmCare.B7.DE09'),false)

/* alias not able to drink or breastfeed : emcare.b7.de09*/
define "not able to drink or breastfeed":
    "emcare.b7.de09"

/* 
none : EmCare.B7.DE10
    Coalesce(o"Vomiting Everything",false)
*/
define "none":
    Coalesce(Base.GetObsValue('EmCare.B7.DE10'),false)

/* alias vomiting everything : emcare.b7.de10*/
define "vomiting everything":
    "emcare.b7.de10"
