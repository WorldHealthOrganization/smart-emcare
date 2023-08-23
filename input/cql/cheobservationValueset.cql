/*
@author: Patrick Delcroix
@description: This library is part of the project CHE
*/
library cheobservationValueset version '1.0.239+build.382'
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers 




codesystem "CHE" : 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/che-custom-codes'


code "No Pain": 'CHE.B12S1.DE09' from "CHE" display 'No Pain'
code "Joint or Bone Pain": 'CHE.B12S1.DE10' from "CHE" display 'Joint or Bone Pain'
code "Pain or Difficulty Passing Urine or Crying when Passing Urine": 'CHE.B12S1.DE11' from "CHE" display 'Pain or Difficulty Passing Urine or Crying when Passing Urine'
code "Skin Pain": 'CHE.B12S1.DE12' from "CHE" display 'Skin Pain'
code "Ear Pain": 'CHE.B12S1.DE13' from "CHE" display 'Ear Pain'
code "Other": 'CHE.B12S1.DE14' from "CHE" display 'Other'
code "Generalised Skin Problem": 'CHE.B14S2.DE07' from "CHE" display 'Generalised Skin Problem'
code "Localised Skin Problem": 'CHE.B14S2.DE08' from "CHE" display 'Localised Skin Problem'
code "No Problem": 'CHE.B14S2.DE09' from "CHE" display 'No Problem'
code "Skin Lesions >= 4 cm": 'CHE.B14S2.DE27' from "CHE" display 'Skin Lesions >= 4 cm'
code "Red Skin Streaks": 'CHE.B14S2.DE28' from "CHE" display 'Red Skin Streaks'
code "Tender Nodes (Nodules) under the skin": 'CHE.B14S2.DE29' from "CHE" display 'Tender Nodes (Nodules) under the skin'
code "Skin Infection extends to Muscle": 'CHE.B14S2.DE30' from "CHE" display 'Skin Infection extends to Muscle'
code "No signs of severe Impetigo / Folliculitis": 'CHE.B14S2.DE30a' from "CHE" display 'No signs of severe Impetigo / Folliculitis'
code "No Oral Sores or Mouth Ulcers": 'CHE.B14S2.DE39' from "CHE" display 'No Oral Sores or Mouth Ulcers'
code "Oral Thrush": 'CHE.B14S2.DE40' from "CHE" display 'Oral Thrush'
code "Mouth Sores or Mouth Ulcers - Deep and Extensive": 'CHE.B14S2.DE41' from "CHE" display 'Mouth Sores or Mouth Ulcers - Deep and Extensive'
code "Mouth Sores or Mouth Ulcers - Not Deep and Extensive": 'CHE.B14S2.DE42' from "CHE" display 'Mouth Sores or Mouth Ulcers - Not Deep and Extensive'
