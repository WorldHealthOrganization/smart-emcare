Alias: $relationship = https://fhir.dk.swisstph-mis.ch/matchbox/fhir/ValueSet/relationship

Extension: AccompanyRelationOfChild
Id: accompnay-relation-of-child-extension
Title: "Accompany relation to the child"
Description: "Adult relation accompanying the child"
* ^name = "AccompanyRelationToChild"
* ^version = "0.1.0"
* ^experimental = true
* ^status = #draft
* ^publisher = "WHO"
* ^contact.name = "WHO"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://who.int"
* ^context.type = #element
* ^context.expression = "Encounter"
* . 1..1
* . ^short = "Accompanying relation of the child"
* . ^definition = "Accompanying relation to the child"
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from $relationship (required)
* value[x] ^short = "Accompanying relation of the child"
* value[x] ^definition = "Accompanying relation of the child"