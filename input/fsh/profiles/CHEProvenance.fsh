Alias: $implementationGuide = https://fhir.dk.swisstph-mis.ch/matchbox/fhir/StructureDefinition/che-implementation-guide

Profile:     CHEProvenanceHistory
Id:          che-provenance-histroy
Parent:      Provenance
Title:       "CHE IG History Profile"
Description: "CHE Provenance profile tracks the change log for the IG"
* target.reference = $implementationGuide
* activity 1..1