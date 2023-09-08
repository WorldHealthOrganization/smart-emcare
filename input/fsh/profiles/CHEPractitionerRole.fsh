Alias: $personas-vs = https://fhir.dk.swisstph-mis.ch/matchbox/fhir/ValueSet/personas

Profile: ChePractitionerRole
Parent: PractitioneRole
Id: che-practitioner-role
Description: "FHIR PractitionerRole profile for CCC CHE"
* ^name = "CHE Practitioner Role" 
* ^version = "0.1.0"
* ^status = #draft 
* ^experimental = true 
* ^publisher = "WHO"
* ^contact.name = "WHO"
* ^contact.telecom.system = #url 
* ^contact.telecom.value = "http://who.int" 
* code from $personas-vs