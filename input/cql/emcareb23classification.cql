/*
@author: Patrick Delcroix
@description: This library is part of the project EmCare
*/
library emcareb23classification version '1.0.1.rc12.build.457'
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers 
include emcarebase version '1.0.1.rc12.build.457' called Base
include emcareobservation version '1.0.1.rc12.build.457' called obs
include emcarevalueset version '1.0.1.rc12.build.457' called val
include emcarezscore version '1.0.1.rc12.build.457' called Z
include emcarecombineddataelements version '1.0.1.rc12.build.457' called C




context Patient


/* 
none : DL-XXXX
    C."child"
*/
define "none":
    C."child"

/* 
none : EmCare.B6.DE06
    o"Weight (Kg)"
*/
define "none":
    Base.GetObsValue('EmCare.B6.DE06')

/* alias weight : emcare.b6.de06*/
define "weight":
    "emcare.b6.de06"

/* 
none : EmCare.B6.DE08-old
    o"Weight (Kg)"
*/
define "none":
    Base.GetObsValue('EmCare.B6.DE06')

/* alias profile weight : emcare.b6.de08-old*/
define "profile weight":
    "emcare.b6.de08-old"

/* 
none : EmCare.B6.DE08
    o"Weight (Kg)"
*/
define "none":
    Base.GetObsValue('EmCare.B6.DE06')

/* alias estimated weight : emcare.b6.de08*/
define "estimated weight":
    "emcare.b6.de08"

/* 
none : DL-G-CL1-07
    C."age >= 2 months to <60 months" and ("Cough" = true  or  "Difficulty Breathing" = true) and (C."danger signs" = true or  "Stridor in a calm child" = true or Coalesce("Oxygen Saturation", 95 '%') < 90  '%')
*/
define "none":
    C."age >= 2 months to <60 months" and (Base.GetObsValue('EmCare.B10S1.DE05') = true  or  Base.GetObsValue('EmCare.B10S1.DE01') = true) and (C."danger signs" = true or  Base.GetObsValue('EmCare.B10S2.DE04') = true or Coalesce(Base.GetObsValue('EmCare.B10S2.DE07'), 95 '%') < 90  '%')

/* alias severe pneumonia or very severe disease : dl-g-cl1-07*/
define "severe pneumonia or very severe disease":
    "dl-g-cl1-07"

/* 
none : EmCare.B23.DE04
    Coalesce("Oxygen Saturation", 95 '%') < 90  '%'
*/
define "none":
    Coalesce(Base.GetObsValue('EmCare.B10S2.DE07'), 95 '%') < 90  '%'

/* 
none : EmCare.B23.DE05
    "Wheezing" = true
*/
define "none":
    Base.GetObsValue('EmCare.B10S2.DE05') = true

/* 
none : EmCare.B23.DE08
    "Cough for how long?" = "14 days or more" or "Difficulty breathing for how long?" = "14 days or more" or  "Recurrent Wheeze" = true
*/
define "none":
    Base.HasObsValueCode('EmCare.B10S1.DE06', 'EmCare.B10S1.DE08') or Base.HasObsValueCode('EmCare.B10S1.DE02', 'EmCare.B10S1.DE08') or  Base.GetObsValue('EmCare.B10S2.DE06') = true

/* 
none : Measles in last 3 months
    HasCondHistory('EmCare.B23.DE27',94) = true or  HasCondHistory('EmCare.B23.DE28',94) = true or HasCondHistory('EmCare.B23.DE29',94) =true or o"Measles within the last 3 months"=true
*/
define "none":
    Base.HasCondHistory('EmCare.B23.DE27',94) = true or  Base.HasCondHistory('EmCare.B23.DE28',94) = true or Base.HasCondHistory('EmCare.B23.DE29',94) =true or Base.GetObsValue('EmCare.B14S2.DE11')=true

/* 
none : DL-G-CL1-14
    C."age >= 2 months to <60 months" and ("Cough"= true  or  o"Difficulty Breathing" = true) and (o"Fast breathing" = true or  o"Chest indrawing" = true) and ("Severe Pneumonia or Very Severe Disease" !=true )
*/
define "none":
    C."age >= 2 months to <60 months" and (Base.GetObsValue('EmCare.B10S1.DE05')= true  or  Base.GetObsValue('EmCare.B10S1.DE01') = true) and (Base.GetObsValue('EmCare.B22.DE07') = true or  Base.GetObsValue('EmCare.B10S2.DE03') = true) and (Coalesce("severe pneumonia or very severe disease",false)!=true )

/* alias pneumonia : dl-g-cl1-14*/
define "pneumonia":
    "dl-g-cl1-14"

/* 
none : DL-G-CL1-19
    C."age >= 2 months to <60 months"  and ("Cough"= true  or  "Difficulty Breathing" = true) and "Severe Pneumonia or Very Severe Disease"!= true and "Pneumonia"!=true
*/
define "none":
    C."age >= 2 months to <60 months"  and (Base.GetObsValue('EmCare.B10S1.DE05')= true  or  Base.GetObsValue('EmCare.B10S1.DE01') = true) and Coalesce("severe pneumonia or very severe disease",false)!=true and Coalesce("pneumonia",false)!=true

/* alias cough or cold : dl-g-cl1-19*/
define "cough or cold":
    "dl-g-cl1-19"

/* 
none : DL-G-CL1-23-30
    C."severe dehydration"
*/
define "none":
    C."severe dehydration"

/* alias severe dehydration : dl-g-cl1-23-30*/
define "severe dehydration":
    "dl-g-cl1-23-30"

/* 
none : DL-G-CL1-24-32
    C."some dehydration"
*/
define "none":
    C."some dehydration"

/* alias some dehydration : dl-g-cl1-24-32*/
define "some dehydration":
    "dl-g-cl1-24-32"

/* 
none : DL-G-CL1-30
    C."age >= 2 months to <60 months"  and "Diarrhoea" = true and  "Severe Dehydration"!=true  and  "Some Dehydration"!=true
*/
define "none":
    C."age >= 2 months to <60 months"  and Base.GetObsValue('EmCare.B11S1.DE01') = true and  Coalesce("severe dehydration",false)!=true  and  Coalesce("some dehydration",false)!=true

/* alias no dehydration : dl-g-cl1-30*/
define "no dehydration":
    "dl-g-cl1-30"

/* 
none : DL-G-CL1-31
    C."age >= 2 months to <60 months"  and "Diarrhoea" = true and  ("Severe Dehydration"=true  or  "Some Dehydration"=true) and "Diarrhoea for how long?" = "14 days or more"
*/
define "none":
    C."age >= 2 months to <60 months"  and Base.GetObsValue('EmCare.B11S1.DE01') = true and  ("severe dehydration"=true  or  "some dehydration"=true) and Base.HasObsValueCode('EmCare.B11S1.DE02', 'EmCare.B10S1.DE08')

/* alias severe persistent diarrhoea : dl-g-cl1-31*/
define "severe persistent diarrhoea":
    "dl-g-cl1-31"

/* 
none : DL-G-CL1-32
    C."age >= 2 months to <60 months"  and "Diarrhoea" = true and  "No Dehydration"=true   and "Diarrhoea for how long?" = "14 days or more"
*/
define "none":
    C."age >= 2 months to <60 months"  and Base.GetObsValue('EmCare.B11S1.DE01') = true and  "no dehydration"=true   and Base.HasObsValueCode('EmCare.B11S1.DE02', 'EmCare.B10S1.DE08')

/* alias persistent diarrhoea : dl-g-cl1-32*/
define "persistent diarrhoea":
    "dl-g-cl1-32"

/* 
none : DL-G-CL1-33
    C."age >= 2 months to <60 months"  and "Diarrhoea" = true and "Blood in the stool in this Illness" = true and "Axillary Temperature  (degrees Celcius)" < 38.5 'Cel'
*/
define "none":
    C."age >= 2 months to <60 months"  and Base.GetObsValue('EmCare.B11S1.DE01') = true and Base.GetObsValue('EmCare.B11S1.DE05') = true and Base.GetObsValue('EmCare.B6.DE01') < 38.5 'Cel'

/* alias dysentery : dl-g-cl1-33*/
define "dysentery":
    "dl-g-cl1-33"

/* 
none : DL-I-CL1-01
    C."age >= 2 months to <60 months"  and "Diarrhoea" = true and "Blood in the stool in this Illness" = true and "Axillary Temperature  (degrees Celcius)" >= 38.5 'Cel'
*/
define "none":
    C."age >= 2 months to <60 months"  and Base.GetObsValue('EmCare.B11S1.DE01') = true and Base.GetObsValue('EmCare.B11S1.DE05') = true and Base.GetObsValue('EmCare.B6.DE01') >= 38.5 'Cel'

/* alias possible shigella : dl-i-cl1-01*/
define "possible shigella":
    "dl-i-cl1-01"

/* 
none : DL-I-CL1-05
    C."age >= 2 months to <60 months"  and C."fever" = true and o"Throat problem" = true and ("Not able to drink or breastfeed" = true or "Ability to swallow" = "Unable to swallow" or "Specify Throat problem" = "Membrane on throat")
*/
define "none":
    C."age >= 2 months to <60 months"  and C."fever" = true and Base.GetObsValue('EmCare.B17S1.DE01') = true and (Base.GetObsValue('EmCare.B7.DE09') = true or Base.HasObsValueCode('EmCare.B17S1.DE07', 'EmCare.B17S1.DE10') or Base.HasObsValueCode('EmCare.B17S1.DE02', 'EmCare.B17S1.DE05'))

/* alias throat abscess or possible diptheria : dl-i-cl1-05*/
define "throat abscess or possible diptheria":
    "dl-i-cl1-05"

/* 
none : DL-I-CL1-06
    C."age >= 2 months to <60 months"  and (C."fever" = true or "Ability to swallow" = "Difficulty in swallowing" ) and "Throat problem" = true and ("Not able to drink or breastfeed" = true or "Ability to swallow" = "Unable to swallow" or "Specify Throat problem" = "Membrane on throat") and (ToInteger("Enlarged lymph nodes on front of neck" = true )+ToInteger("Specify Throat problem" = "Red (congested) throat")+ToInteger("Specify Throat problem" = "Exudate on Throat"))>1 and "Throat Abscess or Possible Diptheria"!=true
*/
define "none":
    C."age >= 2 months to <60 months"  and (C."fever" = true or Base.HasObsValueCode('EmCare.B17S1.DE07', 'EmCare.B17S1.DE09') ) and Base.GetObsValue('EmCare.B17S1.DE01') = true and (Base.GetObsValue('EmCare.B7.DE09') = true or Base.HasObsValueCode('EmCare.B17S1.DE07', 'EmCare.B17S1.DE10') or Base.HasObsValueCode('EmCare.B17S1.DE02', 'EmCare.B17S1.DE05')) and (ToInteger(Coalesce(Base.GetObsValue('EmCare.B17S1.DE06') = true ,false))+ToInteger(Coalesce(Base.HasObsValueCode('EmCare.B17S1.DE02', 'EmCare.B17S1.DE03'),false))+ToInteger(Coalesce(Base.HasObsValueCode('EmCare.B17S1.DE02', 'EmCare.B17S1.DE04'),false)))>1 and Coalesce("throat abscess or possible diptheria",false)!=true

/* alias streptococcal sore throat : dl-i-cl1-06*/
define "streptococcal sore throat":
    "dl-i-cl1-06"

/* 
none : DL-I-CL1-07
    C."age >= 2 months to <60 months"  and ("Ability to swallow" = "Difficulty in swallowing" or "Enlarged lymph nodes on front of neck" = true or "Specify Throat problem" = "Red (congested) throat" or "Specify Throat problem" = "Exudate on Throat" ) and "Throat problem" = true and  "Throat Abscess or Possible Diptheria"!=true and "Streptococcal Sore Throat"!=true
*/
define "none":
    C."age >= 2 months to <60 months"  and (Base.HasObsValueCode('EmCare.B17S1.DE07', 'EmCare.B17S1.DE09') or Base.GetObsValue('EmCare.B17S1.DE06') = true or Base.HasObsValueCode('EmCare.B17S1.DE02', 'EmCare.B17S1.DE03') or Base.HasObsValueCode('EmCare.B17S1.DE02', 'EmCare.B17S1.DE04') ) and Base.GetObsValue('EmCare.B17S1.DE01') = true and  Coalesce("throat abscess or possible diptheria",false)!=true and Coalesce("streptococcal sore throat",false)!=true

/* alias non-streptococcal sore throat : dl-i-cl1-07*/
define "non-streptococcal sore throat":
    "dl-i-cl1-07"

/* 
none : DL-I-CL1-09
    C."age >= 2 months to <60 months" and "Throat problem" = true and  "Throat Abscess or Possible Diptheria"!=true and "Streptococcal Sore Throat"!=true and "Non-Streptococcal Sore Throat"!=true
*/
define "none":
    C."age >= 2 months to <60 months" and Base.GetObsValue('EmCare.B17S1.DE01') = true and  Coalesce("throat abscess or possible diptheria",false)!=true and Coalesce("streptococcal sore throat",false)!=true and Coalesce("non-streptococcal sore throat",false)!=true

/* alias no throat problem : dl-i-cl1-09*/
define "no throat problem":
    "dl-i-cl1-09"

/* 
none : DL-G-CL1-73
    C."age >= 2 months to <60 months" and "Ear Problem" = true and   "Tender swelling behind the ear" = true
*/
define "none":
    C."age >= 2 months to <60 months" and Base.GetObsValue('EmCare.B13S1.DE01') = true and   Base.GetObsValue('EmCare.B13S2.DE01') = true

/* alias mastoiditis : dl-g-cl1-73*/
define "mastoiditis":
    "dl-g-cl1-73"

/* 
none : DL-G-CL1-74-76
    C."age >= 2 months to <60 months" and "Ear Problem" = true
*/
define "none":
    C."age >= 2 months to <60 months" and Base.GetObsValue('EmCare.B13S1.DE01') = true

/* alias acute ear infection : dl-g-cl1-74-76*/
define "acute ear infection":
    "dl-g-cl1-74-76"

/* 
none : DL-I-CL1-11-12
    C."age >= 2 months to <60 months" and "Ear Problem" = true and   "Pus Seen Draining from the Ear" = true
*/
define "none":
    C."age >= 2 months to <60 months" and Base.GetObsValue('EmCare.B13S1.DE01') = true and   Base.GetObsValue('EmCare.B13S2.DE02') = true

/* alias chronic ear infection : dl-i-cl1-11-12*/
define "chronic ear infection":
    "dl-i-cl1-11-12"

/* 
none : EmCare.B23.DE32a
    "Ear Pain" = true or C."fever" = true
*/
define "none":
    Base.GetObsValue('EmCare.B13S1.DE02') = true or C."fever" = true

/* 
none : DL-G-CL1-79
    C."age >= 2 months to <60 months" and "Ear Problem" = true and  "Chronic Ear Infection"!=true and "Mastoiditis"!=true and "Acute Ear Infection"!=true
*/
define "none":
    C."age >= 2 months to <60 months" and Base.GetObsValue('EmCare.B13S1.DE01') = true and  Coalesce("chronic ear infection",false)!=true and Coalesce("mastoiditis",false)!=true and Coalesce("acute ear infection",false)!=true

/* alias no ear infection : dl-g-cl1-79*/
define "no ear infection":
    "dl-g-cl1-79"

/* 
none : DL-G-CL1-34
    C."age >= 2 months to <60 months" and C."fever" = true and (C."danger signs" = true or  "Stiff Neck" = true)
*/
define "none":
    C."age >= 2 months to <60 months" and C."fever" = true and (C."danger signs" = true or  Base.GetObsValue('EmCare.B12S2.DE01') = true)

/* alias very severe febrile disease : dl-g-cl1-34*/
define "very severe febrile disease":
    "dl-g-cl1-34"

/* 
none : DL-I-CL1-03
    C."age >= 2 months to <60 months" and C."fever" = true and ( "Streptococcal Sore Throat"!=true  or "Pneumonia"!=true or "Acute Ear Infection"!=true  or  "Chronic Ear Infection"!=true or  "Dysentery"!=true) and "Possible Shigella"!=true and  "Throat Abscess or Possible Diptheria"!=true and "Severe Complicated Measles"!=true and "Measles with Eye or Mouth Complication"!=true and "Possible Measles"!=true and  "Mastoiditis"!=true and "Very Severe Febrile Disease"!=true and  "Severe Pneumonia or Very Severe Disease"!=true
*/
define "none":
    C."age >= 2 months to <60 months" and C."fever" = true and ( Coalesce("streptococcal sore throat",false)!=true  or Coalesce("pneumonia",false)!=true or Coalesce("acute ear infection",false)!=true  or  Coalesce("chronic ear infection",false)!=true or  Coalesce("dysentery",false)!=true) and Coalesce("possible shigella",false)!=true and  Coalesce("throat abscess or possible diptheria",false)!=true and Coalesce("severe complicated measles",false)!=true and Coalesce("measles with eye or mouth complication",false)!=true and Coalesce("possible measles",false)!=true and  Coalesce("mastoiditis",false)!=true and Coalesce("very severe febrile disease",false)!=true and  Coalesce("severe pneumonia or very severe disease",false)!=true

/* alias fever: possible bacterial infection : dl-i-cl1-03*/
define "fever: possible bacterial infection":
    "dl-i-cl1-03"

/* 
none : EmCare.B23.DE26a
    "Fever for how long?" = "7 Days or more" and "Has Fever been present every day since the Fever started?" = true
*/
define "none":
    Base.HasObsValueCode('EmCare.B12S1.DE03', 'EmCare.B12S1.DE05') and Base.GetObsValue('EmCare.B12S1.DE06') = true

/* alias fever present every day for 7 days or more : emcare.b23.de26a*/
define "fever present every day for 7 days or more":
    "emcare.b23.de26a"

/* 
none : DL-I-CL1-26
    C."age >= 2 months to <60 months" and C."fever" = true and "Possible Shigella"!=true and "Fever: possible bacterial infection"!=true and "Throat Abscess or Possible Diptheria"!=true and "Severe Complicated Measles"!=true and "Measles with Eye or Mouth Complication"!=true and "Possible Measles"!=true and "Mastoiditis"!=true and "Very Severe Febrile Disease"!=true
*/
define "none":
    C."age >= 2 months to <60 months" and C."fever" = true and Coalesce("possible shigella",false)!=true and Coalesce("fever: possible bacterial infection",false)!=true and Coalesce("throat abscess or possible diptheria",false)!=true and Coalesce("severe complicated measles",false)!=true and Coalesce("measles with eye or mouth complication",false)!=true and Coalesce("possible measles",false)!=true and Coalesce("mastoiditis",false)!=true and Coalesce("very severe febrile disease",false)!=true

/* alias fever: bacterial infection unlikely : dl-i-cl1-26*/
define "fever: bacterial infection unlikely":
    "dl-i-cl1-26"

/* 
none : DL-I-CL1-16-66
    C."age >= 2 months to <60 months" and C."fever" = true
*/
define "none":
    C."age >= 2 months to <60 months" and C."fever" = true

/* alias severe complicated measles : dl-i-cl1-16-66*/
define "severe complicated measles":
    "dl-i-cl1-16-66"

/* 
none : DL-G-CL1-69-70
    C."age >= 2 months to <60 months" and C."fever" = true   and "Severe Complicated Measles"!=true and  ("Pus Draining from Eye" = true  or "Oral Sores or Mouth Ulcers" = "Mouth Sores or Mouth Ulcers - Not Deep and Extensive" )
*/
define "none":
    C."age >= 2 months to <60 months" and C."fever" = true   and Coalesce("severe complicated measles",false)!=true and  (Base.GetObsValue('EmCare.B14S2.DE02') = true  or Base.HasObsValueCode('EmCare.B14S2.DE38', 'EmCare.B14S2.DE42') )

/* alias measles with eye or mouth complication : dl-g-cl1-69-70*/
define "measles with eye or mouth complication":
    "dl-g-cl1-69-70"

/* 
none : DL-G-CL1-71
    C."age >= 2 months to <60 months" and C."fever" = true  and ("Cough" = true  or  "Runny nose" = true or "Red eyes" = true)  and "Severe Complicated Measles"!=true and "Measles with Eye or Mouth Complication"!=true and "Measles Rash" = true  and "Generalised or Localised Skin Problem" = "Generalised Skin Problem"
*/
define "none":
    C."age >= 2 months to <60 months" and C."fever" = true  and (Base.GetObsValue('EmCare.B10S1.DE05') = true  or  Base.GetObsValue('EmCare.B12S2.DE05') = true or Base.GetObsValue('EmCare.B14S2.DE01') = true)  and Coalesce("severe complicated measles",false)!=true and Coalesce("measles with eye or mouth complication",false)!=true and Base.GetObsValue('EmCare.B14S2.DE10') = true  and Base.GetObsValue('EmCare.B14S2.DE06&EmCare.B14S2.DE07') = true

/* alias possible measles : dl-g-cl1-71*/
define "possible measles":
    "dl-g-cl1-71"

/* 
none : DL-G-CL1-109
    C."age >= 2 months to <60 months" and ("Palmar Pallor" = "Severe Palmar Pallor" or "Mucous membrane pallor" = "Severe mucous membrane pallor" or "Hemoglobin (Hb) g/dL" < 7 'g/dL' )
*/
define "none":
    C."age >= 2 months to <60 months" and (Base.HasObsValueCode('EmCare.B15S2.DE01', 'EmCare.B15S2.DE02') or Base.HasObsValueCode('EmCare.B15S2.DE09', 'EmCare.B15S2.DE10') or Base.GetObsValue('EmCare.B22.DE81') < 7 'g/dL' )

/* alias severe anaemia : dl-g-cl1-109*/
define "severe anaemia":
    "dl-g-cl1-109"

/* 
none : DL-G-CL1-110
    C."age >= 2 months to <60 months" and ("Palmar Pallor" = "Some Palmar Pallor" or "Mucous membrane pallor" = "Some mucous membrane pallor" or ("Hemoglobin (Hb) g/dL" >= 7 'g/dL' and "Hemoglobin (Hb) g/dL" < 11 'g/dL' )) and "Severe Anaemia"!=true
*/
define "none":
    C."age >= 2 months to <60 months" and (Base.HasObsValueCode('EmCare.B15S2.DE01', 'EmCare.B15S2.DE03') or Base.HasObsValueCode('EmCare.B15S2.DE09', 'EmCare.B15S2.DE11') or (Base.GetObsValue('EmCare.B22.DE81') >= 7 'g/dL' and Base.GetObsValue('EmCare.B22.DE81') < 11 'g/dL' )) and Coalesce("severe anaemia",false)!=true

/* alias anaemia : dl-g-cl1-110*/
define "anaemia":
    "dl-g-cl1-110"

/* 
none : DL-G-CL1-111
    C."age >= 2 months to <60 months" and "Palmar Pallor" = "No Palmar Pallor" and "Mucous membrane pallor" = "No mucous membrane pallor" and  ("Hemoglobin (Hb) g/dL" >= 11 'g/dL' or "Hemoglobin Test Not Available"= true)
*/
define "none":
    C."age >= 2 months to <60 months" and Base.HasObsValueCode('EmCare.B15S2.DE01', 'EmCare.B15S2.DE04') and Base.HasObsValueCode('EmCare.B15S2.DE09', 'EmCare.B15S2.DE12') and  (Base.GetObsValue('EmCare.B22.DE81') >= 11 'g/dL' or Base.GetObsValue('EmCare.B22.DE82')= true)

/* alias no anaemia : dl-g-cl1-111*/
define "no anaemia":
    "dl-g-cl1-111"

/* 
none : DL-G-CL1-80
    C."age >= 2 months to <60 months"  and "Eye Problem" = true and "Pus Draining from Eye" = true and ("Severe Complicated Measles"!=true and "Measles with Eye or Mouth Complication"!=true)
*/
define "none":
    C."age >= 2 months to <60 months"  and Base.GetObsValue('EmCare.B14S1.DE03') = true and Base.GetObsValue('EmCare.B14S2.DE02') = true and (Coalesce("severe complicated measles",false)!=true and Coalesce("measles with eye or mouth complication",false)!=true)

/* alias eye infection : dl-g-cl1-80*/
define "eye infection":
    "dl-g-cl1-80"

/* 
none : DL-G-CL1-83
    C."age >= 2 months to <60 months"  and "Eye Problem" = true and  o"Clouding of the Cornea" = true and "Severe Complicated Measles"!=true
*/
define "none":
    C."age >= 2 months to <60 months"  and Base.GetObsValue('EmCare.B14S1.DE03') = true and  Base.GetObsValue('EmCare.B14S2.DE03') = true and Coalesce("severe complicated measles",false)!=true

/* alias clouding of the cornea : dl-g-cl1-83*/
define "clouding of the cornea":
    "dl-g-cl1-83"

/* alias new or not previously treated : emcare.b23.de36*/
define "new or not previously treated":
    "emcare.b23.de36"

/* 
none : DL-G-CL1-88
    C."age >= 2 months to <60 months" and "Skin Problem" = true and "Itchy Skin" = true and "Type of Skin Problem"= v"Papular Urticaria or Papular Pruritic Eruptions"
*/
define "none":
    C."age >= 2 months to <60 months" and Base.GetObsValue('EmCare.B14S1.DE01') = true and Base.GetObsValue('EmCare.B14S1.DE02') = true and Base.GetObsValue('EmCare.B14S2.DE13&EmCare.B14S2.DE18') = true

/* alias papular urticaria or papular pruritic eruptions : dl-g-cl1-88*/
define "papular urticaria or papular pruritic eruptions":
    "dl-g-cl1-88"

/* 
none : DL-G-CL1-90
    C."age >= 2 months to <60 months" and "Skin Problem" = true and "Type of Skin Problem"= v"Ringworm (Tinea)"
*/
define "none":
    C."age >= 2 months to <60 months" and Base.GetObsValue('EmCare.B14S1.DE01') = true and Base.GetObsValue('EmCare.B14S2.DE13&EmCare.B14S2.DE19') = true

/* alias ringworm (tinea) : dl-g-cl1-90*/
define "ringworm (tinea)":
    "dl-g-cl1-90"

/* 
none : EmCare.B23.DE43a
    o"Scalp Infection (tinea capitis)" = true
*/
define "none":
    Base.GetObsValue('EmCare.B14S2.DE19a') = true

/* alias scalp infection (tinea capitis) : emcare.b23.de43a*/
define "scalp infection (tinea capitis)":
    "emcare.b23.de43a"

/* 
none : DL-G-CL1-91
    C."age >= 2 months to <60 months" and "Skin Problem" = true and "Itchy Skin" = true and "Type of Skin Problem"= v"Scabies"
*/
define "none":
    C."age >= 2 months to <60 months" and Base.GetObsValue('EmCare.B14S1.DE01') = true and Base.GetObsValue('EmCare.B14S1.DE02') = true and Base.GetObsValue('EmCare.B14S2.DE13&EmCare.B14S2.DE21') = true

/* alias scabies : dl-g-cl1-91*/
define "scabies":
    "dl-g-cl1-91"

/* 
none : DL-G-CL1-93
    C."age >= 2 months to <60 months" and "Skin Problem" = true and "Itchy Skin" = true and "Generalised or Localised Skin Problem" = "Generalised Skin Problem" and "Blisters, Sores or Pustules" = true and "Type of Skin Problem"= v"Chickenpox"
*/
define "none":
    C."age >= 2 months to <60 months" and Base.GetObsValue('EmCare.B14S1.DE01') = true and Base.GetObsValue('EmCare.B14S1.DE02') = true and Base.GetObsValue('EmCare.B14S2.DE06&EmCare.B14S2.DE07') = true and Base.GetObsValue('EmCare.B14S2.DE12') = true and Base.GetObsValue('EmCare.B14S2.DE13&EmCare.B14S2.DE22') = true

/* alias chickenpox : dl-g-cl1-93*/
define "chickenpox":
    "dl-g-cl1-93"

/* 
none : EmCare.B23.DE46A
    "Severe rash"= true
*/
define "none":
    Base.GetObsValue('EmCare.B14S2.DE22A')= true

/* 
none : EmCare.B23.DE46
    "Pneumonia"=true
*/
define "none":
    "pneumonia"=true

/* 
none : DL-G-CL1-95
    C."age >= 2 months to <60 months" and "Skin Problem" = true  and "Generalised or Localised Skin Problem" = "Localised Skin Problem" and "Blisters, Sores or Pustules" = true and "Type of Skin Problem"= v"Herpes Zoster"
*/
define "none":
    C."age >= 2 months to <60 months" and Base.GetObsValue('EmCare.B14S1.DE01') = true  and Base.GetObsValue('EmCare.B14S2.DE06&EmCare.B14S2.DE08') = true and Base.GetObsValue('EmCare.B14S2.DE12') = true and Base.GetObsValue('EmCare.B14S2.DE13&EmCare.B14S2.DE23') = true

/* alias herpes zoster : dl-g-cl1-95*/
define "herpes zoster":
    "dl-g-cl1-95"

/* 
none : EmCare.B23.DE48
    "Eye Involvement" = true
*/
define "none":
    Base.GetObsValue('EmCare.B14S2.DE24') = true

/* 
none : EmCare.B23.DE48a
    "Disseminated Herpes Zoster" = true
*/
define "none":
    Base.GetObsValue('EmCare.B14S2.DE23a') = true

/* 
none : DL-G-CL1-98
    C."age >= 2 months to <60 months" and "Skin Problem" = true   and "Blisters, Sores or Pustules" = true and "Type of Skin Problem"= v"Impetigo"
*/
define "none":
    C."age >= 2 months to <60 months" and Base.GetObsValue('EmCare.B14S1.DE01') = true   and Base.GetObsValue('EmCare.B14S2.DE12') = true and Base.GetObsValue('EmCare.B14S2.DE13&EmCare.B14S2.DE25') = true

/* alias impetigo : dl-g-cl1-98*/
define "impetigo":
    "dl-g-cl1-98"

/* 
none : EmCare.B23.DE50
    "Skin infection extends to muscle" = true or  "Measured Temperature" = true
*/
define "none":
    Base.GetObsValue('EmCare.B14S2.DE30') = true or  Base.GetObsValue('EmCare.B6.DE01A') = true

/* 
none : EmCare.B23.DE50a
    "Extensive impetigo lesions" = true
*/
define "none":
    Base.GetObsValue('EmCare.B14S2.DE30b') = true

/* 
none : DL-G-CL1-99
    C."age >= 2 months to <60 months" and "Skin Problem" = true   and "Type of Skin Problem"= v"Molluscum Contagiosum"
*/
define "none":
    C."age >= 2 months to <60 months" and Base.GetObsValue('EmCare.B14S1.DE01') = true   and Base.GetObsValue('EmCare.B14S2.DE13&EmCare.B14S2.DE31') = true

/* alias molluscum contagiosum : dl-g-cl1-99*/
define "molluscum contagiosum":
    "dl-g-cl1-99"

/* 
none : EmCare.B23.DE52a
    "Extensive molluscum lesions"  = true or "Molluscum lesions close to the eye"=true
*/
define "none":
    Base.GetObsValue('EmCare.B14S2.DE31a')  = true or Base.GetObsValue('EmCare.B14S2.DE31b')=true

/* 
none : DL-G-CL1-100
    C."age >= 2 months to <60 months" and "Skin Problem" = true   and "Generalised or Localised Skin Problem" = "Localised Skin Problem" and "Type of Skin Problem"= v"Warts"
*/
define "none":
    C."age >= 2 months to <60 months" and Base.GetObsValue('EmCare.B14S1.DE01') = true   and Base.GetObsValue('EmCare.B14S2.DE06&EmCare.B14S2.DE08') = true and Base.GetObsValue('EmCare.B14S2.DE13&EmCare.B14S2.DE32') = true

/* alias warts : dl-g-cl1-100*/
define "warts":
    "dl-g-cl1-100"

/* 
none : EmCare.B23.DE53a
    "Extensive Warts" = true
*/
define "none":
    Base.GetObsValue('EmCare.B14S2.DE32a') = true

/* 
none : DL-G-CL1-102
    C."age >= 2 months to <60 months" and "Skin Problem" = true   and "Generalised or Localised Skin Problem" = "Localised Skin Problem" and "Blisters, Sores or Pustules" = false and "Type of Skin Problem"= v"Seborrhoeic Dermatitis"
*/
define "none":
    C."age >= 2 months to <60 months" and Base.GetObsValue('EmCare.B14S1.DE01') = true   and Base.GetObsValue('EmCare.B14S2.DE06&EmCare.B14S2.DE08') = true and Base.GetObsValue('EmCare.B14S2.DE12') = false and Base.GetObsValue('EmCare.B14S2.DE13&EmCare.B14S2.DE33') = true

/* alias seborrhoeic dermatitis : dl-g-cl1-102*/
define "seborrhoeic dermatitis":
    "dl-g-cl1-102"

/* 
none : EmCare.B23.DE55
    o"Severe Seborrhoeic Dermatitis" = true
*/
define "none":
    Base.GetObsValue('EmCare.B14S2.DE34') = true

/* 
none : DL-G-CL1-103
    C."age >= 2 months to <60 months" and "Skin Problem" = true   and "Type of Skin Problem"= v"Fixed Drug Reaction"
*/
define "none":
    C."age >= 2 months to <60 months" and Base.GetObsValue('EmCare.B14S1.DE01') = true   and Base.GetObsValue('EmCare.B14S2.DE13&EmCare.B14S2.DE35') = true

/* 
none : DL-G-CL1-104
    C."age >= 2 months to <60 months" and "Skin Problem" = true   and "Type of Skin Problem"= v"Eczema"
*/
define "none":
    C."age >= 2 months to <60 months" and Base.GetObsValue('EmCare.B14S1.DE01') = true   and Base.GetObsValue('EmCare.B14S2.DE13&EmCare.B14S2.DE36') = true

/* 
none : EmCare.B23.DE57a
    o"Severe acute moist or weeping eczema" = true
*/
define "none":
    Base.GetObsValue('EmCare.B14S2.DE36b') = true

/* 
none : EmCare.B23.DE57b
    o"Secondary bacterial infection of eczema" = true
*/
define "none":
    Base.GetObsValue('EmCare.B14S2.DE36a') = true

/* 
none : EmCare.B23.DE57c
    o"Secondary herpes infection of eczema (eczema herpeticum)" = true
*/
define "none":
    Base.GetObsValue('EmCare.B14S2.DE36c') = true

/* 
none : DL-G-CL1-105
    C."age >= 2 months to <60 months" and "Skin Problem" = true   and "Generalised or Localised Skin Problem" = "Generalised Skin Problem" and "Blisters, Sores or Pustules" = true and "Type of Skin Problem"= v"Steven Johnson Syndrome (SJS)"
*/
define "none":
    C."age >= 2 months to <60 months" and Base.GetObsValue('EmCare.B14S1.DE01') = true   and Base.GetObsValue('EmCare.B14S2.DE06&EmCare.B14S2.DE07') = true and Base.GetObsValue('EmCare.B14S2.DE12') = true and Base.GetObsValue('EmCare.B14S2.DE13&EmCare.B14S2.DE37') = true

/* alias steven johnson syndrome (sjs) : dl-g-cl1-105*/
define "steven johnson syndrome (sjs)":
    "dl-g-cl1-105"

/* 
none : DL-G-CL1-106
    C."age >= 2 months to <60 months" and C."fever" = true and ("Oral Sores or Mouth Ulcers" = "Mouth Sores or Mouth Ulcers - Not Deep and Extensive" or "Oral Sores or Mouth Ulcers" = "Mouth Sores or Mouth Ulcers - Deep and Extensive" )
*/
define "none":
    C."age >= 2 months to <60 months" and C."fever" = true and (Base.HasObsValueCode('EmCare.B14S2.DE38', 'EmCare.B14S2.DE42') or Base.HasObsValueCode('EmCare.B14S2.DE38', 'EmCare.B14S2.DE41') )

/* alias mouth sores or ulcer : dl-g-cl1-106*/
define "mouth sores or ulcer":
    "dl-g-cl1-106"

/* 
none : EmCare.B23.DE60
    "Oral Sores or Mouth Ulcers" = "Mouth Sores or Mouth Ulcers - Deep and Extensive"
*/
define "none":
    Base.HasObsValueCode('EmCare.B14S2.DE38', 'EmCare.B14S2.DE41')

/* 
none : DL-G-CL1-108
    C."age >= 2 months to <60 months" and C."fever" = true and "Oral Sores or Mouth Ulcers"= v"Oral Thrush"
*/
define "none":
    C."age >= 2 months to <60 months" and C."fever" = true and Base.HasObsValueCode('EmCare.B14S2.DE38', 'EmCare.B14S2.DE40')

/* alias oral thrush : dl-g-cl1-108*/
define "oral thrush":
    "dl-g-cl1-108"

/* 
none : DL-I-CL1-28
    Z."WAZ"<-3
*/
define "none":
    Z."WAZ"<-3

/* alias very low weight for age : dl-i-cl1-28*/
define "very low weight for age":
    "dl-i-cl1-28"

/* 
none : DL-I-CL1-33
    Z."WAZ">=-3 and Z."WAZ"<-2
*/
define "none":
    Z."WAZ">=-3 and Z."WAZ"<-2

/* alias low weight for age : dl-i-cl1-33*/
define "low weight for age":
    "dl-i-cl1-33"

/* 
none : DL-I-CL1-34
    o"Weight (Kg)" is null and ((AgeInMonths()> 6 and  "MUAC (mm)" < 12.5 'cm' ) or (AgeInMonths()<= 6 and "MUAC cannot be measured"=true))
*/
define "none":
    Base.GetObsValue('EmCare.B6.DE06') is null and ((AgeInMonths()> 6 and  Base.GetObsValue('EmCare.B6.DE17') < 12.5 'cm' ) or (AgeInMonths()<= 6 and Base.GetObsValue('EmCare.B6.DE17a')=true))

/* alias low muac or visual report of wasting : dl-i-cl1-34*/
define "low muac or visual report of wasting":
    "dl-i-cl1-34"
