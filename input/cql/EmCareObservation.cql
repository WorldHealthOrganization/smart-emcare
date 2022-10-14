/*
@author: Patrick Delcroix
@description: This library is part of the project EmCare
*/
library EmCareObservation version '0.99.99'
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers 
include EmCareBase version '0.99.99' called B


context Patient
      
/*"Is the child sick Today?"*/
define "Is the child sick Today?":
  B.HasObs(B.c('EmCare.B3.DE05'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B3.DE05":
  B.HasObs(B.c('EmCare.B3.DE05'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Convulsing Now"*/
define "Convulsing Now":
  B.HasObs(B.c('EmCare.B7.DE02'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B7.DE02":
  B.HasObs(B.c('EmCare.B7.DE02'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Convulsion(s) in this Illness"*/
define "Convulsion(s) in this Illness":
  B.HasObs(B.c('EmCare.B7.DE03'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B7.DE03":
  B.HasObs(B.c('EmCare.B7.DE03'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Unconscious"*/
define "Unconscious":
  B.HasObs(B.c('EmCare.B7.DE08'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B7.DE08":
  B.HasObs(B.c('EmCare.B7.DE08'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Lethargic"*/
define "Lethargic":
  B.HasObs(B.c('EmCare.B7.DE08a'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B7.DE08a":
  B.HasObs(B.c('EmCare.B7.DE08a'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Not able to drink or breastfeed"*/
define "Not able to drink or breastfeed":
  B.HasObs(B.c('EmCare.B7.DE09'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B7.DE09":
  B.HasObs(B.c('EmCare.B7.DE09'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Continue to Assess Sick Child"*/
define "Continue to Assess Sick Child":
  B.HasObs(B.c('EmCare.B7-B8-B9.DE01'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B7-B8-B9.DE01":
  B.HasObs(B.c('EmCare.B7-B8-B9.DE01'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Axaliary Temperature"*/
define "Axaliary Temperature":
  B.HasObs(B.c('EmCare.B6.DE01'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B6.DE01":
  B.HasObs(B.c('EmCare.B6.DE01'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Hot to Touch"*/
define "Hot to Touch":
  B.HasObs(B.c('EmCare.B6.DE05'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B6.DE05":
  B.HasObs(B.c('EmCare.B6.DE05'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Weight cannot be measured"*/
define "Weight cannot be measured":
  B.HasObs(B.c('EmCare.B6.DE07'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B6.DE07":
  B.HasObs(B.c('EmCare.B6.DE07'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Estimated Weight"*/
define "Estimated Weight":
  B.HasObs(B.c('EmCare.B6.DE08'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B6.DE08":
  B.HasObs(B.c('EmCare.B6.DE08'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Height"*/
define "Height":
  B.HasObs(B.c('EmCare.B6.DE09'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B6.DE09":
  B.HasObs(B.c('EmCare.B6.DE09'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Height cannot be measured"*/
define "Height cannot be measured":
  B.HasObs(B.c('EmCare.B6.DE11'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B6.DE11":
  B.HasObs(B.c('EmCare.B6.DE11'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Length"*/
define "Length":
  B.HasObs(B.c('EmCare.B6.DE12'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B6.DE12":
  B.HasObs(B.c('EmCare.B6.DE12'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Weight for Height (WFH) Z Scores"*/
define "Weight for Height (WFH) Z Scores":
  B.HasObs(B.c('EmCare.B6.DE14'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B6.DE14":
  B.HasObs(B.c('EmCare.B6.DE14'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Weight for Length (WFL) Z Scores"*/
define "Weight for Length (WFL) Z Scores":
  B.HasObs(B.c('EmCare.B6.DE15'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B6.DE15":
  B.HasObs(B.c('EmCare.B6.DE15'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Weight for Age (WFA) Z Scores"*/
define "Weight for Age (WFA) Z Scores":
  B.HasObs(B.c('EmCare.B6.DE16'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B6.DE16":
  B.HasObs(B.c('EmCare.B6.DE16'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"MUAC (Mid Upper Arm Circumference)"*/
define "MUAC (Mid Upper Arm Circumference)":
  B.HasObs(B.c('EmCare.B6.DE17'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B6.DE17":
  B.HasObs(B.c('EmCare.B6.DE17'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Visually assess for whether underweight (for drug dose calculation)"*/
define "Visually assess for whether underweight (for drug dose calculation)":
  B.HasObs(B.c('EmCare.B6.DE18'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B6.DE18":
  B.HasObs(B.c('EmCare.B6.DE18'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Convulsions in this Illness"*/
define "Convulsions in this Illness":
  B.HasObs(B.c('EmCare.B18S1.DE01'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B18S1.DE01":
  B.HasObs(B.c('EmCare.B18S1.DE01'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Difficulty with Feeding"*/
define "Difficulty with Feeding":
  B.HasObs(B.c('EmCare.B18S1.DE02'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B18S1.DE02":
  B.HasObs(B.c('EmCare.B18S1.DE02'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Diarrhoea"*/
define "Diarrhoea":
  B.HasObs(B.c('EmCare.B20S1.DE01'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B20S1.DE01":
  B.HasObs(B.c('EmCare.B20S1.DE01'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Mother's HIV Status"*/
define "Mother's HIV Status":
  B.HasObs(B.c('EmCare.B21S1.DE01'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B21S1.DE01":
  B.HasObs(B.c('EmCare.B21S1.DE01'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Breastfed"*/
define "Breastfed":
  B.HasObs(B.c('EmCare.B21S1.DE06'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B21S1.DE06":
  B.HasObs(B.c('EmCare.B21S1.DE06'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Measured Temperature"*/
define "Measured Temperature":
  B.HasObs(B.c('EmCare.B18S2.DE01'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B18S2.DE01":
  B.HasObs(B.c('EmCare.B18S2.DE01'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Respiratory Rate First Count"*/
define "Respiratory Rate First Count":
  B.HasObs(B.c('EmCare.B18S2.DE04'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B18S2.DE04":
  B.HasObs(B.c('EmCare.B18S2.DE04'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Respiratory Rate Second Count"*/
define "Respiratory Rate Second Count":
  B.HasObs(B.c('EmCare.B18S2.DE05'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B18S2.DE05":
  B.HasObs(B.c('EmCare.B18S2.DE05'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Fast Breathing"*/
define "Fast Breathing":
  B.HasObs(B.c('EmCare.B18S2.DE06'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B18S2.DE06":
  B.HasObs(B.c('EmCare.B18S2.DE06'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Severe Chest Indrawing"*/
define "Severe Chest Indrawing":
  B.HasObs(B.c('EmCare.B18S2.DE07'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B18S2.DE07":
  B.HasObs(B.c('EmCare.B18S2.DE07'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Movements"*/
define "Movements":
  B.HasObs(B.c('EmCare.B18S2.DE08'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B18S2.DE08":
  B.HasObs(B.c('EmCare.B18S2.DE08'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Umbilicus Red or Pus Draining"*/
define "Umbilicus Red or Pus Draining":
  B.HasObs(B.c('EmCare.B18S2.DE12'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B18S2.DE12":
  B.HasObs(B.c('EmCare.B18S2.DE12'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Skin Pustules"*/
define "Skin Pustules":
  B.HasObs(B.c('EmCare.B18S2.DE13'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B18S2.DE13":
  B.HasObs(B.c('EmCare.B18S2.DE13'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Yellow Skin"*/
define "Yellow Skin":
  B.HasObs(B.c('EmCare.B19S2.DE01'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B19S2.DE01":
  B.HasObs(B.c('EmCare.B19S2.DE01'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Yellow Palms or Yellow Soles"*/
define "Yellow Palms or Yellow Soles":
  B.HasObs(B.c('EmCare.B19S2.DE02'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B19S2.DE02":
  B.HasObs(B.c('EmCare.B19S2.DE02'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Jaundice (Yellow skin or palms or soles)"*/
define "Jaundice (Yellow skin or palms or soles)":
  B.HasObs(B.c('EmCare.B19S2.DE03'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B19S2.DE03":
  B.HasObs(B.c('EmCare.B19S2.DE03'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Sunken Eyes"*/
define "Sunken Eyes":
  B.HasObs(B.c('EmCare.B20S2.DE01'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B20S2.DE01":
  B.HasObs(B.c('EmCare.B20S2.DE01'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Skin pinch of Abdomen"*/
define "Skin pinch of Abdomen":
  B.HasObs(B.c('EmCare.B20S2.DE02'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B20S2.DE02":
  B.HasObs(B.c('EmCare.B20S2.DE02'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Restless and Irritable"*/
define "Restless and Irritable":
  B.HasObs(B.c('EmCare.B20S2.DE06'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B20S2.DE06":
  B.HasObs(B.c('EmCare.B20S2.DE06'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Weight Status"*/
define "Weight Status":
  B.HasObs(B.c('EmCare.B21S2.DE01'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B21S2.DE01":
  B.HasObs(B.c('EmCare.B21S2.DE01'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Breastfed how many times in 24 hours?"*/
define "Breastfed how many times in 24 hours?":
  B.HasObs(B.c('EmCare.B21S2.DE05'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B21S2.DE05":
  B.HasObs(B.c('EmCare.B21S2.DE05'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Young Infant receives other food or fluids"*/
define "Young Infant receives other food or fluids":
  B.HasObs(B.c('EmCare.B21S2.DE08'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B21S2.DE08":
  B.HasObs(B.c('EmCare.B21S2.DE08'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"What milk is being given as a replacement feed?"*/
define "What milk is being given as a replacement feed?":
  B.HasObs(B.c('EmCare.B21S2.DE09'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B21S2.DE09":
  B.HasObs(B.c('EmCare.B21S2.DE09'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"How many replacement feeds during the day and night (24 hours)?"*/
define "How many replacement feeds during the day and night (24 hours)?":
  B.HasObs(B.c('EmCare.B21S2.DE12'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B21S2.DE12":
  B.HasObs(B.c('EmCare.B21S2.DE12'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Do you give any breastmilk at all?"*/
define "Do you give any breastmilk at all?":
  B.HasObs(B.c('EmCare.B21S2.DE27'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B21S2.DE27":
  B.HasObs(B.c('EmCare.B21S2.DE27'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Ulcers or White Patches in Mouth"*/
define "Ulcers or White Patches in Mouth":
  B.HasObs(B.c('EmCare.B21S2.DE30'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B21S2.DE30":
  B.HasObs(B.c('EmCare.B21S2.DE30'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Unable to check if Ulcers or White Patches in Mouth"*/
define "Unable to check if Ulcers or White Patches in Mouth":
  B.HasObs(B.c('EmCare.B21S2.DE31'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B21S2.DE31":
  B.HasObs(B.c('EmCare.B21S2.DE31'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Cough"*/
define "Cough":
  B.HasObs(B.c('EmCare.B10S1.DE05'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B10S1.DE05":
  B.HasObs(B.c('EmCare.B10S1.DE05'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Cough for how long?"*/
define "Cough for how long?":
  B.HasObs(B.c('EmCare.B10S1.DE06'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B10S1.DE06":
  B.HasObs(B.c('EmCare.B10S1.DE06'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Difficulty Breathing"*/
define "Difficulty Breathing":
  B.HasObs(B.c('EmCare.B10S1.DE01'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B10S1.DE01":
  B.HasObs(B.c('EmCare.B10S1.DE01'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Difficulty breathing for how long?"*/
define "Difficulty breathing for how long?":
  B.HasObs(B.c('EmCare.B10S1.DE02'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B10S1.DE02":
  B.HasObs(B.c('EmCare.B10S1.DE02'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Diarrhoea for how long?"*/
define "Diarrhoea for how long?":
  B.HasObs(B.c('EmCare.B11S1.DE02'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B11S1.DE02":
  B.HasObs(B.c('EmCare.B11S1.DE02'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Fever Reported"*/
define "Fever Reported":
  B.HasObs(B.c('EmCare.B12S1.DE02'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B12S1.DE02":
  B.HasObs(B.c('EmCare.B12S1.DE02'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Fever for how long?"*/
define "Fever for how long?":
  B.HasObs(B.c('EmCare.B12S1.DE03'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B12S1.DE03":
  B.HasObs(B.c('EmCare.B12S1.DE03'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Ear discharge"*/
define "Ear discharge":
  B.HasObs(B.c('EmCare.B13S1.DE03'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B13S1.DE03":
  B.HasObs(B.c('EmCare.B13S1.DE03'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Ear discharge for how long?"*/
define "Ear discharge for how long?":
  B.HasObs(B.c('EmCare.B13S1.DE04'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B13S1.DE04":
  B.HasObs(B.c('EmCare.B13S1.DE04'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Respiratory Rate"*/
define "Respiratory Rate":
  B.HasObs(B.c('EmCare.B22.DE01'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B22.DE01":
  B.HasObs(B.c('EmCare.B22.DE01'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Fast breathing"*/
define "Fast breathing":
  B.HasObs(B.c('EmCare.B10S2.DE02'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B10S2.DE02":
  B.HasObs(B.c('EmCare.B10S2.DE02'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Chest Indrawing"*/
define "Chest Indrawing":
  B.HasObs(B.c('EmCare.B10S2.DE03'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B10S2.DE03":
  B.HasObs(B.c('EmCare.B10S2.DE03'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Stridor in a calm child"*/
define "Stridor in a calm child":
  B.HasObs(B.c('EmCare.B10S2.DE04'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B10S2.DE04":
  B.HasObs(B.c('EmCare.B10S2.DE04'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Wheezing"*/
define "Wheezing":
  B.HasObs(B.c('EmCare.B10S2.DE05'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B10S2.DE05":
  B.HasObs(B.c('EmCare.B10S2.DE05'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Recurrent Wheeze"*/
define "Recurrent Wheeze":
  B.HasObs(B.c('EmCare.B10S2.DE06'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B10S2.DE06":
  B.HasObs(B.c('EmCare.B10S2.DE06'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Oxygen Saturation"*/
define "Oxygen Saturation":
  B.HasObs(B.c('EmCare.B10S2.DE07'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B10S2.DE07":
  B.HasObs(B.c('EmCare.B10S2.DE07'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Oxygen Saturation < 90 %"*/
define "Oxygen Saturation < 90 %":
  B.HasObs(B.c('EmCare.B10S2.DE08'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B10S2.DE08":
  B.HasObs(B.c('EmCare.B10S2.DE08'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Sunken eyes"*/
define "Sunken eyes":
  B.HasObs(B.c('EmCare.B11S2.DE01'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B11S2.DE01":
  B.HasObs(B.c('EmCare.B11S2.DE01'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Throat problem"*/
define "Throat problem":
  B.HasObs(B.c('EmCare.B17S1.DE01'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B17S1.DE01":
  B.HasObs(B.c('EmCare.B17S1.DE01'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Specify Throat problem"*/
define "Specify Throat problem":
  B.HasObs(B.c('EmCare.B17S1.DE02'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B17S1.DE02":
  B.HasObs(B.c('EmCare.B17S1.DE02'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Enlarged lymph nodes on front of neck"*/
define "Enlarged lymph nodes on front of neck":
  B.HasObs(B.c('EmCare.B17S1.DE06'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B17S1.DE06":
  B.HasObs(B.c('EmCare.B17S1.DE06'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Ability to swallow"*/
define "Ability to swallow":
  B.HasObs(B.c('EmCare.B17S1.DE07'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B17S1.DE07":
  B.HasObs(B.c('EmCare.B17S1.DE07'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Tender swelling behind the ear"*/
define "Tender swelling behind the ear":
  B.HasObs(B.c('EmCare.B13S2.DE01'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B13S2.DE01":
  B.HasObs(B.c('EmCare.B13S2.DE01'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Pus Seen Draining from the Ear"*/
define "Pus Seen Draining from the Ear":
  B.HasObs(B.c('EmCare.B13S2.DE02'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B13S2.DE02":
  B.HasObs(B.c('EmCare.B13S2.DE02'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Pus Seen Draining from the Ear for how long"*/
define "Pus Seen Draining from the Ear for how long":
  B.HasObs(B.c('EmCare.B13S2.DE03'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B13S2.DE03":
  B.HasObs(B.c('EmCare.B13S2.DE03'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Stiff neck"*/
define "Stiff neck":
  B.HasObs(B.c('EmCare.B12S2.DE01'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B12S2.DE01":
  B.HasObs(B.c('EmCare.B12S2.DE01'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Runny nose"*/
define "Runny nose":
  B.HasObs(B.c('EmCare.B12S2.DE05'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B12S2.DE05":
  B.HasObs(B.c('EmCare.B12S2.DE05'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Red eyes"*/
define "Red eyes":
  B.HasObs(B.c('EmCare.B14S2.DE01'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B14S2.DE01":
  B.HasObs(B.c('EmCare.B14S2.DE01'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Pus Draining from Eye"*/
define "Pus Draining from Eye":
  B.HasObs(B.c('EmCare.B14S2.DE02'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B14S2.DE02":
  B.HasObs(B.c('EmCare.B14S2.DE02'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Clouding of the Cornea"*/
define "Clouding of the Cornea":
  B.HasObs(B.c('EmCare.B14S2.DE03'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B14S2.DE03":
  B.HasObs(B.c('EmCare.B14S2.DE03'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Is Clouding of Cornea a new problem"*/
define "Is Clouding of Cornea a new problem":
  B.HasObs(B.c('EmCare.B14S2.DE04'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B14S2.DE04":
  B.HasObs(B.c('EmCare.B14S2.DE04'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Has Clouding of Cornea previously been treated"*/
define "Has Clouding of Cornea previously been treated":
  B.HasObs(B.c('EmCare.B14S2.DE05'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B14S2.DE05":
  B.HasObs(B.c('EmCare.B14S2.DE05'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Generalised or Localised Skin Problem"*/
define "Generalised or Localised Skin Problem":
  B.HasObs(B.c('EmCare.B14S2.DE06'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B14S2.DE06":
  B.HasObs(B.c('EmCare.B14S2.DE06'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Measles Rash"*/
define "Measles Rash":
  B.HasObs(B.c('EmCare.B14S2.DE10'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B14S2.DE10":
  B.HasObs(B.c('EmCare.B14S2.DE10'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Measles within the last 3 months"*/
define "Measles within the last 3 months":
  B.HasObs(B.c('EmCare.B14S2.DE11'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B14S2.DE11":
  B.HasObs(B.c('EmCare.B14S2.DE11'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Blisters, Sores or Pustules"*/
define "Blisters, Sores or Pustules":
  B.HasObs(B.c('EmCare.B14S2.DE12'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B14S2.DE12":
  B.HasObs(B.c('EmCare.B14S2.DE12'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Type of Skin Problem"*/
define "Type of Skin Problem":
  B.HasObs(B.c('EmCare.B14S2.DE13'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B14S2.DE13":
  B.HasObs(B.c('EmCare.B14S2.DE13'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Scalp Infection (tinea capitis)"*/
define "Scalp Infection (tinea capitis)":
  B.HasObs(B.c('EmCare.B14S2.DE19a'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B14S2.DE19a":
  B.HasObs(B.c('EmCare.B14S2.DE19a'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Severe rash"*/
define "Severe rash":
  B.HasObs(B.c('EmCare.B14S2.DE22A'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B14S2.DE22A":
  B.HasObs(B.c('EmCare.B14S2.DE22A'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Disseminated Herpes Zoster"*/
define "Disseminated Herpes Zoster":
  B.HasObs(B.c('EmCare.B14S2.DE23a'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B14S2.DE23a":
  B.HasObs(B.c('EmCare.B14S2.DE23a'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Eye Involvement"*/
define "Eye Involvement":
  B.HasObs(B.c('EmCare.B14S2.DE24'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B14S2.DE24":
  B.HasObs(B.c('EmCare.B14S2.DE24'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Skin Infection extends to Muscle"*/
define "Skin Infection extends to Muscle":
  B.HasObs(B.c('EmCare.B14S2.DE30'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B14S2.DE30":
  B.HasObs(B.c('EmCare.B14S2.DE30'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Extensive impetigo lesions"*/
define "Extensive impetigo lesions":
  B.HasObs(B.c('EmCare.B14S2.DE30b'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B14S2.DE30b":
  B.HasObs(B.c('EmCare.B14S2.DE30b'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Extensive molluscum lesions"*/
define "Extensive molluscum lesions":
  B.HasObs(B.c('EmCare.B14S2.DE31a'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B14S2.DE31a":
  B.HasObs(B.c('EmCare.B14S2.DE31a'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Molluscum lesions close to the eye"*/
define "Molluscum lesions close to the eye":
  B.HasObs(B.c('EmCare.B14S2.DE31b'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B14S2.DE31b":
  B.HasObs(B.c('EmCare.B14S2.DE31b'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Extensive warts"*/
define "Extensive warts":
  B.HasObs(B.c('EmCare.B14S2.DE32a'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B14S2.DE32a":
  B.HasObs(B.c('EmCare.B14S2.DE32a'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Severe Seborrhea"*/
define "Severe Seborrhea":
  B.HasObs(B.c('EmCare.B14S2.DE34'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B14S2.DE34":
  B.HasObs(B.c('EmCare.B14S2.DE34'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Secondary bacterial infection of eczema"*/
define "Secondary bacterial infection of eczema":
  B.HasObs(B.c('EmCare.B14S2.DE36a'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B14S2.DE36a":
  B.HasObs(B.c('EmCare.B14S2.DE36a'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Severe acute moist or weeping eczema"*/
define "Severe acute moist or weeping eczema":
  B.HasObs(B.c('EmCare.B14S2.DE36b'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B14S2.DE36b":
  B.HasObs(B.c('EmCare.B14S2.DE36b'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Secondary herpes infection of eczema (eczema herpeticum)"*/
define "Secondary herpes infection of eczema (eczema herpeticum)":
  B.HasObs(B.c('EmCare.B14S2.DE36c'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B14S2.DE36c":
  B.HasObs(B.c('EmCare.B14S2.DE36c'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Oral sores or Mouth Ulcers"*/
define "Oral sores or Mouth Ulcers":
  B.HasObs(B.c('EmCare.B14S2.DE38'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B14S2.DE38":
  B.HasObs(B.c('EmCare.B14S2.DE38'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Add a Skin or Mouth or Eye Problem"*/
define "Add a Skin or Mouth or Eye Problem":
  B.HasObs(B.c('EmCare.B14S2.DE43'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B14S2.DE43":
  B.HasObs(B.c('EmCare.B14S2.DE43'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Palmar Pallor"*/
define "Palmar Pallor":
  B.HasObs(B.c('EmCare.B15S2.DE01'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B15S2.DE01":
  B.HasObs(B.c('EmCare.B15S2.DE01'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Mucous membrane pallor"*/
define "Mucous membrane pallor":
  B.HasObs(B.c('EmCare.B15S2.DE09'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B15S2.DE09":
  B.HasObs(B.c('EmCare.B15S2.DE09'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Unable to perform Respiratory Rate at this time"*/
define "Unable to perform Respiratory Rate at this time":
  B.HasObs(B.c('EmCare.B22.DE02'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B22.DE02":
  B.HasObs(B.c('EmCare.B22.DE02'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Respiratory Rate Second Count Not Possible"*/
define "Respiratory Rate Second Count Not Possible":
  B.HasObs(B.c('EmCare.B22.DE05'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B22.DE05":
  B.HasObs(B.c('EmCare.B22.DE05'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Inhaled Bronchodilator Trial Results"*/
define "Inhaled Bronchodilator Trial Results":
  B.HasObs(B.c('EmCare.B22.DE17'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B22.DE17":
  B.HasObs(B.c('EmCare.B22.DE17'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Chest Indrawing (post inhaled bronchodilator trial)"*/
define "Chest Indrawing (post inhaled bronchodilator trial)":
  B.HasObs(B.c('EmCare.B22.DE18'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B22.DE18":
  B.HasObs(B.c('EmCare.B22.DE18'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Respiratory Rate (post inhaled bronchodilator trial)"*/
define "Respiratory Rate (post inhaled bronchodilator trial)":
  B.HasObs(B.c('EmCare.B22.DE19'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B22.DE19":
  B.HasObs(B.c('EmCare.B22.DE19'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Fast Breathing (post inhaled bronchodilator trial)"*/
define "Fast Breathing (post inhaled bronchodilator trial)":
  B.HasObs(B.c('EmCare.B22.DE20'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B22.DE20":
  B.HasObs(B.c('EmCare.B22.DE20'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"No Fast Breathing and No Chest Indrawing (post Inhaled Bronchodilator Trial)"*/
define "No Fast Breathing and No Chest Indrawing (post Inhaled Bronchodilator Trial)":
  B.HasObs(B.c('EmCare.B22.DE21'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B22.DE21":
  B.HasObs(B.c('EmCare.B22.DE21'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Breastfeeding Assessment"*/
define "Breastfeeding Assessment":
  B.HasObs(B.c('EmCare.B22.DE27'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B22.DE27":
  B.HasObs(B.c('EmCare.B22.DE27'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Breastfed in the previous hour"*/
define "Breastfed in the previous hour":
  B.HasObs(B.c('EmCare.B22.DE28'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B22.DE28":
  B.HasObs(B.c('EmCare.B22.DE28'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Mother able to wait until young infant is willing to breastfeed again"*/
define "Mother able to wait until young infant is willing to breastfeed again":
  B.HasObs(B.c('EmCare.B22.DE29'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B22.DE29":
  B.HasObs(B.c('EmCare.B22.DE29'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Mother reports difficulty breastfeeding"*/
define "Mother reports difficulty breastfeeding":
  B.HasObs(B.c('EmCare.B22.DE30'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B22.DE30":
  B.HasObs(B.c('EmCare.B22.DE30'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Chin Touching Breast"*/
define "Chin Touching Breast":
  B.HasObs(B.c('EmCare.B22.DE31'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B22.DE31":
  B.HasObs(B.c('EmCare.B22.DE31'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Mouth Wide Open"*/
define "Mouth Wide Open":
  B.HasObs(B.c('EmCare.B22.DE32'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B22.DE32":
  B.HasObs(B.c('EmCare.B22.DE32'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Lower Lip Turned Outwards"*/
define "Lower Lip Turned Outwards":
  B.HasObs(B.c('EmCare.B22.DE33'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B22.DE33":
  B.HasObs(B.c('EmCare.B22.DE33'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"More Areola Visible above than below the Mouth"*/
define "More Areola Visible above than below the Mouth":
  B.HasObs(B.c('EmCare.B22.DE34'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B22.DE34":
  B.HasObs(B.c('EmCare.B22.DE34'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Slow Deep Sucks, Sometimes Pausing"*/
define "Slow Deep Sucks, Sometimes Pausing":
  B.HasObs(B.c('EmCare.B22.DE35'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B22.DE35":
  B.HasObs(B.c('EmCare.B22.DE35'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Breastfeeding Assessment Results"*/
define "Breastfeeding Assessment Results":
  B.HasObs(B.c('EmCare.B22.DE36'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B22.DE36":
  B.HasObs(B.c('EmCare.B22.DE36'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Breastfeeding Assessment Not Possible"*/
define "Breastfeeding Assessment Not Possible":
  B.HasObs(B.c('EmCare.B22.DE41'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B22.DE41":
  B.HasObs(B.c('EmCare.B22.DE41'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Difficulty Breastfeeding Reported"*/
define "Difficulty Breastfeeding Reported":
  B.HasObs(B.c('EmCare.B22.DE42'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B22.DE42":
  B.HasObs(B.c('EmCare.B22.DE42'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"No Difficulty Breastfeeding Reported"*/
define "No Difficulty Breastfeeding Reported":
  B.HasObs(B.c('EmCare.B22.DE43'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B22.DE43":
  B.HasObs(B.c('EmCare.B22.DE43'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Difficulty Breastfeeding Observed"*/
define "Difficulty Breastfeeding Observed":
  B.HasObs(B.c('EmCare.B22.DE44'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B22.DE44":
  B.HasObs(B.c('EmCare.B22.DE44'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"No Difficulty Breastfeeding Observed"*/
define "No Difficulty Breastfeeding Observed":
  B.HasObs(B.c('EmCare.B22.DE45'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B22.DE45":
  B.HasObs(B.c('EmCare.B22.DE45'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Second Temperature Measurement Feasible"*/
define "Second Temperature Measurement Feasible":
  B.HasObs(B.c('EmCare.B22.DE46'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B22.DE46":
  B.HasObs(B.c('EmCare.B22.DE46'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Axillary Temperature (second measurement)"*/
define "Axillary Temperature (second measurement)":
  B.HasObs(B.c('EmCare.B22.DE47'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B22.DE47":
  B.HasObs(B.c('EmCare.B22.DE47'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Prefer to take Rectal Temperature"*/
define "Prefer to take Rectal Temperature":
  B.HasObs(B.c('EmCare.B22.DE48'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B22.DE48":
  B.HasObs(B.c('EmCare.B22.DE48'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Rectal Temperature (second measurement)"*/
define "Rectal Temperature (second measurement)":
  B.HasObs(B.c('EmCare.B22.DE49'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B22.DE49":
  B.HasObs(B.c('EmCare.B22.DE49'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Measured Fever (second measurement)"*/
define "Measured Fever (second measurement)":
  B.HasObs(B.c('EmCare.B22.DE50'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B22.DE50":
  B.HasObs(B.c('EmCare.B22.DE50'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Measured Low Body Temperature (second measurement)"*/
define "Measured Low Body Temperature (second measurement)":
  B.HasObs(B.c('EmCare.B22.DE51'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B22.DE51":
  B.HasObs(B.c('EmCare.B22.DE51'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"No Measured Fever or
No Low Body Temperature"*/
define "No Measured Fever or
No Low Body Temperature":
  B.HasObs(B.c('EmCare.B22.DE52'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B22.DE52":
  B.HasObs(B.c('EmCare.B22.DE52'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Hemoglobin (Hb) g/dL"*/
define "Hemoglobin (Hb) g/dL":
  B.HasObs(B.c('EmCare.B22.DE81'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B22.DE81":
  B.HasObs(B.c('EmCare.B22.DE81'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Hemoglobin Test Not Available"*/
define "Hemoglobin Test Not Available":
  B.HasObs(B.c('EmCare.B22.DE82'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B22.DE82":
  B.HasObs(B.c('EmCare.B22.DE82'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Oral Fluid Test Results"*/
define "Oral Fluid Test Results":
  B.HasObs(B.c('EmCare.B22.DE08'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B22.DE08":
  B.HasObs(B.c('EmCare.B22.DE08'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Completely Unable to Drink or Vomits Immediately / Everything"*/
define "Completely Unable to Drink or Vomits Immediately / Everything":
  B.HasObs(B.c('EmCare.B22.DE14a'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B22.DE14a":
  B.HasObs(B.c('EmCare.B22.DE14a'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Has the Child had anything to drink today?"*/
define "Has the Child had anything to drink today?":
  B.HasObs(B.c('EmCare.B22.DE15'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B22.DE15":
  B.HasObs(B.c('EmCare.B22.DE15'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"How did the child last drink"*/
define "How did the child last drink":
  B.HasObs(B.c('EmCare.B22.DE16'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B22.DE16":
  B.HasObs(B.c('EmCare.B22.DE16'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Danger Signs"*/
define "Danger Signs":
  B.HasObs(B.c('EmCare.B.G.DE01'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B.G.DE01":
  B.HasObs(B.c('EmCare.B.G.DE01'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"Fever"*/
define "Fever":
  B.HasObs(B.c('EmCare.B.G.DE06'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "EmCare.B.G.DE06":
  B.HasObs(B.c('EmCare.B.G.DE06'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

