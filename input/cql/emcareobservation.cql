/*
@author: Patrick Delcroix
@description: This library is part of the project EmCare
*/
library emcareobservation version '1.0.147+build.290'
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
code "Chest Indrawing": 'EmCare.B10S2.DE03' from "EmCare" display 'Chest Indrawing'
code "Stridor in a calm child": 'EmCare.B10S2.DE04' from "EmCare" display 'Stridor in a calm child'
code "Wheezing": 'EmCare.B10S2.DE05' from "EmCare" display 'Wheezing'
code "Recurrent Wheeze": 'EmCare.B10S2.DE06' from "EmCare" display 'Recurrent Wheeze'
code "Oxygen Saturation (%)": 'EmCare.B10S2.DE07' from "EmCare" display 'Oxygen Saturation (%)'
code "Oxygen Saturation < 90 %": 'EmCare.B10S2.DE08' from "EmCare" display 'Oxygen Saturation < 90 %'
code "Oxygen saturation not measured": 'EmCare.B10S2.DE09' from "EmCare" display 'Oxygen saturation not measured'
code "Sunken eyes": 'EmCare.B11S2.DE01' from "EmCare" display 'Sunken eyes'
code "Skin pinch of Abdomen": 'EmCare.B11S2.DE02' from "EmCare" display 'Skin pinch of Abdomen'
code "Restless and Irritable": 'EmCare.B11S2.DE06' from "EmCare" display 'Restless and Irritable'
code "Stiff neck": 'EmCare.B12S2.DE01' from "EmCare" display 'Stiff neck'
code "Refusal to use a limb": 'EmCare.B12S2.DE02' from "EmCare" display 'Refusal to use a limb'
code "Warm Tender or Swollen Joint or Bone": 'EmCare.B12S2.DE03' from "EmCare" display 'Warm Tender or Swollen Joint or Bone'
code "Runny nose": 'EmCare.B12S2.DE05' from "EmCare" display 'Runny nose'
code "Tender swelling behind the ear": 'EmCare.B13S2.DE01' from "EmCare" display 'Tender swelling behind the ear'
code "Pus seen draining from the ear": 'EmCare.B13S2.DE02' from "EmCare" display 'Pus seen draining from the ear'
code "Pus Seen Draining from the Ear for how long?": 'EmCare.B13S2.DE03' from "EmCare" display 'Pus Seen Draining from the Ear for how long?'
code "Red Eyes": 'EmCare.B14S2.DE01' from "EmCare" display 'Red Eyes'
code "Pus Draining from Eye": 'EmCare.B14S2.DE02' from "EmCare" display 'Pus Draining from Eye'
code "Clouding of the Cornea": 'EmCare.B14S2.DE03' from "EmCare" display 'Clouding of the Cornea'
code "Is clouding of the cornea a new problem": 'EmCare.B14S2.DE04' from "EmCare" display 'Is clouding of the cornea a new problem'
code "Has Clouding of the Cornea previously been treated": 'EmCare.B14S2.DE05' from "EmCare" display 'Has Clouding of the Cornea previously been treated'
code "Generalised or Localised Skin Problem": 'EmCare.B14S2.DE06' from "EmCare" display 'Generalised or Localised Skin Problem'
code "Measles rash": 'EmCare.B14S2.DE10' from "EmCare" display 'Measles rash'
code "Measles within the last 3 months": 'EmCare.B14S2.DE11' from "EmCare" display 'Measles within the last 3 months'
code "Itchy Skin": 'Emcare.B14S2.DE11A' from "EmCare" display 'Itchy Skin'
code "Blisters, Sores or Pustules": 'EmCare.B14S2.DE012' from "EmCare" display 'Blisters, Sores or Pustules'
code "Abscess - Hot Tender Swelling": 'EmCare.B14S2.DE14' from "EmCare" display 'Abscess - Hot Tender Swelling'
code "Deep or extends to muscle": 'EmCare.B14S2.DE15' from "EmCare" display 'Deep or extends to muscle'
code "Cellulitis - Hot Tender Skin": 'EmCare.B14S2.DE16' from "EmCare" display 'Cellulitis - Hot Tender Skin'
code "Rapidly spreading, extensive, or not responding to oral antibiotics": 'EmCare.B14S2.DE17' from "EmCare" display 'Rapidly spreading, extensive, or not responding to oral antibiotics'
code "Ringworm (Tinea)": 'Emcare.B14S2.DE19' from "EmCare" display 'Ringworm (Tinea)'
code "Extensive Ringworm (Tinea)": 'EmCare.B14S2.DE20' from "EmCare" display 'Extensive Ringworm (Tinea)'
code "Herpes Zoster": 'EmCare.B14S2.DE23' from "EmCare" display 'Herpes Zoster'
code "Eye Involvement": 'EmCare.B14S2.DE24' from "EmCare" display 'Eye Involvement'
code "Impetigo or Folliculitis": 'EmCare.B14S2.DE25' from "EmCare" display 'Impetigo or Folliculitis'
code "Signs of Severe Impetigo / Folliculitis": 'EmCare.B14S2.DE26' from "EmCare" display 'Signs of Severe Impetigo / Folliculitis'
code "Molluscum Contagiosum - Skin coloured pearly white papules with central umbilication. Most commonly seen on face and trunk in children.": 'EmCare.B14S2.DE31' from "EmCare" display 'Molluscum Contagiosum - Skin coloured pearly white papules with central umbilication. Most commonly seen on face and trunk in children.'
code "Warts - Papules or nodules with a rough (Verrucous) surface": 'EmCare.B14S2.DE32' from "EmCare" display 'Warts - Papules or nodules with a rough (Verrucous) surface'
code "Seborrhoea": 'EmCare.B14S2.DE33' from "EmCare" display 'Seborrhoea'
code "Severe Seborrhoea": 'EmCare.B14S2.DE34' from "EmCare" display 'Severe Seborrhoea'
code "Fixed Drug Reactions - Generalised red, wide spread with small bumps or blisters; or one or more dark skin areas": 'EmCare.B14S2.DE35' from "EmCare" display 'Fixed Drug Reactions - Generalised red, wide spread with small bumps or blisters; or one or more dark skin areas'
code "Eczema - Wet oozing sores or excoriated, thick patches": 'EmCare.B14S2.DE36' from "EmCare" display 'Eczema - Wet oozing sores or excoriated, thick patches'
code "Steven Johnson Syndrome": 'EmCare.B14S2.DE37' from "EmCare" display 'Steven Johnson Syndrome'
code "The child has Oral Sores or Mouth Ulcers": 'EmCare.B14S2.DE45' from "EmCare" display 'The child has Oral Sores or Mouth Ulcers'
code "Oral Sores or Mouth Ulcers": 'EmCare.B14S2.DE38' from "EmCare" display 'Oral Sores or Mouth Ulcers'
code "Palmar Pallor": 'EmCare.B15S2.DE01' from "EmCare" display 'Palmar Pallor'
code "Respiratory Rate (breaths per minute)": 'EmCare.B24.G.DE01' from "EmCare" display 'Respiratory Rate (breaths per minute)'
code "Unable to perform Respiratory Rate at this time": 'EmCare.B24.G.DE02' from "EmCare" display 'Unable to perform Respiratory Rate at this time'
code "Respiratory Rate Second Count (breaths per minute)": 'EmCare.B24.G.DE03' from "EmCare" display 'Respiratory Rate Second Count (breaths per minute)'
code "Respiratory Rate Second Count Not Possible": 'EmCare.B24.G.DE04' from "EmCare" display 'Respiratory Rate Second Count Not Possible'
code "Fast Breathing": 'EmCare.B24.G.DE05' from "EmCare" display 'Fast Breathing'
code "Axillary Temperature (second measurement)": 'EmCare.B24.G.DE39' from "EmCare" display 'Axillary Temperature (second measurement)'
code "Prefer to take Rectal Temperature (second measurement)": 'EmCare.B24.G.DE40' from "EmCare" display 'Prefer to take Rectal Temperature (second measurement)'
code "Rectal Temperature (second measurement)": 'EmCare.B24.G.DE41' from "EmCare" display 'Rectal Temperature (second measurement)'
code "Second Temperature Measurement not Feasible": 'EmCare.B24.G.DE42' from "EmCare" display 'Second Temperature Measurement not Feasible'
code "Measured Temperature (second measurement)": 'EmCare.B24.G.DE43' from "EmCare" display 'Measured Temperature (second measurement)'
