Alias: $accompany-relationship = https://fhir.dk.swisstph-mis.ch/matchbox/fhir/StructureDefinition/accompany-relation-ext

Profile: CheEncounter
Parent: Encounter
Id: che-encounter
Title: "CHE Encounter"
Description: "FHIR Encounter profile for CCC CHE"
* ^name = "CHEEcnounter" 
* ^version = "0.1.0"
* ^status = #draft 
* ^experimental = true 
* ^publisher = "WHO" 
* ^contact.name = "WHO"
* ^contact.telecom.system = #url 
* ^contact.telecom.value = "http://who.int" 
* extension contains
    $accompany-relationship named accompanyRelation 0..1