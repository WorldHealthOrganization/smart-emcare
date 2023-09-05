Alias: $who-patient = http://fhir.org/guides/who/core/StructureDefinition/who-core-patient

Profile: CHEPatient
Parent: $who-patient
Id: che-patient
Title: "CHE Patient Profile"
Description: "CHE Patient profile for CCC CHE"

* ^extension[anonymous].url = https://fhir.dk.swisstph-mis.ch/matchbox/fhir/StructureDefinition/anonymous
* ^extension[hourOfBirth].url = https://fhir.dk.swisstph-mis.ch/matchbox/fhir/StructureDefinition/hourofbirth