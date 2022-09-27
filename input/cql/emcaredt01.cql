library emcaredt01 version '4.0.1'
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers 


context Patient


/* EmCareDT01 : Register a child < 5 years*/
define "EmCareDT01":
    difference in years between Today() and  Patient.birthDate < 5

/* Register a child < 5 years : EmCareDT01*/
define "Register a child < 5 years":
    difference in years between Today() and  Patient.birthDate < 5

/* EmCareDT02 : Register the child in the encounter*/
define "EmCareDT02":
    difference in years between Today() and  Patient.birthDate < 5

/* Register the child in the encounter : EmCareDT02*/
define "Register the child in the encounter":
    difference in years between Today() and  Patient.birthDate < 5

/* EmCareDT03 : Determine Basic Anthropometric and others measurement*/
define "EmCareDT03":
    difference in years between Today() and  Patient.birthDate < 5

/* Determine Basic Anthropometric and others measurement : EmCareDT03*/
define "Determine Basic Anthropometric and others measurement":
    difference in years between Today() and  Patient.birthDate < 5

/* EmCareDT04 : Evaluate DangerSigns*/
define "EmCareDT04":
    difference in years between Today() and  Patient.birthDate < 5

/* Evaluate DangerSigns : EmCareDT04*/
define "Evaluate DangerSigns":
    difference in years between Today() and  Patient.birthDate < 5

/* EmCareDT05 : Assess sick child for Symptoms 2 m*/
define "EmCareDT05":
    difference in months between Today() and  Patient.birthDate < 2

/* Assess sick child for Symptoms 2 m : EmCareDT05*/
define "Assess sick child for Symptoms 2 m":
    difference in months between Today() and  Patient.birthDate < 2

/* EmCareDT06 : Assess sick child for Symptoms 2p*/
define "EmCareDT06":
    difference in months between Today() and  Patient.birthDate >= 2

/* Assess sick child for Symptoms 2p : EmCareDT06*/
define "Assess sick child for Symptoms 2p":
    difference in months between Today() and  Patient.birthDate >= 2

/* EmCareDT07 : Assess sick child for Signs 2 m*/
define "EmCareDT07":
    difference in months between Today() and  Patient.birthDate < 2

/* Assess sick child for Signs 2 m : EmCareDT07*/
define "Assess sick child for Signs 2 m":
    difference in months between Today() and  Patient.birthDate < 2

/* EmCareDT08 : Assess sick child for Signs 2p*/
define "EmCareDT08":
    difference in months between Today() and  Patient.birthDate >= 2

/* Assess sick child for Signs 2p : EmCareDT08*/
define "Assess sick child for Signs 2p":
    difference in months between Today() and  Patient.birthDate >= 2

/* EmCareDT09 : Propose classification*/
define "EmCareDT09":
    difference in months between Today() and  Patient.birthDate >= 2

/* Propose classification : EmCareDT09*/
define "Propose classification":
    difference in months between Today() and  Patient.birthDate >= 2

/* EmCareDT10 : Do Test*/
define "EmCareDT10":
    difference in years between Today() and  Patient.birthDate < 5

/* Do Test : EmCareDT10*/
define "Do Test":
    difference in years between Today() and  Patient.birthDate < 5

/* EmCareDT11 : Provide Health prevention*/
define "EmCareDT11":
    difference in years between Today() and  Patient.birthDate < 5

/* Provide Health prevention : EmCareDT11*/
define "Provide Health prevention":
    difference in years between Today() and  Patient.birthDate < 5
