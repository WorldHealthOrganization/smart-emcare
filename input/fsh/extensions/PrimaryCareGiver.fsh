Extension: PrimaryCareGiver
Id: primary-care-giver-extension
Title: "Primary Care Giver"
Description: "Primary care giver of the patient"
* ^name = "PrimaryCareGiver"
* ^url = "https://fhir.dk.swisstph-mis.ch/matchbox/fhir/StructureDefinition/primarycaregiver"
* ^version = "0.1.0"
* ^experimental = false
* ^publisher = "WHO"
* ^contact.name = "WHO"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://who.int"
* ^context.type = #element
* ^context.expression = "Patient"
* . 1..1
* . ^short = "Primary care giver of the patient"
* . ^definition = "Primary Care Giver"
* url = "https://fhir.dk.swisstph-mis.ch/matchbox/fhir/StructureDefinition/primarycaregiver" (exactly)
* value[x] 1..1
* value[x] only Reference(RelatedPerson)
* value[x] ^short = "Primary care giver"
* value[x] ^definition = "Primary care giver of the patient"