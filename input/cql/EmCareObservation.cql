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
  B.HasObs('EmCare.B3.DE05')
define "emcare.b3.de05":
  B.HasObs('EmCare.B3.DE05')

/*"convulsing now"*/
define "convulsing now":
  B.HasObs('EmCare.B7.DE02')
define "emcare.b7.de02":
  B.HasObs('EmCare.B7.DE02')

/*"convulsion(s) in this illness"*/
define "convulsion(s) in this illness":
  B.HasObs('EmCare.B7.DE03')
define "emcare.b7.de03":
  B.HasObs('EmCare.B7.DE03')

/*"unconscious or lethargic"*/
define "unconscious or lethargic":
  B.HasObs('EmCare.B7.DE08b')
define "emcare.b7.de08b":
  B.HasObs('EmCare.B7.DE08b')

/*"unconscious"*/
define "unconscious":
  B.HasObs('EmCare.B7.DE08')
define "emcare.b7.de08":
  B.HasObs('EmCare.B7.DE08')

/*"lethargic"*/
define "lethargic":
  B.HasObs('EmCare.B7.DE08a')
define "emcare.b7.de08a":
  B.HasObs('EmCare.B7.DE08a')

/*"not able to drink or breastfeed"*/
define "not able to drink or breastfeed":
  B.HasObs('EmCare.B7.DE09')
define "emcare.b7.de09":
  B.HasObs('EmCare.B7.DE09')

/*"vomiting everything"*/
define "vomiting everything":
  B.HasObs('EmCare.B7.DE10')
define "emcare.b7.de10":
  B.HasObs('EmCare.B7.DE10')

/*"continue to assess sick child"*/
define "continue to assess sick child":
  B.HasObs('EmCare.B7-B8-B9.DE01')
define "emcare.b7-b8-b9.de01":
  B.HasObs('EmCare.B7-B8-B9.DE01')

/*"axillary temperature"*/
define "axillary temperature":
  B.HasObs('EmCare.B6.DE01')
define "emcare.b6.de01":
  B.HasObs('EmCare.B6.DE01')

/*"hot to touch"*/
define "hot to touch":
  B.HasObs('EmCare.B6.DE05')
define "emcare.b6.de05":
  B.HasObs('EmCare.B6.DE05')

/*"weight"*/
define "weight":
  B.HasObs('EmCare.B6.DE06')
define "emcare.b6.de06":
  B.HasObs('EmCare.B6.DE06')

/*"weight cannot be measured"*/
define "weight cannot be measured":
  B.HasObs('EmCare.B6.DE07')
define "emcare.b6.de07":
  B.HasObs('EmCare.B6.DE07')

/*"estimated weight"*/
define "estimated weight":
  B.HasObs('EmCare.B6.DE08')
define "emcare.b6.de08":
  B.HasObs('EmCare.B6.DE08')

/*"height"*/
define "height":
  B.HasObs('EmCare.B6.DE09')
define "emcare.b6.de09":
  B.HasObs('EmCare.B6.DE09')

/*"height cannot be measured"*/
define "height cannot be measured":
  B.HasObs('EmCare.B6.DE11')
define "emcare.b6.de11":
  B.HasObs('EmCare.B6.DE11')

/*"length"*/
define "length":
  B.HasObs('EmCare.B6.DE12')
define "emcare.b6.de12":
  B.HasObs('EmCare.B6.DE12')

/*"weight for height (wfh) z scores"*/
define "weight for height (wfh) z scores":
  B.HasObs('EmCare.B6.DE14')
define "emcare.b6.de14":
  B.HasObs('EmCare.B6.DE14')

/*"weight for length (wfl) z scores"*/
define "weight for length (wfl) z scores":
  B.HasObs('EmCare.B6.DE15')
define "emcare.b6.de15":
  B.HasObs('EmCare.B6.DE15')

/*"weight for age (wfa) z scores"*/
define "weight for age (wfa) z scores":
  B.HasObs('EmCare.B6.DE16')
define "emcare.b6.de16":
  B.HasObs('EmCare.B6.DE16')

/*"muac (mid upper arm circumference)"*/
define "muac (mid upper arm circumference)":
  B.HasObs('EmCare.B6.DE17')
define "emcare.b6.de17":
  B.HasObs('EmCare.B6.DE17')

/*"muac cannot be measured"*/
define "muac cannot be measured":
  B.HasObs('EmCare.B6.DE17a')
define "emcare.b6.de17a":
  B.HasObs('EmCare.B6.DE17a')

/*"visually assess for whether underweight (for drug dose calculation)"*/
define "visually assess for whether underweight (for drug dose calculation)":
  B.HasObs('EmCare.B6.DE18')
define "emcare.b6.de18":
  B.HasObs('EmCare.B6.DE18')

/*"convulsions in this illness"*/
define "convulsions in this illness":
  B.HasObs('EmCare.B18S1.DE01')
define "emcare.b18s1.de01":
  B.HasObs('EmCare.B18S1.DE01')

/*"difficulty with feeding"*/
define "difficulty with feeding":
  B.HasObs('EmCare.B18S1.DE02')
define "emcare.b18s1.de02":
  B.HasObs('EmCare.B18S1.DE02')

/*"diarrhoea"*/
define "diarrhoea":
  B.HasObs('EmCare.B20S1.DE01')
define "emcare.b20s1.de01":
  B.HasObs('EmCare.B20S1.DE01')

/*"mother's hiv status"*/
define "mother's hiv status":
  B.HasObs('EmCare.B21S1.DE01')
define "emcare.b21s1.de01":
  B.HasObs('EmCare.B21S1.DE01')

/*"breastfed"*/
define "breastfed":
  B.HasObs('EmCare.B21S1.DE06')
define "emcare.b21s1.de06":
  B.HasObs('EmCare.B21S1.DE06')

/*"measured temperature"*/
define "measured temperature":
  B.HasObs('EmCare.B18S2.DE01')
define "emcare.b18s2.de01":
  B.HasObs('EmCare.B18S2.DE01')

/*"respiratory rate first count"*/
define "respiratory rate first count":
  B.HasObs('EmCare.B18S2.DE04')
define "emcare.b18s2.de04":
  B.HasObs('EmCare.B18S2.DE04')

/*"respiratory rate second count"*/
define "respiratory rate second count":
  B.HasObs('EmCare.B18S2.DE05')
define "emcare.b18s2.de05":
  B.HasObs('EmCare.B18S2.DE05')

/*"fast breathing"*/
define "fast breathing":
  B.HasObs('EmCare.B18S2.DE06')
define "emcare.b18s2.de06":
  B.HasObs('EmCare.B18S2.DE06')

/*"severe chest indrawing"*/
define "severe chest indrawing":
  B.HasObs('EmCare.B18S2.DE07')
define "emcare.b18s2.de07":
  B.HasObs('EmCare.B18S2.DE07')

/*"movements"*/
define "movements":
  B.HasObs('EmCare.B18S2.DE08')
define "emcare.b18s2.de08":
  B.HasObs('EmCare.B18S2.DE08')

/*"umbilicus red or pus draining"*/
define "umbilicus red or pus draining":
  B.HasObs('EmCare.B18S2.DE12')
define "emcare.b18s2.de12":
  B.HasObs('EmCare.B18S2.DE12')

/*"skin pustules"*/
define "skin pustules":
  B.HasObs('EmCare.B18S2.DE13')
define "emcare.b18s2.de13":
  B.HasObs('EmCare.B18S2.DE13')

/*"yellow skin"*/
define "yellow skin":
  B.HasObs('EmCare.B19S2.DE01')
define "emcare.b19s2.de01":
  B.HasObs('EmCare.B19S2.DE01')

/*"yellow palms or yellow soles"*/
define "yellow palms or yellow soles":
  B.HasObs('EmCare.B19S2.DE02')
define "emcare.b19s2.de02":
  B.HasObs('EmCare.B19S2.DE02')

/*"jaundice (yellow skin or palms or soles)"*/
define "jaundice (yellow skin or palms or soles)":
  B.HasObs('EmCare.B19S2.DE03')
define "emcare.b19s2.de03":
  B.HasObs('EmCare.B19S2.DE03')

/*"sunken eyes"*/
define "sunken eyes":
  B.HasObs('EmCare.B20S2.DE01')
define "emcare.b20s2.de01":
  B.HasObs('EmCare.B20S2.DE01')

/*"skin pinch of abdomen"*/
define "skin pinch of abdomen":
  B.HasObs('EmCare.B20S2.DE02')
define "emcare.b20s2.de02":
  B.HasObs('EmCare.B20S2.DE02')

/*"restless and irritable"*/
define "restless and irritable":
  B.HasObs('EmCare.B20S2.DE06')
define "emcare.b20s2.de06":
  B.HasObs('EmCare.B20S2.DE06')

/*"weight status"*/
define "weight status":
  B.HasObs('EmCare.B21S2.DE01')
define "emcare.b21s2.de01":
  B.HasObs('EmCare.B21S2.DE01')

/*"breastfed how many times in 24 hours?"*/
define "breastfed how many times in 24 hours?":
  B.HasObs('EmCare.B21S2.DE05')
define "emcare.b21s2.de05":
  B.HasObs('EmCare.B21S2.DE05')

/*"young infant receives other food or fluids"*/
define "young infant receives other food or fluids":
  B.HasObs('EmCare.B21S2.DE08')
define "emcare.b21s2.de08":
  B.HasObs('EmCare.B21S2.DE08')

/*"what milk is being given as a replacement feed?"*/
define "what milk is being given as a replacement feed?":
  B.HasObs('EmCare.B21S2.DE09')
define "emcare.b21s2.de09":
  B.HasObs('EmCare.B21S2.DE09')

/*"how many replacement feeds during the day and night (24 hours)?"*/
define "how many replacement feeds during the day and night (24 hours)?":
  B.HasObs('EmCare.B21S2.DE12')
define "emcare.b21s2.de12":
  B.HasObs('EmCare.B21S2.DE12')

/*"do you give any breastmilk at all?"*/
define "do you give any breastmilk at all?":
  B.HasObs('EmCare.B21S2.DE27')
define "emcare.b21s2.de27":
  B.HasObs('EmCare.B21S2.DE27')

/*"ulcers or white patches in mouth"*/
define "ulcers or white patches in mouth":
  B.HasObs('EmCare.B21S2.DE30')
define "emcare.b21s2.de30":
  B.HasObs('EmCare.B21S2.DE30')

/*"unable to check if ulcers or white patches in mouth"*/
define "unable to check if ulcers or white patches in mouth":
  B.HasObs('EmCare.B21S2.DE31')
define "emcare.b21s2.de31":
  B.HasObs('EmCare.B21S2.DE31')

/*"cough"*/
define "cough":
  B.HasObs('EmCare.B10S1.DE05')
define "emcare.b10s1.de05":
  B.HasObs('EmCare.B10S1.DE05')

/*"cough for how long?"*/
define "cough for how long?":
  B.HasObs('EmCare.B10S1.DE06')
define "emcare.b10s1.de06":
  B.HasObs('EmCare.B10S1.DE06')

/*"difficulty breathing"*/
define "difficulty breathing":
  B.HasObs('EmCare.B10S1.DE01')
define "emcare.b10s1.de01":
  B.HasObs('EmCare.B10S1.DE01')

/*"difficulty breathing for how long?"*/
define "difficulty breathing for how long?":
  B.HasObs('EmCare.B10S1.DE02')
define "emcare.b10s1.de02":
  B.HasObs('EmCare.B10S1.DE02')

/*"diarrhoea for how long?"*/
define "diarrhoea for how long?":
  B.HasObs('EmCare.B11S1.DE02')
define "emcare.b11s1.de02":
  B.HasObs('EmCare.B11S1.DE02')

/*"blood in the stool in this illness"*/
define "blood in the stool in this illness":
  B.HasObs('EmCare.B11S1.DE05')
define "emcare.b11s1.de05":
  B.HasObs('EmCare.B11S1.DE05')

/*"measured fever"*/
define "measured fever":
  B.HasObs('EmCare.B12S1.DE01')
define "emcare.b12s1.de01":
  B.HasObs('EmCare.B12S1.DE01')

/*"fever reported"*/
define "fever reported":
  B.HasObs('EmCare.B12S1.DE02')
define "emcare.b12s1.de02":
  B.HasObs('EmCare.B12S1.DE02')

/*"fever for how long?"*/
define "fever for how long?":
  B.HasObs('EmCare.B12S1.DE03')
define "emcare.b12s1.de03":
  B.HasObs('EmCare.B12S1.DE03')

/*"fever"*/
define "fever":
  B.HasObs('EmCare.B.G.DE06')
define "emcare.b.g.de06":
  B.HasObs('EmCare.B.G.DE06')

/*"has fever been present every day since the fever started?"*/
define "has fever been present every day since the fever started?":
  B.HasObs('EmCare.B12S1.DE06')
define "emcare.b12s1.de06":
  B.HasObs('EmCare.B12S1.DE06')

/*"ear problem"*/
define "ear problem":
  B.HasObs('EmCare.B13S1.DE01')
define "emcare.b13s1.de01":
  B.HasObs('EmCare.B13S1.DE01')

/*"ear pain"*/
define "ear pain":
  B.HasObs('EmCare.B13S1.DE02')
define "emcare.b13s1.de02":
  B.HasObs('EmCare.B13S1.DE02')

/*"ear discharge"*/
define "ear discharge":
  B.HasObs('EmCare.B13S1.DE03')
define "emcare.b13s1.de03":
  B.HasObs('EmCare.B13S1.DE03')

/*"ear discharge for how long?"*/
define "ear discharge for how long?":
  B.HasObs('EmCare.B13S1.DE04')
define "emcare.b13s1.de04":
  B.HasObs('EmCare.B13S1.DE04')

/*"eye problem"*/
define "eye problem":
  B.HasObs('EmCare.B14S1.DE03')
define "emcare.b14s1.de03":
  B.HasObs('EmCare.B14S1.DE03')

/*"skin problem"*/
define "skin problem":
  B.HasObs('EmCare.B14S1.DE01')
define "emcare.b14s1.de01":
  B.HasObs('EmCare.B14S1.DE01')

/*"itchy skin"*/
define "itchy skin":
  B.HasObs('EmCare.B14S1.DE02')
define "emcare.b14s1.de02":
  B.HasObs('EmCare.B14S1.DE02')

/*"chest indrawing"*/
define "chest indrawing":
  B.HasObs('EmCare.B10S2.DE03')
define "emcare.b10s2.de03":
  B.HasObs('EmCare.B10S2.DE03')

/*"stridor in a calm child"*/
define "stridor in a calm child":
  B.HasObs('EmCare.B10S2.DE04')
define "emcare.b10s2.de04":
  B.HasObs('EmCare.B10S2.DE04')

/*"wheezing"*/
define "wheezing":
  B.HasObs('EmCare.B10S2.DE05')
define "emcare.b10s2.de05":
  B.HasObs('EmCare.B10S2.DE05')

/*"recurrent wheeze"*/
define "recurrent wheeze":
  B.HasObs('EmCare.B10S2.DE06')
define "emcare.b10s2.de06":
  B.HasObs('EmCare.B10S2.DE06')

/*"oxygen saturation"*/
define "oxygen saturation":
  B.HasObs('EmCare.B10S2.DE07')
define "emcare.b10s2.de07":
  B.HasObs('EmCare.B10S2.DE07')

/*"oxygen saturation < 90 %"*/
define "oxygen saturation < 90 %":
  B.HasObs('EmCare.B10S2.DE08')
define "emcare.b10s2.de08":
  B.HasObs('EmCare.B10S2.DE08')

/*"throat problem"*/
define "throat problem":
  B.HasObs('EmCare.B17S1.DE01')
define "emcare.b17s1.de01":
  B.HasObs('EmCare.B17S1.DE01')

/*"specify throat problem"*/
define "specify throat problem":
  B.HasObs('EmCare.B17S1.DE02')
define "emcare.b17s1.de02":
  B.HasObs('EmCare.B17S1.DE02')

/*"enlarged lymph nodes on front of neck"*/
define "enlarged lymph nodes on front of neck":
  B.HasObs('EmCare.B17S1.DE06')
define "emcare.b17s1.de06":
  B.HasObs('EmCare.B17S1.DE06')

/*"ability to swallow"*/
define "ability to swallow":
  B.HasObs('EmCare.B17S1.DE07')
define "emcare.b17s1.de07":
  B.HasObs('EmCare.B17S1.DE07')

/*"tender swelling behind the ear"*/
define "tender swelling behind the ear":
  B.HasObs('EmCare.B13S2.DE01')
define "emcare.b13s2.de01":
  B.HasObs('EmCare.B13S2.DE01')

/*"pus seen draining from the ear"*/
define "pus seen draining from the ear":
  B.HasObs('EmCare.B13S2.DE02')
define "emcare.b13s2.de02":
  B.HasObs('EmCare.B13S2.DE02')

/*"pus seen draining from the ear for how long?"*/
define "pus seen draining from the ear for how long?":
  B.HasObs('EmCare.B13S2.DE03')
define "emcare.b13s2.de03":
  B.HasObs('EmCare.B13S2.DE03')

/*"stiff neck"*/
define "stiff neck":
  B.HasObs('EmCare.B12S2.DE01')
define "emcare.b12s2.de01":
  B.HasObs('EmCare.B12S2.DE01')

/*"runny nose"*/
define "runny nose":
  B.HasObs('EmCare.B12S2.DE05')
define "emcare.b12s2.de05":
  B.HasObs('EmCare.B12S2.DE05')

/*"red eyes"*/
define "red eyes":
  B.HasObs('EmCare.B14S2.DE01')
define "emcare.b14s2.de01":
  B.HasObs('EmCare.B14S2.DE01')

/*"pus draining from eye"*/
define "pus draining from eye":
  B.HasObs('EmCare.B14S2.DE02')
define "emcare.b14s2.de02":
  B.HasObs('EmCare.B14S2.DE02')

/*"clouding of the cornea"*/
define "clouding of the cornea":
  B.HasObs('EmCare.B14S2.DE03')
define "emcare.b14s2.de03":
  B.HasObs('EmCare.B14S2.DE03')

/*"is clouding of the cornea a new problem"*/
define "is clouding of the cornea a new problem":
  B.HasObs('EmCare.B14S2.DE04')
define "emcare.b14s2.de04":
  B.HasObs('EmCare.B14S2.DE04')

/*"has clouding of the cornea previously been treated"*/
define "has clouding of the cornea previously been treated":
  B.HasObs('EmCare.B14S2.DE05')
define "emcare.b14s2.de05":
  B.HasObs('EmCare.B14S2.DE05')

/*"generalised or localised skin problem"*/
define "generalised or localised skin problem":
  B.HasObs('EmCare.B14S2.DE06')
define "emcare.b14s2.de06":
  B.HasObs('EmCare.B14S2.DE06')

/*"measles rash"*/
define "measles rash":
  B.HasObs('EmCare.B14S2.DE10')
define "emcare.b14s2.de10":
  B.HasObs('EmCare.B14S2.DE10')

/*"measles within the last 3 months"*/
define "measles within the last 3 months":
  B.HasObs('EmCare.B14S2.DE11')
define "emcare.b14s2.de11":
  B.HasObs('EmCare.B14S2.DE11')

/*"blisters, sores or pustules"*/
define "blisters, sores or pustules":
  B.HasObs('EmCare.B14S2.DE12')
define "emcare.b14s2.de12":
  B.HasObs('EmCare.B14S2.DE12')

/*"type of skin problem"*/
define "type of skin problem":
  B.HasObs('EmCare.B14S2.DE13')
define "emcare.b14s2.de13":
  B.HasObs('EmCare.B14S2.DE13')

/*"scalp infection (tinea capitis)"*/
define "scalp infection (tinea capitis)":
  B.HasObs('EmCare.B14S2.DE19a')
define "emcare.b14s2.de19a":
  B.HasObs('EmCare.B14S2.DE19a')

/*"severe rash"*/
define "severe rash":
  B.HasObs('EmCare.B14S2.DE22A')
define "emcare.b14s2.de22a":
  B.HasObs('EmCare.B14S2.DE22A')

/*"disseminated herpes zoster"*/
define "disseminated herpes zoster":
  B.HasObs('EmCare.B14S2.DE23a')
define "emcare.b14s2.de23a":
  B.HasObs('EmCare.B14S2.DE23a')

/*"eye involvement"*/
define "eye involvement":
  B.HasObs('EmCare.B14S2.DE24')
define "emcare.b14s2.de24":
  B.HasObs('EmCare.B14S2.DE24')

/*"skin infection extends to muscle"*/
define "skin infection extends to muscle":
  B.HasObs('EmCare.B14S2.DE30')
define "emcare.b14s2.de30":
  B.HasObs('EmCare.B14S2.DE30')

/*"extensive impetigo lesions"*/
define "extensive impetigo lesions":
  B.HasObs('EmCare.B14S2.DE30b')
define "emcare.b14s2.de30b":
  B.HasObs('EmCare.B14S2.DE30b')

/*"extensive molluscum lesions"*/
define "extensive molluscum lesions":
  B.HasObs('EmCare.B14S2.DE31a')
define "emcare.b14s2.de31a":
  B.HasObs('EmCare.B14S2.DE31a')

/*"molluscum lesions close to the eye"*/
define "molluscum lesions close to the eye":
  B.HasObs('EmCare.B14S2.DE31b')
define "emcare.b14s2.de31b":
  B.HasObs('EmCare.B14S2.DE31b')

/*"extensive warts"*/
define "extensive warts":
  B.HasObs('EmCare.B14S2.DE32a')
define "emcare.b14s2.de32a":
  B.HasObs('EmCare.B14S2.DE32a')

/*"severe seborrhoeic dermatitis"*/
define "severe seborrhoeic dermatitis":
  B.HasObs('EmCare.B14S2.DE34')
define "emcare.b14s2.de34":
  B.HasObs('EmCare.B14S2.DE34')

/*"secondary bacterial infection of eczema"*/
define "secondary bacterial infection of eczema":
  B.HasObs('EmCare.B14S2.DE36a')
define "emcare.b14s2.de36a":
  B.HasObs('EmCare.B14S2.DE36a')

/*"severe acute moist or weeping eczema"*/
define "severe acute moist or weeping eczema":
  B.HasObs('EmCare.B14S2.DE36b')
define "emcare.b14s2.de36b":
  B.HasObs('EmCare.B14S2.DE36b')

/*"secondary herpes infection of eczema (eczema herpeticum)"*/
define "secondary herpes infection of eczema (eczema herpeticum)":
  B.HasObs('EmCare.B14S2.DE36c')
define "emcare.b14s2.de36c":
  B.HasObs('EmCare.B14S2.DE36c')

/*"oral sores or mouth ulcers"*/
define "oral sores or mouth ulcers":
  B.HasObs('EmCare.B14S2.DE38')
define "emcare.b14s2.de38":
  B.HasObs('EmCare.B14S2.DE38')

/*"add a skin or mouth or eye problem"*/
define "add a skin or mouth or eye problem":
  B.HasObs('EmCare.B14S2.DE43')
define "emcare.b14s2.de43":
  B.HasObs('EmCare.B14S2.DE43')

/*"palmar pallor"*/
define "palmar pallor":
  B.HasObs('EmCare.B15S2.DE01')
define "emcare.b15s2.de01":
  B.HasObs('EmCare.B15S2.DE01')

/*"mucous membrane pallor"*/
define "mucous membrane pallor":
  B.HasObs('EmCare.B15S2.DE09')
define "emcare.b15s2.de09":
  B.HasObs('EmCare.B15S2.DE09')

/*"oral fluid test results"*/
define "oral fluid test results":
  B.HasObs('EmCare.B22.DE08')
define "emcare.b22.de08":
  B.HasObs('EmCare.B22.DE08')

/*"unable to perform oral fluid test"*/
define "unable to perform oral fluid test":
  B.HasObs('EmCare.B22.DE14')
define "emcare.b22.de14":
  B.HasObs('EmCare.B22.DE14')

/*"completely unable to drink or vomits immediately / everything"*/
define "completely unable to drink or vomits immediately / everything":
  B.HasObs('EmCare.B22.DE14a')
define "emcare.b22.de14a":
  B.HasObs('EmCare.B22.DE14a')

/*"has the child had anything to drink today?"*/
define "has the child had anything to drink today?":
  B.HasObs('EmCare.B22.DE15')
define "emcare.b22.de15":
  B.HasObs('EmCare.B22.DE15')

/*"how did the child last drink"*/
define "how did the child last drink":
  B.HasObs('EmCare.B22.DE16')
define "emcare.b22.de16":
  B.HasObs('EmCare.B22.DE16')

/*"respiratory rate"*/
define "respiratory rate":
  B.HasObs('EmCare.B22.DE01')
define "emcare.b22.de01":
  B.HasObs('EmCare.B22.DE01')

/*"unable to perform respiratory rate at this time"*/
define "unable to perform respiratory rate at this time":
  B.HasObs('EmCare.B22.DE02')
define "emcare.b22.de02":
  B.HasObs('EmCare.B22.DE02')

/*"respiratory rate second count not possible"*/
define "respiratory rate second count not possible":
  B.HasObs('EmCare.B22.DE05')
define "emcare.b22.de05":
  B.HasObs('EmCare.B22.DE05')

/*"inhaled bronchodilator trial not feasible or available"*/
define "inhaled bronchodilator trial not feasible or available":
  B.HasObs('EmCare.B22.DE22')
define "emcare.b22.de22":
  B.HasObs('EmCare.B22.DE22')

/*"chest indrawing (post inhaled bronchodilator trial)"*/
define "chest indrawing (post inhaled bronchodilator trial)":
  B.HasObs('EmCare.B22.DE18')
define "emcare.b22.de18":
  B.HasObs('EmCare.B22.DE18')

/*"respiratory rate (post inhaled bronchodilator trial)"*/
define "respiratory rate (post inhaled bronchodilator trial)":
  B.HasObs('EmCare.B22.DE19')
define "emcare.b22.de19":
  B.HasObs('EmCare.B22.DE19')

/*"fast breathing (post inhaled bronchodilator trial)"*/
define "fast breathing (post inhaled bronchodilator trial)":
  B.HasObs('EmCare.B22.DE20')
define "emcare.b22.de20":
  B.HasObs('EmCare.B22.DE20')

/*"no fast breathing and no chest indrawing (post inhaled bronchodilator trial)"*/
define "no fast breathing and no chest indrawing (post inhaled bronchodilator trial)":
  B.HasObs('EmCare.B22.DE21')
define "emcare.b22.de21":
  B.HasObs('EmCare.B22.DE21')

/*"breastfeeding assessment"*/
define "breastfeeding assessment":
  B.HasObs('EmCare.B22.DE27')
define "emcare.b22.de27":
  B.HasObs('EmCare.B22.DE27')

/*"breastfed in the previous hour"*/
define "breastfed in the previous hour":
  B.HasObs('EmCare.B22.DE28')
define "emcare.b22.de28":
  B.HasObs('EmCare.B22.DE28')

/*"mother able to wait until young infant is willing to breastfeed again"*/
define "mother able to wait until young infant is willing to breastfeed again":
  B.HasObs('EmCare.B22.DE29')
define "emcare.b22.de29":
  B.HasObs('EmCare.B22.DE29')

/*"mother reports difficulty breastfeeding"*/
define "mother reports difficulty breastfeeding":
  B.HasObs('EmCare.B22.DE30')
define "emcare.b22.de30":
  B.HasObs('EmCare.B22.DE30')

/*"chin touching breast"*/
define "chin touching breast":
  B.HasObs('EmCare.B22.DE31')
define "emcare.b22.de31":
  B.HasObs('EmCare.B22.DE31')

/*"mouth wide open"*/
define "mouth wide open":
  B.HasObs('EmCare.B22.DE32')
define "emcare.b22.de32":
  B.HasObs('EmCare.B22.DE32')

/*"lower lip turned outwards"*/
define "lower lip turned outwards":
  B.HasObs('EmCare.B22.DE33')
define "emcare.b22.de33":
  B.HasObs('EmCare.B22.DE33')

/*"more areola visible above than below the mouth"*/
define "more areola visible above than below the mouth":
  B.HasObs('EmCare.B22.DE34')
define "emcare.b22.de34":
  B.HasObs('EmCare.B22.DE34')

/*"slow deep sucks, sometimes pausing"*/
define "slow deep sucks, sometimes pausing":
  B.HasObs('EmCare.B22.DE35')
define "emcare.b22.de35":
  B.HasObs('EmCare.B22.DE35')

/*"breastfeeding assessment results"*/
define "breastfeeding assessment results":
  B.HasObs('EmCare.B22.DE36')
define "emcare.b22.de36":
  B.HasObs('EmCare.B22.DE36')

/*"breastfeeding assessment not possible"*/
define "breastfeeding assessment not possible":
  B.HasObs('EmCare.B22.DE41')
define "emcare.b22.de41":
  B.HasObs('EmCare.B22.DE41')

/*"difficulty breastfeeding reported"*/
define "difficulty breastfeeding reported":
  B.HasObs('EmCare.B22.DE42')
define "emcare.b22.de42":
  B.HasObs('EmCare.B22.DE42')

/*"no difficulty breastfeeding reported"*/
define "no difficulty breastfeeding reported":
  B.HasObs('EmCare.B22.DE43')
define "emcare.b22.de43":
  B.HasObs('EmCare.B22.DE43')

/*"difficulty breastfeeding observed"*/
define "difficulty breastfeeding observed":
  B.HasObs('EmCare.B22.DE44')
define "emcare.b22.de44":
  B.HasObs('EmCare.B22.DE44')

/*"no difficulty breastfeeding observed"*/
define "no difficulty breastfeeding observed":
  B.HasObs('EmCare.B22.DE45')
define "emcare.b22.de45":
  B.HasObs('EmCare.B22.DE45')

/*"hemoglobin (hb) g/dl"*/
define "hemoglobin (hb) g/dl":
  B.HasObs('EmCare.B22.DE81')
define "emcare.b22.de81":
  B.HasObs('EmCare.B22.DE81')

/*"hemoglobin test not available"*/
define "hemoglobin test not available":
  B.HasObs('EmCare.B22.DE82')
define "emcare.b22.de82":
  B.HasObs('EmCare.B22.DE82')

/*"second temperature measurement feasible"*/
define "second temperature measurement feasible":
  B.HasObs('EmCare.B22.DE46')
define "emcare.b22.de46":
  B.HasObs('EmCare.B22.DE46')

/*"axillary temperature (second measurement)"*/
define "axillary temperature (second measurement)":
  B.HasObs('EmCare.B22.DE47')
define "emcare.b22.de47":
  B.HasObs('EmCare.B22.DE47')

/*"prefer to take rectal temperature"*/
define "prefer to take rectal temperature":
  B.HasObs('EmCare.B22.DE48')
define "emcare.b22.de48":
  B.HasObs('EmCare.B22.DE48')

/*"rectal temperature (second measurement)"*/
define "rectal temperature (second measurement)":
  B.HasObs('EmCare.B22.DE49')
define "emcare.b22.de49":
  B.HasObs('EmCare.B22.DE49')

/*"measured fever (second measurement)"*/
define "measured fever (second measurement)":
  B.HasObs('EmCare.B22.DE50')
define "emcare.b22.de50":
  B.HasObs('EmCare.B22.DE50')

/*"measured low body temperature (second measurement)"*/
define "measured low body temperature (second measurement)":
  B.HasObs('EmCare.B22.DE51')
define "emcare.b22.de51":
  B.HasObs('EmCare.B22.DE51')

/*"no measured fever or
no low body temperature"*/
define "no measured fever orno low body temperature":
  B.HasObs('EmCare.B22.DE52')
define "emcare.b22.de52":
  B.HasObs('EmCare.B22.DE52')

/*"no - do not add a skin or mouth or eye problem"*/
define "no - do not add a skin or mouth or eye problem":
  B.HasObs('EmCare.B14S2.DE47')
define "emcare.b14s2.de47":
  B.HasObs('EmCare.B14S2.DE47')

