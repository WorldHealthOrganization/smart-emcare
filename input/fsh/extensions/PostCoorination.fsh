Alias: $postcoordination-vs = https://fhir.dk.swisstph-mis.ch/matchbox/fhir/ValueSet/postcoordination

Extension: PostCoordinationExtension
Id: postcoordination-extension
Title: "CHE ICD11 Condition Postcoordination Extension"
Description: "Postcoordination extension to support ICD 11 postcoordination"
* ^url = "https://fhir.dk.swisstph-mis.ch/matchbox/fhir/StructureDefinition/postcoordination-ext"
* ^version = "0.1.0"
* ^status = #draft
* value[x] only CodeableConcept
* value[x] from $postcoordination-vs (required)
* value[x] ^short = "ICD 11 postcoordination codes"
* value[x] ^definition = "ICD 11 postcoordination value codes"