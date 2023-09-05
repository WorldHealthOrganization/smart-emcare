Extension: Anonymous
Id: anonymous-extension
Title: "Anonymous"
Description: "The client's identity is unknown or the client's prefers to remain anonymous"
* ^name = "Annonymous"
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
* . ^short = "Patient identity is not known"
* . ^definition = "The client's identity is unknown or the client's prefers to remain anonymous"
* url only uri
* value[x] only boolean