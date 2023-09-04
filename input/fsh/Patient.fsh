Alias: $who-patient = http://fhir.org/guides/who/core/StructureDefinition/who-core-patient
Alias: $extension-anonymous = https://fhir.dk.swisstph-mis.ch/matchbox/fhir/StructureDefinition/anonymous
Alias: $extension-hour-of-birth = https://fhir.dk.swisstph-mis.ch/matchbox/fhir/StructureDefinition/hourofbirth

Profile: CHEPatient
Parent: $who-patient
Id: che-patient
Title: "CHE Patient Profile"
Description: "CHE Patient profile for CCC CHE"

* extension contains $extension-anonymous named anonymous 0..1
* extension contains $extension-hour-of-birth named hourOfBirth 0..1