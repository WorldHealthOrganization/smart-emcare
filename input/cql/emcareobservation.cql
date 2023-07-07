/*
@author: Patrick Delcroix
@description: This library is part of the project EmCare
*/
library emcareobservation version '1.0.3.build.169'
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers 




codesystem "EmCare" : 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes'


code "Obstructed or Absent Breathing": 'EmCare.B7.DE01' from "EmCare" display 'Obstructed or Absent Breathing'
code "h1. Obstructed or absent breathing
*If foreign body aspirated*
    • Manage airway in choking infant (under 12 months) Figure 1
    • Manage airway in choking child (12 months and older) Figure 2
*If no foreign body aspirated*
    • Manage airway Figure 3
    • Give oxygen Figure 4
    • Make sure the child is warm
Manage airway in choking infant (under 12 months)": 'EmCare.B7.DE01-tt' from "EmCare" display 'h1. Obstructed or absent breathing
*If foreign body aspirated*
    • Manage airway in choking infant (under 12 months) Figure 1
    • Manage airway in choking child (12 months and older) Figure 2
*If no foreign body aspirated*
    • Manage airway Figure 3
    • Give oxygen Figure 4
    • Make sure the child is warm
Manage airway in choking infant (under 12 months)'
code "Convulsing Now": 'EmCare.B7.DE02' from "EmCare" display 'Convulsing Now'
code "Continue to Assess Sick Child": 'EmCare.B7.B8.B9.DE01' from "EmCare" display 'Continue to Assess Sick Child'
code "Convulsion(s) in this Illness": 'EmCare.B7.DE03' from "EmCare" display 'Convulsion(s) in this Illness'
code "Number of convulsions in this Illness": 'EmCare.B7.DE04' from "EmCare" display 'Number of convulsions in this Illness'
code "Convulsion(s) last 15 minutes or more": 'EmCare.B7.DE07' from "EmCare" display 'Convulsion(s) last 15 minutes or more'
code "Unconscious or Lethargic": 'EmCare.B7.DE08' from "EmCare" display 'Unconscious or Lethargic'
code "Not able to drink or breastfeed": 'EmCare.B7.DE09' from "EmCare" display 'Not able to drink or breastfeed'
code "Vomiting": 'EmCare.B7.DE10' from "EmCare" display 'Vomiting'
code "Oral Fluid Test Results": 'EmCare.B24.G.DE07' from "EmCare" display 'Oral Fluid Test Results'
code "Unable to Perform Oral Fluid Test": 'EmCare.B24.G.DE13' from "EmCare" display 'Unable to Perform Oral Fluid Test'
code "Completely Unable to Drink or Vomits Everything": 'EmCare.B24.G.DE14' from "EmCare" display 'Completely Unable to Drink or Vomits Everything'
code "Has the Child had anything to drink today?": 'EmCare.B24.G.DE15' from "EmCare" display 'Has the Child had anything to drink today?'
code "How did the child last drink": 'EmCare.B24.G.DE16' from "EmCare" display 'How did the child last drink'
