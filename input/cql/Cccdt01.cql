/*
@author: Patrick Delcroix
@description: This library is part of the project Ccc
*/
library Cccdt01 version '1.0.1.rc12.build.457'
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers 
include Cccbase version '1.0.1.rc12.build.457' called Base
include Cccobservation version '1.0.1.rc12.build.457' called obs
include Cccvalueset version '1.0.1.rc12.build.457' called val
include Ccccombineddataelements version '1.0.1.rc12.build.457' called clas




context Patient


/* 
none : CccDT02
    AgeInYears() < 5
*/
define "none":
    AgeInYears() < 5

/* alias register the child in the encounter : Cccdt02*/
define "register the child in the encounter":
    "Cccdt02"

/* 
none : CccDT04
    AgeInYears() < 5
*/
define "none":
    AgeInYears() < 5

/* alias evaluate dangersigns : Cccdt04*/
define "evaluate dangersigns":
    "Cccdt04"

/* 
none : CccDT03
    AgeInYears() < 5
*/
define "none":
    AgeInYears() < 5

/* alias determine basic anthropometric and others measurement : Cccdt03*/
define "determine basic anthropometric and others measurement":
    "Cccdt03"

/* 
none : CccDT05
    AgeInMonths() < 2
*/
define "none":
    AgeInMonths() < 2

/* alias assess sick child for symptoms 2 m : Cccdt05*/
define "assess sick child for symptoms 2 m":
    "Cccdt05"

/* 
none : CccDT06
    clas."age >= 2 months to <60 months"
*/
define "none":
    clas."age >= 2 months to <60 months"

/* alias assess sick child for symptoms 2p : Cccdt06*/
define "assess sick child for symptoms 2p":
    "Cccdt06"

/* 
none : CccDT07
    AgeInMonths() < 2
*/
define "none":
    AgeInMonths() < 2

/* alias assess sick child for signs 2 m : Cccdt07*/
define "assess sick child for signs 2 m":
    "Cccdt07"

/* 
none : CccDT08
    clas."age >= 2 months to <60 months"
*/
define "none":
    clas."age >= 2 months to <60 months"

/* alias assess sick child for signs 2p : Cccdt08*/
define "assess sick child for signs 2p":
    "Cccdt08"

/* 
none : CccDT09
    clas."age >= 2 months to <60 months"
*/
define "none":
    clas."age >= 2 months to <60 months"

/* alias propose classification : Cccdt09*/
define "propose classification":
    "Cccdt09"

/* 
none : CccDT10
    AgeInYears() < 5
*/
define "none":
    AgeInYears() < 5

/* alias do test : Cccdt10*/
define "do test":
    "Cccdt10"

/* 
none : CccDT11
    AgeInYears() < 5
*/
define "none":
    AgeInYears() < 5

/* alias provide treatment : Cccdt11*/
define "provide treatment":
    "Cccdt11"

/* 
none : CccDT12
    AgeInMonths() < 2
*/
define "none":
    AgeInMonths() < 2

/* alias propose classification 2m : Cccdt12*/
define "propose classification 2m":
    "Cccdt12"
