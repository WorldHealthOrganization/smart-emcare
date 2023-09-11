Alias: $vital-status = https://fhir.dk.swisstph-mis.ch/matchbox/fhir/ValueSet/vital-status

Extension: MotherVitalStatus
Id: mother-vital-status-extension
Title: "Mother Vital Status"
Description: "Vital status of the mother"
* ^name = "MotherVitalStatus"
* ^url = "https://fhir.dk.swisstph-mis.ch/matchbox/fhir/StructureDefinition/mothervitalstatus-ext"
* ^version = "0.1.0"
* ^experimental = false
* ^publisher = "WHO"
* ^contact.name = "WHO"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://who.int"
* ^context.type = #element
* ^context.expression = "Patient"
* . 1..1
* . ^short = "Vital status of the mother of the child"
* url only uri
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from $vital-status (required)
* value[x] ^short = "Vital status of the mother"
* value[x] ^definition = "Vital Status of the mother"