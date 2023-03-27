/*
@author: Patrick Delcroix
@description: This library is part of the project EmCare
*/
library emcaredt01 version '1.0.1.rc12.build.284'
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers 
include emcarebase version '1.0.1.rc12.build.284' called Base
include emcareobservation version '1.0.1.rc12.build.284' called obs
include emcarevalueset version '1.0.1.rc12.build.284' called val
include emcarecombineddataelements version '1.0.1.rc12.build.284' called clas




context Patient


/* 
emcaredt02 : Register the child in the encounter
    AgeInYears() < 5
*/
define "emcaredt02":
    AgeInYears() < 5

/* alias register the child in the encounter : emcaredt02*/
define "register the child in the encounter":
    "emcaredt02"

/* 
emcaredt04 : Evaluate DangerSigns
    AgeInYears() < 5
*/
define "emcaredt04":
    AgeInYears() < 5

/* alias evaluate dangersigns : emcaredt04*/
define "evaluate dangersigns":
    "emcaredt04"

/* 
emcaredt03 : Determine Basic Anthropometric and others measurement
    AgeInYears() < 5
*/
define "emcaredt03":
    AgeInYears() < 5

/* alias determine basic anthropometric and others measurement : emcaredt03*/
define "determine basic anthropometric and others measurement":
    "emcaredt03"

/* 
emcaredt05 : Assess sick child for Symptoms 2 m
    AgeInMonths() < 2
*/
define "emcaredt05":
    AgeInMonths() < 2

/* alias assess sick child for symptoms 2 m : emcaredt05*/
define "assess sick child for symptoms 2 m":
    "emcaredt05"

/* 
emcaredt06 : Assess sick child for Symptoms 2p
    clas."age >= 2 months to <60 months"
*/
define "emcaredt06":
    clas."age >= 2 months to <60 months"

/* alias assess sick child for symptoms 2p : emcaredt06*/
define "assess sick child for symptoms 2p":
    "emcaredt06"

/* 
emcaredt07 : Assess sick child for Signs 2 m
    AgeInMonths() < 2
*/
define "emcaredt07":
    AgeInMonths() < 2

/* alias assess sick child for signs 2 m : emcaredt07*/
define "assess sick child for signs 2 m":
    "emcaredt07"

/* 
emcaredt08 : Assess sick child for Signs 2p
    clas."age >= 2 months to <60 months"
*/
define "emcaredt08":
    clas."age >= 2 months to <60 months"

/* alias assess sick child for signs 2p : emcaredt08*/
define "assess sick child for signs 2p":
    "emcaredt08"

/* 
emcaredt09 : Propose classification
    clas."age >= 2 months to <60 months"
*/
define "emcaredt09":
    clas."age >= 2 months to <60 months"

/* alias propose classification : emcaredt09*/
define "propose classification":
    "emcaredt09"

/* 
emcaredt10 : Do Test
    AgeInYears() < 5
*/
define "emcaredt10":
    AgeInYears() < 5

/* alias do test : emcaredt10*/
define "do test":
    "emcaredt10"

/* 
emcaredt11 : Provide treatment
    AgeInYears() < 5
*/
define "emcaredt11":
    AgeInYears() < 5

/* alias provide treatment : emcaredt11*/
define "provide treatment":
    "emcaredt11"

/* 
emcaredt12 : Propose classification 2m
    AgeInMonths() < 2
*/
define "emcaredt12":
    AgeInMonths() < 2

/* alias propose classification 2m : emcaredt12*/
define "propose classification 2m":
    "emcaredt12"
