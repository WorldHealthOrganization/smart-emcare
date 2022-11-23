/*
@author: Patrick Delcroix
@description: This library is part of the project EmCare
*/
library emcarecombineddataelements version '0.99.99'
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers 
include EmCareBase version '0.99.99' called Base
include EmCareObservation version '0.99.99' called obs
include EmCareValueSet version '0.99.99' called val




context Patient    

/* child : Age >= 2 months to <60 months*/
define "child":
    AgeInMonths()>= 2 and  AgeInMonths()<60

/* alias age >= 2 months to <60 months : child*/
define "age >= 2 months to <60 months":
    "child"

/* yi : Age >=28 days to 2 Months*/
define "yi":
    AgeInDays()>= 28 and AgeInMonths()<2

/* alias age >=28 days to 2 months : yi*/
define "age >=28 days to 2 months":
    "yi"

/* nb : Age < 28 days to 2 Months*/
define "nb":
    AgeInDays()< 28

/* alias age < 28 days to 2 months : nb*/
define "age < 28 days to 2 months":
    "nb"

/* emcare.b23.de01 : Very Severe Disease*/
define "emcare.b23.de01":
    ("child")
     and ((    obs."convulsing now" = true and  obs."continue to assess sick child" = val."stabilised, continue consultation")
     or (    obs."convulsion(s) in this illness" = true)
     or (    obs."unconscious" = true)
     or (    obs."lethargic" = true)
     or (    obs."oral fluid test results" = val."completely unable to drink")
     or (    obs."oral fluid test results" = val."vomits immediately / everything"))

/* alias very severe disease : emcare.b23.de01*/
define "very severe disease":
    "emcare.b23.de01"

/* emcare.b.g.de01 : Danger Signs*/
define "emcare.b.g.de01":
    ("child")
     and ((    obs."convulsing now"= true)
     or (    obs."convulsion(s) in this illness" = true)
     or (    obs."unconscious" = true)
     or (    obs."lethargic" = true and obs."diarrhoea" = false)
     or (    obs."lethargic" = true and obs."diarrhoea" = true)
     or (    obs."lethargic" = true and obs."diarrhoea" = true and (obs."cough" = true or obs."difficulty breathing" = true or  obs."fever" = true or obs."tender swelling behind the ear" = true or obs."palmar pallor"=val."severe palmar pallor" or obs."mucous membrane pallor"=val."severe mucous membrane pallor" or obs."hemoglobin (hb) g/dl"  < 7 'g/dL'))
     or (    obs."not able to drink or breastfeed" = true or  obs."oral fluid test results" = val."vomits immediately / everything")
     or (    obs."completely unable to drink or vomits immediately / everything"=true or obs."oral fluid test results" = val."vomits immediately / everything" or  obs."unable to perform oral fluid test"=true))

/* alias danger signs : emcare.b.g.de01*/
define "danger signs":
    "emcare.b.g.de01"

/* emcare.b.g.de05 : Severe Classification up to assessments and tests excluding Severe Dehydration*/
define "emcare.b.g.de05":
    (    "danger signs" = true)
     or (    obs."stridor in a calm child" = true)
     or (    obs."oxygen saturation" <=  90 '%')
     or (    obs."stiff neck" = true)
     or (    obs."fever" = true and obs."throat problem" = true and (obs."ability to swallow" = val."unable to swallow" or obs."specify throat problem" = val."membrane on throat"))
     or (    obs."tender swelling behind the ear" = true)
     or (    (obs."palmar pallor" = val."severe palmar pallor" or obs."mucous membrane pallor"=val."severe mucous membrane pallor" or obs."hemoglobin (hb) g/dl"  < 7 'g/dL'))

/* alias severe classification up to assessments and tests excluding severe dehydration : emcare.b.g.de05*/
define "severe classification up to assessments and tests excluding severe dehydration":
    "emcare.b.g.de05"
