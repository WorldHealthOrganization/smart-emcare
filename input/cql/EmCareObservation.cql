library emcareobservation
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers 
include EmCareBase called B


context Patient

/*
 "Is the child sick Today?":
 
 */
 define "EmCare.B3.DE05":
   B.HasObs({c('EmCare.B3.DE05')})

 /*
 "Is the child sick Today?":
 
 */
 define "Is the child sick Today?":
   B.HasObs({c('EmCare.B3.DE05')})

 /*
 "Axaliary Temperature":
 
 */
 define "EmCare.B6.DE01":
   B.HasObs({c('EmCare.B6.DE01')})

 /*
 "Axaliary Temperature":
 
 */
 define "Axaliary Temperature":
   B.HasObs({c('EmCare.B6.DE01')})

 /*
 "Rectal Temperature":
 
 */
 define "EmCare.B6.DE03":
   B.HasObs({c('EmCare.B6.DE03')})

 /*
 "Rectal Temperature":
 
 */
 define "Rectal Temperature":
   B.HasObs({c('EmCare.B6.DE03')})

 /*
 "Hot to Touch":
 
 */
 define "EmCare.B6.DE05":
   B.HasObs({c('EmCare.B6.DE05')})

 /*
 "Hot to Touch":
 
 */
 define "Hot to Touch":
   B.HasObs({c('EmCare.B6.DE05')})

 /*
 "Weight cannot be measured":
 
 */
 define "EmCare.B6.DE07":
   B.HasObs({c('EmCare.B6.DE07')})

 /*
 "Weight cannot be measured":
 
 */
 define "Weight cannot be measured":
   B.HasObs({c('EmCare.B6.DE07')})

 /*
 "Estimated Weight":
 
 */
 define "EmCare.B6.DE08":
   B.HasObs({c('EmCare.B6.DE08')})

 /*
 "Estimated Weight":
 
 */
 define "Estimated Weight":
   B.HasObs({c('EmCare.B6.DE08')})

 /*
 "Height":
 
 */
 define "EmCare.B6.DE09":
   B.HasObs({c('EmCare.B6.DE09')})

 /*
 "Height":
 
 */
 define "Height":
   B.HasObs({c('EmCare.B6.DE09')})

 /*
 "Height cannot be measured":
 
 */
 define "EmCare.B6.DE11":
   B.HasObs({c('EmCare.B6.DE11')})

 /*
 "Height cannot be measured":
 
 */
 define "Height cannot be measured":
   B.HasObs({c('EmCare.B6.DE11')})

 /*
 "Length":
 
 */
 define "EmCare.B6.DE12":
   B.HasObs({c('EmCare.B6.DE12')})

 /*
 "Length":
 
 */
 define "Length":
   B.HasObs({c('EmCare.B6.DE12')})

 /*
 "Weight for Height (WFH) Z Scores":
 
 */
 define "EmCare.B6.DE14":
   B.HasObs({c('EmCare.B6.DE14')})

 /*
 "Weight for Height (WFH) Z Scores":
 
 */
 define "Weight for Height (WFH) Z Scores":
   B.HasObs({c('EmCare.B6.DE14')})

 /*
 "Weight for Length (WFL) Z Scores":
 
 */
 define "EmCare.B6.DE15":
   B.HasObs({c('EmCare.B6.DE15')})

 /*
 "Weight for Length (WFL) Z Scores":
 
 */
 define "Weight for Length (WFL) Z Scores":
   B.HasObs({c('EmCare.B6.DE15')})

 /*
 "Weight for Age (WFA) Z Scores":
 
 */
 define "EmCare.B6.DE16":
   B.HasObs({c('EmCare.B6.DE16')})

 /*
 "Weight for Age (WFA) Z Scores":
 
 */
 define "Weight for Age (WFA) Z Scores":
   B.HasObs({c('EmCare.B6.DE16')})

 /*
 "MUAC (Mid Upper Arm Circumference)":
 
 */
 define "EmCare.B6.DE17":
   B.HasObs({c('EmCare.B6.DE17')})

 /*
 "MUAC (Mid Upper Arm Circumference)":
 
 */
 define "MUAC (Mid Upper Arm Circumference)":
   B.HasObs({c('EmCare.B6.DE17')})

 /*
 "Visually assess for whether underweight (for drug dose calculation)":
 
 */
 define "EmCare.B6.DE18":
   B.HasObs({c('EmCare.B6.DE18')})

 /*
 "Visually assess for whether underweight (for drug dose calculation)":
 
 */
 define "Visually assess for whether underweight (for drug dose calculation)":
   B.HasObs({c('EmCare.B6.DE18')})

 /*
 "Obstructed or Absent Breathing":
 
 */
 define "EmCare.B7.DE01":
   B.HasObs({c('EmCare.B7.DE01')})

 /*
 "Obstructed or Absent Breathing":
 
 */
 define "Obstructed or Absent Breathing":
   B.HasObs({c('EmCare.B7.DE01')})

 /*
 "Convulsing Now":
 
 */
 define "EmCare.B7.DE02":
   B.HasObs({c('EmCare.B7.DE02')})

 /*
 "Convulsing Now":
 
 */
 define "Convulsing Now":
   B.HasObs({c('EmCare.B7.DE02')})

 /*
 "Convulsion(s) in this Illness":
 
 */
 define "EmCare.B7.DE03":
   B.HasObs({c('EmCare.B7.DE03')})

 /*
 "Convulsion(s) in this Illness":
 
 */
 define "Convulsion(s) in this Illness":
   B.HasObs({c('EmCare.B7.DE03')})

 /*
 "Unconscious or Lethargic":
 
 */
 define "EmCare.B7.DE08":
   B.HasObs({c('EmCare.B7.DE08')})

 /*
 "Unconscious or Lethargic":
 
 */
 define "Unconscious or Lethargic":
   B.HasObs({c('EmCare.B7.DE08')})

 /*
 "Not able to drink or breastfeed":
 
 */
 define "EmCare.B7.DE09":
   B.HasObs({c('EmCare.B7.DE09')})

 /*
 "Not able to drink or breastfeed":
 
 */
 define "Not able to drink or breastfeed":
   B.HasObs({c('EmCare.B7.DE09')})

 /*
 "Obstructed or Absent Breathing":
 
 */
 define "EmCare.B8-B9.DE01":
   B.HasObs({c('EmCare.B8-B9.DE01')})

 /*
 "Obstructed or Absent Breathing":
 
 */
 define "Obstructed or Absent Breathing":
   B.HasObs({c('EmCare.B8-B9.DE01')})

 /*
 "Convulsing Now":
 
 */
 define "EmCare.B8-B9.DE02":
   B.HasObs({c('EmCare.B8-B9.DE02')})

 /*
 "Convulsing Now":
 
 */
 define "Convulsing Now":
   B.HasObs({c('EmCare.B8-B9.DE02')})

 /*
 "Has danger signs":
 
 */
 define "EmCare.B8-B9.DE03":
   B.HasObs({c('EmCare.B8-B9.DE03')})

 /*
 "Has danger signs":
 
 */
 define "Has danger signs":
   B.HasObs({c('EmCare.B8-B9.DE03')})

 /*
 "Continue to Assess Sick Child":
 
 */
 define "EmCare.B7-B8-B9.DE01":
   B.HasObs({c('EmCare.B7-B8-B9.DE01')})

 /*
 "Continue to Assess Sick Child":
 
 */
 define "Continue to Assess Sick Child":
   B.HasObs({c('EmCare.B7-B8-B9.DE01')})

 /*
 "Measured Temperature":
 
 */
 define "EmCare.B18S2.DE01":
   B.HasObs({c('EmCare.B18S2.DE01')})

 /*
 "Measured Temperature":
 
 */
 define "Measured Temperature":
   B.HasObs({c('EmCare.B18S2.DE01')})

 /*
 "Respiratory Rate First Count":
 
 */
 define "EmCare.B18S2.DE04":
   B.HasObs({c('EmCare.B18S2.DE04')})

 /*
 "Respiratory Rate First Count":
 
 */
 define "Respiratory Rate First Count":
   B.HasObs({c('EmCare.B18S2.DE04')})

 /*
 "Respiratory Rate Second Count":
 
 */
 define "EmCare.B18S2.DE05":
   B.HasObs({c('EmCare.B18S2.DE05')})

 /*
 "Respiratory Rate Second Count":
 
 */
 define "Respiratory Rate Second Count":
   B.HasObs({c('EmCare.B18S2.DE05')})

 /*
 "Fast Breathing":
 
 */
 define "EmCare.B18S2.DE06":
   B.HasObs({c('EmCare.B18S2.DE06')})

 /*
 "Fast Breathing":
 
 */
 define "Fast Breathing":
   B.HasObs({c('EmCare.B18S2.DE06')})

 /*
 "Severe Chest Indrawing":
 
 */
 define "EmCare.B18S2.DE07":
   B.HasObs({c('EmCare.B18S2.DE07')})

 /*
 "Severe Chest Indrawing":
 
 */
 define "Severe Chest Indrawing":
   B.HasObs({c('EmCare.B18S2.DE07')})

 /*
 "Movements":
 
 */
 define "EmCare.B18S2.DE08":
   B.HasObs({c('EmCare.B18S2.DE08')})

 /*
 "Movements":
 
 */
 define "Movements":
   B.HasObs({c('EmCare.B18S2.DE08')})

 /*
 "Umbilicus Red or Pus Draining":
 
 */
 define "EmCare.B18S2.DE12":
   B.HasObs({c('EmCare.B18S2.DE12')})

 /*
 "Umbilicus Red or Pus Draining":
 
 */
 define "Umbilicus Red or Pus Draining":
   B.HasObs({c('EmCare.B18S2.DE12')})

 /*
 "Skin Pustules":
 
 */
 define "EmCare.B18S2.DE13":
   B.HasObs({c('EmCare.B18S2.DE13')})

 /*
 "Skin Pustules":
 
 */
 define "Skin Pustules":
   B.HasObs({c('EmCare.B18S2.DE13')})

 /*
 "Yellow Skin":
 
 */
 define "EmCare.B19S2.DE01":
   B.HasObs({c('EmCare.B19S2.DE01')})

 /*
 "Yellow Skin":
 
 */
 define "Yellow Skin":
   B.HasObs({c('EmCare.B19S2.DE01')})

 /*
 "Yellow Palms or Yellow Soles":
 
 */
 define "EmCare.B19S2.DE02":
   B.HasObs({c('EmCare.B19S2.DE02')})

 /*
 "Yellow Palms or Yellow Soles":
 
 */
 define "Yellow Palms or Yellow Soles":
   B.HasObs({c('EmCare.B19S2.DE02')})

 /*
 "Jaundice (Yellow skin or palms or soles)":
 
 */
 define "EmCare.B19S2.DE03":
   B.HasObs({c('EmCare.B19S2.DE03')})

 /*
 "Jaundice (Yellow skin or palms or soles)":
 
 */
 define "Jaundice (Yellow skin or palms or soles)":
   B.HasObs({c('EmCare.B19S2.DE03')})

 /*
 "Sunken Eyes":
 
 */
 define "EmCare.B20S2.DE01":
   B.HasObs({c('EmCare.B20S2.DE01')})

 /*
 "Sunken Eyes":
 
 */
 define "Sunken Eyes":
   B.HasObs({c('EmCare.B20S2.DE01')})

 /*
 "Skin pinch of Abdomen":
 
 */
 define "EmCare.B20S2.DE02":
   B.HasObs({c('EmCare.B20S2.DE02')})

 /*
 "Skin pinch of Abdomen":
 
 */
 define "Skin pinch of Abdomen":
   B.HasObs({c('EmCare.B20S2.DE02')})

 /*
 "Restless and Irritable":
 
 */
 define "EmCare.B20S2.DE06":
   B.HasObs({c('EmCare.B20S2.DE06')})

 /*
 "Restless and Irritable":
 
 */
 define "Restless and Irritable":
   B.HasObs({c('EmCare.B20S2.DE06')})

 /*
 "Weight Status":
 
 */
 define "EmCare.B21S2.DE01":
   B.HasObs({c('EmCare.B21S2.DE01')})

 /*
 "Weight Status":
 
 */
 define "Weight Status":
   B.HasObs({c('EmCare.B21S2.DE01')})

 /*
 "Breastfed how many times in 24 hours?":
 
 */
 define "EmCare.B21S2.DE05":
   B.HasObs({c('EmCare.B21S2.DE05')})

 /*
 "Breastfed how many times in 24 hours?":
 
 */
 define "Breastfed how many times in 24 hours?":
   B.HasObs({c('EmCare.B21S2.DE05')})

 /*
 "Young Infant receives other food or fluids":
 
 */
 define "EmCare.B21S2.DE08":
   B.HasObs({c('EmCare.B21S2.DE08')})

 /*
 "Young Infant receives other food or fluids":
 
 */
 define "Young Infant receives other food or fluids":
   B.HasObs({c('EmCare.B21S2.DE08')})

 /*
 "What milk is being given as a replacement feed?":
 
 */
 define "EmCare.B21S2.DE09":
   B.HasObs({c('EmCare.B21S2.DE09')})

 /*
 "What milk is being given as a replacement feed?":
 
 */
 define "What milk is being given as a replacement feed?":
   B.HasObs({c('EmCare.B21S2.DE09')})

 /*
 "How many replacement feeds during the day and night (24 hours)?":
 
 */
 define "EmCare.B21S2.DE12":
   B.HasObs({c('EmCare.B21S2.DE12')})

 /*
 "How many replacement feeds during the day and night (24 hours)?":
 
 */
 define "How many replacement feeds during the day and night (24 hours)?":
   B.HasObs({c('EmCare.B21S2.DE12')})

 /*
 "Do you give any breastmilk at all?":
 
 */
 define "EmCare.B21S2.DE27":
   B.HasObs({c('EmCare.B21S2.DE27')})

 /*
 "Do you give any breastmilk at all?":
 
 */
 define "Do you give any breastmilk at all?":
   B.HasObs({c('EmCare.B21S2.DE27')})

 /*
 "Ulcers or White Patches in Mouth":
 
 */
 define "EmCare.B21S2.DE30":
   B.HasObs({c('EmCare.B21S2.DE30')})

 /*
 "Ulcers or White Patches in Mouth":
 
 */
 define "Ulcers or White Patches in Mouth":
   B.HasObs({c('EmCare.B21S2.DE30')})

 /*
 "Unable to check if Ulcers or White Patches in Mouth":
 
 */
 define "EmCare.B21S2.DE31":
   B.HasObs({c('EmCare.B21S2.DE31')})

 /*
 "Unable to check if Ulcers or White Patches in Mouth":
 
 */
 define "Unable to check if Ulcers or White Patches in Mouth":
   B.HasObs({c('EmCare.B21S2.DE31')})

 /*
 "Convulsions in this Illness":
 
 */
 define "EmCare.B18S1.DE01":
   B.HasObs({c('EmCare.B18S1.DE01')})

 /*
 "Convulsions in this Illness":
 
 */
 define "Convulsions in this Illness":
   B.HasObs({c('EmCare.B18S1.DE01')})

 /*
 "Difficulty with Feeding":
 
 */
 define "EmCare.B18S1.DE02":
   B.HasObs({c('EmCare.B18S1.DE02')})

 /*
 "Difficulty with Feeding":
 
 */
 define "Difficulty with Feeding":
   B.HasObs({c('EmCare.B18S1.DE02')})

 /*
 "Diarrhoea":
 
 */
 define "EmCare.B20S1.DE01":
   B.HasObs({c('EmCare.B20S1.DE01')})

 /*
 "Diarrhoea":
 
 */
 define "Diarrhoea":
   B.HasObs({c('EmCare.B20S1.DE01')})

 /*
 "Mother's HIV Status":
 
 */
 define "EmCare.B21S1.DE01":
   B.HasObs({c('EmCare.B21S1.DE01')})

 /*
 "Mother's HIV Status":
 
 */
 define "Mother's HIV Status":
   B.HasObs({c('EmCare.B21S1.DE01')})

 /*
 "Breastfed":
 
 */
 define "EmCare.B21S1.DE06":
   B.HasObs({c('EmCare.B21S1.DE06')})

 /*
 "Breastfed":
 
 */
 define "Breastfed":
   B.HasObs({c('EmCare.B21S1.DE06')})

 /*
 "Respiratory Rate":
 
 */
 define "EmCare.B10S2.DE01":
   B.HasObs({c('EmCare.B10S2.DE01')})

 /*
 "Respiratory Rate":
 
 */
 define "Respiratory Rate":
   B.HasObs({c('EmCare.B10S2.DE01')})

 /*
 "Generalised or Localised Skin Problem":
 
 */
 define "EmCare.B14S2.DE06":
   B.HasObs({c('EmCare.B14S2.DE06')})

 /*
 "Generalised or Localised Skin Problem":
 
 */
 define "Generalised or Localised Skin Problem":
   B.HasObs({c('EmCare.B14S2.DE06')})

 /*
 "Type of Skin Problem":
 
 */
 define "EmCare.B14S2.DE13":
   B.HasObs({c('EmCare.B14S2.DE13')})

 /*
 "Type of Skin Problem":
 
 */
 define "Type of Skin Problem":
   B.HasObs({c('EmCare.B14S2.DE13')})

 /*
 "Signs of Severe Impetigo / Folliculitis":
 
 */
 define "EmCare.B14S2.DE26":
   B.HasObs({c('EmCare.B14S2.DE26')})

 /*
 "Signs of Severe Impetigo / Folliculitis":
 
 */
 define "Signs of Severe Impetigo / Folliculitis":
   B.HasObs({c('EmCare.B14S2.DE26')})

 /*
 "Add a Skin or Mouth or Eye Problem":
 
 */
 define "EmCare.B14S2.DE43":
   B.HasObs({c('EmCare.B14S2.DE43')})

 /*
 "Add a Skin or Mouth or Eye Problem":
 
 */
 define "Add a Skin or Mouth or Eye Problem":
   B.HasObs({c('EmCare.B14S2.DE43')})

 