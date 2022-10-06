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
      

/* child : Age >= 2 months to <60 months*/
define "child":
    AgeInMonths()>= 2 and AgeInMonths()<60

/* Age >= 2 months to <60 months : Age >= 2 months to <60 months*/
define "Age >= 2 months to <60 months":
    AgeInMonths()>= 2 and AgeInMonths()<60

/* yi : Age >=28 days to 2 Months*/
define "yi":
    AgeInDays()>= 28 and AgeInMonths()<2

/* Age >=28 days to 2 Months : Age >=28 days to 2 Months*/
define "Age >=28 days to 2 Months":
    AgeInDays()>= 28 and AgeInMonths()<2

/* nb : Age < 28 days to 2 Months*/
define "nb":
    AgeInDays()< 28

/* Age < 28 days to 2 Months : Age < 28 days to 2 Months*/
define "Age < 28 days to 2 Months":
    AgeInDays()< 28

/* EmCare.B23.DE01 : Very Severe Disease*/
define "EmCare.B23.DE01":
    ("Age >= 2 months to <60 months")
     and (    obs."Convulsing Now" = Base."Yes" and  obs."Continue to Assess Sick Child" = val."Stabilised, continue consultation"
     or     obs."Convulsion(s) in this Illness" = Base."Yes"
     or     obs."Unconscious" = Base."Yes"
     or     obs."Lethargic" = Base."Yes"
     or     obs."Oral Fluid Test Results" = val."Completely Unable to Drink"
     or     obs."Oral Fluid Test Results" = val."Vomits Immediately / Everything")

/* Very Severe Disease : Very Severe Disease*/
define "Very Severe Disease":
    ("Age >= 2 months to <60 months")
     and (    obs."Convulsing Now" = Base."Yes" and  obs."Continue to Assess Sick Child" = val."Stabilised, continue consultation"
     or     obs."Convulsion(s) in this Illness" = Base."Yes"
     or     obs."Unconscious" = Base."Yes"
     or     obs."Lethargic" = Base."Yes"
     or     obs."Oral Fluid Test Results" = val."Completely Unable to Drink"
     or     obs."Oral Fluid Test Results" = val."Vomits Immediately / Everything")

/* EmCare.B.G.DE01 : Danger Signs*/
define "EmCare.B.G.DE01":
        obs."Convulsing Now"= Base."Yes"
     or     "Convulsions in this illness" =  Base."Yes"
     or     obs."Unconscious" = Base."Yes"
     or     obs."Lethargic" = Base."Yes" and obs."Diarrhoea" = Base."No"
     or     obs."Lethargic" = Base."Yes" and obs."Diarrhoea" = Base."Yes" and "Severe Dehydration" = Base."No" and "Some Dehydration" = Base."No"
     or     obs."Lethargic" = Base."Yes" and obs."Diarrhoea" = Base."Yes" and (obs."Cough" = Base."Yes" or obs."Difficulty Breathing" = Base."Yes" or  "Fever" = Base."Yes" or "Tender Swelling Behing the Ear" = Base."Yes" or "Severe palmar pallor"= Base."Yes" or "Severe mucous membrane pallor" = Base."Yes" or "Hemoglobin (Hb) g/dL”  < 7 'g/dL')
     or     (("Not able to drink or breastfeed" = Base."Yes" or "Vomiting Everything" = Base."Yes") and ("Oral Fluid Test Results" = "Completely Unable to Drink" or "Oral Fluid Test Results" = "Vomits Immediately / Everything" or "Oral Fluid Test Results" = "Unable to Perform Test"))

/* Danger Signs : Danger Signs*/
define "Danger Signs":
        obs."Convulsing Now"= Base."Yes"
     or     "Convulsions in this illness" =  Base."Yes"
     or     obs."Unconscious" = Base."Yes"
     or     obs."Lethargic" = Base."Yes" and obs."Diarrhoea" = Base."No"
     or     obs."Lethargic" = Base."Yes" and obs."Diarrhoea" = Base."Yes" and "Severe Dehydration" = Base."No" and "Some Dehydration" = Base."No"
     or     obs."Lethargic" = Base."Yes" and obs."Diarrhoea" = Base."Yes" and (obs."Cough" = Base."Yes" or obs."Difficulty Breathing" = Base."Yes" or  "Fever" = Base."Yes" or "Tender Swelling Behing the Ear" = Base."Yes" or "Severe palmar pallor"= Base."Yes" or "Severe mucous membrane pallor" = Base."Yes" or "Hemoglobin (Hb) g/dL”  < 7 'g/dL')
     or     (("Not able to drink or breastfeed" = Base."Yes" or "Vomiting Everything" = Base."Yes") and ("Oral Fluid Test Results" = "Completely Unable to Drink" or "Oral Fluid Test Results" = "Vomits Immediately / Everything" or "Oral Fluid Test Results" = "Unable to Perform Test"))

/* EmCare.B.G.DE05 : Severe Classification up to assessments and tests excluding Severe Dehydration*/
define "EmCare.B.G.DE05":
        "Danger Signs" = Base."Yes"
     or     "Stridor in a Calm Child" = Base."Yes"
     or     "Oxygen Saturation" = < 90 '%'
     or     "Stiff Neck" = Base."Yes"
     or     "Fever" = Base."Yes" and "Throat Problem" = Base."Yes" and ("Ability to swallow" = val."Unable to swallow" or "Specify Throat problem" = val."Membrane on throat")
     or     "Tender Swelling behind the ear" = Base."Yes"
     or     ("Severe palmar pallor" = Base."Yes" or "Severe mucous membrane pallor" = Base."Yes" or "Hemoglobin (Hb) g/dL”  < 7 'g/dL')

/* Severe Classification up to assessments and tests excluding Severe Dehydration : Severe Classification up to assessments and tests excluding Severe Dehydration*/
define "Severe Classification up to assessments and tests excluding Severe Dehydration":
        "Danger Signs" = Base."Yes"
     or     "Stridor in a Calm Child" = Base."Yes"
     or     "Oxygen Saturation" = < 90 '%'
     or     "Stiff Neck" = Base."Yes"
     or     "Fever" = Base."Yes" and "Throat Problem" = Base."Yes" and ("Ability to swallow" = val."Unable to swallow" or "Specify Throat problem" = val."Membrane on throat")
     or     "Tender Swelling behind the ear" = Base."Yes"
     or     ("Severe palmar pallor" = Base."Yes" or "Severe mucous membrane pallor" = Base."Yes" or "Hemoglobin (Hb) g/dL”  < 7 'g/dL')

/* EmCare.B.G.DE06 : Fever*/
define "EmCare.B.G.DE06":
        "Axillary Temperature" >= "37.5"
     or     obs."Hot to Touch" = Base."Yes"
     or     obs."Fever Reported" = Base."Yes"

/* Fever : Fever*/
define "Fever":
        "Axillary Temperature" >= "37.5"
     or     obs."Hot to Touch" = Base."Yes"
     or     obs."Fever Reported" = Base."Yes"
