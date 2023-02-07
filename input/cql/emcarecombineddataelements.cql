/*
@author: Patrick Delcroix
@description: This library is part of the project EmCare
*/
library emcarecombineddataelements version '1.0.1.rc12.build.12'
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers 
include emcarebase version '1.0.1.rc12.build.12' called Base
include emcareobservation version '1.0.1.rc12.build.12' called obs
include emcarevalueset version '1.0.1.rc12.build.12' called val




context Patient


/* 
child : Age >= 2 months to <60 months
    AgeInMonths()>= 2 and  AgeInMonths()<60
*/
define "child":
    AgeInMonths()>= 2 and  AgeInMonths()<60

/* alias age >= 2 months to <60 months : child*/
define "age >= 2 months to <60 months":
    "child"

/* 
yi : Age >=28 days to 2 Months
    AgeInDays()>= 28 and AgeInMonths()<2
*/
define "yi":
    AgeInDays()>= 28 and AgeInMonths()<2

/* alias age >=28 days to 2 months : yi*/
define "age >=28 days to 2 months":
    "yi"

/* 
vyi : Age < 28 days
    AgeInDays()< 28
*/
define "vyi":
    AgeInDays()< 28

/* alias age < 28 days : vyi*/
define "age < 28 days":
    "vyi"

/* 
nb : Age <24 hours
    AgeInDays()< 2
*/
define "nb":
    AgeInDays()< 2

/* alias age <24 hours : nb*/
define "age <24 hours":
    "nb"

/* 
nnb : Age  >= 24 hours
    "Age <24 hours" = false
*/
define "nnb":
    "age <24 hours" = false

/* alias age  >= 24 hours : nnb*/
define "age  >= 24 hours":
    "nnb"

/* 
emcare.b.g.de01 : Danger Signs
    ("child")
     and ((    "Convulsing Now"= true)
     or (    "Convulsion(s) in this Illness" = true)
     or (    "Unconscious" = true)
     or (    "Lethargic" = true and "Diarrhoea" = false)
     or (    "Lethargic" = true and "Diarrhoea" = true and "Severe Dehydration" = false and "Some Dehydration" = false)
     or (    "Lethargic" = true and "Diarrhoea" = true and ("Cough" = true or "Difficulty Breathing" = true or  "Fever" = true or "Tender swelling behind the ear" = true or "Palmar Pallor"="Severe Palmar Pallor" or "Mucous membrane pallor"="Severe mucous membrane pallor" or "Hemoglobin (Hb) g/dL"  < 7 'g/dL'))
     or (    "Not able to drink or breastfeed" = true or  "Oral Fluid Test Results" = "Vomits Immediately / Everything")
     or (    "Completely Unable to Drink or Vomits Immediately / Everything"=true or "Oral Fluid Test Results" = "Vomits Immediately / Everything" or  "Unable to Perform Oral Fluid Test"=true))
*/
define "emcare.b.g.de01":
    ("child")
     and ((    Base.GetObsValue('EmCare.B7.DE02')= true)
     or (    Base.GetObsValue('EmCare.B7.DE03') = true)
     or (    Base.GetObsValue('EmCare.B7.DE08') = true)
     or (    Base.GetObsValue('EmCare.B7.DE08a') = true and Base.GetObsValue('EmCare.B11S1.DE01') = false)
     or (    Base.GetObsValue('EmCare.B7.DE08a') = true and Base.GetObsValue('EmCare.B11S1.DE01') = true and "severe dehydration" = false and "some dehydration" = false)
     or (    Base.GetObsValue('EmCare.B7.DE08a') = true and Base.GetObsValue('EmCare.B11S1.DE01') = true and (Base.GetObsValue('EmCare.B10S1.DE05') = true or Base.GetObsValue('EmCare.B10S1.DE01') = true or  "fever" = true or Base.GetObsValue('EmCare.B13S2.DE01') = true or Base.HasObsValueCode('EmCare.B15S2.DE01', 'EmCare.B15S2.DE02') or Base.HasObsValueCode('EmCare.B15S2.DE09', 'EmCare.B15S2.DE10') or Base.GetObsValue('EmCare.B22.DE81')  < 7 'g/dL'))
     or (    Base.GetObsValue('EmCare.B7.DE09') = true or  Base.HasObsValueCode('EmCare.B22.DE08', 'EmCare.B22.DE10'))
     or (    Base.GetObsValue('EmCare.B22.DE14a')=true or Base.HasObsValueCode('EmCare.B22.DE08', 'EmCare.B22.DE10') or  Base.GetObsValue('EmCare.B22.DE14')=true))

/* alias danger signs : emcare.b.g.de01*/
define "danger signs":
    "emcare.b.g.de01"

/* 
emcare.b.g.de05 : Severe Classification up to assessments and tests excluding Severe Dehydration
    (    "Danger Signs" = true)
     or (    "Stridor in a calm child" = true)
     or (    "Oxygen Saturation" <=  90 '%')
     or (    "Stiff neck" = true)
     or (    "Fever" = true and "Throat problem" = true and ("Ability to swallow" = "Unable to swallow" or "Specify Throat problem" = "Membrane on throat"))
     or (    "Tender swelling behind the ear" = true)
     or (    ("Palmar Pallor" = "Severe Palmar Pallor" or "Mucous membrane pallor"="Severe mucous membrane pallor" or "Hemoglobin (Hb) g/dL"  < 7 'g/dL'))
*/
define "emcare.b.g.de05":
    (    "danger signs" = true)
     or (    Base.GetObsValue('EmCare.B10S2.DE04') = true)
     or (    Base.GetObsValue('EmCare.B10S2.DE07') <=  90 '%')
     or (    Base.GetObsValue('EmCare.B12S2.DE01') = true)
     or (    "fever" = true and Base.GetObsValue('EmCare.B17S1.DE01') = true and (Base.HasObsValueCode('EmCare.B17S1.DE07', 'EmCare.B17S1.DE10') or Base.HasObsValueCode('EmCare.B17S1.DE02', 'EmCare.B17S1.DE05')))
     or (    Base.GetObsValue('EmCare.B13S2.DE01') = true)
     or (    (Base.HasObsValueCode('EmCare.B15S2.DE01', 'EmCare.B15S2.DE02') or Base.HasObsValueCode('EmCare.B15S2.DE09', 'EmCare.B15S2.DE10') or Base.GetObsValue('EmCare.B22.DE81')  < 7 'g/dL'))

/* alias severe classification up to assessments and tests excluding severe dehydration : emcare.b.g.de05*/
define "severe classification up to assessments and tests excluding severe dehydration":
    "emcare.b.g.de05"

/* 
dl-g-cl1-23-30 : Severe Dehydration
    ("Age >= 2 months to <60 months"  and "Diarrhoea" = true)
     and ((    "Unconscious" = true and "Skin pinch of Abdomen" = "Skin Pinch goes back slowly (2 seconds or fewer, but not immediately)")
     or (    ("Restless and Irritable" = true or "Skin pinch of Abdomen" = "Skin Pinch goes back slowly (2 seconds or fewer, but not immediately)" ) and ("Oral Fluid Test Results" = "Completely Unable to Drink" or "Oral Fluid Test Results" = "Vomits Immediately / Everything" or  "Completely Unable to Drink or Vomits Immediately / Everything"=true))
     or (    (ToInteger("Unconscious or Lethargic" = true) + ToInteger("Sunken Eyes" = true) +ToInteger("Skin pinch of Abdomen" = "Skin Pinch goes back very slowly (More than 2 seconds)" )+ToInteger( "Oral Fluid Test Results" = "Completely Unable to drink" )+ToInteger(  "Oral Fluid Test Results" = "Vomits Immediately / Everything")  + ToInteger(  "Completely Unable to Drink or Vomits Immediately / Everything"=true )+ToInteger( "Oral Fluid Test Results" = "Drinks Poorly") )>1))
*/
define "dl-g-cl1-23-30":
    ("age >= 2 months to <60 months"  and Base.GetObsValue('EmCare.B11S1.DE01') = true)
     and ((    Base.GetObsValue('EmCare.B7.DE08') = true and Base.HasObsValueCode('EmCare.B11S2.DE02', 'EmCare.B20S2.DE04'))
     or (    (Base.GetObsValue('EmCare.B11S2.DE06') = true or Base.HasObsValueCode('EmCare.B11S2.DE02', 'EmCare.B20S2.DE04') ) and (Base.HasObsValueCode('EmCare.B22.DE08', 'EmCare.B22.DE09') or Base.HasObsValueCode('EmCare.B22.DE08', 'EmCare.B22.DE10') or  Base.GetObsValue('EmCare.B22.DE14a')=true))
     or (    (ToInteger(Coalesce(Base.GetObsValue('EmCare.B7.DE08b') = true,false)) + ToInteger(Coalesce(Base.GetObsValue('EmCare.B11S2.DE01') = true,false)) +ToInteger(Coalesce(Base.HasObsValueCode('EmCare.B11S2.DE02', 'EmCare.B20S2.DE03') ,false))+ToInteger(Coalesce(Base.HasObsValueCode('EmCare.B22.DE08', 'EmCare.B22.DE09') ,false))+ToInteger(Coalesce(Base.HasObsValueCode('EmCare.B22.DE08', 'EmCare.B22.DE10'),false))  + ToInteger(Coalesce(Base.GetObsValue('EmCare.B22.DE14a')=true ,false))+ToInteger(Coalesce(Base.HasObsValueCode('EmCare.B22.DE08', 'EmCare.B22.DE11'),false)) )>1))

/* alias severe dehydration : dl-g-cl1-23-30*/
define "severe dehydration":
    "dl-g-cl1-23-30"

/* 
dl-g-cl1-24-32 : Some Dehydration
    ("Age >= 2 months to <60 months"  and "Diarrhoea" = true and  "Severe Dehydration"!=true)
     and ((    (ToInteger("Restless and irritable" = true) + ToInteger("Sunken Eyes" = true) + ToInteger("Skin Pinch of Abdomen" = "Skin Pinch goes back slowly (2 seconds or fewer, but not immediately)" ) + ToInteger("Oral Fluid Test Results" = "Drinks Eagerly / Thirstily" ))>1)
     or (    "Restless and Irritable" = true and ("Oral Fluid Test Results" = "Drinks poorly" or  "Skin Pinch of Abdomen" = "Skin Pinch goes back very slowly (more than 2 seconds)" ))
     or (    ("Lethargic" = true or "Oral Fluid Test Results" = "Drinks poorly") and ("Skin Pinch of Abdomen" = "Skin Pinch goes back slowly (2 seconds or fewer, but not immediately)" )))
*/
define "dl-g-cl1-24-32":
    ("age >= 2 months to <60 months"  and Base.GetObsValue('EmCare.B11S1.DE01') = true and  Coalesce("severe dehydration",false)!=true)
     and ((    (ToInteger(Coalesce(Base.GetObsValue('EmCare.B11S2.DE06') = true,false)) + ToInteger(Coalesce(Base.GetObsValue('EmCare.B11S2.DE01') = true,false)) + ToInteger(Coalesce(Base.HasObsValueCode('EmCare.B11S2.DE02', 'EmCare.B20S2.DE04') ,false)) + ToInteger(Coalesce(Base.HasObsValueCode('EmCare.B22.DE08', 'EmCare.B22.DE12') ,false)))>1)
     or (    Base.GetObsValue('EmCare.B11S2.DE06') = true and (Base.HasObsValueCode('EmCare.B22.DE08', 'EmCare.B22.DE11') or  Base.HasObsValueCode('EmCare.B11S2.DE02', 'EmCare.B20S2.DE03') ))
     or (    (Base.GetObsValue('EmCare.B7.DE08a') = true or Base.HasObsValueCode('EmCare.B22.DE08', 'EmCare.B22.DE11')) and (Base.HasObsValueCode('EmCare.B11S2.DE02', 'EmCare.B20S2.DE04') )))

/* alias some dehydration : dl-g-cl1-24-32*/
define "some dehydration":
    "dl-g-cl1-24-32"

/* 
psbi other than temperature : nan
    (AgeInMonths()<2)
     and ((    "Difficulty with Feeding" = "Not Able to Feed at all" or "Difficulty with Feeding" = "Not Feeding Well" or "Convulsion(s) in this illness" = true or "Severe Chest Indrawing" = true  or "Movements" = "No movement at all" or "Movements" = "Movement only when stimulated but then stops" or AgeInDays() <= 7  and "Fast breathing" = true))
*/
define "psbi other than temperature":
    (AgeInMonths()<2)
     and ((    Base.HasObsValueCode('EmCare.B18S1.DE02', 'EmCare.B18S1.DE03') or Base.HasObsValueCode('EmCare.B18S1.DE02', 'EmCare.B18S1.DE04') or Base.GetObsValue('EmCare.B7.DE03') = true or Base.GetObsValue('EmCare.B18S2.DE07') = true  or Base.HasObsValueCode('EmCare.B18S2.DE08', 'EmCare.B18S2.DE09') or Base.HasObsValueCode('EmCare.B18S2.DE08', 'EmCare.B18S2.DE10') or AgeInDays() <= 7  and Base.GetObsValue('EmCare.B22.DE07') = true))

/* 
psbi : nan
    (AgeInMonths()<2)
     and ((    "PSBI other than temperature" = true or ("Thermometer not available" = true and "Hot to Touch" = true))
     or (    ("Measured Temperature" = "High" or "Measured Temperature" = "Low")
         and ((    "Measured Temperature (second measurement)" = "High" or "Measured Temperature (second measurement)" = "Low" or "Second Temperature Measurement Not Feasible" = true))))
*/
define "psbi":
    (AgeInMonths()<2)
     and ((    "psbi other than temperature" = true or (Base.GetObsValue('EmCare.B6.DE04') = true and Base.GetObsValue('EmCare.B6.DE05') = true))
     or (    (Base.HasObsValueCode('EmCare.B6.DE01A', 'High') or Base.HasObsValueCode('EmCare.B6.DE01A', 'Low'))
         and ((    Base.HasObsValueCode('EmCare.B22.DE50', 'High') or Base.HasObsValueCode('EmCare.B22.DE50', 'Low') or Base.GetObsValue('EmCare.B22.DE46') = true))))

/* 
yi severe classification other than severe dehydration : nan
    (AgeInMonths()<2)
     and ((    "PSBI" = true
        or
        "Yellow Palms or Yellow Soles" = true or ("Yellow Skin" = true and "Age <24 hours") or ("Yellow Skin" = true and "Age  >= 24 hours" and AgeInDays() < 21  and "When did the Jaundice first appear?" = "Within less than 24 hours of birth")
        or
        "Diarrhoea" = true and (("Restless and Irritable" = "Yes" and "Skin Pinch of Abdomen" = "Skin Pinch goes back very slowly (More than 2 seconds)") or ("Sunken Eyes" = "Yes" and "Skin Pinch of Abdomen" = "Skin Pinch goes back very slowly (More than 2 seconds)"))
        or
        "Weight Status" = "Very Low Weight for Age"))
*/
define "yi severe classification other than severe dehydration":
    (AgeInMonths()<2)
     and ((    "psbi" = true
        or
        Base.GetObsValue('EmCare.B19S2.DE02') = true or (Base.GetObsValue('EmCare.B19S2.DE01') = true and "age <24 hours") or (Base.GetObsValue('EmCare.B19S2.DE01') = true and "age  >= 24 hours" and AgeInDays() < 21  and Base.HasObsValueCode('EmCare.B19S2.DE04', 'EmCare.B19S2.DE05'))
        or
        Base.GetObsValue('EmCare.B11S1.DE01') = true and ((Base.GetObsValue('EmCare.B11S2.DE06') = true and Base.HasObsValueCode('EmCare.B11S2.DE02', 'EmCare.B20S2.DE03')) or (Base.GetObsValue('EmCare.B11S2.DE01') = true and Base.HasObsValueCode('EmCare.B11S2.DE02', 'EmCare.B20S2.DE03')))
        or
        Base.HasObsValueCode('EmCare.B21S2.DE01', 'EmCare.B21S2.DE02')))

/* 
yi severe classification : nan
    (AgeInMonths()<2)
     and ((    "PSBI" = true
        or
        "Yellow Palms or Yellow Soles" = true or ("Yellow Skin" = true and "Age <24 hours") or ("Yellow Skin" = true and "Age  >= 24 hours" and AgeInDays() < 21  and "When did the Jaundice first appear?" = "Within less than 24 hours of birth")
        or
        "Diarrhoea" = true and (("Restless and Irritable" = "Yes" and "Skin Pinch of Abdomen" = "Skin Pinch goes back very slowly (More than 2 seconds)") or ("Sunken Eyes" = "Yes" and "Skin Pinch of Abdomen" = "Skin Pinch goes back very slowly (More than 2 seconds)"))
        or
        "Weight Status" = "Very Low Weight for Age"))
*/
define "yi severe classification":
    (AgeInMonths()<2)
     and ((    "psbi" = true
        or
        Base.GetObsValue('EmCare.B19S2.DE02') = true or (Base.GetObsValue('EmCare.B19S2.DE01') = true and "age <24 hours") or (Base.GetObsValue('EmCare.B19S2.DE01') = true and "age  >= 24 hours" and AgeInDays() < 21  and Base.HasObsValueCode('EmCare.B19S2.DE04', 'EmCare.B19S2.DE05'))
        or
        Base.GetObsValue('EmCare.B11S1.DE01') = true and ((Base.GetObsValue('EmCare.B11S2.DE06') = true and Base.HasObsValueCode('EmCare.B11S2.DE02', 'EmCare.B20S2.DE03')) or (Base.GetObsValue('EmCare.B11S2.DE01') = true and Base.HasObsValueCode('EmCare.B11S2.DE02', 'EmCare.B20S2.DE03')))
        or
        Base.HasObsValueCode('EmCare.B21S2.DE01', 'EmCare.B21S2.DE02')))

/* 
emcare.b12s1.de01 : Fever
    "Measured temperature" = "High" or "Measured temperature" = "Very High" or  "Hot to Touch" = true or  "Fever Reported" = true
*/
define "emcare.b12s1.de01":
    Base.HasObsValueCode('EmCare.B6.DE01A', 'High') or Base.HasObsValueCode('EmCare.B6.DE01A', 'Very High') or  Base.GetObsValue('EmCare.B6.DE05') = true or  Base.GetObsValue('EmCare.B12S1.DE02') = true

/* alias fever : emcare.b12s1.de01*/
define "fever":
    "emcare.b12s1.de01"
