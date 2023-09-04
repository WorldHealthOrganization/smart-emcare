Alias: $who-patient = http://fhir.org/guides/who/core/StructureDefinition/who-core-patient
Alias: $annonymous = https://fhir.dk.swisstph-mis.ch/matchbox/fhir/StructureDefinition/anonymous
Alias: $estimated-birthday = https://fhir.dk.swisstph-mis.ch/matchbox/fhir/StructureDefinition/birthdateestimator
Alias: $primary-care-giver = https://fhir.dk.swisstph-mis.ch/matchbox/fhir/StructureDefinition/primarycaregiver
Alias: $mother-vital-status = https://fhir.dk.swisstph-mis.ch/matchbox/fhir/StructureDefinition/mothervitalstatus
Alias: $hour-of-birth = https://fhir.dk.swisstph-mis.ch/matchbox/fhir/StructureDefinition/hourofbirth

Profile: CHEPatient
Parent: $who-patient
Id: che-patient
Title: "CHE Patient Profile"
Description: "CHE Patient profile for CCC CHE"
* ^experimental = true 
* ^status = #draft
* ^publisher = "WHO"
* extension contains
    $annonymous named annonymous 0..1 and
    $estimated-birthday named estimatedBirthday 0..1 and
    $primary-care-giver named primaryCaregiver 0..1 and
    $mother-vital-status named motherVitalStatus 0..1 and
    $hour-of-birth named hourOfBirth 0..1