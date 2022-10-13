/*
@author: Patrick Delcroix
@description: This library is part of the project EmCare
*/
library emcareb23classification version '0.99.99'
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers 
include EmCareBase version '0.99.99' called Base
include EmCareObservation version '0.99.99' called obs
include EmCareValueSet version '0.99.99' called val


context Patient
      

/* child : nan*/
define "child":
    AgeInMonths()>= 2 and AgeInMonths()<60

/* yi : nan*/
define "yi":
    AgeInDays()>= 28 and AgeInMonths()<2

/* nb : nan*/
define "nb":
    AgeInDays()< 28

/* EmCare.B23.DE01 : Very Severe Disease*/
define "EmCare.B23.DE01":
    ("child")
     and (    obs."Convulsing Now" = Base."Yes" and  obs."Continue to Assess Sick Child" = val."Stabilised, continue consultation"
     or     obs."Convulsion(s) in this Illness" = Base."Yes"
     or     obs."Unconscious" = Base."Yes"
     or     obs."Lethargic" = Base."Yes"
     or     obs."Oral Fluid Test Results" = val."Completely Unable to Drink"
     or     obs."Oral Fluid Test Results" = val."Vomits Immediately / Everything")

/* Very Severe Disease : Very Severe Disease*/
define "Very Severe Disease":
    ("child")
     and (    obs."Convulsing Now" = Base."Yes" and  obs."Continue to Assess Sick Child" = val."Stabilised, continue consultation"
     or     obs."Convulsion(s) in this Illness" = Base."Yes"
     or     obs."Unconscious" = Base."Yes"
     or     obs."Lethargic" = Base."Yes"
     or     obs."Oral Fluid Test Results" = val."Completely Unable to Drink"
     or     obs."Oral Fluid Test Results" = val."Vomits Immediately / Everything")

/* EmCare.B.G.DE01 : Danger Signs*/
define "EmCare.B.G.DE01":
    ("child")
     and (    obs."Convulsing Now"= Base."Yes"
     or     obs."Convulsion(s) in this Illness" = Base."Yes"
     or     obs."Unconscious" = Base."Yes"
     or     obs."Lethargic" = Base."Yes" and obs."Diarrhoea" = Base."No"
     or     obs."Lethargic" = Base."Yes" and obs."Diarrhoea" = Base."Yes"
     or     obs."Lethargic" = Base."Yes" and obs."Diarrhoea" = Base."Yes" and (obs."Cough" = Base."Yes" or obs."Difficulty Breathing" = Base."Yes" or  obs."Fever" = Base."Yes" or obs."Tender swelling behind the ear" = Base."Yes" or obs."Palmar Pallor"=val."Severe Palmar Pallor" or obs."Mucous membrane pallor"=val."Severe mucous membrane pallor" or obs."Hemoglobin (Hb) g/dL"  < 7 'g/dL')
     or     obs."Not able to drink or breastfeed" = Base."Yes" or  obs."Oral Fluid Test Results" = val."Vomits Immediately / Everything"
     or     obs."Oral Fluid Test Results" = val."Completely Unable to Drink" or obs."Oral Fluid Test Results" = val."Vomits Immediately / Everything" or obs."Oral Fluid Test Results" = val."Unable to Perform Oral Fluid Test")

/* Danger Signs : Danger Signs*/
define "Danger Signs":
    ("child")
     and (    obs."Convulsing Now"= Base."Yes"
     or     obs."Convulsion(s) in this Illness" = Base."Yes"
     or     obs."Unconscious" = Base."Yes"
     or     obs."Lethargic" = Base."Yes" and obs."Diarrhoea" = Base."No"
     or     obs."Lethargic" = Base."Yes" and obs."Diarrhoea" = Base."Yes"
     or     obs."Lethargic" = Base."Yes" and obs."Diarrhoea" = Base."Yes" and (obs."Cough" = Base."Yes" or obs."Difficulty Breathing" = Base."Yes" or  obs."Fever" = Base."Yes" or obs."Tender swelling behind the ear" = Base."Yes" or obs."Palmar Pallor"=val."Severe Palmar Pallor" or obs."Mucous membrane pallor"=val."Severe mucous membrane pallor" or obs."Hemoglobin (Hb) g/dL"  < 7 'g/dL')
     or     obs."Not able to drink or breastfeed" = Base."Yes" or  obs."Oral Fluid Test Results" = val."Vomits Immediately / Everything"
     or     obs."Oral Fluid Test Results" = val."Completely Unable to Drink" or obs."Oral Fluid Test Results" = val."Vomits Immediately / Everything" or obs."Oral Fluid Test Results" = val."Unable to Perform Oral Fluid Test")

/* EmCare.B.G.DE05 : Severe Classification up to assessments and tests excluding Severe Dehydration*/
define "EmCare.B.G.DE05":
        obs."Danger Signs" = Base."Yes"
     or     obs."Stridor in a calm child" = Base."Yes"
     or     obs."Oxygen Saturation" <=  90 '%'
     or     obs."Stiff neck" = Base."Yes"
     or     obs."Fever" = Base."Yes" and obs."Throat problem" = Base."Yes" and (obs."Ability to swallow" = val."Unable to swallow" or obs."Specify Throat problem" = val."Membrane on throat")
     or     obs."Tender swelling behind the ear" = Base."Yes"
     or     (obs."Palmar Pallor" = val."Severe Palmar Pallor" or obs."Mucous membrane pallor"=val."Severe mucous membrane pallor" or obs."Hemoglobin (Hb) g/dL"  < 7 'g/dL')

/* Severe Classification up to assessments and tests excluding Severe Dehydration : Severe Classification up to assessments and tests excluding Severe Dehydration*/
define "Severe Classification up to assessments and tests excluding Severe Dehydration":
        obs."Danger Signs" = Base."Yes"
     or     obs."Stridor in a calm child" = Base."Yes"
     or     obs."Oxygen Saturation" <=  90 '%'
     or     obs."Stiff neck" = Base."Yes"
     or     obs."Fever" = Base."Yes" and obs."Throat problem" = Base."Yes" and (obs."Ability to swallow" = val."Unable to swallow" or obs."Specify Throat problem" = val."Membrane on throat")
     or     obs."Tender swelling behind the ear" = Base."Yes"
     or     (obs."Palmar Pallor" = val."Severe Palmar Pallor" or obs."Mucous membrane pallor"=val."Severe mucous membrane pallor" or obs."Hemoglobin (Hb) g/dL"  < 7 'g/dL')

/* EmCare.B.G.DE06 : Fever*/
define "EmCare.B.G.DE06":
        obs."Axaliary Temperature" >= 37.5
     or     obs."Hot to Touch" = Base."Yes"
     or     obs."Fever Reported" = Base."Yes"

/* Fever : Fever*/
define "Fever":
        obs."Axaliary Temperature" >= 37.5
     or     obs."Hot to Touch" = Base."Yes"
     or     obs."Fever Reported" = Base."Yes"
