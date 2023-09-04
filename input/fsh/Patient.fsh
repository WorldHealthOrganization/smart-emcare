Alias: $who-patient = http://fhir.org/guides/who/core/StructureDefinition/who-core-patient
Alias: $extension-anonymous = https://fhir.dk.swisstph-mis.ch/matchbox/fhir/StructureDefinition/anonymous

Profile: CHEPatient
Parent: $who-patient
Id: che-patient
Title: "CHE Patient Profile"
Description: "CHE Patient profile for CCC CHE"

* extension contains $anonymous-extension named anonymous 0..1