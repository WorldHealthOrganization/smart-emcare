/*
@author: Patrick Delcroix
@description: This library is part of the project EmCare
*/
library emcaredt01 version '0.99.99'
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers 
include EmCareBase version '0.99.99' called Base
include EmCareObservation version '0.99.99' called obs
include EmCareValueSet version '0.99.99' called val
include emcarecombineddataelements version '0.99.99' called clas

context Encounter

define Patient:
    Base.EmCarePatient    

/* emcaredt02 : Register the child in the encounter*/
define "emcaredt02":
    difference in years between Today() and  Patient.birthDate < 5

/* alias register the child in the encounter : emcaredt02*/
define "register the child in the encounter":
    "emcaredt02"

/* emcaredt04 : Evaluate DangerSigns*/
define "emcaredt04":
    difference in years between Today() and  Patient.birthDate < 5

/* alias evaluate dangersigns : emcaredt04*/
define "evaluate dangersigns":
    "emcaredt04"

/* emcaredt03 : Determine Basic Anthropometric and others measurement*/
define "emcaredt03":
    difference in years between Today() and  Patient.birthDate < 5

/* alias determine basic anthropometric and others measurement : emcaredt03*/
define "determine basic anthropometric and others measurement":
    "emcaredt03"

/* emcaredt05 : Assess sick child for Symptoms 2 m*/
define "emcaredt05":
    clas."age >=28 days to 2 months" or clas."age < 28 days to 2 months"

/* alias assess sick child for symptoms 2 m : emcaredt05*/
define "assess sick child for symptoms 2 m":
    "emcaredt05"

/* emcaredt06 : Assess sick child for Symptoms 2p*/
define "emcaredt06":
    clas."age >= 2 months to <60 months"

/* alias assess sick child for symptoms 2p : emcaredt06*/
define "assess sick child for symptoms 2p":
    "emcaredt06"

/* emcaredt07 : Assess sick child for Signs 2 m*/
define "emcaredt07":
    clas."age >=28 days to 2 months" or clas."age < 28 days to 2 months"

/* alias assess sick child for signs 2 m : emcaredt07*/
define "assess sick child for signs 2 m":
    "emcaredt07"

/* emcaredt08 : Assess sick child for Signs 2p*/
define "emcaredt08":
    clas."age >= 2 months to <60 months"

/* alias assess sick child for signs 2p : emcaredt08*/
define "assess sick child for signs 2p":
    "emcaredt08"

/* emcaredt09 : Propose classification*/
define "emcaredt09":
    difference in years between Today() and  Patient.birthDate < 5

/* alias propose classification : emcaredt09*/
define "propose classification":
    "emcaredt09"

/* emcaredt10 : Do Test*/
define "emcaredt10":
    difference in years between Today() and  Patient.birthDate < 5

/* alias do test : emcaredt10*/
define "do test":
    "emcaredt10"

/* emcaredt11 : Provide Health prevention*/
define "emcaredt11":
    difference in years between Today() and  Patient.birthDate < 5

/* alias provide health prevention : emcaredt11*/
define "provide health prevention":
    "emcaredt11"
