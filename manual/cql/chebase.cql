/*nter"
@author: Patrick Delcroix
@description: This library is part of the project CHE Project, its allows standardisation for the observation processing
*/

library chebase version '{{LIB_VERSION}}'

using FHIR version '{{FHIR_VERSION}}'

include FHIRHelpers version '{{FHIR_VERSION}}'
include pyfhirsdc version '{{pyfhirsdc_version}}' called pfsdc

parameter "encounterid" String

parameter "cannonical_base" String default '{{canonical_base}}'

parameter "custom_code_system" String default '{{cc_url}}' 

//parameter "Encounter" Encounter$
codesystem "RoleCodeSystem" : 'http://terminology.hl7.org/CodeSystem/v3-RoleCode'
code "Mother": 'MTH' from "RoleCodeSystem"
code "ExtendedFamily": 'EXT' from "RoleCodeSystem"
context Patient

//define encounterid:
//  "Encounter".id

define getEncounters:
    [Encounter] E 
      where E.id = "encounterid"
        return E

define getEncounter:
    singleton from getEncounters

define getPrimaryCareGiver:
  [RelatedPerson] RP where RP.id = Last(Split(getPrimaryCareGiverReference.reference, '/'))
    return RP

define isMotherPrimaryCareGiver:
  getPrimaryCareGiver is not null and Exists(getPrimaryCareGiver.relationship r where r ~ "Mother")

define "Biological Mother Vital Status":
  pfsdc.GetExtension(Patient, 'motherVitalStatus').value
  
define "Biological Father Vital Status":
  pfsdc.GetExtension(Patient, 'fatherVitalStatus').value
// person accompanying the child is a participant with a null type
define getRelatedPersonReferenceAccompanyingTheChild:
  Coalesce(First(getEncounter.participant P where not exists(P.type) ).individual, getPrimaryCareGiverReference)

define getRelatedPersonsAccompanyingTheChild:
  [RelatedPerson] RP where RP.id = Last(Split(getRelatedPersonReferenceAccompanyingTheChild.reference, '/'))
    return RP

define getPrimaryCareGiverReference:
  pfsdc.GetExtension(Patient, 'primarycaregiver').value


define getRelatedPersonAccompanyingTheChild:
  singleton from getRelatedPersonsAccompanyingTheChild


define "Proxy Person accompanying child today's Relationship to Client":
  if pfsdc.GetExtension(getEncounter, 'motherpresent').value = true then "Mother" else "ExtendedFamily"

define "Person accompanying child today's Relationship to Client":
  Coalesce( First(getRelatedPersonsAccompanyingTheChild.relationship.coding) ,"Proxy Person accompanying child today's Relationship to Client")


