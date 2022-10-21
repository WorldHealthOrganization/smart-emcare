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
include emcareb23classification version '0.99.99' called clas


context Patient
      

/* emcaredt01 : Register a child < 5 years*/
define "emcaredt01":
    difference in years between Today() and  Patient.birthDate < 5

/* register a child < 5 years : Register a child < 5 years*/
define "register a child < 5 years":
    difference in years between Today() and  Patient.birthDate < 5

/* emcaredt02 : Register the child in the encounter*/
define "emcaredt02":
    difference in years between Today() and  Patient.birthDate < 5

/* register the child in the encounter : Register the child in the encounter*/
define "register the child in the encounter":
    difference in years between Today() and  Patient.birthDate < 5

/* emcaredt04 : Evaluate DangerSigns*/
define "emcaredt04":
    difference in years between Today() and  Patient.birthDate < 5

/* evaluate dangersigns : Evaluate DangerSigns*/
define "evaluate dangersigns":
    difference in years between Today() and  Patient.birthDate < 5

/* emcaredt03 : Determine Basic Anthropometric and others measurement*/
define "emcaredt03":
    difference in years between Today() and  Patient.birthDate < 5

/* determine basic anthropometric and others measurement : Determine Basic Anthropometric and others measurement*/
define "determine basic anthropometric and others measurement":
    difference in years between Today() and  Patient.birthDate < 5

/* emcaredt05 : Assess sick child for Symptoms 2 m*/
define "emcaredt05":
    clas."age >=28 days to 2 months" or clas."age < 28 days to 2 months"

/* assess sick child for symptoms 2 m : Assess sick child for Symptoms 2 m*/
define "assess sick child for symptoms 2 m":
    clas."age >=28 days to 2 months" or clas."age < 28 days to 2 months"

/* emcaredt06 : Assess sick child for Symptoms 2p*/
define "emcaredt06":
    clas."age >= 2 months to <60 months"

/* assess sick child for symptoms 2p : Assess sick child for Symptoms 2p*/
define "assess sick child for symptoms 2p":
    clas."age >= 2 months to <60 months"

/* emcaredt07 : Assess sick child for Signs 2 m*/
define "emcaredt07":
    clas."age >=28 days to 2 months" or clas."age < 28 days to 2 months"

/* assess sick child for signs 2 m : Assess sick child for Signs 2 m*/
define "assess sick child for signs 2 m":
    clas."age >=28 days to 2 months" or clas."age < 28 days to 2 months"

/* emcaredt08 : Assess sick child for Signs 2p*/
define "emcaredt08":
    clas."age >= 2 months to <60 months"

/* assess sick child for signs 2p : Assess sick child for Signs 2p*/
define "assess sick child for signs 2p":
    clas."age >= 2 months to <60 months"

/* emcaredt09 : Propose classification*/
define "emcaredt09":
    difference in years between Today() and  Patient.birthDate < 5

/* propose classification : Propose classification*/
define "propose classification":
    difference in years between Today() and  Patient.birthDate < 5

/* emcaredt10 : Do Test*/
define "emcaredt10":
    difference in years between Today() and  Patient.birthDate < 5

/* do test : Do Test*/
define "do test":
    difference in years between Today() and  Patient.birthDate < 5

/* emcaredt11 : Provide Health prevention*/
define "emcaredt11":
    difference in years between Today() and  Patient.birthDate < 5

/* provide health prevention : Provide Health prevention*/
define "provide health prevention":
    difference in years between Today() and  Patient.birthDate < 5
