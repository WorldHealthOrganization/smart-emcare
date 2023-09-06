Alias: $postcoordination-vs = https://fhir.dk.swisstph-mis.ch/matchbox/fhir/ValueSet/postcoordination
Alias: $postcoordination-ext = https://fhir.dk.swisstph-mis.ch/matchbox/fhir/StructureDefinition/postcoordination-extension

Extension: PostCoordination
Id: postcoordination-extension
Title: "ICD-11 Post Coordination"
Description: "Add postcoordination to conditon according to ICD 11"
* ^name = "Postcoordination"
* ^url = $postcoordination-ext
* ^version = "0.1.0"
* ^experimental = true
* ^status = #draft
* ^publisher = "WHO"
* ^contact.name = "WHO"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://who.int"
* ^context.type = #element
* ^context.expression = "Condition"
* . 1..1
* . ^short = "Postcoordination extension for ICD 11"
* . ^definition = "Add postcoordination to conditon according to ICD 11"
* url only uri
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from $postcoordination-vs (required)
* value[x] ^short = "ICD 11 postcoordination value"
* value[x] ^definition = "Add post-coordination to conditon according to ICD-11"