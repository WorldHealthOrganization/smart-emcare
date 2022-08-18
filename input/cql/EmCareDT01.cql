
library emcaredt01
using FHIR version 4.0.1
include FHIRHelpers version '4.0.1'
//i nclude EmCareBase called Base
//i nclude EmCareConcepts called Cx
//i nclude EmCareDataElements called Dx
context Patient


/* EmCareDT01 : Register a child < 5 years*/
define "EmCareDT01":
    difference in years between today() and  Patient.BirthDate < 5

/* Register a child < 5 years : */
define "Register a child < 5 years":
    "EmCareDT01"

/* EmCareDT02 : Register the child in the encounter*/
define "EmCareDT02":
    difference in years between today() and  Patient.BirthDate < 5

/* Register the child in the encounter : */
define "Register the child in the encounter":
    "EmCareDT02"

/* EmCareDT05 : Assess sick child for Symptoms 2 m*/
define "EmCareDT05":
    difference in months between today() and  Patient.BirthDate < 2

/* Assess sick child for Symptoms 2 m : */
define "Assess sick child for Symptoms 2 m":
    "EmCareDT05"

/* EmCareDT06 : Assess sick child for Symptoms 2p*/
define "EmCareDT06":
    difference in months between today() and  Patient.BirthDate >= 2

/* Assess sick child for Symptoms 2p : */
define "Assess sick child for Symptoms 2p":
    "EmCareDT06"

/* EmCareDT07 : Assess sick child for Signs 2 m*/
define "EmCareDT07":
    difference in months between today() and  Patient.BirthDate < 2

/* Assess sick child for Signs 2 m : */
define "Assess sick child for Signs 2 m":
    "EmCareDT07"

/* EmCareDT08 : Assess sick child for Signs 2p*/
define "EmCareDT08":
    difference in months between today() and  Patient.BirthDate >= 2

/* Assess sick child for Signs 2p : */
define "Assess sick child for Signs 2p":
    "EmCareDT08"
