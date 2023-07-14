/*
@author: Patrick Delcroix
@description: This library is part of the project EmCare
*/
library emcareobservation version '1.0.3.build.228'
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
code "Axillary Temperature (degrees Celcius)": 'EmCare.B6.DE01' from "EmCare" display 'Axillary Temperature (degrees Celcius)'
code "Prefer to take Rectal Temperature": 'EmCare.B6.DE02' from "EmCare" display 'Prefer to take Rectal Temperature'
code "Rectal Temperature (degree Celcius)": 'EmCare.B6.DE03' from "EmCare" display 'Rectal Temperature (degree Celcius)'
code "Measured Temperature": 'EmCare.B6.DE03A' from "EmCare" display 'Measured Temperature'
code "Thermometer not available": 'EmCare.B6.DE04' from "EmCare" display 'Thermometer not available'
code "Hot to Touch": 'EmCare.B6.DE05' from "EmCare" display 'Hot to Touch'
code "Weight (kilograms)": 'EmCare.B6.DE06' from "EmCare" display 'Weight (kilograms)'
code "Weight cannot be measured": 'EmCare.B6.DE07' from "EmCare" display 'Weight cannot be measured'
code "Estimated Weight": 'EmCare.B6.DE08' from "EmCare" display 'Estimated Weight'
code "Height (cm)": 'EmCare.B6.DE09' from "EmCare" display 'Height (cm)'
code "Prefer to measure length": 'EmCare.B6.DE10' from "EmCare" display 'Prefer to measure length'
code "Height cannot be measured": 'EmCare.B6.DE11' from "EmCare" display 'Height cannot be measured'
code "Length (cm)": 'EmCare.B6.DE12' from "EmCare" display 'Length (cm)'
code "Prefer to measure height": 'EmCare.B6.DE12a' from "EmCare" display 'Prefer to measure height'
code "Length cannot be measured": 'EmCare.B6.DE13' from "EmCare" display 'Length cannot be measured'
code "MUAC (mm)": 'EmCare.B6.DE17' from "EmCare" display 'MUAC (mm)'
code "Cough": 'EmCare.B10S1.DE05' from "EmCare" display 'Cough'
code "Cough for how long?": 'EmCare.B10S1.DE06' from "EmCare" display 'Cough for how long?'
code "Difficulty Breathing": 'EmCare.B10S1.DE01' from "EmCare" display 'Difficulty Breathing'
code "Difficulty breathing for how long?": 'EmCare.B10S1.DE02' from "EmCare" display 'Difficulty breathing for how long?'
code "Diarrhoea": 'EmCare.B11S1.DE01' from "EmCare" display 'Diarrhoea'
code "Diarrhoea for how long?": 'EmCare.B11S1.DE02' from "EmCare" display 'Diarrhoea for how long?'
code "Blood in the stool in this Illness": 'EmCare.B11S1.DE05' from "EmCare" display 'Blood in the stool in this Illness'
code "Fever Reported": 'EmCare.B12S1.DE02' from "EmCare" display 'Fever Reported'
code "Fever for how long?": 'EmCare.B12S1.DE03' from "EmCare" display 'Fever for how long?'
code "Has Fever been present every day for more than 7 days": 'EmCare.B12S1.DE06' from "EmCare" display 'Has Fever been present every day for more than 7 days'
code "Pain": 'EmCare.B12S1.DE08' from "EmCare" display 'Pain'
code "Malaria Risk": 'EmCare.B12S1.DE15' from "EmCare" display 'Malaria Risk'
code "Recent Travel to a High Malaria Risk area": 'EmCare.B12S1.DE19' from "EmCare" display 'Recent Travel to a High Malaria Risk area'
code "Ear Problem": 'EmCare.B13S1.DE01' from "EmCare" display 'Ear Problem'
code "Ear pain": 'EmCare.B13S1.DE02' from "EmCare" display 'Ear pain'
code "Ear discharge": 'EmCare.B13S1.DE03' from "EmCare" display 'Ear discharge'
code "Ear discharge for how long?": 'EmCare.B13S1.DE04' from "EmCare" display 'Ear discharge for how long?'
code "Eye Problem": 'EmCare.B14S1.DE01' from "EmCare" display 'Eye Problem'
code "Skin Problem": 'EmCare.B14S1.DE02' from "EmCare" display 'Skin Problem'
code "Axillary Temperature (second measurement)": 'EmCare.B24.G.DE39' from "EmCare" display 'Axillary Temperature (second measurement)'
code "Prefer to take Rectal Temperature (second measurement)": 'EmCare.B24.G.DE40' from "EmCare" display 'Prefer to take Rectal Temperature (second measurement)'
code "Rectal Temperature (second measurement)": 'EmCare.B24.G.DE41' from "EmCare" display 'Rectal Temperature (second measurement)'
code "Second Temperature Measurement not Feasible": 'EmCare.B24.G.DE42' from "EmCare" display 'Second Temperature Measurement not Feasible'
code "Measured Temperature (second measurement)": 'EmCare.B24.G.DE43' from "EmCare" display 'Measured Temperature (second measurement)'
