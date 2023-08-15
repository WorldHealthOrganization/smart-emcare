/*
@author: Patrick Delcroix
@description: This library is part of the project EmCare
*/
library b24combineddataelement version '1.0.62+build.205'
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers 
include emcarebase version '1.0.62+build.205' called Base
include emcarevalueset version '1.0.62+build.205' called val
include emcarezscore version '1.0.62+build.205' called Z
include emcareobservation version '1.0.62+build.205' called obs




context Patient


/* 
OBSdefine.EmCare.B7.DE02 : Convulsing Now

*/
define "OBSdefine.EmCare.B7.DE02":
    Base.GetObsValue('EmCare.B7.DE02')

/* 
OBSdefine.EmCare.B7.B8.B9.DE01 : Continue to Assess Sick Child

*/
define "OBSdefine.EmCare.B7.B8.B9.DE01":
    Base.GetObsValue('EmCare.B7.B8.B9.DE01')

/* 
OBSdefine.EmCare.B7.DE03 : Convulsion(s) in this Illness

*/
define "OBSdefine.EmCare.B7.DE03":
    Base.GetObsValue('EmCare.B7.DE03')

/* 
OBSdefine.EmCare.B7.DE04 : Number of convulsions in this Illness

*/
define "OBSdefine.EmCare.B7.DE04":
    Base.GetObsValue('EmCare.B7.DE04')

/* 
OBSdefine.EmCare.B7.DE07 : Convulsion(s) last 15 minutes or more

*/
define "OBSdefine.EmCare.B7.DE07":
    Base.GetObsValue('EmCare.B7.DE07')

/* 
OBSdefine.EmCare.B7.DE08 : Unconscious or Lethargic

*/
define "OBSdefine.EmCare.B7.DE08":
    Base.GetObsValue('EmCare.B7.DE08')

/* 
OBSdefine.EmCare.B7.DE09 : Not able to drink or breastfeed

*/
define "OBSdefine.EmCare.B7.DE09":
    Base.GetObsValue('EmCare.B7.DE09')

/* 
OBSdefine.EmCare.B7.DE10 : Vomiting

*/
define "OBSdefine.EmCare.B7.DE10":
    Base.GetObsValue('EmCare.B7.DE10')

/* 
OBSdefine.EmCare.B24.G.DE07 : Oral Fluid Test Results

*/
define "OBSdefine.EmCare.B24.G.DE07":
    Base.GetObsValue('EmCare.B24.G.DE07')

/* 
OBSdefine.EmCare.B24.G.DE14 : Completely Unable to Drink or Vomits Everything

*/
define "OBSdefine.EmCare.B24.G.DE14":
    Base.GetObsValue('EmCare.B24.G.DE14')

/* 
OBSdefine.EmCare.B7.DE01 : Obstructed or Absent Breathing

*/
define "OBSdefine.EmCare.B7.DE01":
    Base.GetObsValue('EmCare.B7.DE01')

/* 
OBSdefine.EmCare.B6.DE17 : MUAC (mm)

*/
define "OBSdefine.EmCare.B6.DE17":
    Base.GetObsValue('EmCare.B6.DE17')

/* 
OBSdefine.EmCare.B6.DE03A : Measured Temperature

*/
define "OBSdefine.EmCare.B6.DE03A":
    Base.GetObsValue('EmCare.B6.DE03A')

/* 
OBSdefine.EmCare.B6.DE05 : Hot to Touch

*/
define "OBSdefine.EmCare.B6.DE05":
    Base.GetObsValue('EmCare.B6.DE05')

/* 
OBSdefine.EmCare.B12S1.DE02 : Fever Reported

*/
define "OBSdefine.EmCare.B12S1.DE02":
    Base.GetObsValue('EmCare.B12S1.DE02')

/* 
OBSdefine.EmCare.B24.G.DE43 : Measured Temperature (second measurement)

*/
define "OBSdefine.EmCare.B24.G.DE43":
    Base.GetObsValue('EmCare.B24.G.DE43')

/* 
OBSdefine.EmCare.B24.G.DE42 : Second Temperature Measurement not Feasible

*/
define "OBSdefine.EmCare.B24.G.DE42":
    Base.GetObsValue('EmCare.B24.G.DE42')

/* 
ageinmonths : 
AgeInMonths()
*/
define "ageinmonths":
    AgeInMonths()

/* 
Age : ageinmonths
Alias
*/
define "Age":
    "ageinmonths"

/* 
Weight for Length (WFL) Z Scores : 
Z."WLZ"
*/
define "Weight for Length (WFL) Z Scores":
    Z."WLZ"

/* 
Weight for Height (WFH) Z Scores : 
Z."WHZ"
*/
define "Weight for Height (WFH) Z Scores":
    Z."WHZ"

/* 
Weight for Age (WFA) Z Scores : 
Z."WAZ"
*/
define "Weight for Age (WFA) Z Scores":
    Z."WAZ"

/* 
EmCare.B.G.DE01 : 
    (    ("Convulsing Now" = true and "Continue to Assess Sick Child"="Stabilised, continue consultation"))
     or (    ("Convulsion(s) in this Illness" =  true and ("Number of convulsions in this Illness" = "Two or more convulsions" or "Convulsion(s) last 15 minutes or more" = true)))
     or (    "Unconscious or Lethargic" = true)
     or (    ("Not able to drink or breastfeed" = true or "Vomiting" = "Vomiting Everything") and ("Oral Fluid Test Results" = "Completely Unable to Drink" or "Oral Fluid Test Results" = "Vomits Immediately / Everything" or "Completely Unable to Drink or Vomits Everything"=true))
*/
define "EmCare.B.G.DE01":
        (    ("OBSdefine.EmCare.B7.DE02" = true and "OBSdefine.EmCare.B7.B8.B9.DE01"=val."Stabilised, continue consultation"))
         or (    ("OBSdefine.EmCare.B7.DE03" =  true and ("OBSdefine.EmCare.B7.DE04" ~ val."Two or more convulsions" or "OBSdefine.EmCare.B7.DE07" = true)))
         or (    "OBSdefine.EmCare.B7.DE08" = true)
         or (    ("OBSdefine.EmCare.B7.DE09" = true or "OBSdefine.EmCare.B7.DE10" ~ val."Vomiting Everything") and ("OBSdefine.EmCare.B24.G.DE07" ~ val."Completely Unable to Drink" or "OBSdefine.EmCare.B24.G.DE07" ~ val."Vomits Immediately / Everything" or "OBSdefine.EmCare.B24.G.DE14"=true))

/* 
Danger Signs : EmCare.B.G.DE01
Alias
*/
define "Danger Signs":
    "EmCare.B.G.DE01"

/* 
EmCare.B.G.DE02 : 
"Obstructed or Absent Breathing" = true and "Continue to Assess Sick Child"="Stabilised, continue consultation"
*/
define "EmCare.B.G.DE02":
    "OBSdefine.EmCare.B7.DE01" = true and "OBSdefine.EmCare.B7.B8.B9.DE01"=val."Stabilised, continue consultation"

/* 
History of Obstructed or Absent Breathing : EmCare.B.G.DE02
Alias
*/
define "History of Obstructed or Absent Breathing":
    "EmCare.B.G.DE02"

/* 
EmCare.B.G.DE03 : 
    ("ageinmonths">= 2 and "ageinmonths"< 60)
     and ((    "Weight for Height (WFH) Z Scores"  <=-3 or "Weight for Length (WFL) Z Scores"  <= -3)
     or (    "ageinmonths">=6  and "MUAC (mm)" <=115 'mm')
     or (    "ageinmonths"< 12  and "Weight for Age (WFA) Z Scores" <= -3))
*/
define "EmCare.B.G.DE03":
        ("ageinmonths">= 2 and "ageinmonths"< 60)
         and ((    "Weight for Height (WFH) Z Scores"  <=-3 or "Weight for Length (WFL) Z Scores"  <= -3)
         or (    "ageinmonths">=6  and "OBSdefine.EmCare.B6.DE17" <=115 'mm')
         or (    "ageinmonths"< 12  and "Weight for Age (WFA) Z Scores" <= -3))

/* 
Severe Acute Malnutrition : EmCare.B.G.DE03
Alias
*/
define "Severe Acute Malnutrition":
    "EmCare.B.G.DE03"

/* 
EmCare.B.G.DE04 : 
false
*/
define "EmCare.B.G.DE04":
    false

/* 
Medical Complications : EmCare.B.G.DE04
Alias
*/
define "Medical Complications":
    "EmCare.B.G.DE04"

/* 
EmCare.B.G.DE05 : 
false
*/
define "EmCare.B.G.DE05":
    false

/* 
2-59m severe classification other than severe dehdyration : EmCare.B.G.DE05
Alias
*/
define "2-59m severe classification other than severe dehdyration":
    "EmCare.B.G.DE05"

/* 
EmCare.B.G.DE06 : 
"Age" >=2  and "Measured Temperature" = "High" or "Measured Temperature" = "Very High" or "Hot to Touch" = true or "Fever Reported" = true
*/
define "EmCare.B.G.DE06":
    "Age" >=2  and "OBSdefine.EmCare.B6.DE03A" ~ val."High" or "OBSdefine.EmCare.B6.DE03A" ~ val."Very High" or "OBSdefine.EmCare.B6.DE05" = true or "OBSdefine.EmCare.B12S1.DE02" = true

/* 
Fever : EmCare.B.G.DE06
Alias
*/
define "Fever":
    "EmCare.B.G.DE06"

/* 
EmCare.B23.DE90 : 
false
*/
define "EmCare.B23.DE90":
    false

/* 
Severe Dehydration : EmCare.B23.DE90
Alias
*/
define "Severe Dehydration":
    "EmCare.B23.DE90"

/* 
EmCare.B.G.DE07 : 
"Severe Dehydration" = true   and ("Unconscious or Lethargic" =true or ("Not able to drink or breastfeed" = true  or  "Vomiting" = "Vomiting Everything")) and  "Convulsing Now"= true  or "Obstructed or Absent Breathing" = false
*/
define "EmCare.B.G.DE07":
    "Severe Dehydration" = true   and ("OBSdefine.EmCare.B7.DE08" =true or ("OBSdefine.EmCare.B7.DE09" = true  or  "OBSdefine.EmCare.B7.DE10" ~ val."Vomiting Everything")) and  "OBSdefine.EmCare.B7.DE02"= true  or "OBSdefine.EmCare.B7.DE01" = false

/* 
Severe Dehydration with Unconscious/lethargy or Unable to drink AND no other signs of very severe disease : EmCare.B.G.DE07
Alias
*/
define "Severe Dehydration with Unconscious/lethargy or Unable to drink AND no other signs of very severe disease":
    "EmCare.B.G.DE07"

/* 
EmCare.B.G.DE08 : 
false
*/
define "EmCare.B.G.DE08":
    false

/* 
PSBI other than temperature : EmCare.B.G.DE08
Alias
*/
define "PSBI other than temperature":
    "EmCare.B.G.DE08"

/* 
EmCare.B.G.DE09 : 
"PSBI other than temperature" = true or (("Measured Temperature" = "High" or "Measured Temperature" = "Low") and ("Measured Temperature (second measurement)" = "High" or "Measured Temperature (second measurement)" = "Low" or "Second Temperature Measurement not Feasible" = true))
*/
define "EmCare.B.G.DE09":
    "PSBI other than temperature" = true or (("OBSdefine.EmCare.B6.DE03A" ~ val."High" or "OBSdefine.EmCare.B6.DE03A" ~ val."Low") and ("OBSdefine.EmCare.B24.G.DE43" ~ val."High" or "OBSdefine.EmCare.B24.G.DE43" ~ val."Low" or "OBSdefine.EmCare.B24.G.DE42" = true))

/* 
PSBI : EmCare.B.G.DE09
Alias
*/
define "PSBI":
    "EmCare.B.G.DE09"

/* 
EmCare.B.G.DE10 : 
false
*/
define "EmCare.B.G.DE10":
    false

/* 
YI Severe classification other than severe dehydration : EmCare.B.G.DE10
Alias
*/
define "YI Severe classification other than severe dehydration":
    "EmCare.B.G.DE10"

/* 
EmCare.B.G.DE11 : 
false
*/
define "EmCare.B.G.DE11":
    false

/* 
YI Severe classification including severe dehydration : EmCare.B.G.DE11
Alias
*/
define "YI Severe classification including severe dehydration":
    "EmCare.B.G.DE11"

/* 
BackReference : 
back reference to resource
*/
define "BackReference":
    Reference {reference: string { value: 'Questionnaire/b24combined.dataelement'}}
