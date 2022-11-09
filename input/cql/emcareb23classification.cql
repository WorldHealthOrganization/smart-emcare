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
        "danger signs" = true
     or     obs."stridor in a calm child" = Base."Yes"
     or     obs."oxygen saturation" <=  90 '%'
     or     obs."stiff neck" = Base."Yes"
     or     obs."fever" = Base."Yes" and obs."throat problem" = Base."Yes" and (obs."ability to swallow" = val."unable to swallow" or obs."specify throat problem" = val."membrane on throat")
     or     obs."tender swelling behind the ear" = Base."Yes"
     or     (obs."palmar pallor" = val."severe palmar pallor" or obs."mucous membrane pallor"=val."severe mucous membrane pallor" or obs."hemoglobin (hb) g/dl"  < 7 'g/dL')

/* severe classification up to assessments and tests excluding severe dehydration : Severe Classification up to assessments and tests excluding Severe Dehydration*/
define "severe classification up to assessments and tests excluding severe dehydration":
        "danger signs" = true
     or     obs."stridor in a calm child" = Base."Yes"
     or     obs."oxygen saturation" <=  90 '%'
     or     obs."stiff neck" = Base."Yes"
     or     obs."fever" = Base."Yes" and obs."throat problem" = Base."Yes" and (obs."ability to swallow" = val."unable to swallow" or obs."specify throat problem" = val."membrane on throat")
     or     obs."tender swelling behind the ear" = Base."Yes"
     or     (obs."palmar pallor" = val."severe palmar pallor" or obs."mucous membrane pallor"=val."severe mucous membrane pallor" or obs."hemoglobin (hb) g/dl"  < 7 'g/dL')

/* dl-g-cl1-07 : Severe Pneumonia or Very Severe Disease*/
define "dl-g-cl1-07":
    "age >= 2 months to <60 months" and (obs."cough" = Base."Yes"  or  obs."difficulty breathing" = Base."Yes") and ("danger signs" = true or  obs."stridor in a calm child" = Base."Yes" or obs."oxygen saturation" < 90  '%{Oxygen}')

/* severe pneumonia or very severe disease : Severe Pneumonia or Very Severe Disease*/
define "severe pneumonia or very severe disease":
    "age >= 2 months to <60 months" and (obs."cough" = Base."Yes"  or  obs."difficulty breathing" = Base."Yes") and ("danger signs" = true or  obs."stridor in a calm child" = Base."Yes" or obs."oxygen saturation" < 90  '%{Oxygen}')

/* emcare.b23.de04 : nan*/
define "emcare.b23.de04":
    obs."oxygen saturation" < 90  '%{Oxygen}'

/* emcare.b23.de05 : nan*/
define "emcare.b23.de05":
    obs."wheezing" = Base."Yes"

/* emcare.b23.de08 : nan*/
define "emcare.b23.de08":
    obs."cough for how long?" = val."14 days or more" or obs."difficulty breathing for how long?" = val."14 days or more" or  obs."recurrent wheeze" = Base."Yes"

/* measles in last 3 months : nan*/
define "measles in last 3 months":
    Base.HasCondHistory('EmCare.B23.DE27',94) = Base."Yes" or  Base.HasCondHistory('EmCare.B23.DE28',94) = Base."Yes" or Base.HasCondHistory('EmCare.B23.DE29',94) = Base."Yes"

/* dl-g-cl1-14 : Pneumonia*/
define "dl-g-cl1-14":
    "age >= 2 months to <60 months" and (obs."cough"= Base."Yes"  or  obs."difficulty breathing" = Base."Yes") and (obs."fast breathing" = Base."Yes" or  obs."chest indrawing" = Base."Yes") and ( obs."wheezing" = Base."No") and ("severe pneumonia or very severe disease" = false) and (obs."inhaled bronchodilator trial not feasible or available"=Base."Yes" or obs."chest indrawing (post inhaled bronchodilator trial)"=Base."Yes" or   obs."fast breathing (post inhaled bronchodilator trial)"=Base."Yes")

/* pneumonia : Pneumonia*/
define "pneumonia":
    "age >= 2 months to <60 months" and (obs."cough"= Base."Yes"  or  obs."difficulty breathing" = Base."Yes") and (obs."fast breathing" = Base."Yes" or  obs."chest indrawing" = Base."Yes") and ( obs."wheezing" = Base."No") and ("severe pneumonia or very severe disease" = false) and (obs."inhaled bronchodilator trial not feasible or available"=Base."Yes" or obs."chest indrawing (post inhaled bronchodilator trial)"=Base."Yes" or   obs."fast breathing (post inhaled bronchodilator trial)"=Base."Yes")

/* dl-g-cl1-19 : Cough or Cold*/
define "dl-g-cl1-19":
    "age >= 2 months to <60 months"  and (obs."cough"= Base."Yes"  or  obs."difficulty breathing" = Base."Yes") and ("severe pneumonia or very severe disease" = false) and ("pneumonia" = false)

/* cough or cold : Cough or Cold*/
define "cough or cold":
    "age >= 2 months to <60 months"  and (obs."cough"= Base."Yes"  or  obs."difficulty breathing" = Base."Yes") and ("severe pneumonia or very severe disease" = false) and ("pneumonia" = false)

/* dl-g-cl1-23-30 : Severe Dehydration*/
define "dl-g-cl1-23-30":
    ("age >= 2 months to <60 months"  and obs."diarrhoea" = Base."Yes")
     and (    obs."unconscious" = Base."Yes" and obs."skin pinch of abdomen" = val."skin pinch goes back slowly (2 seconds or fewer, but not immediately)"
     or     (obs."restless and irritable" = Base."Yes" or obs."skin pinch of abdomen" = val."skin pinch goes back slowly (2 seconds or fewer, but not immediately)" ) and (obs."oral fluid test results" = val."completely unable to drink" or obs."oral fluid test results" = val."vomits immediately / everything" or  obs."completely unable to drink or vomits immediately / everything"=Base."Yes")
     or     (ToInteger(obs."unconscious or lethargic" = Base."Yes") + ToInteger(obs."sunken eyes" = Base."Yes") +ToInteger(obs."skin pinch of abdomen" = val."skin pinch goes back very slowly (more than 2 seconds)" )+ToInteger( obs."oral fluid test results" = val."completely unable to drink"  or obs."oral fluid test results" = val."vomits immediately / everything"  or obs."completely unable to drink or vomits immediately / everything"=Base."Yes" or obs."oral fluid test results" = val."drinks poorly") )>1)

/* severe dehydration : Severe Dehydration*/
define "severe dehydration":
    ("age >= 2 months to <60 months"  and obs."diarrhoea" = Base."Yes")
     and (    obs."unconscious" = Base."Yes" and obs."skin pinch of abdomen" = val."skin pinch goes back slowly (2 seconds or fewer, but not immediately)"
     or     (obs."restless and irritable" = Base."Yes" or obs."skin pinch of abdomen" = val."skin pinch goes back slowly (2 seconds or fewer, but not immediately)" ) and (obs."oral fluid test results" = val."completely unable to drink" or obs."oral fluid test results" = val."vomits immediately / everything" or  obs."completely unable to drink or vomits immediately / everything"=Base."Yes")
     or     (ToInteger(obs."unconscious or lethargic" = Base."Yes") + ToInteger(obs."sunken eyes" = Base."Yes") +ToInteger(obs."skin pinch of abdomen" = val."skin pinch goes back very slowly (more than 2 seconds)" )+ToInteger( obs."oral fluid test results" = val."completely unable to drink"  or obs."oral fluid test results" = val."vomits immediately / everything"  or obs."completely unable to drink or vomits immediately / everything"=Base."Yes" or obs."oral fluid test results" = val."drinks poorly") )>1)

/* dl-g-cl1-24-32 : Some Dehydration*/
define "dl-g-cl1-24-32":
    ("age >= 2 months to <60 months"  and obs."diarrhoea" = Base."Yes" and  "severe dehydration"=false)
     and (    (ToInteger(obs."restless and irritable" = Base."Yes") + ToInteger(obs."sunken eyes" = Base."Yes") + ToInteger(obs."skin pinch of abdomen" = val."skin pinch goes back slowly (2 seconds or fewer, but not immediately)" ) + ToInteger(obs."oral fluid test results" = val."drinks eagerly / thirstily" ))>1
     or     obs."restless and irritable" = Base."Yes" and (obs."oral fluid test results" = val."drinks poorly" or  obs."skin pinch of abdomen" = val."skin pinch goes back very slowly (more than 2 seconds)" )
     or     (obs."lethargic" = Base."Yes" or obs."oral fluid test results" = val."drinks poorly") and (obs."skin pinch of abdomen" = val."skin pinch goes back slowly (2 seconds or fewer, but not immediately)" ))

/* some dehydration : Some Dehydration*/
define "some dehydration":
    ("age >= 2 months to <60 months"  and obs."diarrhoea" = Base."Yes" and  "severe dehydration"=false)
     and (    (ToInteger(obs."restless and irritable" = Base."Yes") + ToInteger(obs."sunken eyes" = Base."Yes") + ToInteger(obs."skin pinch of abdomen" = val."skin pinch goes back slowly (2 seconds or fewer, but not immediately)" ) + ToInteger(obs."oral fluid test results" = val."drinks eagerly / thirstily" ))>1
     or     obs."restless and irritable" = Base."Yes" and (obs."oral fluid test results" = val."drinks poorly" or  obs."skin pinch of abdomen" = val."skin pinch goes back very slowly (more than 2 seconds)" )
     or     (obs."lethargic" = Base."Yes" or obs."oral fluid test results" = val."drinks poorly") and (obs."skin pinch of abdomen" = val."skin pinch goes back slowly (2 seconds or fewer, but not immediately)" ))

/* dl-g-cl1-30 : No Dehydration*/
define "dl-g-cl1-30":
    "age >= 2 months to <60 months"  and obs."diarrhoea" = Base."Yes" and  "severe dehydration"=false  and  "some dehydration"=false

/* no dehydration : No Dehydration*/
define "no dehydration":
    "age >= 2 months to <60 months"  and obs."diarrhoea" = Base."Yes" and  "severe dehydration"=false  and  "some dehydration"=false

/* dl-g-cl1-31 : Severe Persistent Diarrhoea*/
define "dl-g-cl1-31":
    "age >= 2 months to <60 months"  and obs."diarrhoea" = Base."Yes" and  ("severe dehydration"=true  or  "some dehydration"=true) and obs."diarrhoea for how long?" = val."14 days or more"

/* severe persistent diarrhoea : Severe Persistent Diarrhoea*/
define "severe persistent diarrhoea":
    "age >= 2 months to <60 months"  and obs."diarrhoea" = Base."Yes" and  ("severe dehydration"=true  or  "some dehydration"=true) and obs."diarrhoea for how long?" = val."14 days or more"

/* dl-g-cl1-32 : Persistent Diarrhoea*/
define "dl-g-cl1-32":
    "age >= 2 months to <60 months"  and obs."diarrhoea" = Base."Yes" and  "no dehydration"=true   and obs."diarrhoea for how long?" = val."14 days or more"

/* persistent diarrhoea : Persistent Diarrhoea*/
define "persistent diarrhoea":
    "age >= 2 months to <60 months"  and obs."diarrhoea" = Base."Yes" and  "no dehydration"=true   and obs."diarrhoea for how long?" = val."14 days or more"

/* dl-g-cl1-33 : Dysentery*/
define "dl-g-cl1-33":
    "age >= 2 months to <60 months"  and obs."diarrhoea" = Base."Yes" and obs."blood in the stool in this illness" = Base."Yes" and obs."axillary temperature" < 38.5 'Cel'

/* dysentery : Dysentery*/
define "dysentery":
    "age >= 2 months to <60 months"  and obs."diarrhoea" = Base."Yes" and obs."blood in the stool in this illness" = Base."Yes" and obs."axillary temperature" < 38.5 'Cel'

/* dl-i-cl1-01 : Possible Shigella*/
define "dl-i-cl1-01":
    "age >= 2 months to <60 months"  and obs."diarrhoea" = Base."Yes" and obs."blood in the stool in this illness" = Base."Yes" and obs."axillary temperature" >= 38.5 'Cel'

/* possible shigella : Possible Shigella*/
define "possible shigella":
    "age >= 2 months to <60 months"  and obs."diarrhoea" = Base."Yes" and obs."blood in the stool in this illness" = Base."Yes" and obs."axillary temperature" >= 38.5 'Cel'

/* dl-i-cl1-05 : Throat Abscess or Possible Diptheria*/
define "dl-i-cl1-05":
    "age >= 2 months to <60 months"  and obs."fever" = Base."Yes" and obs."throat problem" = Base."Yes" and (obs."not able to drink or breastfeed" = Base."Yes" or obs."ability to swallow" = val."unable to swallow" or obs."specify throat problem" = val."membrane on throat")

/* throat abscess or possible diptheria : Throat Abscess or Possible Diptheria*/
define "throat abscess or possible diptheria":
    "age >= 2 months to <60 months"  and obs."fever" = Base."Yes" and obs."throat problem" = Base."Yes" and (obs."not able to drink or breastfeed" = Base."Yes" or obs."ability to swallow" = val."unable to swallow" or obs."specify throat problem" = val."membrane on throat")

/* dl-i-cl1-06 : Streptococcal Sore Throat*/
define "dl-i-cl1-06":
    "age >= 2 months to <60 months"  and (obs."fever" = Base."Yes" or obs."ability to swallow" = val."difficulty in swallowing" ) and obs."throat problem" = Base."Yes" and (obs."not able to drink or breastfeed" = Base."Yes" or obs."ability to swallow" = val."unable to swallow" or obs."specify throat problem" = val."membrane on throat") and (ToInteger(obs."enlarged lymph nodes on front of neck" = Base."Yes" )+ToInteger(obs."specify throat problem" = val."red (congested) throat")+ToInteger(obs."specify throat problem" = val."exudate on throat"))>1 and "throat abscess or possible diptheria"=false

/* streptococcal sore throat : Streptococcal Sore Throat*/
define "streptococcal sore throat":
    "age >= 2 months to <60 months"  and (obs."fever" = Base."Yes" or obs."ability to swallow" = val."difficulty in swallowing" ) and obs."throat problem" = Base."Yes" and (obs."not able to drink or breastfeed" = Base."Yes" or obs."ability to swallow" = val."unable to swallow" or obs."specify throat problem" = val."membrane on throat") and (ToInteger(obs."enlarged lymph nodes on front of neck" = Base."Yes" )+ToInteger(obs."specify throat problem" = val."red (congested) throat")+ToInteger(obs."specify throat problem" = val."exudate on throat"))>1 and "throat abscess or possible diptheria"=false

/* dl-i-cl1-07 : Non-Streptococcal Sore Throat*/
define "dl-i-cl1-07":
    "age >= 2 months to <60 months"  and (obs."ability to swallow" = val."difficulty in swallowing" or obs."enlarged lymph nodes on front of neck" = Base."Yes" or obs."specify throat problem" = val."red (congested) throat" or obs."specify throat problem" = val."exudate on throat" ) and obs."throat problem" = Base."Yes" and  "throat abscess or possible diptheria"=false and "streptococcal sore throat"=false

/* non-streptococcal sore throat : Non-Streptococcal Sore Throat*/
define "non-streptococcal sore throat":
    "age >= 2 months to <60 months"  and (obs."ability to swallow" = val."difficulty in swallowing" or obs."enlarged lymph nodes on front of neck" = Base."Yes" or obs."specify throat problem" = val."red (congested) throat" or obs."specify throat problem" = val."exudate on throat" ) and obs."throat problem" = Base."Yes" and  "throat abscess or possible diptheria"=false and "streptococcal sore throat"=false

/* dl-i-cl1-09 : No Throat Problem*/
define "dl-i-cl1-09":
    "age >= 2 months to <60 months" and obs."throat problem" = Base."Yes" and  "throat abscess or possible diptheria"=false and "streptococcal sore throat"=false and "non-streptococcal sore throat"=false

/* no throat problem : No Throat Problem*/
define "no throat problem":
    "age >= 2 months to <60 months" and obs."throat problem" = Base."Yes" and  "throat abscess or possible diptheria"=false and "streptococcal sore throat"=false and "non-streptococcal sore throat"=false

/* dl-g-cl1-73 : Mastoiditis*/
define "dl-g-cl1-73":
    "age >= 2 months to <60 months" and obs."ear problem" = Base."Yes" and   obs."tender swelling behind the ear" = Base."Yes"

/* mastoiditis : Mastoiditis*/
define "mastoiditis":
    "age >= 2 months to <60 months" and obs."ear problem" = Base."Yes" and   obs."tender swelling behind the ear" = Base."Yes"

/* dl-g-cl1-74-76 : Acute Ear Infection*/
define "dl-g-cl1-74-76":
    ("age >= 2 months to <60 months" and obs."ear problem" = Base."Yes" and   obs."tender swelling behind the ear" = Base."Yes")
     and (    obs."ear pain" = Base."Yes" and "chronic ear infection"=false
     or     obs."pus seen draining from the ear" = Base."Yes"  and obs."ear discharge" = Base."Yes" and obs."ear discharge for how long?" = val."less than 14 days"
     or     obs."pus seen draining from the ear" = Base."Yes"  and obs."ear discharge" = Base."No" and obs."pus seen draining from the ear for how long?" = val."less than 14 days")

/* acute ear infection : Acute Ear Infection*/
define "acute ear infection":
    ("age >= 2 months to <60 months" and obs."ear problem" = Base."Yes" and   obs."tender swelling behind the ear" = Base."Yes")
     and (    obs."ear pain" = Base."Yes" and "chronic ear infection"=false
     or     obs."pus seen draining from the ear" = Base."Yes"  and obs."ear discharge" = Base."Yes" and obs."ear discharge for how long?" = val."less than 14 days"
     or     obs."pus seen draining from the ear" = Base."Yes"  and obs."ear discharge" = Base."No" and obs."pus seen draining from the ear for how long?" = val."less than 14 days")

/* dl-i-cl1-11-12 : Chronic Ear Infection*/
define "dl-i-cl1-11-12":
    ("age >= 2 months to <60 months" and obs."ear problem" = Base."Yes" and   obs."pus seen draining from the ear" = Base."Yes")
     and (    obs."ear discharge" = Base."Yes" and obs."ear discharge for how long?" = val."less than 14 days"
     or     obs."ear discharge" = Base."No" and obs."pus seen draining from the ear for how long?" = val."less than 14 days")

/* chronic ear infection : Chronic Ear Infection*/
define "chronic ear infection":
    ("age >= 2 months to <60 months" and obs."ear problem" = Base."Yes" and   obs."pus seen draining from the ear" = Base."Yes")
     and (    obs."ear discharge" = Base."Yes" and obs."ear discharge for how long?" = val."less than 14 days"
     or     obs."ear discharge" = Base."No" and obs."pus seen draining from the ear for how long?" = val."less than 14 days")

/* emcare.b23.de32a : nan*/
define "emcare.b23.de32a":
    obs."ear pain" = Base."Yes" or obs."fever" = Base."Yes"

/* dl-g-cl1-79 : No Ear Infection*/
define "dl-g-cl1-79":
    "age >= 2 months to <60 months" and obs."ear problem" = Base."Yes" and  "chronic ear infection"=false and "mastoiditis"=false and "acute ear infection"=false

/* no ear infection : No Ear Infection*/
define "no ear infection":
    "age >= 2 months to <60 months" and obs."ear problem" = Base."Yes" and  "chronic ear infection"=false and "mastoiditis"=false and "acute ear infection"=false

/* dl-g-cl1-34 : Very Severe Febrile Disease*/
define "dl-g-cl1-34":
    "age >= 2 months to <60 months" and obs."fever" = Base."Yes" and ("danger signs" = true or  obs."stiff neck" = Base."Yes")

/* very severe febrile disease : Very Severe Febrile Disease*/
define "very severe febrile disease":
    "age >= 2 months to <60 months" and obs."fever" = Base."Yes" and ("danger signs" = true or  obs."stiff neck" = Base."Yes")

/* dl-i-cl1-03 : Fever: possible bacterial infection*/
define "dl-i-cl1-03":
    "age >= 2 months to <60 months" and obs."fever" = Base."Yes" and ( "streptococcal sore throat"=true  or "pneumonia"=true or "acute ear infection"=true  or  "chronic ear infection"=true or  "dysentery"=false) and "possible shigella"=false and  "throat abscess or possible diptheria"=false and "severe complicated measles"=false and "measles with eye or mouth complication"=false and "possible measles"=false and  "mastoiditis"=false and "very severe febrile disease"=false and  "severe pneumonia or very severe disease"=false

/* fever: possible bacterial infection : Fever: possible bacterial infection*/
define "fever: possible bacterial infection":
    "age >= 2 months to <60 months" and obs."fever" = Base."Yes" and ( "streptococcal sore throat"=true  or "pneumonia"=true or "acute ear infection"=true  or  "chronic ear infection"=true or  "dysentery"=false) and "possible shigella"=false and  "throat abscess or possible diptheria"=false and "severe complicated measles"=false and "measles with eye or mouth complication"=false and "possible measles"=false and  "mastoiditis"=false and "very severe febrile disease"=false and  "severe pneumonia or very severe disease"=false

/* emcare.b23.de26a : Fever present every day for 7 Days or more*/
define "emcare.b23.de26a":
    obs."fever for how long?" = val."7 days or more" and obs."has fever been present every day since the fever started?" = Base."Yes"

/* fever present every day for 7 days or more : Fever present every day for 7 Days or more*/
define "fever present every day for 7 days or more":
    obs."fever for how long?" = val."7 days or more" and obs."has fever been present every day since the fever started?" = Base."Yes"

/* dl-i-cl1-26 : Fever: bacterial infection unlikely*/
define "dl-i-cl1-26":
    "age >= 2 months to <60 months" and obs."fever" = Base."Yes" and "possible shigella"=false and "fever: possible bacterial infection"=false and "throat abscess or possible diptheria"=false and "severe complicated measles"=false and "measles with eye or mouth complication"=false and "possible measles"=false and "mastoiditis"=false and "very severe febrile disease"=false

/* fever: bacterial infection unlikely : Fever: bacterial infection unlikely*/
define "fever: bacterial infection unlikely":
    "age >= 2 months to <60 months" and obs."fever" = Base."Yes" and "possible shigella"=false and "fever: possible bacterial infection"=false and "throat abscess or possible diptheria"=false and "severe complicated measles"=false and "measles with eye or mouth complication"=false and "possible measles"=false and "mastoiditis"=false and "very severe febrile disease"=false

/* dl-i-cl1-16-67a : Severe Complicated Measles*/
define "dl-i-cl1-16-67a":
    ("age >= 2 months to <60 months" and obs."fever" = Base."Yes")
     and (    (obs."cough" = Base."Yes"  or  obs."runny nose" = Base."Yes" or obs."red eyes" = Base."Yes")  and ("danger signs" = true or  obs."clouding of the cornea" = Base."Yes"  or obs."oral sores or mouth ulcers" = val."mouth sores or mouth ulcers - deep and extensive" or  "pneumonia"=true  or obs."diarrhoea" = Base."Yes") and obs."measles rash" = Base."Yes"
     or     ((obs."cough" = Base."Yes"  or  obs."runny nose" = Base."Yes" or obs."red eyes" = Base."Yes") and (obs."generalised or localised skin problem" = val."generalised skin problem") and ("danger signs" = true  or  obs."clouding of the cornea" = Base."Yes"  or obs."oral sores or mouth ulcers" = val."mouth sores or mouth ulcers - deep and extensive" ) and obs."measles rash" = Base."Yes")
         and (    "measles in last 3 months" =true and obs."generalised or localised skin problem" != val."generalised skin problem"
         or     obs."measles rash" = Base."No" and "measles in last 3 months" = true and obs."generalised or localised skin problem" = val."generalised skin problem")
     or     obs."cough" = Base."No"  and obs."runny nose" = Base."No" and obs."red eyes" = Base."No" and "measles in last 3 months" = true and ("danger signs" = true or  obs."clouding of the cornea" = Base."Yes"  or obs."oral sores or mouth ulcers" = val."mouth sores or mouth ulcers - deep and extensive"))

/* severe complicated measles : Severe Complicated Measles*/
define "severe complicated measles":
    ("age >= 2 months to <60 months" and obs."fever" = Base."Yes")
     and (    (obs."cough" = Base."Yes"  or  obs."runny nose" = Base."Yes" or obs."red eyes" = Base."Yes")  and ("danger signs" = true or  obs."clouding of the cornea" = Base."Yes"  or obs."oral sores or mouth ulcers" = val."mouth sores or mouth ulcers - deep and extensive" or  "pneumonia"=true  or obs."diarrhoea" = Base."Yes") and obs."measles rash" = Base."Yes"
     or     ((obs."cough" = Base."Yes"  or  obs."runny nose" = Base."Yes" or obs."red eyes" = Base."Yes") and (obs."generalised or localised skin problem" = val."generalised skin problem") and ("danger signs" = true  or  obs."clouding of the cornea" = Base."Yes"  or obs."oral sores or mouth ulcers" = val."mouth sores or mouth ulcers - deep and extensive" ) and obs."measles rash" = Base."Yes")
         and (    "measles in last 3 months" =true and obs."generalised or localised skin problem" != val."generalised skin problem"
         or     obs."measles rash" = Base."No" and "measles in last 3 months" = true and obs."generalised or localised skin problem" = val."generalised skin problem")
     or     obs."cough" = Base."No"  and obs."runny nose" = Base."No" and obs."red eyes" = Base."No" and "measles in last 3 months" = true and ("danger signs" = true or  obs."clouding of the cornea" = Base."Yes"  or obs."oral sores or mouth ulcers" = val."mouth sores or mouth ulcers - deep and extensive"))

/* dl-g-cl1-68-70 : Measles with Eye or Mouth Complication*/
define "dl-g-cl1-68-70":
    ("age >= 2 months to <60 months" and obs."fever" = Base."Yes"   and "severe complicated measles"=false)
     and (    (obs."cough" = Base."Yes"  or  obs."runny nose" = Base."Yes" or obs."red eyes" = Base."Yes") and (obs."generalised or localised skin problem" = val."generalised skin problem") and (obs."pus draining from eye" = Base."Yes"  or  obs."oral sores or mouth ulcers" = val."mouth sores or mouth ulcers - not deep and extensive"  ) and obs."measles rash" = Base."Yes"
     or     obs."cough" = Base."No"  and obs."runny nose" = Base."No" and obs."red eyes" = Base."No" and "measles in last 3 months" =true and (obs."pus draining from eye" = Base."Yes"  or obs."oral sores or mouth ulcers" = val."mouth sores or mouth ulcers - not deep and extensive" )
     or     (obs."cough" = Base."Yes"  or  obs."runny nose" = Base."Yes" or obs."red eyes" = Base."Yes") and obs."generalised or localised skin problem" = val."generalised skin problem" and obs."measles rash" = Base."No" and "measles in last 3 months" = true and (obs."pus draining from eye" = Base."Yes"  or obs."oral sores or mouth ulcers" = val."mouth sores or mouth ulcers - not deep and extensive" )
     or     (obs."cough" = Base."Yes"  or  obs."runny nose" = Base."Yes" or obs."red eyes" = Base."Yes")  and obs."generalised or localised skin problem" != val."generalised skin problem" and obs."measles rash" = Base."Yes")

/* measles with eye or mouth complication : Measles with Eye or Mouth Complication*/
define "measles with eye or mouth complication":
    ("age >= 2 months to <60 months" and obs."fever" = Base."Yes"   and "severe complicated measles"=false)
     and (    (obs."cough" = Base."Yes"  or  obs."runny nose" = Base."Yes" or obs."red eyes" = Base."Yes") and (obs."generalised or localised skin problem" = val."generalised skin problem") and (obs."pus draining from eye" = Base."Yes"  or  obs."oral sores or mouth ulcers" = val."mouth sores or mouth ulcers - not deep and extensive"  ) and obs."measles rash" = Base."Yes"
     or     obs."cough" = Base."No"  and obs."runny nose" = Base."No" and obs."red eyes" = Base."No" and "measles in last 3 months" =true and (obs."pus draining from eye" = Base."Yes"  or obs."oral sores or mouth ulcers" = val."mouth sores or mouth ulcers - not deep and extensive" )
     or     (obs."cough" = Base."Yes"  or  obs."runny nose" = Base."Yes" or obs."red eyes" = Base."Yes") and obs."generalised or localised skin problem" = val."generalised skin problem" and obs."measles rash" = Base."No" and "measles in last 3 months" = true and (obs."pus draining from eye" = Base."Yes"  or obs."oral sores or mouth ulcers" = val."mouth sores or mouth ulcers - not deep and extensive" )
     or     (obs."cough" = Base."Yes"  or  obs."runny nose" = Base."Yes" or obs."red eyes" = Base."Yes")  and obs."generalised or localised skin problem" != val."generalised skin problem" and obs."measles rash" = Base."Yes")

/* dl-g-cl1-71 : Possible Measles*/
define "dl-g-cl1-71":
    "age >= 2 months to <60 months" and obs."fever" = Base."Yes"  and (obs."cough" = Base."Yes"  or  obs."runny nose" = Base."Yes" or obs."red eyes" = Base."Yes")  and "severe complicated measles"=false and "measles with eye or mouth complication"=false and obs."measles rash" = Base."Yes"  and obs."generalised or localised skin problem" = val."generalised skin problem"

/* possible measles : Possible Measles*/
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

/* emcare.b23.de36 : New or not previously treated*/
define "emcare.b23.de36":
        obs."is clouding of the cornea a new problem" = Base."Yes"
     or     obs."is clouding of the cornea a new problem" = Base."No" and obs."has clouding of the cornea previously been treated" = Base."No"

/* new or not previously treated : New or not previously treated*/
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

/* emcare.b23.de43a : Scalp Infection (tinea capitis)*/
define "emcare.b23.de43a":
    obs."scalp infection (tinea capitis)" = Base."Yes"

/* scalp infection (tinea capitis) : Scalp Infection (tinea capitis)*/
define "scalp infection (tinea capitis)":
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

/* emcare.b23.de46a : nan*/
define "emcare.b23.de46a":
    obs."severe rash"= Base."Yes"

/* emcare.b23.de46 : nan*/
define "emcare.b23.de46":
    "pneumonia"=true

/* dl-g-cl1-95 : Herpes Zoster*/
define "dl-g-cl1-95":
    "age >= 2 months to <60 months" and obs."skin problem" = Base."Yes"  and obs."generalised or localised skin problem" = val."localised skin problem" and obs."blisters, sores or pustules" = Base."Yes" and obs."type of skin problem" = val."herpes zoster"

/* herpes zoster : Herpes Zoster*/
define "herpes zoster":
    "age >= 2 months to <60 months" and obs."skin problem" = Base."Yes"  and obs."generalised or localised skin problem" = val."localised skin problem" and obs."blisters, sores or pustules" = Base."Yes" and obs."type of skin problem" = val."herpes zoster"

/* emcare.b23.de48 : nan*/
define "emcare.b23.de48":
    obs."eye involvement" = Base."Yes"

/* emcare.b23.de48a : nan*/
define "emcare.b23.de48a":
    obs."disseminated herpes zoster" = Base."Yes"

/* dl-g-cl1-98 : Impetigo*/
define "dl-g-cl1-98":
    "age >= 2 months to <60 months" and obs."skin problem" = Base."Yes"   and obs."blisters, sores or pustules" = Base."Yes" and obs."type of skin problem" =  val."impetigo"

/* impetigo : Impetigo*/
define "impetigo":
    "age >= 2 months to <60 months" and obs."skin problem" = Base."Yes"   and obs."blisters, sores or pustules" = Base."Yes" and obs."type of skin problem" =  val."impetigo"

/* emcare.b23.de50 : nan*/
define "emcare.b23.de50":
    obs."skin infection extends to muscle" = Base."Yes" or obs."measured temperature" = val."measured fever"

/* emcare.b23.de50a : nan*/
define "emcare.b23.de50a":
    obs."extensive impetigo lesions" = Base."Yes"

/* dl-g-cl1-99 : Molluscum Contagiosum*/
define "dl-g-cl1-99":
    "age >= 2 months to <60 months" and obs."skin problem" = Base."Yes"   and obs."type of skin problem" =  val."molluscum contagiosum"

/* molluscum contagiosum : Molluscum Contagiosum*/
define "molluscum contagiosum":
    "age >= 2 months to <60 months" and obs."skin problem" = Base."Yes"   and obs."type of skin problem" =  val."molluscum contagiosum"

/* emcare.b23.de52a : nan*/
define "emcare.b23.de52a":
    obs."extensive molluscum lesions"  = Base."Yes" or obs."molluscum lesions close to the eye"=Base."Yes"

/* dl-g-cl1-100 : Warts*/
define "dl-g-cl1-100":
    "age >= 2 months to <60 months" and obs."skin problem" = Base."Yes"   and obs."generalised or localised skin problem" = val."localised skin problem" and obs."type of skin problem" =  val."warts"

/* warts : Warts*/
define "warts":
    "age >= 2 months to <60 months" and obs."skin problem" = Base."Yes"   and obs."generalised or localised skin problem" = val."localised skin problem" and obs."type of skin problem" =  val."warts"

/* emcare.b23.de53a : nan*/
define "emcare.b23.de53a":
    obs."extensive warts" = Base."Yes"

/* dl-g-cl1-102 : Seborrhoeic Dermatitis*/
define "dl-g-cl1-102":
    "age >= 2 months to <60 months" and obs."skin problem" = Base."Yes"   and obs."generalised or localised skin problem" = val."localised skin problem" and obs."blisters, sores or pustules" = Base."No" and obs."type of skin problem" =  val."seborrhoeic dermatitis"

/* seborrhoeic dermatitis : Seborrhoeic Dermatitis*/
define "seborrhoeic dermatitis":
    "age >= 2 months to <60 months" and obs."skin problem" = Base."Yes"   and obs."generalised or localised skin problem" = val."localised skin problem" and obs."blisters, sores or pustules" = Base."No" and obs."type of skin problem" =  val."seborrhoeic dermatitis"

/* emcare.b23.de55 : nan*/
define "emcare.b23.de55":
    obs."severe seborrhoeic dermatitis" = Base."Yes"

/* dl-g-cl1-103 : Fixed Drug Reaction*/
define "dl-g-cl1-103":
    "age >= 2 months to <60 months" and obs."skin problem" = Base."Yes"   and obs."type of skin problem" =  val."fixed drug reaction"

/* fixed drug reaction : Fixed Drug Reaction*/
define "fixed drug reaction":
    "age >= 2 months to <60 months" and obs."skin problem" = Base."Yes"   and obs."type of skin problem" =  val."fixed drug reaction"

/* dl-g-cl1-104 : Eczema*/
define "dl-g-cl1-104":
    "age >= 2 months to <60 months" and obs."skin problem" = Base."Yes"   and  obs."type of skin problem" =  val."eczema"

/* eczema : Eczema*/
define "eczema":
    "age >= 2 months to <60 months" and obs."skin problem" = Base."Yes"   and  obs."type of skin problem" =  val."eczema"

/* emcare.b23.de57a : nan*/
define "emcare.b23.de57a":
    obs."severe acute moist or weeping eczema" = Base."Yes"

/* emcare.b23.de57b : nan*/
define "emcare.b23.de57b":
    obs."secondary bacterial infection of eczema" = Base."Yes"

/* emcare.b23.de57c : nan*/
define "emcare.b23.de57c":
    obs."secondary herpes infection of eczema (eczema herpeticum)" = Base."Yes"

/* dl-g-cl1-105 : Steven Johnson Syndrome (SJS)*/
define "dl-g-cl1-105":
    "age >= 2 months to <60 months" and obs."skin problem" = Base."Yes"   and obs."generalised or localised skin problem" = val."generalised skin problem" and obs."blisters, sores or pustules" = Base."Yes" and obs."type of skin problem" =  val."steven johnson syndrome (sjs)"

/* steven johnson syndrome (sjs) : Steven Johnson Syndrome (SJS)*/
define "steven johnson syndrome (sjs)":
    "age >= 2 months to <60 months" and obs."skin problem" = Base."Yes"   and obs."generalised or localised skin problem" = val."generalised skin problem" and obs."blisters, sores or pustules" = Base."Yes" and obs."type of skin problem" =  val."steven johnson syndrome (sjs)"

/* dl-g-cl1-106 : Mouth Sores or Ulcer*/
define "dl-g-cl1-106":
    "age >= 2 months to <60 months" and obs."fever" = Base."Yes" and (obs."oral sores or mouth ulcers" = val."mouth sores or mouth ulcers - not deep and extensive" or obs."oral sores or mouth ulcers" = val."mouth sores or mouth ulcers - not deep and extensive" )

/* mouth sores or ulcer : Mouth Sores or Ulcer*/
define "mouth sores or ulcer":
    "age >= 2 months to <60 months" and obs."fever" = Base."Yes" and (obs."oral sores or mouth ulcers" = val."mouth sores or mouth ulcers - not deep and extensive" or obs."oral sores or mouth ulcers" = val."mouth sores or mouth ulcers - not deep and extensive" )

/* emcare.b23.de60 : nan*/
define "emcare.b23.de60":
    obs."oral sores or mouth ulcers" = val."mouth sores or mouth ulcers - deep and extensive"

/* dl-g-cl1-108 : Oral Thrush*/
define "dl-g-cl1-108":
    "age >= 2 months to <60 months" and obs."fever" = Base."Yes" and obs."oral sores or mouth ulcers" = val."oral thrush"

/* oral thrush : Oral Thrush*/
define "oral thrush":
    "age >= 2 months to <60 months" and obs."fever" = Base."Yes" and obs."oral sores or mouth ulcers" = val."oral thrush"

/* dl-i-cl1-28 : Very Low Weight for Age*/
define "dl-i-cl1-28":
    Z."WAZ"<-3

/* very low weight for age : Very Low Weight for Age*/
define "very low weight for age":
    Z."WAZ"<-3

/* dl-i-cl1-33 : Low Weight for Age*/
define "dl-i-cl1-33":
    Z."WAZ">=-3 and Z."WAZ"<-2

/* low weight for age : Low Weight for Age*/
define "low weight for age":
    Z."WAZ">=-3 and Z."WAZ"<-2

/* dl-i-cl1-34 : Low MUAC or visual report of wasting*/
define "dl-i-cl1-34":
    obs."weight" = Base."No" and (AgeInMonths()> 6 and (obs."muac (mid upper arm circumference)" is Quantity and (convert obs."muac (mid upper arm circumference)" to 'cm').value < 12.5 ) or AgeInMonths()<= 6 and obs."muac cannot be measured"=Base."Yes")

/* low muac or visual report of wasting : Low MUAC or visual report of wasting*/
define "low muac or visual report of wasting":
    obs."weight" = Base."No" and (AgeInMonths()> 6 and (obs."muac (mid upper arm circumference)" is Quantity and (convert obs."muac (mid upper arm circumference)" to 'cm').value < 12.5 ) or AgeInMonths()<= 6 and obs."muac cannot be measured"=Base."Yes")
