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
        obs."danger signs" = Base."Yes"
     or     obs."stridor in a calm child" = Base."Yes"
     or     obs."oxygen saturation" <=  90 '%'
     or     obs."stiff neck" = Base."Yes"
     or     obs."fever" = Base."Yes" and obs."throat problem" = Base."Yes" and (obs."ability to swallow" = val."unable to swallow" or obs."specify throat problem" = val."membrane on throat")
     or     obs."tender swelling behind the ear" = Base."Yes"
     or     (obs."palmar pallor" = val."severe palmar pallor" or obs."mucous membrane pallor"=val."severe mucous membrane pallor" or obs."hemoglobin (hb) g/dl"  < 7 'g/dL')

/* severe classification up to assessments and tests excluding severe dehydration : Severe Classification up to assessments and tests excluding Severe Dehydration*/
define "severe classification up to assessments and tests excluding severe dehydration":
        obs."danger signs" = Base."Yes"
     or     obs."stridor in a calm child" = Base."Yes"
     or     obs."oxygen saturation" <=  90 '%'
     or     obs."stiff neck" = Base."Yes"
     or     obs."fever" = Base."Yes" and obs."throat problem" = Base."Yes" and (obs."ability to swallow" = val."unable to swallow" or obs."specify throat problem" = val."membrane on throat")
     or     obs."tender swelling behind the ear" = Base."Yes"
     or     (obs."palmar pallor" = val."severe palmar pallor" or obs."mucous membrane pallor"=val."severe mucous membrane pallor" or obs."hemoglobin (hb) g/dl"  < 7 'g/dL')

/* emcare.b.g.de06 : Fever*/
define "emcare.b.g.de06":
        obs."axaliary temperature" >= 37.5
     or     obs."hot to touch" = Base."Yes"
     or     obs."fever reported" = Base."Yes"

/* fever : Fever*/
define "fever":
        obs."axaliary temperature" >= 37.5
     or     obs."hot to touch" = Base."Yes"
     or     obs."fever reported" = Base."Yes"

/* severe pneumonia or very severe disease : nan*/
define "severe pneumonia or very severe disease":
    "age >= 2 months to <60 months" and (obs."cough" = Base."Yes"  or  obs."difficulty breathing" = Base."Yes") and (obs."danger signs" = Base."Yes" or  obs."stridor in a calm child" = Base."Yes")

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

/* pneumonia : nan*/
define "pneumonia":
    "age >= 2 months to <60 months" and (obs."cough"= Base."Yes"  or  obs."difficulty breathing" = Base."Yes") and (obs."fast breathing" = Base."Yes" or  obs."chest indrawing" = Base."Yes") and ( obs."wheezing" = Base."No") and ("severe pneumonia or very severe disease" = false) and (obs."inhaled bronchodilator trial not feasible or available"=Base."Yes" or obs."chest indrawing (post inhaled bronchodilator trial)"=Base."Yes" or   obs."fast breathing (post inhaled bronchodilator trial)"=Base."Yes")

/* cough or cold : nan*/
define "cough or cold":
    "age >= 2 months to <60 months"  and (obs."cough"= Base."Yes"  or  obs."difficulty breathing" = Base."Yes") and ("severe pneumonia or very severe disease" = false) and ("pneumonia" = false)

/* severe dehydration : nan*/
define "severe dehydration":
    ("age >= 2 months to <60 months"  and obs."diarrhoea" = Base."Yes")
     and (    obs."unconscious" = Base."Yes" and obs."skin pinch of abdomen" = val."goes back slowly (2 seconds or fewer, but not immediately)"
     or     (obs."restless and irritable" = Base."Yes" or obs."skin pinch of abdomen" = val."goes back slowly (2 seconds or fewer, but not immediately)" ) and (obs."oral fluid test results" = val."completely unable to drink" or obs."oral fluid test results" = val."vomits immediately / everything" or  obs."completely unable to drink or vomits immediately / everything"=Base."Yes")
     or     (ToInteger(obs."unconscious or lethargic" = Base."Yes") + ToInteger(obs."sunken eyes" = Base."Yes") +ToInteger(obs."skin pinch of abdomen" = val."goes back very slowly (more than 2 seconds)" )+ToInteger( obs."oral fluid test results" = val."completely unable to drink"  or obs."oral fluid test results" = val."vomits immediately / everything"  or obs."completely unable to drink or vomits immediately / everything"=Base."Yes" or obs."oral fluid test results" = val."drinks poorly") )>1)
