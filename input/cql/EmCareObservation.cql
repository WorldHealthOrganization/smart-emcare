/*
@author: Patrick Delcroix
@description: This library is part of the project EmCare
*/
library EmCareObservation version '0.99.99'
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers 
include EmCareBase version '0.99.99' called B


context Patient
      
/*"is the child sick today?"*/
define "is the child sick today?":
  B.HasObs(B.c('EmCare.B3.DE05'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b3.de05":
  B.HasObs(B.c('EmCare.B3.DE05'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"convulsing now"*/
define "convulsing now":
  B.HasObs(B.c('EmCare.B7.DE02'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b7.de02":
  B.HasObs(B.c('EmCare.B7.DE02'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"convulsion(s) in this illness"*/
define "convulsion(s) in this illness":
  B.HasObs(B.c('EmCare.B7.DE03'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b7.de03":
  B.HasObs(B.c('EmCare.B7.DE03'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"unconscious or lethargic"*/
define "unconscious or lethargic":
  B.HasObs(B.c('EmCare.B7.DE08b'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b7.de08b":
  B.HasObs(B.c('EmCare.B7.DE08b'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"unconscious"*/
define "unconscious":
  B.HasObs(B.c('EmCare.B7.DE08'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b7.de08":
  B.HasObs(B.c('EmCare.B7.DE08'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"lethargic"*/
define "lethargic":
  B.HasObs(B.c('EmCare.B7.DE08a'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b7.de08a":
  B.HasObs(B.c('EmCare.B7.DE08a'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"not able to drink or breastfeed"*/
define "not able to drink or breastfeed":
  B.HasObs(B.c('EmCare.B7.DE09'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b7.de09":
  B.HasObs(B.c('EmCare.B7.DE09'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"vomiting everything"*/
define "vomiting everything":
  B.HasObs(B.c('EmCare.B7.DE10'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b7.de10":
  B.HasObs(B.c('EmCare.B7.DE10'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"continue to assess sick child"*/
define "continue to assess sick child":
  B.HasObs(B.c('EmCare.B7-B8-B9.DE01'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b7-b8-b9.de01":
  B.HasObs(B.c('EmCare.B7-B8-B9.DE01'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"axillary temperature"*/
define "axillary temperature":
  B.HasObs(B.c('EmCare.B6.DE01'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b6.de01":
  B.HasObs(B.c('EmCare.B6.DE01'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"hot to touch"*/
define "hot to touch":
  B.HasObs(B.c('EmCare.B6.DE05'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b6.de05":
  B.HasObs(B.c('EmCare.B6.DE05'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"weight"*/
define "weight":
  B.HasObs(B.c('EmCare.B6.DE06'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b6.de06":
  B.HasObs(B.c('EmCare.B6.DE06'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"weight cannot be measured"*/
define "weight cannot be measured":
  B.HasObs(B.c('EmCare.B6.DE07'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b6.de07":
  B.HasObs(B.c('EmCare.B6.DE07'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"estimated weight"*/
define "estimated weight":
  B.HasObs(B.c('EmCare.B6.DE08'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b6.de08":
  B.HasObs(B.c('EmCare.B6.DE08'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"height"*/
define "height":
  B.HasObs(B.c('EmCare.B6.DE09'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b6.de09":
  B.HasObs(B.c('EmCare.B6.DE09'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"height cannot be measured"*/
define "height cannot be measured":
  B.HasObs(B.c('EmCare.B6.DE11'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b6.de11":
  B.HasObs(B.c('EmCare.B6.DE11'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"length"*/
define "length":
  B.HasObs(B.c('EmCare.B6.DE12'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b6.de12":
  B.HasObs(B.c('EmCare.B6.DE12'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"weight for height (wfh) z scores"*/
define "weight for height (wfh) z scores":
  B.HasObs(B.c('EmCare.B6.DE14'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b6.de14":
  B.HasObs(B.c('EmCare.B6.DE14'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"weight for length (wfl) z scores"*/
define "weight for length (wfl) z scores":
  B.HasObs(B.c('EmCare.B6.DE15'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b6.de15":
  B.HasObs(B.c('EmCare.B6.DE15'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"weight for age (wfa) z scores"*/
define "weight for age (wfa) z scores":
  B.HasObs(B.c('EmCare.B6.DE16'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b6.de16":
  B.HasObs(B.c('EmCare.B6.DE16'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"muac (mid upper arm circumference)"*/
define "muac (mid upper arm circumference)":
  B.HasObs(B.c('EmCare.B6.DE17'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b6.de17":
  B.HasObs(B.c('EmCare.B6.DE17'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"muac cannot be measured"*/
define "muac cannot be measured":
  B.HasObs(B.c('EmCare.B6.DE17a'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b6.de17a":
  B.HasObs(B.c('EmCare.B6.DE17a'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"visually assess for whether underweight (for drug dose calculation)"*/
define "visually assess for whether underweight (for drug dose calculation)":
  B.HasObs(B.c('EmCare.B6.DE18'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b6.de18":
  B.HasObs(B.c('EmCare.B6.DE18'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"convulsions in this illness"*/
define "convulsions in this illness":
  B.HasObs(B.c('EmCare.B18S1.DE01'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b18s1.de01":
  B.HasObs(B.c('EmCare.B18S1.DE01'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"difficulty with feeding"*/
define "difficulty with feeding":
  B.HasObs(B.c('EmCare.B18S1.DE02'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b18s1.de02":
  B.HasObs(B.c('EmCare.B18S1.DE02'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"diarrhoea"*/
define "diarrhoea":
  B.HasObs(B.c('EmCare.B20S1.DE01'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b20s1.de01":
  B.HasObs(B.c('EmCare.B20S1.DE01'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"mother's hiv status"*/
define "mother's hiv status":
  B.HasObs(B.c('EmCare.B21S1.DE01'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b21s1.de01":
  B.HasObs(B.c('EmCare.B21S1.DE01'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"breastfed"*/
define "breastfed":
  B.HasObs(B.c('EmCare.B21S1.DE06'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b21s1.de06":
  B.HasObs(B.c('EmCare.B21S1.DE06'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"measured temperature"*/
define "measured temperature":
  B.HasObs(B.c('EmCare.B18S2.DE01'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b18s2.de01":
  B.HasObs(B.c('EmCare.B18S2.DE01'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"respiratory rate first count"*/
define "respiratory rate first count":
  B.HasObs(B.c('EmCare.B18S2.DE04'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b18s2.de04":
  B.HasObs(B.c('EmCare.B18S2.DE04'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"respiratory rate second count"*/
define "respiratory rate second count":
  B.HasObs(B.c('EmCare.B18S2.DE05'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b18s2.de05":
  B.HasObs(B.c('EmCare.B18S2.DE05'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"fast breathing"*/
define "fast breathing":
  B.HasObs(B.c('EmCare.B18S2.DE06'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b18s2.de06":
  B.HasObs(B.c('EmCare.B18S2.DE06'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"severe chest indrawing"*/
define "severe chest indrawing":
  B.HasObs(B.c('EmCare.B18S2.DE07'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b18s2.de07":
  B.HasObs(B.c('EmCare.B18S2.DE07'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"movements"*/
define "movements":
  B.HasObs(B.c('EmCare.B18S2.DE08'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b18s2.de08":
  B.HasObs(B.c('EmCare.B18S2.DE08'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"umbilicus red or pus draining"*/
define "umbilicus red or pus draining":
  B.HasObs(B.c('EmCare.B18S2.DE12'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b18s2.de12":
  B.HasObs(B.c('EmCare.B18S2.DE12'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"skin pustules"*/
define "skin pustules":
  B.HasObs(B.c('EmCare.B18S2.DE13'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b18s2.de13":
  B.HasObs(B.c('EmCare.B18S2.DE13'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"yellow skin"*/
define "yellow skin":
  B.HasObs(B.c('EmCare.B19S2.DE01'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b19s2.de01":
  B.HasObs(B.c('EmCare.B19S2.DE01'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"yellow palms or yellow soles"*/
define "yellow palms or yellow soles":
  B.HasObs(B.c('EmCare.B19S2.DE02'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b19s2.de02":
  B.HasObs(B.c('EmCare.B19S2.DE02'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"jaundice (yellow skin or palms or soles)"*/
define "jaundice (yellow skin or palms or soles)":
  B.HasObs(B.c('EmCare.B19S2.DE03'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b19s2.de03":
  B.HasObs(B.c('EmCare.B19S2.DE03'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"sunken eyes"*/
define "sunken eyes":
  B.HasObs(B.c('EmCare.B20S2.DE01'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b20s2.de01":
  B.HasObs(B.c('EmCare.B20S2.DE01'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"skin pinch of abdomen"*/
define "skin pinch of abdomen":
  B.HasObs(B.c('EmCare.B20S2.DE02'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b20s2.de02":
  B.HasObs(B.c('EmCare.B20S2.DE02'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"restless and irritable"*/
define "restless and irritable":
  B.HasObs(B.c('EmCare.B20S2.DE06'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b20s2.de06":
  B.HasObs(B.c('EmCare.B20S2.DE06'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"weight status"*/
define "weight status":
  B.HasObs(B.c('EmCare.B21S2.DE01'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b21s2.de01":
  B.HasObs(B.c('EmCare.B21S2.DE01'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"breastfed how many times in 24 hours?"*/
define "breastfed how many times in 24 hours?":
  B.HasObs(B.c('EmCare.B21S2.DE05'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b21s2.de05":
  B.HasObs(B.c('EmCare.B21S2.DE05'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"young infant receives other food or fluids"*/
define "young infant receives other food or fluids":
  B.HasObs(B.c('EmCare.B21S2.DE08'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b21s2.de08":
  B.HasObs(B.c('EmCare.B21S2.DE08'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"what milk is being given as a replacement feed?"*/
define "what milk is being given as a replacement feed?":
  B.HasObs(B.c('EmCare.B21S2.DE09'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b21s2.de09":
  B.HasObs(B.c('EmCare.B21S2.DE09'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"how many replacement feeds during the day and night (24 hours)?"*/
define "how many replacement feeds during the day and night (24 hours)?":
  B.HasObs(B.c('EmCare.B21S2.DE12'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b21s2.de12":
  B.HasObs(B.c('EmCare.B21S2.DE12'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"do you give any breastmilk at all?"*/
define "do you give any breastmilk at all?":
  B.HasObs(B.c('EmCare.B21S2.DE27'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b21s2.de27":
  B.HasObs(B.c('EmCare.B21S2.DE27'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"ulcers or white patches in mouth"*/
define "ulcers or white patches in mouth":
  B.HasObs(B.c('EmCare.B21S2.DE30'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b21s2.de30":
  B.HasObs(B.c('EmCare.B21S2.DE30'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"unable to check if ulcers or white patches in mouth"*/
define "unable to check if ulcers or white patches in mouth":
  B.HasObs(B.c('EmCare.B21S2.DE31'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b21s2.de31":
  B.HasObs(B.c('EmCare.B21S2.DE31'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"cough"*/
define "cough":
  B.HasObs(B.c('EmCare.B10S1.DE05'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b10s1.de05":
  B.HasObs(B.c('EmCare.B10S1.DE05'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"cough for how long?"*/
define "cough for how long?":
  B.HasObs(B.c('EmCare.B10S1.DE06'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b10s1.de06":
  B.HasObs(B.c('EmCare.B10S1.DE06'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"difficulty breathing"*/
define "difficulty breathing":
  B.HasObs(B.c('EmCare.B10S1.DE01'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b10s1.de01":
  B.HasObs(B.c('EmCare.B10S1.DE01'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"difficulty breathing for how long?"*/
define "difficulty breathing for how long?":
  B.HasObs(B.c('EmCare.B10S1.DE02'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b10s1.de02":
  B.HasObs(B.c('EmCare.B10S1.DE02'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"diarrhoea for how long?"*/
define "diarrhoea for how long?":
  B.HasObs(B.c('EmCare.B11S1.DE02'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b11s1.de02":
  B.HasObs(B.c('EmCare.B11S1.DE02'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"blood in the stool in this illness"*/
define "blood in the stool in this illness":
  B.HasObs(B.c('EmCare.B11S1.DE05'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b11s1.de05":
  B.HasObs(B.c('EmCare.B11S1.DE05'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"measured fever"*/
define "measured fever":
  B.HasObs(B.c('EmCare.B12S1.DE01'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b12s1.de01":
  B.HasObs(B.c('EmCare.B12S1.DE01'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"fever reported"*/
define "fever reported":
  B.HasObs(B.c('EmCare.B12S1.DE02'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b12s1.de02":
  B.HasObs(B.c('EmCare.B12S1.DE02'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"fever for how long?"*/
define "fever for how long?":
  B.HasObs(B.c('EmCare.B12S1.DE03'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b12s1.de03":
  B.HasObs(B.c('EmCare.B12S1.DE03'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"has fever been present every day since the fever started?"*/
define "has fever been present every day since the fever started?":
  B.HasObs(B.c('EmCare.B12S1.DE06'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b12s1.de06":
  B.HasObs(B.c('EmCare.B12S1.DE06'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"ear problem"*/
define "ear problem":
  B.HasObs(B.c('EmCare.B13S1.DE01'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b13s1.de01":
  B.HasObs(B.c('EmCare.B13S1.DE01'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"ear pain"*/
define "ear pain":
  B.HasObs(B.c('EmCare.B13S1.DE02'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b13s1.de02":
  B.HasObs(B.c('EmCare.B13S1.DE02'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"ear discharge"*/
define "ear discharge":
  B.HasObs(B.c('EmCare.B13S1.DE03'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b13s1.de03":
  B.HasObs(B.c('EmCare.B13S1.DE03'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"ear discharge for how long?"*/
define "ear discharge for how long?":
  B.HasObs(B.c('EmCare.B13S1.DE04'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b13s1.de04":
  B.HasObs(B.c('EmCare.B13S1.DE04'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"eye problem"*/
define "eye problem":
  B.HasObs(B.c('EmCare.B14S1.DE03'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b14s1.de03":
  B.HasObs(B.c('EmCare.B14S1.DE03'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"skin problem"*/
define "skin problem":
  B.HasObs(B.c('EmCare.B14S1.DE01'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b14s1.de01":
  B.HasObs(B.c('EmCare.B14S1.DE01'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"itchy skin"*/
define "itchy skin":
  B.HasObs(B.c('EmCare.B14S1.DE02'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b14s1.de02":
  B.HasObs(B.c('EmCare.B14S1.DE02'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"respiratory rate"*/
define "respiratory rate":
  B.HasObs(B.c('EmCare.B22.DE01'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b22.de01":
  B.HasObs(B.c('EmCare.B22.DE01'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"chest indrawing"*/
define "chest indrawing":
  B.HasObs(B.c('EmCare.B10S2.DE03'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b10s2.de03":
  B.HasObs(B.c('EmCare.B10S2.DE03'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"stridor in a calm child"*/
define "stridor in a calm child":
  B.HasObs(B.c('EmCare.B10S2.DE04'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b10s2.de04":
  B.HasObs(B.c('EmCare.B10S2.DE04'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"wheezing"*/
define "wheezing":
  B.HasObs(B.c('EmCare.B10S2.DE05'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b10s2.de05":
  B.HasObs(B.c('EmCare.B10S2.DE05'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"recurrent wheeze"*/
define "recurrent wheeze":
  B.HasObs(B.c('EmCare.B10S2.DE06'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b10s2.de06":
  B.HasObs(B.c('EmCare.B10S2.DE06'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"oxygen saturation"*/
define "oxygen saturation":
  B.HasObs(B.c('EmCare.B10S2.DE07'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b10s2.de07":
  B.HasObs(B.c('EmCare.B10S2.DE07'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"oxygen saturation < 90 %"*/
define "oxygen saturation < 90 %":
  B.HasObs(B.c('EmCare.B10S2.DE08'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b10s2.de08":
  B.HasObs(B.c('EmCare.B10S2.DE08'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"throat problem"*/
define "throat problem":
  B.HasObs(B.c('EmCare.B17S1.DE01'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b17s1.de01":
  B.HasObs(B.c('EmCare.B17S1.DE01'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"specify throat problem"*/
define "specify throat problem":
  B.HasObs(B.c('EmCare.B17S1.DE02'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b17s1.de02":
  B.HasObs(B.c('EmCare.B17S1.DE02'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"enlarged lymph nodes on front of neck"*/
define "enlarged lymph nodes on front of neck":
  B.HasObs(B.c('EmCare.B17S1.DE06'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b17s1.de06":
  B.HasObs(B.c('EmCare.B17S1.DE06'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"ability to swallow"*/
define "ability to swallow":
  B.HasObs(B.c('EmCare.B17S1.DE07'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b17s1.de07":
  B.HasObs(B.c('EmCare.B17S1.DE07'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"tender swelling behind the ear"*/
define "tender swelling behind the ear":
  B.HasObs(B.c('EmCare.B13S2.DE01'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b13s2.de01":
  B.HasObs(B.c('EmCare.B13S2.DE01'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"pus seen draining from the ear"*/
define "pus seen draining from the ear":
  B.HasObs(B.c('EmCare.B13S2.DE02'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b13s2.de02":
  B.HasObs(B.c('EmCare.B13S2.DE02'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"pus seen draining from the ear for how long?"*/
define "pus seen draining from the ear for how long?":
  B.HasObs(B.c('EmCare.B13S2.DE03'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b13s2.de03":
  B.HasObs(B.c('EmCare.B13S2.DE03'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"stiff neck"*/
define "stiff neck":
  B.HasObs(B.c('EmCare.B12S2.DE01'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b12s2.de01":
  B.HasObs(B.c('EmCare.B12S2.DE01'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"runny nose"*/
define "runny nose":
  B.HasObs(B.c('EmCare.B12S2.DE05'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b12s2.de05":
  B.HasObs(B.c('EmCare.B12S2.DE05'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"red eyes"*/
define "red eyes":
  B.HasObs(B.c('EmCare.B14S2.DE01'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b14s2.de01":
  B.HasObs(B.c('EmCare.B14S2.DE01'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"pus draining from eye"*/
define "pus draining from eye":
  B.HasObs(B.c('EmCare.B14S2.DE02'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b14s2.de02":
  B.HasObs(B.c('EmCare.B14S2.DE02'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"clouding of the cornea"*/
define "clouding of the cornea":
  B.HasObs(B.c('EmCare.B14S2.DE03'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b14s2.de03":
  B.HasObs(B.c('EmCare.B14S2.DE03'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"is clouding of the cornea a new problem"*/
define "is clouding of the cornea a new problem":
  B.HasObs(B.c('EmCare.B14S2.DE04'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b14s2.de04":
  B.HasObs(B.c('EmCare.B14S2.DE04'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"has clouding of the cornea previously been treated"*/
define "has clouding of the cornea previously been treated":
  B.HasObs(B.c('EmCare.B14S2.DE05'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b14s2.de05":
  B.HasObs(B.c('EmCare.B14S2.DE05'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"generalised or localised skin problem"*/
define "generalised or localised skin problem":
  B.HasObs(B.c('EmCare.B14S2.DE06'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b14s2.de06":
  B.HasObs(B.c('EmCare.B14S2.DE06'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"measles rash"*/
define "measles rash":
  B.HasObs(B.c('EmCare.B14S2.DE10'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b14s2.de10":
  B.HasObs(B.c('EmCare.B14S2.DE10'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"measles within the last 3 months"*/
define "measles within the last 3 months":
  B.HasObs(B.c('EmCare.B14S2.DE11'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b14s2.de11":
  B.HasObs(B.c('EmCare.B14S2.DE11'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"blisters, sores or pustules"*/
define "blisters, sores or pustules":
  B.HasObs(B.c('EmCare.B14S2.DE12'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b14s2.de12":
  B.HasObs(B.c('EmCare.B14S2.DE12'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"type of skin problem"*/
define "type of skin problem":
  B.HasObs(B.c('EmCare.B14S2.DE13'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b14s2.de13":
  B.HasObs(B.c('EmCare.B14S2.DE13'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"scalp infection (tinea capitis)"*/
define "scalp infection (tinea capitis)":
  B.HasObs(B.c('EmCare.B14S2.DE19a'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b14s2.de19a":
  B.HasObs(B.c('EmCare.B14S2.DE19a'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"severe rash"*/
define "severe rash":
  B.HasObs(B.c('EmCare.B14S2.DE22A'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b14s2.de22a":
  B.HasObs(B.c('EmCare.B14S2.DE22A'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"disseminated herpes zoster"*/
define "disseminated herpes zoster":
  B.HasObs(B.c('EmCare.B14S2.DE23a'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b14s2.de23a":
  B.HasObs(B.c('EmCare.B14S2.DE23a'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"eye involvement"*/
define "eye involvement":
  B.HasObs(B.c('EmCare.B14S2.DE24'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b14s2.de24":
  B.HasObs(B.c('EmCare.B14S2.DE24'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"skin infection extends to muscle"*/
define "skin infection extends to muscle":
  B.HasObs(B.c('EmCare.B14S2.DE30'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b14s2.de30":
  B.HasObs(B.c('EmCare.B14S2.DE30'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"extensive impetigo lesions"*/
define "extensive impetigo lesions":
  B.HasObs(B.c('EmCare.B14S2.DE30b'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b14s2.de30b":
  B.HasObs(B.c('EmCare.B14S2.DE30b'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"extensive molluscum lesions"*/
define "extensive molluscum lesions":
  B.HasObs(B.c('EmCare.B14S2.DE31a'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b14s2.de31a":
  B.HasObs(B.c('EmCare.B14S2.DE31a'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"molluscum lesions close to the eye"*/
define "molluscum lesions close to the eye":
  B.HasObs(B.c('EmCare.B14S2.DE31b'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b14s2.de31b":
  B.HasObs(B.c('EmCare.B14S2.DE31b'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"extensive warts"*/
define "extensive warts":
  B.HasObs(B.c('EmCare.B14S2.DE32a'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b14s2.de32a":
  B.HasObs(B.c('EmCare.B14S2.DE32a'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"severe seborrhoeic dermatitis"*/
define "severe seborrhoeic dermatitis":
  B.HasObs(B.c('EmCare.B14S2.DE34'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b14s2.de34":
  B.HasObs(B.c('EmCare.B14S2.DE34'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"secondary bacterial infection of eczema"*/
define "secondary bacterial infection of eczema":
  B.HasObs(B.c('EmCare.B14S2.DE36a'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b14s2.de36a":
  B.HasObs(B.c('EmCare.B14S2.DE36a'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"severe acute moist or weeping eczema"*/
define "severe acute moist or weeping eczema":
  B.HasObs(B.c('EmCare.B14S2.DE36b'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b14s2.de36b":
  B.HasObs(B.c('EmCare.B14S2.DE36b'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"secondary herpes infection of eczema (eczema herpeticum)"*/
define "secondary herpes infection of eczema (eczema herpeticum)":
  B.HasObs(B.c('EmCare.B14S2.DE36c'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b14s2.de36c":
  B.HasObs(B.c('EmCare.B14S2.DE36c'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"oral sores or mouth ulcers"*/
define "oral sores or mouth ulcers":
  B.HasObs(B.c('EmCare.B14S2.DE38'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b14s2.de38":
  B.HasObs(B.c('EmCare.B14S2.DE38'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"add a skin or mouth or eye problem"*/
define "add a skin or mouth or eye problem":
  B.HasObs(B.c('EmCare.B14S2.DE43'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b14s2.de43":
  B.HasObs(B.c('EmCare.B14S2.DE43'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"palmar pallor"*/
define "palmar pallor":
  B.HasObs(B.c('EmCare.B15S2.DE01'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b15s2.de01":
  B.HasObs(B.c('EmCare.B15S2.DE01'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"mucous membrane pallor"*/
define "mucous membrane pallor":
  B.HasObs(B.c('EmCare.B15S2.DE09'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b15s2.de09":
  B.HasObs(B.c('EmCare.B15S2.DE09'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"unable to perform respiratory rate at this time"*/
define "unable to perform respiratory rate at this time":
  B.HasObs(B.c('EmCare.B22.DE02'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b22.de02":
  B.HasObs(B.c('EmCare.B22.DE02'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"respiratory rate second count not possible"*/
define "respiratory rate second count not possible":
  B.HasObs(B.c('EmCare.B22.DE05'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b22.de05":
  B.HasObs(B.c('EmCare.B22.DE05'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"inhaled bronchodilator trial not feasible or available"*/
define "inhaled bronchodilator trial not feasible or available":
  B.HasObs(B.c('EmCare.B22.DE22'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b22.de22":
  B.HasObs(B.c('EmCare.B22.DE22'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"chest indrawing (post inhaled bronchodilator trial)"*/
define "chest indrawing (post inhaled bronchodilator trial)":
  B.HasObs(B.c('EmCare.B22.DE18'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b22.de18":
  B.HasObs(B.c('EmCare.B22.DE18'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"respiratory rate (post inhaled bronchodilator trial)"*/
define "respiratory rate (post inhaled bronchodilator trial)":
  B.HasObs(B.c('EmCare.B22.DE19'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b22.de19":
  B.HasObs(B.c('EmCare.B22.DE19'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"fast breathing (post inhaled bronchodilator trial)"*/
define "fast breathing (post inhaled bronchodilator trial)":
  B.HasObs(B.c('EmCare.B22.DE20'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b22.de20":
  B.HasObs(B.c('EmCare.B22.DE20'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"no fast breathing and no chest indrawing (post inhaled bronchodilator trial)"*/
define "no fast breathing and no chest indrawing (post inhaled bronchodilator trial)":
  B.HasObs(B.c('EmCare.B22.DE21'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b22.de21":
  B.HasObs(B.c('EmCare.B22.DE21'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"inhaled bronchodilator trial results"*/
define "inhaled bronchodilator trial results":
  B.HasObs(B.c('EmCare.B22.DE17'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b22.de17":
  B.HasObs(B.c('EmCare.B22.DE17'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"breastfeeding assessment"*/
define "breastfeeding assessment":
  B.HasObs(B.c('EmCare.B22.DE27'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b22.de27":
  B.HasObs(B.c('EmCare.B22.DE27'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"breastfed in the previous hour"*/
define "breastfed in the previous hour":
  B.HasObs(B.c('EmCare.B22.DE28'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b22.de28":
  B.HasObs(B.c('EmCare.B22.DE28'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"mother able to wait until young infant is willing to breastfeed again"*/
define "mother able to wait until young infant is willing to breastfeed again":
  B.HasObs(B.c('EmCare.B22.DE29'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b22.de29":
  B.HasObs(B.c('EmCare.B22.DE29'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"mother reports difficulty breastfeeding"*/
define "mother reports difficulty breastfeeding":
  B.HasObs(B.c('EmCare.B22.DE30'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b22.de30":
  B.HasObs(B.c('EmCare.B22.DE30'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"chin touching breast"*/
define "chin touching breast":
  B.HasObs(B.c('EmCare.B22.DE31'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b22.de31":
  B.HasObs(B.c('EmCare.B22.DE31'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"mouth wide open"*/
define "mouth wide open":
  B.HasObs(B.c('EmCare.B22.DE32'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b22.de32":
  B.HasObs(B.c('EmCare.B22.DE32'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"lower lip turned outwards"*/
define "lower lip turned outwards":
  B.HasObs(B.c('EmCare.B22.DE33'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b22.de33":
  B.HasObs(B.c('EmCare.B22.DE33'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"more areola visible above than below the mouth"*/
define "more areola visible above than below the mouth":
  B.HasObs(B.c('EmCare.B22.DE34'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b22.de34":
  B.HasObs(B.c('EmCare.B22.DE34'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"slow deep sucks, sometimes pausing"*/
define "slow deep sucks, sometimes pausing":
  B.HasObs(B.c('EmCare.B22.DE35'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b22.de35":
  B.HasObs(B.c('EmCare.B22.DE35'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"breastfeeding assessment results"*/
define "breastfeeding assessment results":
  B.HasObs(B.c('EmCare.B22.DE36'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b22.de36":
  B.HasObs(B.c('EmCare.B22.DE36'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"breastfeeding assessment not possible"*/
define "breastfeeding assessment not possible":
  B.HasObs(B.c('EmCare.B22.DE41'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b22.de41":
  B.HasObs(B.c('EmCare.B22.DE41'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"difficulty breastfeeding reported"*/
define "difficulty breastfeeding reported":
  B.HasObs(B.c('EmCare.B22.DE42'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b22.de42":
  B.HasObs(B.c('EmCare.B22.DE42'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"no difficulty breastfeeding reported"*/
define "no difficulty breastfeeding reported":
  B.HasObs(B.c('EmCare.B22.DE43'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b22.de43":
  B.HasObs(B.c('EmCare.B22.DE43'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"difficulty breastfeeding observed"*/
define "difficulty breastfeeding observed":
  B.HasObs(B.c('EmCare.B22.DE44'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b22.de44":
  B.HasObs(B.c('EmCare.B22.DE44'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"no difficulty breastfeeding observed"*/
define "no difficulty breastfeeding observed":
  B.HasObs(B.c('EmCare.B22.DE45'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b22.de45":
  B.HasObs(B.c('EmCare.B22.DE45'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"second temperature measurement feasible"*/
define "second temperature measurement feasible":
  B.HasObs(B.c('EmCare.B22.DE46'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b22.de46":
  B.HasObs(B.c('EmCare.B22.DE46'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"axillary temperature (second measurement)"*/
define "axillary temperature (second measurement)":
  B.HasObs(B.c('EmCare.B22.DE47'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b22.de47":
  B.HasObs(B.c('EmCare.B22.DE47'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"prefer to take rectal temperature"*/
define "prefer to take rectal temperature":
  B.HasObs(B.c('EmCare.B22.DE48'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b22.de48":
  B.HasObs(B.c('EmCare.B22.DE48'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"rectal temperature (second measurement)"*/
define "rectal temperature (second measurement)":
  B.HasObs(B.c('EmCare.B22.DE49'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b22.de49":
  B.HasObs(B.c('EmCare.B22.DE49'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"measured fever (second measurement)"*/
define "measured fever (second measurement)":
  B.HasObs(B.c('EmCare.B22.DE50'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b22.de50":
  B.HasObs(B.c('EmCare.B22.DE50'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"measured low body temperature (second measurement)"*/
define "measured low body temperature (second measurement)":
  B.HasObs(B.c('EmCare.B22.DE51'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b22.de51":
  B.HasObs(B.c('EmCare.B22.DE51'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"no measured fever or
no low body temperature"*/
define "no measured fever or
no low body temperature":
  B.HasObs(B.c('EmCare.B22.DE52'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b22.de52":
  B.HasObs(B.c('EmCare.B22.DE52'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"hemoglobin (hb) g/dl"*/
define "hemoglobin (hb) g/dl":
  B.HasObs(B.c('EmCare.B22.DE81'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b22.de81":
  B.HasObs(B.c('EmCare.B22.DE81'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"hemoglobin test not available"*/
define "hemoglobin test not available":
  B.HasObs(B.c('EmCare.B22.DE82'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b22.de82":
  B.HasObs(B.c('EmCare.B22.DE82'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"oral fluid test results"*/
define "oral fluid test results":
  B.HasObs(B.c('EmCare.B22.DE08'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b22.de08":
  B.HasObs(B.c('EmCare.B22.DE08'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"unable to perform oral fluid test"*/
define "unable to perform oral fluid test":
  B.HasObs(B.c('EmCare.B22.DE14'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b22.de14":
  B.HasObs(B.c('EmCare.B22.DE14'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"completely unable to drink or vomits immediately / everything"*/
define "completely unable to drink or vomits immediately / everything":
  B.HasObs(B.c('EmCare.B22.DE14a'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b22.de14a":
  B.HasObs(B.c('EmCare.B22.DE14a'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"has the child had anything to drink today?"*/
define "has the child had anything to drink today?":
  B.HasObs(B.c('EmCare.B22.DE15'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b22.de15":
  B.HasObs(B.c('EmCare.B22.DE15'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"how did the child last drink"*/
define "how did the child last drink":
  B.HasObs(B.c('EmCare.B22.DE16'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b22.de16":
  B.HasObs(B.c('EmCare.B22.DE16'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"danger signs"*/
define "danger signs":
  B.HasObs(B.c('EmCare.B.G.DE01'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b.g.de01":
  B.HasObs(B.c('EmCare.B.G.DE01'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"fever"*/
define "fever":
  B.HasObs(B.c('EmCare.B.G.DE06'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b.g.de06":
  B.HasObs(B.c('EmCare.B.G.DE06'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/*"no - do not add a skin or mouth or eye problem"*/
define "no - do not add a skin or mouth or eye problem":
  B.HasObs(B.c('EmCare.B14S2.DE47'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
define "emcare.b14s2.de47":
  B.HasObs(B.c('EmCare.B14S2.DE47'), 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

