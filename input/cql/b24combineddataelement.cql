/*
@author: Patrick Delcroix
@description: This library is part of the project CHE
*/
library b24combineddataelement version '1.0.255+build.398'
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers 
include chebase version '1.0.255+build.398' called Base
include chevalueset version '1.0.255+build.398' called val
include chezscore version '1.0.255+build.398' called Z
include cheobservation version '1.0.255+build.398' called obs




context Patient


/* 
OBSdefine.CHE.B7.DE02 : Convulsing Now

*/
define "OBSdefine.CHE.B7.DE02":
    Base.GetObsValue('CHE.B7.DE02')

/* 
OBSdefine.CHE.B7.B8.B9.DE01 : Continue to Assess Sick Child

*/
define "OBSdefine.CHE.B7.B8.B9.DE01":
    Base.GetObsValue('CHE.B7.B8.B9.DE01')

/* 
OBSdefine.CHE.B7.DE03 : Convulsion(s) in this Illness

*/
define "OBSdefine.CHE.B7.DE03":
    Base.GetObsValue('CHE.B7.DE03')

/* 
OBSdefine.CHE.B7.DE04 : Number of convulsions in this Illness

*/
define "OBSdefine.CHE.B7.DE04":
    Base.GetObsValue('CHE.B7.DE04')

/* 
OBSdefine.CHE.B7.DE07 : Convulsion(s) last 15 minutes or more

*/
define "OBSdefine.CHE.B7.DE07":
    Base.GetObsValue('CHE.B7.DE07')

/* 
OBSdefine.CHE.B7.DE08 : Unconscious or Lethargic

*/
define "OBSdefine.CHE.B7.DE08":
    Base.GetObsValue('CHE.B7.DE08')

/* 
OBSdefine.CHE.B7.DE09 : Not able to drink or breastfeed

*/
define "OBSdefine.CHE.B7.DE09":
    Base.GetObsValue('CHE.B7.DE09')

/* 
OBSdefine.CHE.B7.DE10 : Vomiting

*/
define "OBSdefine.CHE.B7.DE10":
    Base.GetObsValue('CHE.B7.DE10')

/* 
OBSdefine.CHE.B24.G.DE07 : Oral Fluid Test Results

*/
define "OBSdefine.CHE.B24.G.DE07":
    Base.GetObsValue('CHE.B24.G.DE07')

/* 
OBSdefine.CHE.B24.G.DE14 : Completely Unable to Drink or Vomits Everything

*/
define "OBSdefine.CHE.B24.G.DE14":
    Base.GetObsValue('CHE.B24.G.DE14')

/* 
OBSdefine.CHE.B7.DE01 : Obstructed or Absent Breathing

*/
define "OBSdefine.CHE.B7.DE01":
    Base.GetObsValue('CHE.B7.DE01')

/* 
OBSdefine.CHE.B6.DE17 : MUAC (mm)

*/
define "OBSdefine.CHE.B6.DE17":
    Base.GetObsValue('CHE.B6.DE17')

/* 
OBSdefine.CHE.B6.DE03A : Measured Temperature

*/
define "OBSdefine.CHE.B6.DE03A":
    Base.GetObsValue('CHE.B6.DE03A')

/* 
OBSdefine.CHE.B6.DE05 : Hot to Touch

*/
define "OBSdefine.CHE.B6.DE05":
    Base.GetObsValue('CHE.B6.DE05')

/* 
OBSdefine.CHE.B12S1.DE02 : Fever Reported

*/
define "OBSdefine.CHE.B12S1.DE02":
    Base.GetObsValue('CHE.B12S1.DE02')

/* 
OBSdefine.CHE.B24.G.DE43 : Measured Temperature (second measurement)

*/
define "OBSdefine.CHE.B24.G.DE43":
    Base.GetObsValue('CHE.B24.G.DE43')

/* 
OBSdefine.CHE.B24.G.DE42 : Second Temperature Measurement not Feasible

*/
define "OBSdefine.CHE.B24.G.DE42":
    Base.GetObsValue('CHE.B24.G.DE42')

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
CHE.B.G.DE01 : 
    (    ("Convulsing Now" = true and "Continue to Assess Sick Child"="Stabilised, continue consultation"))
     or (    ("Convulsion(s) in this Illness" =  true and ("Number of convulsions in this Illness" = "Two or more convulsions" or "Convulsion(s) last 15 minutes or more" = true)))
     or (    "Unconscious or Lethargic" = true)
     or (    ("Not able to drink or breastfeed" = true or "Vomiting" = "Vomiting Everything") and ("Oral Fluid Test Results" = "Completely Unable to Drink" or "Oral Fluid Test Results" = "Vomits Immediately / Everything" or "Completely Unable to Drink or Vomits Everything"=true))
*/
define "CHE.B.G.DE01":
        (    ("OBSdefine.CHE.B7.DE02" = true and "OBSdefine.CHE.B7.B8.B9.DE01"=val."Stabilised, continue consultation"))
         or (    ("OBSdefine.CHE.B7.DE03" =  true and ("OBSdefine.CHE.B7.DE04" ~ val."Two or more convulsions" or "OBSdefine.CHE.B7.DE07" = true)))
         or (    "OBSdefine.CHE.B7.DE08" = true)
         or (    ("OBSdefine.CHE.B7.DE09" = true or "OBSdefine.CHE.B7.DE10" ~ val."Vomiting Everything") and ("OBSdefine.CHE.B24.G.DE07" ~ val."Completely Unable to Drink" or "OBSdefine.CHE.B24.G.DE07" ~ val."Vomits Immediately / Everything" or "OBSdefine.CHE.B24.G.DE14"=true))

/* 
Danger Signs : CHE.B.G.DE01
Alias
*/
define "Danger Signs":
    "CHE.B.G.DE01"

/* 
CHE.B.G.DE02 : 
"Obstructed or Absent Breathing" = true and "Continue to Assess Sick Child"="Stabilised, continue consultation"
*/
define "CHE.B.G.DE02":
    "OBSdefine.CHE.B7.DE01" = true and "OBSdefine.CHE.B7.B8.B9.DE01"=val."Stabilised, continue consultation"

/* 
History of Obstructed or Absent Breathing : CHE.B.G.DE02
Alias
*/
define "History of Obstructed or Absent Breathing":
    "CHE.B.G.DE02"

/* 
CHE.B.G.DE03 : 
    ("ageinmonths">= 2 and "ageinmonths"< 60)
     and ((    "Weight for Height (WFH) Z Scores"  <=-3 or "Weight for Length (WFL) Z Scores"  <= -3)
     or (    "ageinmonths">=6  and "MUAC (mm)" <=115 'mm')
     or (    "ageinmonths"< 12  and "Weight for Age (WFA) Z Scores" <= -3))
*/
define "CHE.B.G.DE03":
        ("ageinmonths">= 2 and "ageinmonths"< 60)
         and ((    "Weight for Height (WFH) Z Scores"  <=-3 or "Weight for Length (WFL) Z Scores"  <= -3)
         or (    "ageinmonths">=6  and "OBSdefine.CHE.B6.DE17" <=115 'mm')
         or (    "ageinmonths"< 12  and "Weight for Age (WFA) Z Scores" <= -3))

/* 
Severe Acute Malnutrition : CHE.B.G.DE03
Alias
*/
define "Severe Acute Malnutrition":
    "CHE.B.G.DE03"

/* 
CHE.B.G.DE04 : 
false
*/
define "CHE.B.G.DE04":
    false

/* 
Medical Complications : CHE.B.G.DE04
Alias
*/
define "Medical Complications":
    "CHE.B.G.DE04"

/* 
CHE.B.G.DE05 : 
false
*/
define "CHE.B.G.DE05":
    false

/* 
2-59m severe classification other than severe dehdyration : CHE.B.G.DE05
Alias
*/
define "2-59m severe classification other than severe dehdyration":
    "CHE.B.G.DE05"

/* 
CHE.B.G.DE06 : 
"Age" >=2  and "Measured Temperature" = "High" or "Measured Temperature" = "Very High" or "Hot to Touch" = true or "Fever Reported" = true
*/
define "CHE.B.G.DE06":
    "Age" >=2  and "OBSdefine.CHE.B6.DE03A" ~ val."High" or "OBSdefine.CHE.B6.DE03A" ~ val."Very High" or "OBSdefine.CHE.B6.DE05" = true or "OBSdefine.CHE.B12S1.DE02" = true

/* 
Fever : CHE.B.G.DE06
Alias
*/
define "Fever":
    "CHE.B.G.DE06"

/* 
CHE.B23.DE90 : 
false
*/
define "CHE.B23.DE90":
    false

/* 
Severe Dehydration : CHE.B23.DE90
Alias
*/
define "Severe Dehydration":
    "CHE.B23.DE90"

/* 
CHE.B.G.DE07 : 
"Severe Dehydration" = true   and ("Unconscious or Lethargic" =true or ("Not able to drink or breastfeed" = true  or  "Vomiting" = "Vomiting Everything")) and  "Convulsing Now"= true  or "Obstructed or Absent Breathing" = false
*/
define "CHE.B.G.DE07":
    "Severe Dehydration" = true   and ("OBSdefine.CHE.B7.DE08" =true or ("OBSdefine.CHE.B7.DE09" = true  or  "OBSdefine.CHE.B7.DE10" ~ val."Vomiting Everything")) and  "OBSdefine.CHE.B7.DE02"= true  or "OBSdefine.CHE.B7.DE01" = false

/* 
Severe Dehydration with Unconscious/lethargy or Unable to drink AND no other signs of very severe disease : CHE.B.G.DE07
Alias
*/
define "Severe Dehydration with Unconscious/lethargy or Unable to drink AND no other signs of very severe disease":
    "CHE.B.G.DE07"

/* 
CHE.B.G.DE08 : 
false
*/
define "CHE.B.G.DE08":
    false

/* 
PSBI other than temperature : CHE.B.G.DE08
Alias
*/
define "PSBI other than temperature":
    "CHE.B.G.DE08"

/* 
CHE.B.G.DE09 : 
"PSBI other than temperature" = true or (("Measured Temperature" = "High" or "Measured Temperature" = "Low") and ("Measured Temperature (second measurement)" = "High" or "Measured Temperature (second measurement)" = "Low" or "Second Temperature Measurement not Feasible" = true))
*/
define "CHE.B.G.DE09":
    "PSBI other than temperature" = true or (("OBSdefine.CHE.B6.DE03A" ~ val."High" or "OBSdefine.CHE.B6.DE03A" ~ val."Low") and ("OBSdefine.CHE.B24.G.DE43" ~ val."High" or "OBSdefine.CHE.B24.G.DE43" ~ val."Low" or "OBSdefine.CHE.B24.G.DE42" = true))

/* 
PSBI : CHE.B.G.DE09
Alias
*/
define "PSBI":
    "CHE.B.G.DE09"

/* 
CHE.B.G.DE10 : 
false
*/
define "CHE.B.G.DE10":
    false

/* 
YI Severe classification other than severe dehydration : CHE.B.G.DE10
Alias
*/
define "YI Severe classification other than severe dehydration":
    "CHE.B.G.DE10"

/* 
CHE.B.G.DE11 : 
false
*/
define "CHE.B.G.DE11":
    false

/* 
YI Severe classification including severe dehydration : CHE.B.G.DE11
Alias
*/
define "YI Severe classification including severe dehydration":
    "CHE.B.G.DE11"

/* 
BackReference : 
back reference to resource
*/
define "BackReference":
    Reference {reference: string { value: 'Questionnaire/b24combined.dataelement'}}
