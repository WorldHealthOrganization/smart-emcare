Alias: $dob-estimator = https://fhir.dk.swisstph-mis.ch/matchbox/fhir/ValueSet/dob-estimator

Extension: Birthday_Estimator
Id: birthdateestimator
Title: "Birthday Estimator"
Description: "Type of Birth Date Estimator"
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
* . ^definition = "Type of Birth Date Estimator"
* valueCodeableConcept 1..1
* valueCodeableConcept only CodeableConcept
* valueCodeableConcept from $dob-estimator (required)
* valueCodeableConcept ^short = "birthDateEstimator"
* valueCodeableConcept ^definition = "Type of Birth Date Estimator"