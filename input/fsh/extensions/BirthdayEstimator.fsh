Alias: $dob-estimator-valueset = https://fhir.dk.swisstph-mis.ch/matchbox/fhir/ValueSet/dob-estimator

Extension: BirthdayEstimator
Id: birthdate-estimator-extension
Title: "Birthday Estimator"
Description: "Client's birthday estimated value or not"
* ^name = "BirthdayEstimator"
* ^url = "https://fhir.dk.swisstph-mis.ch/matchbox/fhir/StructureDefinition/dob-estimator-ext"
* ^version = "0.1.0"
* ^experimental = false
* ^publisher = "WHO"
* ^contact.name = "WHO"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://who.int"
* ^context.type = #element
* ^context.expression = "Client"
* . 1..1
* . ^short = "Client birthday is an estimated value"
* . ^definition = "Client birthday estimated value or not"
* value[x] only CodeableConcept
* value[x] 1..1
* value[x] from $dob-estimator-valueset (required)
* value[x] ^short = "Client birthday estimated value or not"
* value[x] ^definition = "Client  birthday estimated value or not"