Extension: Anonymous
Id: anonymous-extension
Title: "Anonymous"
Description: "The client's identity is unknown or the client's prefers to remain anonymous"
* ^url = "https://fhir.dk.swisstph-mis.ch/matchbox/fhir/StructureDefinition/anonymous"
* ^version = "0.1.0"
* ^experimental = false
* ^publisher = "WHO"
* ^contact.name = "WHO"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://who.int"
* ^context.type = #element
* ^context.expression = "Patient"
* . 1..1
* . ^short = "anonymous"
* . ^definition = "The client's identity is unknown or the client's prefers to remain anonymous"
* extension 1..1
* url = "https://fhir.dk.swisstph-mis.ch/matchbox/fhir/StructureDefinition/anonymous" (exactly)
* valueBoolean 1..1
* valueBoolean only boolean
* valueBoolean ^short = "anonymous"
* valueBoolean ^definition = "The client's identity is unknown or the client's prefers to remain anonymous"