Alias: $dob-estimator = https://fhir.dk.swisstph-mis.ch/matchbox/fhir/ValueSet/dob-estimator

Extension: BirthdayEstimator
Id: birthdate-estimator-extension
Title: "Birthday Estimator"
Description: "Patient birthday estimated value or not"
* ^name = "BirthdayEstimator"
* ^version = "0.1.0"
* ^experimental = false
* ^publisher = "WHO"
* ^contact.name = "WHO"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://who.int"
* ^context.type = #element
* ^context.expression = "Patient"
* . 1..1
* . ^short = "birthDateEstimator"
* . ^definition = "Patient birthday estimated value or not"
* value[x] only CodeableConcept
* value[x] 1..1
* value[x] from $dob-estimator (required)
* value[x] ^short = "Patient birthday estimated value or not"
* value[x] ^definition = "Patient birthday estimated value or not"