Extension: HourOfBirth
Id: hour-of-birth-extension
Title: "Hour of Birth"
Description: "Hour of birth of the child"
* ^name = "HourOfBirth"
* ^url = "https://fhir.dk.swisstph-mis.ch/matchbox/fhir/StructureDefinition/hourofbirth"
* ^version = "0.1.0"
* ^experimental = true 
* ^status = #draft
* ^publisher = "WHO"
* ^contact.name = "WHO"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://who.int"
* ^context.type = #element
* ^context.expression = "Patient"
* . 1..1
* . ^short = "hourofbirth"
* . ^definition = "Hour of birth of the child"
* url = "https://fhir.dk.swisstph-mis.ch/matchbox/fhir/StructureDefinition/hourofbirth" (exactly)
* value[x] 1..1
* value[x] only integer
* value[x] ^short = "Hour of birth of the child"
* value[x] ^definition = "Hour of birth of the child"