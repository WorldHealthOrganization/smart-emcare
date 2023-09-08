Alias: $anonymous-extension = https://fhir.dk.swisstph-mis.ch/matchbox/fhir/StructureDefinition/anonymous-ext
Alias: $dob-estimator-extension = https://fhir.dk.swisstph-mis.ch/matchbox/fhir/StructureDefinition/dob-estimator-ext
Alias: $primary-caregiver-extension = https://fhir.dk.swisstph-mis.ch/matchbox/fhir/StructureDefinition/primarycaregiver-ext
Alias: $mother-vital-status-extension = https://fhir.dk.swisstph-mis.ch/matchbox/fhir/StructureDefinition/mothervitalstatus-ext
Alias: $hour-of-birth-extension = https://fhir.dk.swisstph-mis.ch/matchbox/fhir/StructureDefinition/hourofbirth-ext

Profile: ChePatient
Parent: Patient 
Id: che-patient
Title: "CHE Patient"
Description: "FHIR Patient profile for CCC CHE"
* ^name = "CHEPatient"
* ^version = "0.1.0"
* ^status = #draft 
* ^experimental = true 
* ^publisher = "WHO"
* ^contact.name = "WHO"
* ^contact.telecom.system = #url 
* ^contact.telecom.value = "http://who.int" 
* extension contains
    $anonymous-extension named anonymous 0..1 and
    $dob-estimator-extension named dobestimated 0..1 and 
    $primary-caregiver-extension named primarycaregiver 0..1 and 
    $mother-vital-status-extension named mothervitalstatus 0..1 and 
    $hour-of-birth-extension named hourofbirth 0..1