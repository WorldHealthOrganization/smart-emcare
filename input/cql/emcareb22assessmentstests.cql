/*
@author: Patrick Delcroix
@description: This library is part of the project EmCare
*/
library emcareb22assessmentstests version '1.0.1.rc11.build.71'
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers 
include emcarebase version '1.0.1.rc11.build.71' called Base
include emcareobservation version '1.0.1.rc11.build.71' called obs
include emcarevalueset version '1.0.1.rc11.build.71' called val
include emcarecombineddataelements version '1.0.1.rc11.build.71' called c




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
applicability-breastfeedingtest : nan
    Base."Person accompanying child today's Relationship to Client".coding.where(code = 'MTH').exists()
*/
define "applicability-breastfeedingtest":
    Base."Person accompanying child today's Relationship to Client".coding.where(code = 'MTH').exists()

/* 
applicability-respiratoryrate : nan
    "Cough" = true or "Difficulty Breathing" = true or "AgeInMonths"<2
*/
define "applicability-respiratoryrate":
    Base.GetObsValue('EmCare.B10S1.DE05') = true or Base.GetObsValue('EmCare.B10S1.DE01') = true or "ageinmonths"<2

/* 
applicability-bronchodilatortest : nan
    ("Cough" = true or "Difficulty Breathing" = true) and "Wheezing" = true and (o"Fast Breathing" = true or "Chest Indrawing" = true) and  c."danger signs" = false and "Stridor in a calm child"= false and "Oxygen Saturation" >= 90 '%'
*/
define "applicability-bronchodilatortest":
    (Base.GetObsValue('EmCare.B10S1.DE05') = true or Base.GetObsValue('EmCare.B10S1.DE01') = true) and Base.GetObsValue('EmCare.B10S2.DE05') = true and (Base.GetObsValue('EmCare.B22.DE07') = true or Base.GetObsValue('EmCare.B10S2.DE03') = true) and  c."danger signs" = false and Base.GetObsValue('EmCare.B10S2.DE04')= false and Base.GetObsValue('EmCare.B10S2.DE07') >= 90 '%'

/* 
applicability-hemoglobin : nan
    "Palmar pallor" = "Some palmar pallor" or "Palmar Pallor" = "Severe Palmar Pallor" or "Mucous membrane pallor" = "Some mucous membrane pallor" or "Mucous membrane pallor" = "Severe mucous membrane pallor"
*/
define "applicability-hemoglobin":
    Base.HasObsValueCode('EmCare.B15S2.DE01', 'EmCare.B15S2.DE03') or Base.HasObsValueCode('EmCare.B15S2.DE01', 'EmCare.B15S2.DE02') or Base.HasObsValueCode('EmCare.B15S2.DE09', 'EmCare.B15S2.DE11') or Base.HasObsValueCode('EmCare.B15S2.DE09', 'EmCare.B15S2.DE10')

/* 
applicability-secondtemperature : nan
    Coalesce(c."psbi other than temperature", false) = false and AgeInMonths()<2 and "Axillary Temperature" > 38.5 'Cel'
*/
define "applicability-secondtemperature":
    Coalesce(c."psbi other than temperature", false) = false and AgeInMonths()<2 and Base.GetObsValue('EmCare.B6.DE01') > 38.5 'Cel'

/* 
applicability-fluidtest : nan
    "Not able to drink or breastfeed" = true or "Vomiting Everything" = true or "Diarrhoea" = true
*/
define "applicability-fluidtest":
    "not able to drink or breastfeed" = true or "vomiting everything" = true or Base.GetObsValue('EmCare.B11S1.DE01') = true

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
test : nan
    HasObsValueCode('EmCare.B11S2.DE02', 'EmCare.B20S2.DE04')
*/
define "test":
    Base.HasObsValueCode('EmCare.B11S2.DE02', 'EmCare.B20S2.DE04')

/* 
danger signs : nan
    Coalesce(c."emcare.b.g.de01", false)
*/
define "danger signs":
    Coalesce(c."emcare.b.g.de01", false)

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
