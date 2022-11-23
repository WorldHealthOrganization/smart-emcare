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
include EmCareZScore version '0.99.99' called Z
include emcarecombineddataelements version '0.99.99' called C




context Patient    

/* dl-g-cl1-07 : Severe Pneumonia or Very Severe Disease*/
define "dl-g-cl1-07":
    C."age >= 2 months to <60 months" and (obs."cough" = true  or  obs."difficulty breathing" = true) and (C."danger signs" = true or  obs."stridor in a calm child" = true or obs."oxygen saturation" < 90  '%')

/* alias severe pneumonia or very severe disease : dl-g-cl1-07*/
define "severe pneumonia or very severe disease":
    "dl-g-cl1-07"

/* emcare.b23.de04 : nan*/
define "emcare.b23.de04":
    obs."oxygen saturation" < 90  '%'

/* emcare.b23.de05 : nan*/
define "emcare.b23.de05":
    obs."wheezing" = true

/* emcare.b23.de08 : nan*/
define "emcare.b23.de08":
    obs."cough for how long?" = val."14 days or more" or obs."difficulty breathing for how long?" = val."14 days or more" or  obs."recurrent wheeze" = true

/* measles in last 3 months : nan*/
define "measles in last 3 months":
    Base.HasCondHistory('EmCare.B23.DE27',94) = true or  Base.HasCondHistory('EmCare.B23.DE28',94) = true or Base.HasCondHistory('EmCare.B23.DE29',94) =true

/* dl-g-cl1-14 : Pneumonia*/
define "dl-g-cl1-14":
    C."age >= 2 months to <60 months" and (obs."cough"= true  or  obs."difficulty breathing" = true) and (obs."fast breathing" = true or  obs."chest indrawing" = true) and ( obs."wheezing" = false) and ("severe pneumonia or very severe disease" = false) and (obs."inhaled bronchodilator trial not feasible or available"=true or obs."chest indrawing (post inhaled bronchodilator trial)"=true or   obs."fast breathing (post inhaled bronchodilator trial)"=true)

/* alias pneumonia : dl-g-cl1-14*/
define "pneumonia":
    "dl-g-cl1-14"

/* dl-g-cl1-19 : Cough or Cold*/
define "dl-g-cl1-19":
    C."age >= 2 months to <60 months"  and (obs."cough"= true  or  obs."difficulty breathing" = true) and ("severe pneumonia or very severe disease" = false) and ("pneumonia" = false)

/* alias cough or cold : dl-g-cl1-19*/
define "cough or cold":
    "dl-g-cl1-19"

/* dl-g-cl1-23-30 : Severe Dehydration*/
define "dl-g-cl1-23-30":
    (C."age >= 2 months to <60 months"  and obs."diarrhoea" = true)
     and ((    obs."unconscious" = true and obs."skin pinch of abdomen" = val."skin pinch goes back slowly (2 seconds or fewer, but not immediately)")
     or (    (obs."restless and irritable" = true or obs."skin pinch of abdomen" = val."skin pinch goes back slowly (2 seconds or fewer, but not immediately)" ) and (obs."oral fluid test results" = val."completely unable to drink" or obs."oral fluid test results" = val."vomits immediately / everything" or  obs."completely unable to drink or vomits immediately / everything"=true))
     or (    (ToInteger(obs."unconscious or lethargic" = true) + ToInteger(obs."sunken eyes" = true) +ToInteger(obs."skin pinch of abdomen" = val."skin pinch goes back very slowly (more than 2 seconds)" )+ToInteger( obs."oral fluid test results" = val."completely unable to drink"  or obs."oral fluid test results" = val."vomits immediately / everything"  or obs."completely unable to drink or vomits immediately / everything"=true or obs."oral fluid test results" = val."drinks poorly") )>1))

/* alias severe dehydration : dl-g-cl1-23-30*/
define "severe dehydration":
    "dl-g-cl1-23-30"

/* dl-g-cl1-24-32 : Some Dehydration*/
define "dl-g-cl1-24-32":
    (C."age >= 2 months to <60 months"  and obs."diarrhoea" = true and  "severe dehydration"=false)
     and ((    (ToInteger(obs."restless and irritable" = true) + ToInteger(obs."sunken eyes" = true) + ToInteger(obs."skin pinch of abdomen" = val."skin pinch goes back slowly (2 seconds or fewer, but not immediately)" ) + ToInteger(obs."oral fluid test results" = val."drinks eagerly / thirstily" ))>1)
     or (    obs."restless and irritable" = true and (obs."oral fluid test results" = val."drinks poorly" or  obs."skin pinch of abdomen" = val."skin pinch goes back very slowly (more than 2 seconds)" ))
     or (    (obs."lethargic" = true or obs."oral fluid test results" = val."drinks poorly") and (obs."skin pinch of abdomen" = val."skin pinch goes back slowly (2 seconds or fewer, but not immediately)" )))

/* alias some dehydration : dl-g-cl1-24-32*/
define "some dehydration":
    "dl-g-cl1-24-32"

/* dl-g-cl1-30 : No Dehydration*/
define "dl-g-cl1-30":
    C."age >= 2 months to <60 months"  and obs."diarrhoea" = true and  "severe dehydration"=false  and  "some dehydration"=false

/* alias no dehydration : dl-g-cl1-30*/
define "no dehydration":
    "dl-g-cl1-30"

/* dl-g-cl1-31 : Severe Persistent Diarrhoea*/
define "dl-g-cl1-31":
    C."age >= 2 months to <60 months"  and obs."diarrhoea" = true and  ("severe dehydration"=true  or  "some dehydration"=true) and obs."diarrhoea for how long?" = val."14 days or more"

/* alias severe persistent diarrhoea : dl-g-cl1-31*/
define "severe persistent diarrhoea":
    "dl-g-cl1-31"

/* dl-g-cl1-32 : Persistent Diarrhoea*/
define "dl-g-cl1-32":
    C."age >= 2 months to <60 months"  and obs."diarrhoea" = true and  "no dehydration"=true   and obs."diarrhoea for how long?" = val."14 days or more"

/* alias persistent diarrhoea : dl-g-cl1-32*/
define "persistent diarrhoea":
    "dl-g-cl1-32"

/* dl-g-cl1-33 : Dysentery*/
define "dl-g-cl1-33":
    C."age >= 2 months to <60 months"  and obs."diarrhoea" = true and obs."blood in the stool in this illness" = true and obs."axillary temperature" < 38.5 'Cel'

/* alias dysentery : dl-g-cl1-33*/
define "dysentery":
    "dl-g-cl1-33"

/* dl-i-cl1-01 : Possible Shigella*/
define "dl-i-cl1-01":
    C."age >= 2 months to <60 months"  and obs."diarrhoea" = true and obs."blood in the stool in this illness" = true and obs."axillary temperature" >= 38.5 'Cel'

/* alias possible shigella : dl-i-cl1-01*/
define "possible shigella":
    "dl-i-cl1-01"

/* dl-i-cl1-05 : Throat Abscess or Possible Diptheria*/
define "dl-i-cl1-05":
    C."age >= 2 months to <60 months"  and obs."fever" = true and obs."throat problem" = true and (obs."not able to drink or breastfeed" = true or obs."ability to swallow" = val."unable to swallow" or obs."specify throat problem" = val."membrane on throat")

/* alias throat abscess or possible diptheria : dl-i-cl1-05*/
define "throat abscess or possible diptheria":
    "dl-i-cl1-05"

/* dl-i-cl1-06 : Streptococcal Sore Throat*/
define "dl-i-cl1-06":
    C."age >= 2 months to <60 months"  and (obs."fever" = true or obs."ability to swallow" = val."difficulty in swallowing" ) and obs."throat problem" = true and (obs."not able to drink or breastfeed" = true or obs."ability to swallow" = val."unable to swallow" or obs."specify throat problem" = val."membrane on throat") and (ToInteger(obs."enlarged lymph nodes on front of neck" = true )+ToInteger(obs."specify throat problem" = val."red (congested) throat")+ToInteger(obs."specify throat problem" = val."exudate on throat"))>1 and "throat abscess or possible diptheria"=false

/* alias streptococcal sore throat : dl-i-cl1-06*/
define "streptococcal sore throat":
    "dl-i-cl1-06"

/* dl-i-cl1-07 : Non-Streptococcal Sore Throat*/
define "dl-i-cl1-07":
    C."age >= 2 months to <60 months"  and (obs."ability to swallow" = val."difficulty in swallowing" or obs."enlarged lymph nodes on front of neck" = true or obs."specify throat problem" = val."red (congested) throat" or obs."specify throat problem" = val."exudate on throat" ) and obs."throat problem" = true and  "throat abscess or possible diptheria"=false and "streptococcal sore throat"=false

/* alias non-streptococcal sore throat : dl-i-cl1-07*/
define "non-streptococcal sore throat":
    "dl-i-cl1-07"

/* dl-i-cl1-09 : No Throat Problem*/
define "dl-i-cl1-09":
    C."age >= 2 months to <60 months" and obs."throat problem" = true and  "throat abscess or possible diptheria"=false and "streptococcal sore throat"=false and "non-streptococcal sore throat"=false

/* alias no throat problem : dl-i-cl1-09*/
define "no throat problem":
    "dl-i-cl1-09"

/* dl-g-cl1-73 : Mastoiditis*/
define "dl-g-cl1-73":
    C."age >= 2 months to <60 months" and obs."ear problem" = true and   obs."tender swelling behind the ear" = true

/* alias mastoiditis : dl-g-cl1-73*/
define "mastoiditis":
    "dl-g-cl1-73"

/* dl-g-cl1-74-76 : Acute Ear Infection*/
define "dl-g-cl1-74-76":
    (C."age >= 2 months to <60 months" and obs."ear problem" = true and   obs."tender swelling behind the ear" = true)
     and ((    obs."ear pain" = true and "chronic ear infection"=false)
     or (    obs."pus seen draining from the ear" = true  and obs."ear discharge" = true and obs."ear discharge for how long?" = val."less than 14 days")
     or (    obs."pus seen draining from the ear" = true  and obs."ear discharge" = false and obs."pus seen draining from the ear for how long?" = val."less than 14 days"))

/* alias acute ear infection : dl-g-cl1-74-76*/
define "acute ear infection":
    "dl-g-cl1-74-76"

/* dl-i-cl1-11-12 : Chronic Ear Infection*/
define "dl-i-cl1-11-12":
    (C."age >= 2 months to <60 months" and obs."ear problem" = true and   obs."pus seen draining from the ear" = true)
     and ((    obs."ear discharge" = true and obs."ear discharge for how long?" = val."less than 14 days")
     or (    obs."ear discharge" = false and obs."pus seen draining from the ear for how long?" = val."less than 14 days"))

/* alias chronic ear infection : dl-i-cl1-11-12*/
define "chronic ear infection":
    "dl-i-cl1-11-12"

/* emcare.b23.de32a : nan*/
define "emcare.b23.de32a":
    obs."ear pain" = true or obs."fever" = true

/* dl-g-cl1-79 : No Ear Infection*/
define "dl-g-cl1-79":
    C."age >= 2 months to <60 months" and obs."ear problem" = true and  "chronic ear infection"=false and "mastoiditis"=false and "acute ear infection"=false

/* alias no ear infection : dl-g-cl1-79*/
define "no ear infection":
    "dl-g-cl1-79"

/* dl-g-cl1-34 : Very Severe Febrile Disease*/
define "dl-g-cl1-34":
    C."age >= 2 months to <60 months" and obs."fever" = true and (C."danger signs" = true or  obs."stiff neck" = true)

/* alias very severe febrile disease : dl-g-cl1-34*/
define "very severe febrile disease":
    "dl-g-cl1-34"

/* dl-i-cl1-03 : Fever: possible bacterial infection*/
define "dl-i-cl1-03":
    C."age >= 2 months to <60 months" and obs."fever" = true and ( "streptococcal sore throat"=true  or "pneumonia"=true or "acute ear infection"=true  or  "chronic ear infection"=true or  "dysentery"=false) and "possible shigella"=false and  "throat abscess or possible diptheria"=false and "severe complicated measles"=false and "measles with eye or mouth complication"=false and "possible measles"=false and  "mastoiditis"=false and "very severe febrile disease"=false and  "severe pneumonia or very severe disease"=false

/* alias fever: possible bacterial infection : dl-i-cl1-03*/
define "fever: possible bacterial infection":
    "dl-i-cl1-03"

/* emcare.b23.de26a : Fever present every day for 7 Days or more*/
define "emcare.b23.de26a":
    obs."fever for how long?" = val."7 days or more" and obs."has fever been present every day since the fever started?" = true

/* alias fever present every day for 7 days or more : emcare.b23.de26a*/
define "fever present every day for 7 days or more":
    "emcare.b23.de26a"

/* dl-i-cl1-26 : Fever: bacterial infection unlikely*/
define "dl-i-cl1-26":
    C."age >= 2 months to <60 months" and obs."fever" = true and "possible shigella"=false and "fever: possible bacterial infection"=false and "throat abscess or possible diptheria"=false and "severe complicated measles"=false and "measles with eye or mouth complication"=false and "possible measles"=false and "mastoiditis"=false and "very severe febrile disease"=false

/* alias fever: bacterial infection unlikely : dl-i-cl1-26*/
define "fever: bacterial infection unlikely":
    "dl-i-cl1-26"

/* dl-i-cl1-16-67a : Severe Complicated Measles*/
define "dl-i-cl1-16-67a":
    (C."age >= 2 months to <60 months" and obs."fever" = true)
     and ((    (obs."cough" = true  or  obs."runny nose" = true or obs."red eyes" = true)  and (C."danger signs" = true or  obs."clouding of the cornea" = true  or obs."oral sores or mouth ulcers" = val."mouth sores or mouth ulcers - deep and extensive" or  "pneumonia"=true  or obs."diarrhoea" = true) and obs."measles rash" = true)
     or (    ((obs."cough" = true  or  obs."runny nose" = true or obs."red eyes" = true) and (obs."generalised or localised skin problem" = val."generalised skin problem") and (C."danger signs" = true  or  obs."clouding of the cornea" = true  or obs."oral sores or mouth ulcers" = val."mouth sores or mouth ulcers - deep and extensive" ) and obs."measles rash" = true)
         and ((    "measles in last 3 months" =true and obs."generalised or localised skin problem" != val."generalised skin problem")
         or (    obs."measles rash" = false and "measles in last 3 months" = true and obs."generalised or localised skin problem" = val."generalised skin problem")))
     or (    obs."cough" = false  and obs."runny nose" = false and obs."red eyes" = false and "measles in last 3 months" = true and (C."danger signs" = true or  obs."clouding of the cornea" = true  or obs."oral sores or mouth ulcers" = val."mouth sores or mouth ulcers - deep and extensive")))

/* alias severe complicated measles : dl-i-cl1-16-67a*/
define "severe complicated measles":
    "dl-i-cl1-16-67a"

/* dl-g-cl1-68-70 : Measles with Eye or Mouth Complication*/
define "dl-g-cl1-68-70":
    (C."age >= 2 months to <60 months" and obs."fever" = true   and "severe complicated measles"=false)
     and ((    (obs."cough" = true  or  obs."runny nose" = true or obs."red eyes" = true) and (obs."generalised or localised skin problem" = val."generalised skin problem") and (obs."pus draining from eye" = true  or  obs."oral sores or mouth ulcers" = val."mouth sores or mouth ulcers - not deep and extensive"  ) and obs."measles rash" = true)
     or (    obs."cough" = false  and obs."runny nose" = false and obs."red eyes" = false and "measles in last 3 months" =true and (obs."pus draining from eye" = true  or obs."oral sores or mouth ulcers" = val."mouth sores or mouth ulcers - not deep and extensive" ))
     or (    (obs."cough" = true  or  obs."runny nose" = true or obs."red eyes" = true) and obs."generalised or localised skin problem" = val."generalised skin problem" and obs."measles rash" = false and "measles in last 3 months" = true and (obs."pus draining from eye" = true  or obs."oral sores or mouth ulcers" = val."mouth sores or mouth ulcers - not deep and extensive" ))
     or (    (obs."cough" = true  or  obs."runny nose" = true or obs."red eyes" = true)  and obs."generalised or localised skin problem" != val."generalised skin problem" and obs."measles rash" = true))

/* alias measles with eye or mouth complication : dl-g-cl1-68-70*/
define "measles with eye or mouth complication":
    "dl-g-cl1-68-70"

/* dl-g-cl1-71 : Possible Measles*/
define "dl-g-cl1-71":
    C."age >= 2 months to <60 months" and obs."fever" = true  and (obs."cough" = true  or  obs."runny nose" = true or obs."red eyes" = true)  and "severe complicated measles"=false and "measles with eye or mouth complication"=false and obs."measles rash" = true  and obs."generalised or localised skin problem" = val."generalised skin problem"

/* alias possible measles : dl-g-cl1-71*/
define "possible measles":
    "dl-g-cl1-71"

/* dl-g-cl1-109 : Severe Anaemia*/
define "dl-g-cl1-109":
    C."age >= 2 months to <60 months" and (obs."palmar pallor" = val."severe palmar pallor" or obs."mucous membrane pallor" = val."severe mucous membrane pallor" or obs."hemoglobin (hb) g/dl" < 7 'g/dL' )

/* alias severe anaemia : dl-g-cl1-109*/
define "severe anaemia":
    "dl-g-cl1-109"

/* dl-g-cl1-110 : Anaemia*/
define "dl-g-cl1-110":
    C."age >= 2 months to <60 months" and (obs."palmar pallor" = val."some palmar pallor" or obs."mucous membrane pallor" = val."some mucous membrane pallor" or (obs."hemoglobin (hb) g/dl" >= 7 'g/dL' and obs."hemoglobin (hb) g/dl" < 11 'g/dL' )) and "severe anaemia"=false

/* alias anaemia : dl-g-cl1-110*/
define "anaemia":
    "dl-g-cl1-110"

/* dl-g-cl1-111 : No Anaemia*/
define "dl-g-cl1-111":
    C."age >= 2 months to <60 months" and obs."palmar pallor" = val."no palmar pallor" and obs."mucous membrane pallor" = val."no mucous membrane pallor" and  (obs."hemoglobin (hb) g/dl" >= 11 'g/dL' or obs."hemoglobin test not available"= true)

/* alias no anaemia : dl-g-cl1-111*/
define "no anaemia":
    "dl-g-cl1-111"

/* dl-g-cl1-80 : Eye Infection*/
define "dl-g-cl1-80":
    C."age >= 2 months to <60 months"  and obs."eye problem" = true and obs."pus draining from eye" = true and "severe complicated measles"=false or "measles with eye or mouth complication"=false

/* alias eye infection : dl-g-cl1-80*/
define "eye infection":
    "dl-g-cl1-80"

/* dl-g-cl1-83 : Clouding of the Cornea*/
define "dl-g-cl1-83":
    C."age >= 2 months to <60 months"  and obs."eye problem" = true and  obs."clouding of the cornea" = true and "severe complicated measles"=false

/* alias clouding of the cornea : dl-g-cl1-83*/
define "clouding of the cornea":
    "dl-g-cl1-83"

/* emcare.b23.de36 : New or not previously treated*/
define "emcare.b23.de36":
    (    obs."is clouding of the cornea a new problem" = true)
     or (    obs."is clouding of the cornea a new problem" = false and obs."has clouding of the cornea previously been treated" = false)

/* alias new or not previously treated : emcare.b23.de36*/
define "new or not previously treated":
    "emcare.b23.de36"

/* dl-g-cl1-88 : Papular Urticaria or Papular Pruritic Eruptions*/
define "dl-g-cl1-88":
    C."age >= 2 months to <60 months" and obs."skin problem" = true and obs."itchy skin" = true and obs."type of skin problem" =  val."papular urticaria or papular pruritic eruptions"

/* alias papular urticaria or papular pruritic eruptions : dl-g-cl1-88*/
define "papular urticaria or papular pruritic eruptions":
    "dl-g-cl1-88"

/* dl-g-cl1-90 : Ringworm (Tinea)*/
define "dl-g-cl1-90":
    C."age >= 2 months to <60 months" and obs."skin problem" = true and obs."type of skin problem" =  val."ringworm (tinea)"

/* alias ringworm (tinea) : dl-g-cl1-90*/
define "ringworm (tinea)":
    "dl-g-cl1-90"

/* emcare.b23.de43a : Scalp Infection (tinea capitis)*/
define "emcare.b23.de43a":
    obs."scalp infection (tinea capitis)" = true

/* alias scalp infection (tinea capitis) : emcare.b23.de43a*/
define "scalp infection (tinea capitis)":
    "emcare.b23.de43a"

/* dl-g-cl1-91 : Scabies*/
define "dl-g-cl1-91":
    C."age >= 2 months to <60 months" and obs."skin problem" = true and obs."itchy skin" = true and obs."type of skin problem" =  val."scabies"

/* alias scabies : dl-g-cl1-91*/
define "scabies":
    "dl-g-cl1-91"

/* dl-g-cl1-93 : Chickenpox*/
define "dl-g-cl1-93":
    C."age >= 2 months to <60 months" and obs."skin problem" = true and obs."itchy skin" = true and obs."generalised or localised skin problem" = val."generalised skin problem" and obs."blisters, sores or pustules" = true and obs."type of skin problem" = val."chickenpox"

/* alias chickenpox : dl-g-cl1-93*/
define "chickenpox":
    "dl-g-cl1-93"

/* emcare.b23.de46a : nan*/
define "emcare.b23.de46a":
    obs."severe rash"= true

/* emcare.b23.de46 : nan*/
define "emcare.b23.de46":
    "pneumonia"=true

/* dl-g-cl1-95 : Herpes Zoster*/
define "dl-g-cl1-95":
    C."age >= 2 months to <60 months" and obs."skin problem" = true  and obs."generalised or localised skin problem" = val."localised skin problem" and obs."blisters, sores or pustules" = true and obs."type of skin problem" = val."herpes zoster"

/* alias herpes zoster : dl-g-cl1-95*/
define "herpes zoster":
    "dl-g-cl1-95"

/* emcare.b23.de48 : nan*/
define "emcare.b23.de48":
    obs."eye involvement" = true

/* emcare.b23.de48a : nan*/
define "emcare.b23.de48a":
    obs."disseminated herpes zoster" = true

/* dl-g-cl1-98 : Impetigo*/
define "dl-g-cl1-98":
    C."age >= 2 months to <60 months" and obs."skin problem" = true   and obs."blisters, sores or pustules" = true and obs."type of skin problem" =  val."impetigo"

/* alias impetigo : dl-g-cl1-98*/
define "impetigo":
    "dl-g-cl1-98"

/* emcare.b23.de50 : nan*/
define "emcare.b23.de50":
    obs."skin infection extends to muscle" = true or obs."measured temperature" = val."measured fever"

/* emcare.b23.de50a : nan*/
define "emcare.b23.de50a":
    obs."extensive impetigo lesions" = true

/* dl-g-cl1-99 : Molluscum Contagiosum*/
define "dl-g-cl1-99":
    C."age >= 2 months to <60 months" and obs."skin problem" = true   and obs."type of skin problem" =  val."molluscum contagiosum"

/* alias molluscum contagiosum : dl-g-cl1-99*/
define "molluscum contagiosum":
    "dl-g-cl1-99"

/* emcare.b23.de52a : nan*/
define "emcare.b23.de52a":
    obs."extensive molluscum lesions"  = true or obs."molluscum lesions close to the eye"=true

/* dl-g-cl1-100 : Warts*/
define "dl-g-cl1-100":
    C."age >= 2 months to <60 months" and obs."skin problem" = true   and obs."generalised or localised skin problem" = val."localised skin problem" and obs."type of skin problem" =  val."warts"

/* alias warts : dl-g-cl1-100*/
define "warts":
    "dl-g-cl1-100"

/* emcare.b23.de53a : nan*/
define "emcare.b23.de53a":
    obs."extensive warts" = true

/* dl-g-cl1-102 : Seborrhoeic Dermatitis*/
define "dl-g-cl1-102":
    C."age >= 2 months to <60 months" and obs."skin problem" = true   and obs."generalised or localised skin problem" = val."localised skin problem" and obs."blisters, sores or pustules" = false and obs."type of skin problem" =  val."seborrhoeic dermatitis"

/* alias seborrhoeic dermatitis : dl-g-cl1-102*/
define "seborrhoeic dermatitis":
    "dl-g-cl1-102"

/* emcare.b23.de55 : nan*/
define "emcare.b23.de55":
    obs."severe seborrhoeic dermatitis" = true

/* dl-g-cl1-103 : Fixed Drug Reaction*/
define "dl-g-cl1-103":
    C."age >= 2 months to <60 months" and obs."skin problem" = true   and obs."type of skin problem" =  val."fixed drug reaction"

/* alias fixed drug reaction : dl-g-cl1-103*/
define "fixed drug reaction":
    "dl-g-cl1-103"

/* dl-g-cl1-104 : Eczema*/
define "dl-g-cl1-104":
    C."age >= 2 months to <60 months" and obs."skin problem" = true   and  obs."type of skin problem" =  val."eczema"

/* alias eczema : dl-g-cl1-104*/
define "eczema":
    "dl-g-cl1-104"

/* emcare.b23.de57a : nan*/
define "emcare.b23.de57a":
    obs."severe acute moist or weeping eczema" = true

/* emcare.b23.de57b : nan*/
define "emcare.b23.de57b":
    obs."secondary bacterial infection of eczema" = true

/* emcare.b23.de57c : nan*/
define "emcare.b23.de57c":
    obs."secondary herpes infection of eczema (eczema herpeticum)" = true

/* dl-g-cl1-105 : Steven Johnson Syndrome (SJS)*/
define "dl-g-cl1-105":
    C."age >= 2 months to <60 months" and obs."skin problem" = true   and obs."generalised or localised skin problem" = val."generalised skin problem" and obs."blisters, sores or pustules" = true and obs."type of skin problem" =  val."steven johnson syndrome (sjs)"

/* alias steven johnson syndrome (sjs) : dl-g-cl1-105*/
define "steven johnson syndrome (sjs)":
    "dl-g-cl1-105"

/* dl-g-cl1-106 : Mouth Sores or Ulcer*/
define "dl-g-cl1-106":
    C."age >= 2 months to <60 months" and obs."fever" = true and (obs."oral sores or mouth ulcers" = val."mouth sores or mouth ulcers - not deep and extensive" or obs."oral sores or mouth ulcers" = val."mouth sores or mouth ulcers - not deep and extensive" )

/* alias mouth sores or ulcer : dl-g-cl1-106*/
define "mouth sores or ulcer":
    "dl-g-cl1-106"

/* emcare.b23.de60 : nan*/
define "emcare.b23.de60":
    obs."oral sores or mouth ulcers" = val."mouth sores or mouth ulcers - deep and extensive"

/* dl-g-cl1-108 : Oral Thrush*/
define "dl-g-cl1-108":
    C."age >= 2 months to <60 months" and obs."fever" = true and obs."oral sores or mouth ulcers" = val."oral thrush"

/* alias oral thrush : dl-g-cl1-108*/
define "oral thrush":
    "dl-g-cl1-108"

/* dl-i-cl1-28 : Very Low Weight for Age*/
define "dl-i-cl1-28":
    Z."WAZ"<-3

/* alias very low weight for age : dl-i-cl1-28*/
define "very low weight for age":
    "dl-i-cl1-28"

/* dl-i-cl1-33 : Low Weight for Age*/
define "dl-i-cl1-33":
    Z."WAZ">=-3 and Z."WAZ"<-2

/* alias low weight for age : dl-i-cl1-33*/
define "low weight for age":
    "dl-i-cl1-33"

/* dl-i-cl1-34 : Low MUAC or visual report of wasting*/
define "dl-i-cl1-34":
    obs."weight" = false and ((AgeInMonths()> 6 and  obs."muac (mid upper arm circumference)" < 12.5 'cm' ) or (AgeInMonths()<= 6 and obs."muac cannot be measured"=true))

/* alias low muac or visual report of wasting : dl-i-cl1-34*/
define "low muac or visual report of wasting":
    "dl-i-cl1-34"
