library emcaredt01
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers 


context Patient


/* EmCareDT01 : Register a child < 5 years*/
define "EmCareDT01":

    difference in years between Today() and  Patient.birthDate < 5
/* Register a child < 5 years : EmCareDT01*/
define "Register a child < 5 years":

    EmCareDT01
/* EmCareDT02 : Register the child in the encounter*/
define "EmCareDT02":

    difference in years between Today() and  Patient.birthDate < 5
/* Register the child in the encounter : EmCareDT02*/
define "Register the child in the encounter":

    EmCareDT02
/* EmCareDT03 : Determine Basic Anthropometric and others measurement*/
define "EmCareDT03":

    difference in years between Today() and  Patient.birthDate < 5
/* Determine Basic Anthropometric and others measurement : EmCareDT03*/
define "Determine Basic Anthropometric and others measurement":

    EmCareDT03
/* EmCareDT04 : Evaluate DangerSigns*/
define "EmCareDT04":

    difference in years between Today() and  Patient.birthDate < 5
/* Evaluate DangerSigns : EmCareDT04*/
define "Evaluate DangerSigns":

    EmCareDT04
/* EmCareDT05 : Assess sick child for Symptoms 2 m*/
define "EmCareDT05":

    difference in months between Today() and  Patient.birthDate < 2
/* Assess sick child for Symptoms 2 m : EmCareDT05*/
define "Assess sick child for Symptoms 2 m":

    EmCareDT05
/* EmCareDT06 : Assess sick child for Symptoms 2p*/
define "EmCareDT06":

    difference in months between Today() and  Patient.birthDate >= 2
/* Assess sick child for Symptoms 2p : EmCareDT06*/
define "Assess sick child for Symptoms 2p":

    EmCareDT06
/* EmCareDT07 : Assess sick child for Signs 2 m*/
define "EmCareDT07":

    difference in months between Today() and  Patient.birthDate < 2
/* Assess sick child for Signs 2 m : EmCareDT07*/
define "Assess sick child for Signs 2 m":

    EmCareDT07
/* EmCareDT08 : Assess sick child for Signs 2p*/
define "EmCareDT08":

    difference in months between Today() and  Patient.birthDate >= 2
/* Assess sick child for Signs 2p : EmCareDT08*/
define "Assess sick child for Signs 2p":

    EmCareDT08