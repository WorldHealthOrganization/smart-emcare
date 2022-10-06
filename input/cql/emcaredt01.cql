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
      

/* EmCareDT01 : Register a child < 5 years*/
define "EmCareDT01":
    difference in years between Today() and  Patient.birthDate < 5

/* Register a child < 5 years : Register a child < 5 years*/
define "Register a child < 5 years":
    difference in years between Today() and  Patient.birthDate < 5

/* EmCareDT02 : Register the child in the encounter*/
define "EmCareDT02":
    difference in years between Today() and  Patient.birthDate < 5

/* Register the child in the encounter : Register the child in the encounter*/
define "Register the child in the encounter":
    difference in years between Today() and  Patient.birthDate < 5

/* EmCareDT04 : Evaluate DangerSigns*/
define "EmCareDT04":
    difference in years between Today() and  Patient.birthDate < 5

/* Evaluate DangerSigns : Evaluate DangerSigns*/
define "Evaluate DangerSigns":
    difference in years between Today() and  Patient.birthDate < 5

/* EmCareDT03 : Determine Basic Anthropometric and others measurement*/
define "EmCareDT03":
    difference in years between Today() and  Patient.birthDate < 5

/* Determine Basic Anthropometric and others measurement : Determine Basic Anthropometric and others measurement*/
define "Determine Basic Anthropometric and others measurement":
    difference in years between Today() and  Patient.birthDate < 5

/* EmCareDT05 : Assess sick child for Symptoms 2 m*/
define "EmCareDT05":
    clas."Age >=28 days to 2 Months" or clas."Age < 28 days to 2 Months"

/* Assess sick child for Symptoms 2 m : Assess sick child for Symptoms 2 m*/
define "Assess sick child for Symptoms 2 m":
    clas."Age >=28 days to 2 Months" or clas."Age < 28 days to 2 Months"

/* EmCareDT06 : Assess sick child for Symptoms 2p*/
define "EmCareDT06":
    clas."Age >= 2 months to <60 months"

/* Assess sick child for Symptoms 2p : Assess sick child for Symptoms 2p*/
define "Assess sick child for Symptoms 2p":
    clas."Age >= 2 months to <60 months"

/* EmCareDT07 : Assess sick child for Signs 2 m*/
define "EmCareDT07":
    clas."Age >=28 days to 2 Months" or clas."Age < 28 days to 2 Months"

/* Assess sick child for Signs 2 m : Assess sick child for Signs 2 m*/
define "Assess sick child for Signs 2 m":
    clas."Age >=28 days to 2 Months" or clas."Age < 28 days to 2 Months"

/* EmCareDT08 : Assess sick child for Signs 2p*/
define "EmCareDT08":
    clas."Age >= 2 months to <60 months"

/* Assess sick child for Signs 2p : Assess sick child for Signs 2p*/
define "Assess sick child for Signs 2p":
    clas."Age >= 2 months to <60 months"

/* EmCareDT09 : Propose classification*/
define "EmCareDT09":
    difference in years between Today() and  Patient.birthDate < 5

/* Propose classification : Propose classification*/
define "Propose classification":
    difference in years between Today() and  Patient.birthDate < 5

/* EmCareDT10 : Do Test*/
define "EmCareDT10":
    difference in years between Today() and  Patient.birthDate < 5

/* Do Test : Do Test*/
define "Do Test":
    difference in years between Today() and  Patient.birthDate < 5

/* EmCareDT11 : Provide Health prevention*/
define "EmCareDT11":
    difference in years between Today() and  Patient.birthDate < 5

/* Provide Health prevention : Provide Health prevention*/
define "Provide Health prevention":
    difference in years between Today() and  Patient.birthDate < 5
