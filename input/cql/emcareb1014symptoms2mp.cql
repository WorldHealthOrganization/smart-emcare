/*
@author: Patrick Delcroix
@description: This library is part of the project EmCare
*/
library emcareb1014symptoms2mp version '0.0.1.build.171'
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers 
include emcarebase version '0.0.1.build.171' called Base
include emcarevalueset version '0.0.1.build.171' called val
include emcarecombineddataelements version '0.0.1.build.171' called c
include emcareobservation version '0.0.1.build.171' called obs




context Patient


/* 
OBSdefine.EmCare.B6.DE01 : Axillary Temperature (degrees Celcius)

*/
define "OBSdefine.EmCare.B6.DE01":
    Base.GetObsValue('EmCare.B6.DE01')

/* 
OBSdefine.EmCare.B6.DE05 : Hot to Touch

*/
define "OBSdefine.EmCare.B6.DE05":
    Base.GetObsValue('EmCare.B6.DE05')

/* 
Danger Signs : 
c."Danger Signs"
*/
define "Danger Signs":
    c."Danger Signs"

/* 
Fever : 
c."Fever"
*/
define "Fever":
    c."Fever"

/* 
Severe Acute Malnutrition : 
c."Severe Acute Malnutrition"
*/
define "Severe Acute Malnutrition":
    c."Severe Acute Malnutrition"

/* 
vomiting : 
c."vomiting"
*/
define "vomiting":
    c."vomiting"

/* 
EmCare.B6.DE01 : 
o"Axillary Temperature (degrees Celcius)"
*/
define "EmCare.B6.DE01":
    "OBSdefine.EmCare.B6.DE01"

/* 
Axillary Temperature (degrees Celcius) : EmCare.B6.DE01
Alias
*/
define "Axillary Temperature (degrees Celcius)":
    "EmCare.B6.DE01"

/* 
AgeInMonths : 
AgeInMonths()
*/
define "AgeInMonths":
    AgeInMonths()

/* 
Age : AgeInMonths
Alias
*/
define "Age":
    "AgeInMonths"

/* 
EmCare.B6.DE05 : 
o"Hot to Touch"
*/
define "EmCare.B6.DE05":
    "OBSdefine.EmCare.B6.DE05"

/* 
Hot to Touch : EmCare.B6.DE05
Alias
*/
define "Hot to Touch":
    "EmCare.B6.DE05"

/* 
BackReference : 
back reference to resource
*/
define "BackReference":
    Reference {reference: string { value: 'Questionnaire/emcare.b10-14.symptoms.2m.p'}}
