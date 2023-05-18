/*
@author: Patrick Delcroix
@description: This library is part of the project EmCare
*/
library emcaredt01 version '1.0.1.rc12.build.457'
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers 
include emcarebase version '1.0.1.rc12.build.457' called Base
include emcareobservation version '1.0.1.rc12.build.457' called obs
include emcarevalueset version '1.0.1.rc12.build.457' called val
include emcarecombineddataelements version '1.0.1.rc12.build.457' called clas




context Patient


/* 
none : EmCareDT02
    AgeInYears() < 5
*/
define "none":
    AgeInYears() < 5

/* alias register the child in the encounter : emcaredt02*/
define "register the child in the encounter":
    "emcaredt02"

/* 
none : EmCareDT04
    AgeInYears() < 5
*/
define "none":
    AgeInYears() < 5

/* alias evaluate dangersigns : emcaredt04*/
define "evaluate dangersigns":
    "emcaredt04"

/* 
none : EmCareDT03
    AgeInYears() < 5
*/
define "none":
    AgeInYears() < 5

/* alias determine basic anthropometric and others measurement : emcaredt03*/
define "determine basic anthropometric and others measurement":
    "emcaredt03"

/* 
none : EmCareDT05
    AgeInMonths() < 2
*/
define "none":
    AgeInMonths() < 2

/* alias assess sick child for symptoms 2 m : emcaredt05*/
define "assess sick child for symptoms 2 m":
    "emcaredt05"

/* 
none : EmCareDT06
    clas."age >= 2 months to <60 months"
*/
define "none":
    clas."age >= 2 months to <60 months"

/* alias assess sick child for symptoms 2p : emcaredt06*/
define "assess sick child for symptoms 2p":
    "emcaredt06"

/* 
none : EmCareDT07
    AgeInMonths() < 2
*/
define "none":
    AgeInMonths() < 2

/* alias assess sick child for signs 2 m : emcaredt07*/
define "assess sick child for signs 2 m":
    "emcaredt07"

/* 
none : EmCareDT08
    clas."age >= 2 months to <60 months"
*/
define "none":
    clas."age >= 2 months to <60 months"

/* alias assess sick child for signs 2p : emcaredt08*/
define "assess sick child for signs 2p":
    "emcaredt08"

/* 
none : EmCareDT09
    clas."age >= 2 months to <60 months"
*/
define "none":
    clas."age >= 2 months to <60 months"

/* alias propose classification : emcaredt09*/
define "propose classification":
    "emcaredt09"

/* 
none : EmCareDT10
    AgeInYears() < 5
*/
define "none":
    AgeInYears() < 5

/* alias do test : emcaredt10*/
define "do test":
    "emcaredt10"

/* 
none : EmCareDT11
    AgeInYears() < 5
*/
define "none":
    AgeInYears() < 5

/* alias provide treatment : emcaredt11*/
define "provide treatment":
    "emcaredt11"

/* 
none : EmCareDT12
    AgeInMonths() < 2
*/
define "none":
    AgeInMonths() < 2

/* alias propose classification 2m : emcaredt12*/
define "propose classification 2m":
    "emcaredt12"
