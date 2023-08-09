/*
@author: Patrick Delcroix
@description: This library is part of the project EmCare
*/
library emcareobservationValueset version '1.0.1.rc12.build.144'
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers 




codesystem "EmCare" : 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes'


code "No Pain": 'EmCare.B12S1.DE09' from "EmCare" display 'No Pain'
code "Joint or Bone Pain": 'EmCare.B12S1.DE10' from "EmCare" display 'Joint or Bone Pain'
code "Pain or Difficulty Passing Urine or Crying when Passing Urine": 'EmCare.B12S1.DE11' from "EmCare" display 'Pain or Difficulty Passing Urine or Crying when Passing Urine'
code "Skin Pain": 'EmCare.B12S1.DE12' from "EmCare" display 'Skin Pain'
code "Ear Pain": 'EmCare.B12S1.DE13' from "EmCare" display 'Ear Pain'
code "Other": 'EmCare.B12S1.DE14' from "EmCare" display 'Other'
code "Generalised Skin Problem": 'EmCare.B14S2.DE07' from "EmCare" display 'Generalised Skin Problem'
code "Localised Skin Problem": 'EmCare.B14S2.DE08' from "EmCare" display 'Localised Skin Problem'
code "Skin Lesions >= 4 cm": 'EmCare.B14S2.DE27' from "EmCare" display 'Skin Lesions >= 4 cm'
code "Red Skin Streaks": 'EmCare.B14S2.DE28' from "EmCare" display 'Red Skin Streaks'
code "Tender Nodes (Nodules) under the skin": 'EmCare.B14S2.DE29' from "EmCare" display 'Tender Nodes (Nodules) under the skin'
code "Skin Infection extends to Muscle": 'EmCare.B14S2.DE30' from "EmCare" display 'Skin Infection extends to Muscle'
