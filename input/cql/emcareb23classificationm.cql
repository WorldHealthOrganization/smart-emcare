/*
@author: Patrick Delcroix
@description: This library is part of the project EmCare
*/
library emcareb23classificationm version '1.0.1.rc12.build.284'
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers 
include emcarebase version '1.0.1.rc12.build.284' called Base
include emcareobservation version '1.0.1.rc12.build.284' called obs
include emcarevalueset version '1.0.1.rc12.build.284' called val
include emcarezscore version '1.0.1.rc12.build.284' called Z
include emcarecombineddataelements version '1.0.1.rc12.build.284' called C




context Patient


/* 
ageindays : nan
    AgeInDays()
*/
define "ageindays":
    AgeInDays()

/* 
ageinmonths : nan
    AgeInMonths()
*/
define "ageinmonths":
    AgeInMonths()

/* 
measured temperature (second measurement) : nan
    o"Measured Temperature (second measurement)"
*/
define "measured temperature (second measurement)":
    Base.GetObsValue('EmCare.B22.DE50')

/* 
dl-g-cl2-04-08 : Possible Serious Bacterial Infection OR Very Severe Disease
    (    ("ageinmonths"<2)
         and ((    "convulsion(s) in this illness"  or "severe chest indrawing"  or "movements" = "movement only when stimulated but then stops" or "movements" = "no movement at all"  or "difficulty with feeding" = "not able to feed at all" or "difficulty with feeding" = "not feeding well")
         or (    ("Measured Temperature" = "High" or  "Measured Temperature" ="Very High" or "Measured Temperature" = "Low") and  ( "Second Temperature Measurement Not Feasible" = true or "Measured Temperature (second measurement)" != "Normal" ))
         or (    "Measured Temperature" = "Low" and( "Second Temperature Measurement Not Feasible" = true or "Measured Temperature (second measurement)" != "Normal" ))))
     or (    "ageindays"<7 and "Fast Breathing")
*/
define "dl-g-cl2-04-08":
    (    ("ageinmonths"<2)
         and ((    Base.GetObsValue('EmCare.B7.DE03')  or Base.GetObsValue('EmCare.B18S2.DE07')  or Base.HasObsValueCode('EmCare.B18S2.DE08', 'EmCare.B18S2.DE10') or Base.HasObsValueCode('EmCare.B18S2.DE08', 'EmCare.B18S2.DE09')  or Base.HasObsValueCode('EmCare.B18S1.DE02', 'EmCare.B18S1.DE03') or Base.HasObsValueCode('EmCare.B18S1.DE02', 'EmCare.B18S1.DE04'))
         or (    (Base.HasObsValueCode('EmCare.B6.DE01A', 'High') or  Base.HasObsValueCode('EmCare.B6.DE01A', '2') or Base.HasObsValueCode('EmCare.B6.DE01A', 'Low')) and  ( Base.GetObsValue('EmCare.B22.DE46') = true or "measured temperature (second measurement)" != val."normal" ))
         or (    Base.HasObsValueCode('EmCare.B6.DE01A', 'Low') and( Base.GetObsValue('EmCare.B22.DE46') = true or "measured temperature (second measurement)" != val."normal" ))))
     or (    "ageindays"<7 and Base.GetObsValue('EmCare.B22.DE07'))

/* alias possible serious bacterial infection or very severe disease : dl-g-cl2-04-08*/
define "possible serious bacterial infection or very severe disease":
    "dl-g-cl2-04-08"

/* 
dl-g-cl2-10 : Pneumonia
    "Fast Breathing" = "Yes" and "ageinmonths"<2 and "ageindays">=7
*/
define "dl-g-cl2-10":
    Base.GetObsValue('EmCare.B22.DE07') = true and "ageinmonths"<2 and "ageindays">=7

/* alias pneumonia : dl-g-cl2-10*/
define "pneumonia":
    "dl-g-cl2-10"

/* 
dl-g-cl2-11 : Local Infection
    "ageinmonths"<2 and ("Umbilicus Red or Pus Draining" or "Skin Pustules")
*/
define "dl-g-cl2-11":
    "ageinmonths"<2 and (Base.GetObsValue('EmCare.B18S2.DE12') or Base.GetObsValue('EmCare.B18S2.DE13'))

/* alias local infection : dl-g-cl2-11*/
define "local infection":
    "dl-g-cl2-11"

/* 
dl-g-cl2-12 : nan
    "ageinmonths"<2 and "Possible Serious Bacterial Infection OR Very Severe Disease" != true and "Pneumonia" != true and  "Local Infection" != true
*/
define "dl-g-cl2-12":
    "ageinmonths"<2 and Coalesce("possible serious bacterial infection or very severe disease",false)!=true and Coalesce("pneumonia",false)!=true and  Coalesce("local infection",false)!=true

/* 
dl-g-cl2-26 : nan
    "ageindays"<7  and "Weight Status" = v"Very Low Weight for Age"
*/
define "dl-g-cl2-26":
    "ageindays"<7  and Base.HasObsValueCode('EmCare.B21S2.DE01', 'EmCare.B21S2.DE02')

/* 
dl-g-cl2-13-14 : Severe Jaundice
    ("Yellow Skin" = true)
     and ((    "ageindays" < 21  and  "When did the Jaundice first appear?" = "Within less than 24 hours of birth")
     or (    "ageinmonths"<2 and  "Yellow Palms or Yellow Soles" = true))
*/
define "dl-g-cl2-13-14":
    (Base.GetObsValue('EmCare.B19S2.DE01') = true)
     and ((    "ageindays" < 21  and  Base.HasObsValueCode('EmCare.B19S2.DE04', 'EmCare.B19S2.DE05'))
     or (    "ageinmonths"<2 and  Base.GetObsValue('EmCare.B19S2.DE02') = true))

/* alias severe jaundice : dl-g-cl2-13-14*/
define "severe jaundice":
    "dl-g-cl2-13-14"

/* 
dl-g-cl2-13a : nan
    "ageindays" < 1
*/
define "dl-g-cl2-13a":
    "ageindays" < 1

/* 
dl-g-cl2-15-43 : nan
    ("Yellow Palms or Yellow Soles" = false)
     and ((    "ageindays" > 1 and "ageindays" < 21 and "Yellow Skin" = true and ("When did the Jaundice first appear?" = "24 hours or more after birth"  or "When did the Jaundice first appear?" = "Unknown when Jaundice first appeared"))
     or (    "ageindays" < 21  and "Yellow Skin" = true))
*/
define "dl-g-cl2-15-43":
    (Base.GetObsValue('EmCare.B19S2.DE02') = false)
     and ((    "ageindays" > 1 and "ageindays" < 21 and Base.GetObsValue('EmCare.B19S2.DE01') = true and (Base.HasObsValueCode('EmCare.B19S2.DE04', 'EmCare.B19S2.DE06')  or Base.HasObsValueCode('EmCare.B19S2.DE04', 'EmCare.B19S2.DE07')))
     or (    "ageindays" < 21  and Base.GetObsValue('EmCare.B19S2.DE01') = true))

/* 
dl-g-cl2-17 : nan
    "Yellow Skin" = false and "Yellow Palms or Yellow Soles" = false
*/
define "dl-g-cl2-17":
    Base.GetObsValue('EmCare.B19S2.DE01') = false and Base.GetObsValue('EmCare.B19S2.DE02') = false

/* 
dl-g-cl2-18 : Severe Dehydration
    C."severe dehydration"
*/
define "dl-g-cl2-18":
    C."severe dehydration"

/* alias severe dehydration : dl-g-cl2-18*/
define "severe dehydration":
    "dl-g-cl2-18"

/* 
dl-g-cl2-19 : Some Dehydration
    C."some dehydration"
*/
define "dl-g-cl2-19":
    C."some dehydration"

/* alias some dehydration : dl-g-cl2-19*/
define "some dehydration":
    "dl-g-cl2-19"

/* 
dl-g-cl2-25 : No Dehydration
    "Diarrhoea" = true and  "Severe Dehydration"!=true  and  "Some Dehydration"!=true
*/
define "dl-g-cl2-25":
    Base.GetObsValue('EmCare.B11S1.DE01') = true and  Coalesce("severe dehydration",false)!=true  and  Coalesce("some dehydration",false)!=true

/* alias no dehydration : dl-g-cl2-25*/
define "no dehydration":
    "dl-g-cl2-25"

/* 
dl-i-cl2-04-30 : nan
    (    ("Breastfed" = false)
         and ((    "What milk is being given as a replacement feed?" = "Inappropriate replacement milk"
            or
            "Sufficient replacement feeds (in 24 hours)"=false
            or
            "Sufficient replacement feeds"=false
            or
            "How is the milk prepared?" = "Incorrect or Unhygienic Feed Preparation"
            or
            "How is the milk given?" = "Bottle"
            or
            "How are the feeding utensils cleaned?" = "Feeding utensils not cleaned hygienically")
         or (    Base."Biological Mother Vital Status" = "Alive")))
     or (    "Breastfed" = true and  "Difficulty Breastfeeding Observed" = true  or "Difficulty Breastfeeding Reported" or "Sufficient feeds"=false or "Young Infant receives food or fluids other than breast milk" = false)
*/
define "dl-i-cl2-04-30":
    (    (Base.GetObsValue('EmCare.B21S1.DE06') = false)
         and ((    Base.GetObsValue('EmCare.B21S2.DE09&EmCare.B21S2.DE11') = true
            or
            Base.GetObsValue('EmCare.B21S2.DE13')=false
            or
            Base.GetObsValue('EmCare.B21S2.DE16')=false
            or
            Base.HasObsValueCode('EmCare.B21S2.DE18', 'EmCare.B21S2.DE20')
            or
            Base.HasObsValueCode('EmCare.B21S2.DE21', 'EmCare.B21S2.DE23')
            or
            Base.HasObsValueCode('EmCare.B21S2.DE24', 'EmCare.B21S2.DE26'))
         or (    Base."Biological Mother Vital Status" = val."alive")))
     or (    Base.GetObsValue('EmCare.B21S1.DE06') = true and  Base.GetObsValue('EmCare.B22.DE44') = true  or Base.GetObsValue('EmCare.B22.DE42') or Base.GetObsValue('EmCare.B21S2.DE06')=false or Base.GetObsValue('EmCare.B21S2.DE08') = false)

/* 
dl-g-cl2-32 : nan
    "Weight Status" = "Low Weight for Age"
*/
define "dl-g-cl2-32":
    Base.HasObsValueCode('EmCare.B21S2.DE01', 'EmCare.B21S2.DE03')

/* 
dl-g-cl2-42 : nan
    "Ulcers or White Patches in Mouth" = true
*/
define "dl-g-cl2-42":
    Base.GetObsValue('EmCare.B21S2.DE30') = true

/* 
dl-i-cl2-04-42 : Feeding Problem and / or Low Weight for Age
    "DL-G-CL2-32" = true or "DL-G-CL2-42" = true or "DL-I-CL2-04-30" = true
*/
define "dl-i-cl2-04-42":
    "dl-g-cl2-32" = true or "dl-g-cl2-42" = true or "dl-i-cl2-04-30" = true

/* alias feeding problem and / or low weight for age : dl-i-cl2-04-42*/
define "feeding problem and / or low weight for age":
    "dl-i-cl2-04-42"

/* 
dl-g-cl2-50 : nan
    "Weight Status" = v"Normal Weight for Age"  and  "Feeding Problem and / or Low Weight for Age"!= true
*/
define "dl-g-cl2-50":
    Base.HasObsValueCode('EmCare.B21S2.DE01', 'EmCare.B21S2.DE04')  and  Coalesce("feeding problem and / or low weight for age",false)!=true
