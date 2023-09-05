Alias: $who-patient = http://fhir.org/guides/who/core/StructureDefinition/who-core-patient

Extension: Anonymous
Id: che-annonymous
* value[x] only Coding
* valueCoding 1..1
* valueCoding from VS_ABIDGRP (preferred)


Profile: CHEPatient
Parent: $who-patient
Id: che-patient
Title: "CHE Patient Profile"
Description: "CHE Patient profile for CCC CHE"

* extension[annonymous] = https://fhir.dk.swisstph-mis.ch/matchbox/fhir/StructureDefinition/anonymous
* extension[annonymous].min = 0
* extension[annonymous].max = 1
* extension[hourOfBirth] = https://fhir.dk.swisstph-mis.ch/matchbox/fhir/StructureDefinition/hourofbirth
* extension[hourofbirth].min = 0
* extension[hourOfBirth].max = 1