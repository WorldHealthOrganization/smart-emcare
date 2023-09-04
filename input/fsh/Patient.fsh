Alias: $who-patient = http://fhir.org/guides/who/core/StructureDefinition/who-core-patient
Alias: $annonymous = https://fhir.dk.swisstph-mis.ch/matchbox/fhir/StructureDefinition/anonymous
Alias: $estimated-birthday = https://fhir.dk.swisstph-mis.ch/matchbox/fhir/StructureDefinition/birthdateestimator
Alias: $primary-care-giver = https://fhir.dk.swisstph-mis.ch/matchbox/fhir/StructureDefinition/primarycaregiver
Alias: $mother-vital-status = https://fhir.dk.swisstph-mis.ch/matchbox/fhir/StructureDefinition/mothervitalstatus
Alias: $hour-of-birth = https://fhir.dk.swisstph-mis.ch/matchbox/fhir/StructureDefinition/hourofbirth

Profile: ChePatient 
Id: che-patient
Parent: $who-patient
Title: "WHO CHE patient profile"
Description: "Patient profile for WHO CCC CHE"
* ^status = #draft
* ^publisher = "World Health Organization"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"

* extension contains
  $annonymous named annonymous 0..1 and
  $estimated-birthday named estimatedBirthday 0..1 and
  $primary-care-giver named primaryCaregiver 0..1 and
  $mother-vital-status named motherVitalStatus 0..1 and
  $hour-of-birth named hourOfBirth 0..1

* extension[annonymous] ^short = "Patient remains to be annonymous"
* extension[annonymous] ^definition = "Patient remains to be annonymous"
* extension[estimatedBirthday] ^short = "Estimated birthdate of the patient"
* extension[estimatedBirthday] ^definition = "Estimated birthdate of the patient"
* extension[primaryCaregiver] ^short = "Primary caregiver of the patient"
* extension[primaryCaregiver] ^definition = "Primary caregiver of the patient"
* extension[motherVitalStatus] ^short = "Status of the child's mother"
* extension[motherVitalStatus] ^definition = "Status of the child's mother"
* extension[hourOfBirth] ^short = "Hour of birth of the patient"
* extension[hourOfBirth] ^definition = "Hour of birth of the patient"