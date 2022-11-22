/*
@author: Patrick Delcroix
@description: This library is part of the project EmCare
*/
library emcaretreatment version '0.99.99'
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers 
include EmCareBase version '0.99.99' called Base
include EmCareObservation version '0.99.99' called obs
include EmCareValueSet version '0.99.99' called val


parameter "encounter"  Encounter


context Patient    

/* load-emcare.c10.it.de01 : nan*/
define "load-emcare.c10.it.de01":
    Base.HasCond('Very Severe Disease')

/* load-emcare.c10.it.de02 : nan*/
define "load-emcare.c10.it.de02":
    Base.HasCond('Severe Pneumonia or Very Severe Disease')

/* load-emcare.c10.it.de03 : nan*/
define "load-emcare.c10.it.de03":
    Base.HasCond('Pneumonia')

/* load-emcare.c10.it.de04 : nan*/
define "load-emcare.c10.it.de04":
    Base.HasCond('Cough or Cold')

/* load-emcare.c10.it.de05 : nan*/
define "load-emcare.c10.it.de05":
    Base.HasCond('Severe Dehydration')

/* load-emcare.c10.it.de06 : nan*/
define "load-emcare.c10.it.de06":
    Base.HasCond('Some Dehydration')

/* load-emcare.c10.it.de07 : nan*/
define "load-emcare.c10.it.de07":
    Base.HasCond('No Dehydration')

/* load-emcare.c10.it.de08 : nan*/
define "load-emcare.c10.it.de08":
    Base.HasCond('Severe Persistent Diarrhoea')

/* load-emcare.c10.it.de09 : nan*/
define "load-emcare.c10.it.de09":
    Base.HasCond('Persistent Diarrhoea')

/* load-emcare.c10.it.de10 : nan*/
define "load-emcare.c10.it.de10":
    Base.HasCond('Possible Shigella')

/* load-emcare.c10.it.de11 : nan*/
define "load-emcare.c10.it.de11":
    Base.HasCond('Dysentery')

/* load-emcare.c10.it.de12 : nan*/
define "load-emcare.c10.it.de12":
    Base.HasCond('Throat Abscess or Possible Diptheria')

/* load-emcare.c10.it.de13 : nan*/
define "load-emcare.c10.it.de13":
    Base.HasCond('Streptococcal Sore Throat')

/* load-emcare.c10.it.de14 : nan*/
define "load-emcare.c10.it.de14":
    Base.HasCond('Streptococcal Sore Throat')

/* load-emcare.c10.it.de15 : nan*/
define "load-emcare.c10.it.de15":
    Base.HasCond('No Throat Problem ')

/* load-emcare.c10.it.de16 : nan*/
define "load-emcare.c10.it.de16":
    Base.HasCond('Mastoiditis')

/* load-emcare.c10.it.de17 : nan*/
define "load-emcare.c10.it.de17":
    Base.HasCond('Acute Ear Infection')

/* load-emcare.c10.it.de18 : nan*/
define "load-emcare.c10.it.de18":
    Base.HasCond('Chronic Ear Infection')

/* load-emcare.c10.it.de19 : nan*/
define "load-emcare.c10.it.de19":
    Base.HasCond('No Ear Infection')

/* load-emcare.c10.it.de20 : nan*/
define "load-emcare.c10.it.de20":
    Base.HasCond('Very Severe Febrile Disease')

/* load-emcare.c10.it.de21 : nan*/
define "load-emcare.c10.it.de21":
    Base.HasCond('Fever: possible bacterial infection')

/* load-emcare.c10.it.de22 : nan*/
define "load-emcare.c10.it.de22":
    Base.HasCond('Fever: bacterial infection unlikely')

/* load-emcare.c10.it.de23 : nan*/
define "load-emcare.c10.it.de23":
    Base.HasCond('Severe Complicated Measles')

/* load-emcare.c10.it.de24 : nan*/
define "load-emcare.c10.it.de24":
    Base.HasCond('Measles with Eye or Mouth Complication')

/* load-emcare.c10.it.de25 : nan*/
define "load-emcare.c10.it.de25":
    Base.HasCond('Possible Measles')

/* load-emcare.c10.it.de42 : nan*/
define "load-emcare.c10.it.de42":
    Base.HasCond('Severe Anaemia')

/* load-emcare.c10.it.de43 : nan*/
define "load-emcare.c10.it.de43":
    Base.HasCond('Anaemia')

/* load-emcare.c10.it.de44 : nan*/
define "load-emcare.c10.it.de44":
    Base.HasCond('No Anaemia')

/* load-emcare.c10.it.de26 : nan*/
define "load-emcare.c10.it.de26":
    Base.HasCond('Eye Infection')

/* load-emcare.c10.it.de27 : nan*/
define "load-emcare.c10.it.de27":
    Base.HasCond('Clouding of the Cornea')

/* load-emcare.c10.it.de28 : nan*/
define "load-emcare.c10.it.de28":
    Base.HasCond('Papular Itching Rash (Prurigo)')

/* load-emcare.c10.it.de29 : nan*/
define "load-emcare.c10.it.de29":
    Base.HasCond('Ringworm (Tinea)')

/* load-emcare.c10.it.de30 : nan*/
define "load-emcare.c10.it.de30":
    Base.HasCond('Scabies')

/* load-emcare.c10.it.de31 : nan*/
define "load-emcare.c10.it.de31":
    Base.HasCond('Chickenpox')

/* load-emcare.c10.it.de32 : nan*/
define "load-emcare.c10.it.de32":
    Base.HasCond('Herpes Zoster')

/* load-emcare.c10.it.de33 : nan*/
define "load-emcare.c10.it.de33":
    Base.HasCond('Impetigo')

/* load-emcare.c10.it.de34 : nan*/
define "load-emcare.c10.it.de34":
    Base.HasCond('Molluscum Contagiosum')

/* load-emcare.c10.it.de35 : nan*/
define "load-emcare.c10.it.de35":
    Base.HasCond('Warts')

/* load-emcare.c10.it.de36 : nan*/
define "load-emcare.c10.it.de36":
    Base.HasCond('Seborrhoeic Dermatitis')

/* load-emcare.c10.it.de37 : nan*/
define "load-emcare.c10.it.de37":
    Base.HasCond('Fixed Drug Reaction')

/* load-emcare.c10.it.de38 : nan*/
define "load-emcare.c10.it.de38":
    Base.HasCond('Eczema')

/* load-emcare.c10.it.de39 : nan*/
define "load-emcare.c10.it.de39":
    Base.HasCond('Steven Johnson Syndrome (SJS)')

/* load-emcare.c10.it.de40 : nan*/
define "load-emcare.c10.it.de40":
    Base.HasCond('Mouth Sores or Ulcer')

/* load-emcare.c10.it.de41 : nan*/
define "load-emcare.c10.it.de41":
    Base.HasCond('Oral Thrush')

/* load-emcare.c10.it.de45 : nan*/
define "load-emcare.c10.it.de45":
    Base.HasCond('Very Low Weight for Age')

/* load-emcare.c10.it.de46 : nan*/
define "load-emcare.c10.it.de46":
    Base.HasCond('Low Weight for Age')

/* load-emcare.c10.it.de47 : nan*/
define "load-emcare.c10.it.de47":
    Base.HasCond('Low MUAC or visual report of wasting')

/* load-emcare.c10.it.de48 : nan*/
define "load-emcare.c10.it.de48":
    Base.HasCond('Possible Serious Bacterial Infection OR Very Severe Disease')

/* load-emcare.c10.it.de49 : nan*/
define "load-emcare.c10.it.de49":
    Base.HasCond('Pneumonia')

/* load-emcare.c10.it.de50 : nan*/
define "load-emcare.c10.it.de50":
    Base.HasCond('Local Infection')

/* load-emcare.c10.it.de51 : nan*/
define "load-emcare.c10.it.de51":
    Base.HasCond('Infection Unlikely')

/* load-emcare.c10.it.de52 : nan*/
define "load-emcare.c10.it.de52":
    Base.HasCond('Severe Jaundice')

/* load-emcare.c10.it.de53 : nan*/
define "load-emcare.c10.it.de53":
    Base.HasCond('Jaundice')

/* load-emcare.c10.it.de54 : nan*/
define "load-emcare.c10.it.de54":
    Base.HasCond('No Jaundice')

/* load-emcare.c10.it.de55 : nan*/
define "load-emcare.c10.it.de55":
    Base.HasCond('Severe Dehydration')

/* load-emcare.c10.it.de56 : nan*/
define "load-emcare.c10.it.de56":
    Base.HasCond('Some Dehydration')

/* load-emcare.c10.it.de57 : nan*/
define "load-emcare.c10.it.de57":
    Base.HasCond('No Dehydration')

/* load-emcare.c10.it.de58 : nan*/
define "load-emcare.c10.it.de58":
    Base.HasCond('Very Low Weight for Age')

/* load-emcare.c10.it.de59 : nan*/
define "load-emcare.c10.it.de59":
    Base.HasCond('No Feeding Problem')

/* load-emcare.c10.it.de60 : nan*/
define "load-emcare.c10.it.de60":
    Base.HasCond('Feeding Problem and / or Low Weight for Age')
