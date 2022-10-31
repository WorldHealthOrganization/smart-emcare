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


context Patient
      

/* child : Age >= 2 months to <60 months*/
define "child":
    AgeInMonths()>= 2 and AgeInMonths()<60

/* age >= 2 months to <60 months : Age >= 2 months to <60 months*/
define "age >= 2 months to <60 months":
    AgeInMonths()>= 2 and AgeInMonths()<60

/* yi : Age >=28 days to 2 Months*/
define "yi":
    AgeInDays()>= 28 and AgeInMonths()<2

/* age >=28 days to 2 months : Age >=28 days to 2 Months*/
define "age >=28 days to 2 months":
    AgeInDays()>= 28 and AgeInMonths()<2

/* nb : Age < 28 days to 2 Months*/
define "nb":
    AgeInDays()< 28

/* age < 28 days to 2 months : Age < 28 days to 2 Months*/
define "age < 28 days to 2 months":
    AgeInDays()< 28

/* emcare.b23.de01 : Very Severe Disease*/
define "emcare.b23.de01":
    ("child")
     and (    obs."convulsing now" = Base."Yes" and  obs."continue to assess sick child" = val."stabilised, continue consultation"
     or     obs."convulsion(s) in this illness" = Base."Yes"
     or     obs."unconscious" = Base."Yes"
     or     obs."lethargic" = Base."Yes"
     or     obs."oral fluid test results" = val."completely unable to drink"
     or     obs."oral fluid test results" = val."vomits immediately / everything")

/* very severe disease : Very Severe Disease*/
define "very severe disease":
    ("child")
     and (    obs."convulsing now" = Base."Yes" and  obs."continue to assess sick child" = val."stabilised, continue consultation"
     or     obs."convulsion(s) in this illness" = Base."Yes"
     or     obs."unconscious" = Base."Yes"
     or     obs."lethargic" = Base."Yes"
     or     obs."oral fluid test results" = val."completely unable to drink"
     or     obs."oral fluid test results" = val."vomits immediately / everything")

/* emcare.b.g.de01 : Danger Signs*/
define "emcare.b.g.de01":
    ("child")
     and (    obs."convulsing now"= Base."Yes"
     or     obs."convulsion(s) in this illness" = Base."Yes"
     or     obs."unconscious" = Base."Yes"
     or     obs."lethargic" = Base."Yes" and obs."diarrhoea" = Base."No"
     or     obs."lethargic" = Base."Yes" and obs."diarrhoea" = Base."Yes"
     or     obs."lethargic" = Base."Yes" and obs."diarrhoea" = Base."Yes" and (obs."cough" = Base."Yes" or obs."difficulty breathing" = Base."Yes" or  obs."fever" = Base."Yes" or obs."tender swelling behind the ear" = Base."Yes" or obs."palmar pallor"=val."severe palmar pallor" or obs."mucous membrane pallor"=val."severe mucous membrane pallor" or obs."hemoglobin (hb) g/dl"  < 7 'g/dL')
     or     obs."not able to drink or breastfeed" = Base."Yes" or  obs."oral fluid test results" = val."vomits immediately / everything"
     or     obs."completely unable to drink or vomits immediately / everything"=Base."Yes" or obs."oral fluid test results" = val."vomits immediately / everything" or  obs."unable to perform oral fluid test"=Base."Yes")

/* danger signs : Danger Signs*/
define "danger signs":
    ("child")
     and (    obs."convulsing now"= Base."Yes"
     or     obs."convulsion(s) in this illness" = Base."Yes"
     or     obs."unconscious" = Base."Yes"
     or     obs."lethargic" = Base."Yes" and obs."diarrhoea" = Base."No"
     or     obs."lethargic" = Base."Yes" and obs."diarrhoea" = Base."Yes"
     or     obs."lethargic" = Base."Yes" and obs."diarrhoea" = Base."Yes" and (obs."cough" = Base."Yes" or obs."difficulty breathing" = Base."Yes" or  obs."fever" = Base."Yes" or obs."tender swelling behind the ear" = Base."Yes" or obs."palmar pallor"=val."severe palmar pallor" or obs."mucous membrane pallor"=val."severe mucous membrane pallor" or obs."hemoglobin (hb) g/dl"  < 7 'g/dL')
     or     obs."not able to drink or breastfeed" = Base."Yes" or  obs."oral fluid test results" = val."vomits immediately / everything"
     or     obs."completely unable to drink or vomits immediately / everything"=Base."Yes" or obs."oral fluid test results" = val."vomits immediately / everything" or  obs."unable to perform oral fluid test"=Base."Yes")

/* emcare.b.g.de05 : Severe Classification up to assessments and tests excluding Severe Dehydration*/
define "emcare.b.g.de05":
        obs."danger signs" = true
     or     obs."stridor in a calm child" = Base."Yes"
     or     obs."oxygen saturation" <=  90 '%'
     or     obs."stiff neck" = Base."Yes"
     or     obs."fever" = Base."Yes" and obs."throat problem" = Base."Yes" and (obs."ability to swallow" = val."unable to swallow" or obs."specify throat problem" = val."membrane on throat")
     or     obs."tender swelling behind the ear" = Base."Yes"
     or     (obs."palmar pallor" = val."severe palmar pallor" or obs."mucous membrane pallor"=val."severe mucous membrane pallor" or obs."hemoglobin (hb) g/dl"  < 7 'g/dL')

/* severe classification up to assessments and tests excluding severe dehydration : Severe Classification up to assessments and tests excluding Severe Dehydration*/
define "severe classification up to assessments and tests excluding severe dehydration":
        obs."danger signs" = true
     or     obs."stridor in a calm child" = Base."Yes"
     or     obs."oxygen saturation" <=  90 '%'
     or     obs."stiff neck" = Base."Yes"
     or     obs."fever" = Base."Yes" and obs."throat problem" = Base."Yes" and (obs."ability to swallow" = val."unable to swallow" or obs."specify throat problem" = val."membrane on throat")
     or     obs."tender swelling behind the ear" = Base."Yes"
     or     (obs."palmar pallor" = val."severe palmar pallor" or obs."mucous membrane pallor"=val."severe mucous membrane pallor" or obs."hemoglobin (hb) g/dl"  < 7 'g/dL')

/* emcare.b.g.de06 : Fever*/
define "emcare.b.g.de06":
        obs."axillary temperature" >= 37.5 'Cel'
     or     obs."hot to touch" = Base."Yes"
     or     obs."fever reported" = Base."Yes"

/* fever : Fever*/
define "fever":
        obs."axillary temperature" >= 37.5 'Cel'
     or     obs."hot to touch" = Base."Yes"
     or     obs."fever reported" = Base."Yes"

/* severe pneumonia or very severe disease : nan*/
define "severe pneumonia or very severe disease":
    "age >= 2 months to <60 months" and (obs."cough" = Base."Yes"  or  obs."difficulty breathing" = Base."Yes") and (obs."danger signs" = true or  obs."stridor in a calm child" = Base."Yes" or obs."oxygen saturation" < 90  '%{Oxygen}')

/* with low oxygen saturation (spo2 < 90%) : nan*/
define "with low oxygen saturation (spo2 < 90%)":
    obs."oxygen saturation" < 90  '%{Oxygen}'

/* with wheezing : nan*/
define "with wheezing":
    obs."wheezing" = Base."Yes"

/* with recurrent wheeze : nan*/
define "with recurrent wheeze":
    obs."recurrent wheeze" = Base."Yes"

/* with cough or difficulty breathing for 14 days or more : nan*/
define "with cough or difficulty breathing for 14 days or more":
    obs."cough for how long?" = val."14 days or more" or obs."difficulty breathing for how long?" = val."14 days or more"

/* measles in last 3 months : nan*/
define "measles in last 3 months":
    Base.HasCondHistory('EmCare.B23.DE27',94) = Base."Yes" or  Base.HasCondHistory('EmCare.B23.DE28',94) = Base."Yes" or Base.HasCondHistory('EmCare.B23.DE29',94) = Base."Yes"

/* pneumonia : nan*/
define "pneumonia":
    "age >= 2 months to <60 months" and (obs."cough"= Base."Yes"  or  obs."difficulty breathing" = Base."Yes") and (obs."fast breathing" = Base."Yes" or  obs."chest indrawing" = Base."Yes") and ( obs."wheezing" = Base."No") and ("severe pneumonia or very severe disease" = false) and (obs."inhaled bronchodilator trial not feasible or available"=Base."Yes" or obs."chest indrawing (post inhaled bronchodilator trial)"=Base."Yes" or   obs."fast breathing (post inhaled bronchodilator trial)"=Base."Yes")

/* cough or cold : nan*/
define "cough or cold":
    "age >= 2 months to <60 months"  and (obs."cough"= Base."Yes"  or  obs."difficulty breathing" = Base."Yes") and ("severe pneumonia or very severe disease" = false) and ("pneumonia" = false)

/* severe dehydration : nan*/
define "severe dehydration":
    ("age >= 2 months to <60 months"  and obs."diarrhoea" = Base."Yes")
     and (    obs."unconscious" = Base."Yes" and obs."skin pinch of abdomen" = val."skin pinch goes back slowly (2 seconds or fewer, but not immediately)"
     or     (obs."restless and irritable" = Base."Yes" or obs."skin pinch of abdomen" = val."skin pinch goes back slowly (2 seconds or fewer, but not immediately)" ) and (obs."oral fluid test results" = val."completely unable to drink" or obs."oral fluid test results" = val."vomits immediately / everything" or  obs."completely unable to drink or vomits immediately / everything"=Base."Yes")
     or     (ToInteger(obs."unconscious or lethargic" = Base."Yes") + ToInteger(obs."sunken eyes" = Base."Yes") +ToInteger(obs."skin pinch of abdomen" = val."skin pinch goes back very slowly (more than 2 seconds)" )+ToInteger( obs."oral fluid test results" = val."completely unable to drink"  or obs."oral fluid test results" = val."vomits immediately / everything"  or obs."completely unable to drink or vomits immediately / everything"=Base."Yes" or obs."oral fluid test results" = val."drinks poorly") )>1)

/* some dehydration : nan*/
define "some dehydration":
    ("age >= 2 months to <60 months"  and obs."diarrhoea" = Base."Yes" and  "severe dehydration"=false)
     and (    (ToInteger(obs."restless and irritable" = Base."Yes") + ToInteger(obs."sunken eyes" = Base."Yes") + ToInteger(obs."skin pinch of abdomen" = val."skin pinch goes back slowly (2 seconds or fewer, but not immediately)" ) + ToInteger(obs."oral fluid test results" = val."drinks eagerly / thirstily" ))>1
     or     obs."restless and irritable" = Base."Yes" and (obs."oral fluid test results" = val."drinks poorly" or  obs."skin pinch of abdomen" = val."skin pinch goes back very slowly (more than 2 seconds)" )
     or     (obs."lethargic" = Base."Yes" or obs."oral fluid test results" = val."drinks poorly") and (obs."skin pinch of abdomen" = val."skin pinch goes back slowly (2 seconds or fewer, but not immediately)" ))

/* no dehydration : nan*/
define "no dehydration":
    "age >= 2 months to <60 months"  and obs."diarrhoea" = Base."Yes" and  "severe dehydration"=false  and  "some dehydration"=false

/* severe persistent diarrhoea : nan*/
define "severe persistent diarrhoea":
    "age >= 2 months to <60 months"  and obs."diarrhoea" = Base."Yes" and  ("severe dehydration"=true  or  "some dehydration"=true) and obs."diarrhoea for how long?" = val."14 days or more"

/* persistent diarrhoea : nan*/
define "persistent diarrhoea":
    "age >= 2 months to <60 months"  and obs."diarrhoea" = Base."Yes" and  "no dehydration"=true   and obs."diarrhoea for how long?" = val."14 days or more"

/* dysentery : nan*/
define "dysentery":
    "age >= 2 months to <60 months"  and obs."diarrhoea" = Base."Yes" and obs."blood in the stool in this illness" = Base."Yes" and obs."axillary temperature" < 38.5 'Cel'

/* possible shigella : nan*/
define "possible shigella":
    "age >= 2 months to <60 months"  and obs."diarrhoea" = Base."Yes" and obs."blood in the stool in this illness" = Base."Yes" and obs."axillary temperature" >= 38.5 'Cel'

/* throat abscess or possible diptheria : nan*/
define "throat abscess or possible diptheria":
    "age >= 2 months to <60 months"  and obs."fever" = Base."Yes" and obs."throat problem" = Base."Yes" and (obs."not able to drink or breastfeed" = Base."Yes" or obs."ability to swallow" = val."unable to swallow" or obs."specify throat problem" = val."membrane on throat")

/* streptococcal sore throat : nan*/
define "streptococcal sore throat":
    "age >= 2 months to <60 months"  and (obs."fever" = Base."Yes" or obs."ability to swallow" = val."difficulty in swallowing" ) and obs."throat problem" = Base."Yes" and (obs."not able to drink or breastfeed" = Base."Yes" or obs."ability to swallow" = val."unable to swallow" or obs."specify throat problem" = val."membrane on throat") and (ToInteger(obs."enlarged lymph nodes on front of neck" = Base."Yes" )+ToInteger(obs."specify throat problem" = val."red (congested) throat")+ToInteger(obs."specify throat problem" = val."exudate on throat"))>1 and "throat abscess or possible diptheria"=false

/* non-streptococcal sore throat : nan*/
define "non-streptococcal sore throat":
    "age >= 2 months to <60 months"  and (obs."ability to swallow" = val."difficulty in swallowing" or obs."enlarged lymph nodes on front of neck" = Base."Yes" or obs."specify throat problem" = val."red (congested) throat" or obs."specify throat problem" = val."exudate on throat" ) and obs."throat problem" = Base."Yes" and  "throat abscess or possible diptheria"=false and "streptococcal sore throat"=false

/* no throat problem : nan*/
define "no throat problem":
    "age >= 2 months to <60 months" and obs."throat problem" = Base."Yes" and  "throat abscess or possible diptheria"=false and "streptococcal sore throat"=false and "non-streptococcal sore throat"=false

/* mastoiditis : nan*/
define "mastoiditis":
    "age >= 2 months to <60 months" and obs."ear problem" = Base."Yes" and   obs."tender swelling behind the ear" = Base."Yes"

/* acute ear infection : nan*/
define "acute ear infection":
    ("age >= 2 months to <60 months" and obs."ear problem" = Base."Yes" and   obs."tender swelling behind the ear" = Base."Yes")
     and (    obs."ear pain" = Base."Yes" and "chronic ear infection"=false
     or     obs."pus seen draining from the ear" = Base."Yes"  and obs."ear discharge" = Base."Yes" and obs."ear discharge for how long?" = val."less than 14 days"
     or     obs."pus seen draining from the ear" = Base."Yes"  and obs."ear discharge" = Base."No" and obs."pus seen draining from the ear for how long?" = val."less than 14 days")

/* chronic ear infection : nan*/
define "chronic ear infection":
    ("age >= 2 months to <60 months" and obs."ear problem" = Base."Yes" and   obs."pus seen draining from the ear" = Base."Yes")
     and (    obs."ear discharge" = Base."Yes" and obs."ear discharge for how long?" = val."less than 14 days"
     or     obs."ear discharge" = Base."No" and obs."pus seen draining from the ear for how long?" = val."less than 14 days")

/* with ear pain or fever : nan*/
define "with ear pain or fever":
    obs."ear pain" = Base."Yes" or obs."fever" = Base."Yes"

/* no ear infection : nan*/
define "no ear infection":
    "age >= 2 months to <60 months" and obs."ear problem" = Base."Yes" and  "chronic ear infection"=false and "mastoiditis"=false and "acute ear infection"=false

/* very severe febrile disease : nan*/
define "very severe febrile disease":
    "age >= 2 months to <60 months" and obs."fever" = Base."Yes" and (obs."danger signs" = true or  obs."stiff neck" = Base."Yes")

/* fever: possible bacterial infection : nan*/
define "fever: possible bacterial infection":
    "age >= 2 months to <60 months" and obs."fever" = Base."Yes" and ( "streptococcal sore throat"=true  or "pneumonia"=true or "acute ear infection"=true  or  "chronic ear infection"=true or  "dysentery"=false) and "possible shigella"=false and  "throat abscess or possible diptheria"=false and "severe complicated measles"=false and "measles with eye or mouth complication"=false and "possible measles"=false and  "mastoiditis"=false and "very severe febrile disease"=false and  "severe pneumonia or very severe disease"=false

/* fever present every day for 7 days or more : nan*/
define "fever present every day for 7 days or more":
    obs."fever for how long?" = val."7 days or more" and obs."has fever been present every day since the fever started?" = Base."Yes"

/* fever: bacterial infection unlikely : nan*/
define "fever: bacterial infection unlikely":
    "age >= 2 months to <60 months" and obs."fever" = Base."Yes" and "possible shigella"=false and "fever: possible bacterial infection"=false and "throat abscess or possible diptheria"=false and "severe complicated measles"=false and "measles with eye or mouth complication"=false and "possible measles"=false and "mastoiditis"=false and "very severe febrile disease"=false

/* severe complicated measles : nan*/
define "severe complicated measles":
    ("age >= 2 months to <60 months" and obs."fever" = Base."Yes")
     and (    (obs."cough" = Base."Yes"  or  obs."runny nose" = Base."Yes" or obs."red eyes" = Base."Yes")  and (obs."danger signs" = true or  obs."clouding of the cornea" = Base."Yes"  or obs."oral sores or mouth ulcers" = val."mouth sores or mouth ulcers - deep and extensive" or  "pneumonia"=true  or obs."diarrhoea" = Base."Yes") and obs."measles rash" = Base."Yes"
     or     ((obs."cough" = Base."Yes"  or  obs."runny nose" = Base."Yes" or obs."red eyes" = Base."Yes") and (obs."generalised or localised skin problem" = val."generalised skin problem") and (obs."danger signs" = true  or  obs."clouding of the cornea" = Base."Yes"  or obs."oral sores or mouth ulcers" = val."mouth sores or mouth ulcers - deep and extensive" ) and obs."measles rash" = Base."Yes")
         and (    "measles in last 3 months" =true and obs."generalised or localised skin problem" != val."generalised skin problem"
         or     obs."measles rash" = Base."No" and "measles in last 3 months" = true and obs."generalised or localised skin problem" = val."generalised skin problem")
     or     obs."cough" = Base."No"  and obs."runny nose" = Base."No" and obs."red eyes" = Base."No" and "measles in last 3 months" = true and (obs."danger signs" = true or  obs."clouding of the cornea" = Base."Yes"  or obs."oral sores or mouth ulcers" = val."mouth sores or mouth ulcers - deep and extensive"))

/* measles with eye or mouth complication : nan*/
define "measles with eye or mouth complication":
    ("age >= 2 months to <60 months" and obs."fever" = Base."Yes"   and "severe complicated measles"=false)
     and (    (obs."cough" = Base."Yes"  or  obs."runny nose" = Base."Yes" or obs."red eyes" = Base."Yes") and (obs."generalised or localised skin problem" = val."generalised skin problem") and (obs."pus draining from eye" = Base."Yes"  or  obs."oral sores or mouth ulcers" = val."mouth sores or mouth ulcers - not deep and extensive"  ) and obs."measles rash" = Base."Yes"
     or     obs."cough" = Base."No"  and obs."runny nose" = Base."No" and obs."red eyes" = Base."No" and "measles in last 3 months" =true and (obs."pus draining from eye" = Base."Yes"  or obs."oral sores or mouth ulcers" = val."mouth sores or mouth ulcers - not deep and extensive" )
     or     (obs."cough" = Base."Yes"  or  obs."runny nose" = Base."Yes" or obs."red eyes" = Base."Yes") and obs."generalised or localised skin problem" = val."generalised skin problem" and obs."measles rash" = Base."No" and "measles in last 3 months" = true and (obs."pus draining from eye" = Base."Yes"  or obs."oral sores or mouth ulcers" = val."mouth sores or mouth ulcers - not deep and extensive" )
     or     (obs."cough" = Base."Yes"  or  obs."runny nose" = Base."Yes" or obs."red eyes" = Base."Yes")  and obs."generalised or localised skin problem" != val."generalised skin problem" and obs."measles rash" = Base."Yes")

/* possible measles : nan*/
define "possible measles":
    "age >= 2 months to <60 months" and obs."fever" = Base."Yes"  and (obs."cough" = Base."Yes"  or  obs."runny nose" = Base."Yes" or obs."red eyes" = Base."Yes")  and "severe complicated measles"=false and "measles with eye or mouth complication"=false and obs."measles rash" = Base."Yes"  and obs."generalised or localised skin problem" = val."generalised skin problem"

/* dl-g-cl1-109 : Severe Anaemia*/
define "dl-g-cl1-109":
    "age >= 2 months to <60 months" and (obs."palmar pallor" = val."severe palmar pallor" or obs."mucous membrane pallor" = val."severe mucous membrane pallor" or obs."hemoglobin (hb) g/dl" < 7 'g/dL' )

/* severe anaemia : Severe Anaemia*/
define "severe anaemia":
    "age >= 2 months to <60 months" and (obs."palmar pallor" = val."severe palmar pallor" or obs."mucous membrane pallor" = val."severe mucous membrane pallor" or obs."hemoglobin (hb) g/dl" < 7 'g/dL' )

/* dl-g-cl1-110 : Anaemia*/
define "dl-g-cl1-110":
    "age >= 2 months to <60 months" and (obs."palmar pallor" = val."some palmar pallor" or obs."mucous membrane pallor" = val."some mucous membrane pallor" or (obs."hemoglobin (hb) g/dl" >= 7 'g/dL' and obs."hemoglobin (hb) g/dl" < 11 'g/dL' )) and "severe anaemia"=false

/* anaemia : Anaemia*/
define "anaemia":
    "age >= 2 months to <60 months" and (obs."palmar pallor" = val."some palmar pallor" or obs."mucous membrane pallor" = val."some mucous membrane pallor" or (obs."hemoglobin (hb) g/dl" >= 7 'g/dL' and obs."hemoglobin (hb) g/dl" < 11 'g/dL' )) and "severe anaemia"=false

/* dl-g-cl1-111 : No Anaemia*/
define "dl-g-cl1-111":
    "age >= 2 months to <60 months" and obs."palmar pallor" = val."no palmar pallor" and obs."mucous membrane pallor" = val."no mucous membrane pallor" and  (obs."hemoglobin (hb) g/dl" >= 11 'g/dL' or obs."hemoglobin test not available"= Base."Yes")

/* no anaemia : No Anaemia*/
define "no anaemia":
    "age >= 2 months to <60 months" and obs."palmar pallor" = val."no palmar pallor" and obs."mucous membrane pallor" = val."no mucous membrane pallor" and  (obs."hemoglobin (hb) g/dl" >= 11 'g/dL' or obs."hemoglobin test not available"= Base."Yes")

/* dl-g-cl1-80 : Eye Infection*/
define "dl-g-cl1-80":
    "age >= 2 months to <60 months"  and obs."eye problem" = Base."Yes" and obs."pus draining from eye" = Base."Yes" and "severe complicated measles"=false or "measles with eye or mouth complication"=false

/* eye infection : Eye Infection*/
define "eye infection":
    "age >= 2 months to <60 months"  and obs."eye problem" = Base."Yes" and obs."pus draining from eye" = Base."Yes" and "severe complicated measles"=false or "measles with eye or mouth complication"=false

/* dl-g-cl1-83 : Clouding of the Cornea*/
define "dl-g-cl1-83":
    "age >= 2 months to <60 months"  and obs."eye problem" = Base."Yes" and  obs."clouding of the cornea" = Base."Yes" and "severe complicated measles"=false

/* clouding of the cornea : Clouding of the Cornea*/
define "clouding of the cornea":
    "age >= 2 months to <60 months"  and obs."eye problem" = Base."Yes" and  obs."clouding of the cornea" = Base."Yes" and "severe complicated measles"=false

/* new or not previously treated : nan*/
define "new or not previously treated":
        obs."is clouding of the cornea a new problem" = Base."Yes"
     or     obs."is clouding of the cornea a new problem" = Base."No" and obs."has clouding of the cornea previously been treated" = Base."No"

/* dl-g-cl1-88 : Papular Urticaria or Papular Pruritic Eruptions*/
define "dl-g-cl1-88":
    "age >= 2 months to <60 months" and obs."skin problem" = Base."Yes" and obs."itchy skin" = Base."Yes" and obs."type of skin problem" =  val."papular urticaria or papular pruritic eruptions"

/* papular urticaria or papular pruritic eruptions : Papular Urticaria or Papular Pruritic Eruptions*/
define "papular urticaria or papular pruritic eruptions":
    "age >= 2 months to <60 months" and obs."skin problem" = Base."Yes" and obs."itchy skin" = Base."Yes" and obs."type of skin problem" =  val."papular urticaria or papular pruritic eruptions"

/* dl-g-cl1-90 : Ringworm (Tinea)*/
define "dl-g-cl1-90":
    "age >= 2 months to <60 months" and obs."skin problem" = Base."Yes" and obs."type of skin problem" =  val."ringworm (tinea)"

/* ringworm (tinea) : Ringworm (Tinea)*/
define "ringworm (tinea)":
    "age >= 2 months to <60 months" and obs."skin problem" = Base."Yes" and obs."type of skin problem" =  val."ringworm (tinea)"

/* dl-i-cl1-15 : nan*/
define "dl-i-cl1-15":
    obs."scalp infection (tinea capitis)" = Base."Yes"

/* dl-g-cl1-91 : Scabies*/
define "dl-g-cl1-91":
    "age >= 2 months to <60 months" and obs."skin problem" = Base."Yes" and obs."itchy skin" = Base."Yes" and obs."type of skin problem" =  val."scabies"

/* scabies : Scabies*/
define "scabies":
    "age >= 2 months to <60 months" and obs."skin problem" = Base."Yes" and obs."itchy skin" = Base."Yes" and obs."type of skin problem" =  val."scabies"

/* dl-g-cl1-93 : Chickenpox*/
define "dl-g-cl1-93":
    "age >= 2 months to <60 months" and obs."skin problem" = Base."Yes" and obs."itchy skin" = Base."Yes" and obs."generalised or localised skin problem" = val."generalised skin problem" and obs."blisters, sores or pustules" = Base."Yes" and obs."type of skin problem" = val."chickenpox"

/* chickenpox : Chickenpox*/
define "chickenpox":
    "age >= 2 months to <60 months" and obs."skin problem" = Base."Yes" and obs."itchy skin" = Base."Yes" and obs."generalised or localised skin problem" = val."generalised skin problem" and obs."blisters, sores or pustules" = Base."Yes" and obs."type of skin problem" = val."chickenpox"

/* dl-i-cl1-16 : Severe rash*/
define "dl-i-cl1-16":
    obs."severe rash"= Base."Yes"

/* severe rash : Severe rash*/
define "severe rash":
    obs."severe rash"= Base."Yes"

/* dl-g-cl1-92 : nan*/
define "dl-g-cl1-92":
    "pneumonia"=true

/* dl-g-cl1-95 : nan*/
define "dl-g-cl1-95":
    "age >= 2 months to <60 months" and obs."skin problem" = Base."Yes"  and obs."generalised or localised skin problem" = val."localised skin problem" and obs."blisters, sores or pustules" = Base."Yes" and obs."type of skin problem" = val."herpes zoster"

/* dl-g-cl1-94 : nan*/
define "dl-g-cl1-94":
    obs."eye involvement" = Base."Yes"

/* dl-i-cl1-17 : nan*/
define "dl-i-cl1-17":
    obs."disseminated herpes zoster" = Base."Yes"

/* dl-g-cl1-98 : nan*/
define "dl-g-cl1-98":
    "age >= 2 months to <60 months" and obs."skin problem" = Base."Yes"   and obs."blisters, sores or pustules" = Base."Yes" and obs."type of skin problem" =  val."impetigo"

/* dl-g-cl1-96 : nan*/
define "dl-g-cl1-96":
    obs."skin infection extends to muscle" = Base."Yes" or obs."measured temperature" = val."measured fever"

/* dl-i-cl1-18 : nan*/
define "dl-i-cl1-18":
    obs."extensive impetigo lesions" = Base."Yes"

/* dl-g-cl1-99 : nan*/
define "dl-g-cl1-99":
    "age >= 2 months to <60 months" and obs."skin problem" = Base."Yes"   and obs."type of skin problem" =  val."molluscum contagiosum"

/* dl-i-cl1-19 : nan*/
define "dl-i-cl1-19":
    obs."extensive molluscum lesions"  = Base."Yes" or obs."molluscum lesions close to the eye"=Base."Yes"

/* dl-g-cl1-100 : nan*/
define "dl-g-cl1-100":
    "age >= 2 months to <60 months" and obs."skin problem" = Base."Yes"   and obs."generalised or localised skin problem" = val."localised skin problem" and obs."type of skin problem" =  val."warts"

/* dl-i-cl1-20 : nan*/
define "dl-i-cl1-20":
    obs."extensive warts" = Base."Yes"

/* dl-g-cl1-102 : nan*/
define "dl-g-cl1-102":
    "age >= 2 months to <60 months" and obs."skin problem" = Base."Yes"   and obs."generalised or localised skin problem" = val."localised skin problem" and obs."blisters, sores or pustules" = Base."No" and obs."type of skin problem" =  val."seborrhoeic dermatitis"

/* dl-g-cl1-101 : nan*/
define "dl-g-cl1-101":
    obs."severe seborrhoeic dermatitis" = Base."Yes"

/* dl-g-cl1-103 : nan*/
define "dl-g-cl1-103":
    "age >= 2 months to <60 months" and obs."skin problem" = Base."Yes"   and obs."type of skin problem" =  val."fixed drug reaction"

/* dl-g-cl1-104 : nan*/
define "dl-g-cl1-104":
    "age >= 2 months to <60 months" and obs."skin problem" = Base."Yes"   and  obs."type of skin problem" =  val."eczema"

/* dl-i-cl1-21 : nan*/
define "dl-i-cl1-21":
    obs."severe acute moist or weeping eczema" = Base."Yes"

/* dl-i-cl1-22 : nan*/
define "dl-i-cl1-22":
    obs."secondary bacterial infection of eczema" = Base."Yes"

/* dl-i-cl1-23 : nan*/
define "dl-i-cl1-23":
    obs."secondary herpes infection of eczema (eczema herpeticum)" = Base."Yes"

/* dl-g-cl1-105 : nan*/
define "dl-g-cl1-105":
    "age >= 2 months to <60 months" and obs."skin problem" = Base."Yes"   and obs."generalised or localised skin problem" = val."generalised skin problem" and obs."blisters, sores or pustules" = Base."Yes" and obs."type of skin problem" =  val."steven johnson syndrome (sjs)"

/* dl-g-cl1-106 : nan*/
define "dl-g-cl1-106":
    "age >= 2 months to <60 months" and obs."fever" = Base."Yes" and (obs."oral sores or mouth ulcers" = val."mouth sores or mouth ulcers - not deep and extensive" or obs."oral sores or mouth ulcers" = val."mouth sores or mouth ulcers - not deep and extensive" )

/* dl-g-cl1-107 : nan*/
define "dl-g-cl1-107":
    obs."oral sores or mouth ulcers" = val."mouth sores or mouth ulcers - deep and extensive"

/* dl-g-cl1-108 : nan*/
define "dl-g-cl1-108":
    "age >= 2 months to <60 months" and obs."fever" = Base."Yes" and obs."oral sores or mouth ulcers" = val."oral thrush"

/* dl-i-cl1-28 : nan*/
define "dl-i-cl1-28":
    Z."WAZ"<-3

/* dl-i-cl1-33 : nan*/
define "dl-i-cl1-33":
    Z."WAZ">=-3

/* dl-i-cl1-34 : nan*/
define "dl-i-cl1-34":
    obs."weight" = Base."No" and (AgeInMonths()> 6 and (obs."muac (mid upper arm circumference)" is Quantity and (convert obs."muac (mid upper arm circumference)" to 'cm').value < 12.5 ) or AgeInMonths()<= 6 and obs."muac cannot be measured"=Base."Yes")
