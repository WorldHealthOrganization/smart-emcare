/*
@author: Patrick Delcroix
@description: This library is part of the project EmCare
*/
library emcareb1016signs2mp version '1.0.1.rc12.build.457'
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers 
include emcarebase version '1.0.1.rc12.build.457' called Base
include emcareobservation version '1.0.1.rc12.build.457' called obs
include emcarevalueset version '1.0.1.rc12.build.457' called val
include emcarecombineddataelements version '1.0.1.rc12.build.457' called clas




context Patient


/* 
none : Danger Signs
    Coalesce(clas."emcare.b.g.de01", false)
*/
define "none":
    Coalesce(clas."emcare.b.g.de01", false)

/* 
none : AgeInMonths
    AgeInMonths()
*/
define "none":
    AgeInMonths()

/* alias age : ageinmonths*/
define "age":
    "ageinmonths"

/* 
none : Cough
    o"Cough"
*/
define "none":
    Base.GetObsValue('EmCare.B10S1.DE05')

/* 
none : Difficulty Breathing
    o"Difficulty Breathing"
*/
define "none":
    Base.GetObsValue('EmCare.B10S1.DE01')

/* 
none : Oral Fluid Test failed
    "Oral Fluid Test Results" = "Completely Unable to Drink or Vomits Immediately / Everything" or  "Unable to Perform Oral Fluid Test"=true
*/
define "none":
    Base.GetObsValue('EmCare.B22.DE08&EmCare.B22.DE14a') = true or  Base.GetObsValue('EmCare.B22.DE14')=true

/* 
none : Diarrhoea
    o"Diarrhoea"
*/
define "none":
    Base.GetObsValue('EmCare.B11S1.DE01')

/* 
none : Not able to drink or breastfeed
    o"Not able to drink or breastfeed"
*/
define "none":
    Base.GetObsValue('EmCare.B7.DE09')

/* 
none : Unconscious or Lethargic
    HasObs('EmCare.B7.DE08') = true or  HasObs('EmCare.B7.DE08a') = true
*/
define "none":
    Base.HasObs('EmCare.B7.DE08') = true or  Base.HasObs('EmCare.B7.DE08a') = true

/* 
none : Fever
    clas."fever"
*/
define "none":
    clas."fever"

/* 
none : Ear Problem
    o"Ear Problem"
*/
define "none":
    Base.GetObsValue('EmCare.B13S1.DE01')

/* 
none : Eye Problem
    o"Eye Problem"
*/
define "none":
    Base.GetObsValue('EmCare.B14S1.DE03')

/* 
none : Skin Problem
    o"Skin Problem"
*/
define "none":
    Base.GetObsValue('EmCare.B14S1.DE01')

/* 
none : Ear discharge
    o"Ear discharge"
*/
define "none":
    Base.GetObsValue('EmCare.B13S1.DE03')

/* 
none : Ear discharge for how long?
    o"Ear discharge for how long?"
*/
define "none":
    Base.GetObsValue('EmCare.B13S1.DE04')

/* 
none : Itchy Skin
    o"Itchy Skin"
*/
define "none":
    Base.GetObsValue('EmCare.B14S1.DE02')

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
