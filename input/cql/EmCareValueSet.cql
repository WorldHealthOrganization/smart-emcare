/*
@author: Patrick Delcroix
@description: This library is part of the project EmCare
*/
library EmCareValueSet version '0.99.99'
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers 
include EmCareBase version '0.99.99' called B


context Patient
      
define "Female":
  B.c('EmCare.A.DE17')

 define "Male":
  B.c('EmCare.A.DE18')

 define "Not Specified":
  B.c('EmCare.A.DE19')

 define "Estimated age in years/months for child (2 months or older)":
  B.c('EmCare.A.DE13')

 define "Estimated age in weeks/days for young infant (under 2 months old)":
  B.c('EmCare.A.DE14')

 define "Estimated Date of Birth":
  B.c('EmCare.A.DE15')

 define "Mother":
  B.c('EmCare.A.DE25')

 define "Father":
  B.c('EmCare.A.DE26')

 define "Sibling":
  B.c('EmCare.A.DE27')

 define "Extended family":
  B.c('EmCare.A.DE28')

 define "Legal Guardian":
  B.c('EmCare.A.DE29')

 define "Not Related":
  B.c('EmCare.A.DE30')

 define "Planned":
  B.c('EmCare.B2.DE02')

 define "Unplanned":
  B.c('EmCare.B2.DE03')

 define "Life Threatening Emergency":
  B.c('EmCare.B3.DE02')

 define "Sick Child":
  B.c('EmCare.B3.DE03')

 define "Well Child":
  B.c('EmCare.B3.DE04')

 define "Yes":
  B.c('yes')

 define "No":
  B.c('no')

 define "Unknown":
  B.c('EmCare.yesnox.unknown')

 define "New Consultation":
  B.c('EmCare.B3.DE07')

 define "Follow Up":
  B.c('EmCare.B3.DE08')

 define "Less than 14 days":
  B.c('EmCare.B10S1.DE07')

 define "14 days or More":
  B.c('EmCare.B10S1.DE08')

 define "Less than 7 days":
  B.c('EmCare.B12S1.DE04')

 define "7 Days or more":
  B.c('EmCare.B12S1.DE05')

 define "14 days or more":
  B.c('EmCare.B13S1.DE06')

 define "Oxygen saturation not measured":
  B.c('EmCare.B10S2.DE09')

 define "One Convulsion":
  B.c('EmCare.B7.DE05')

 define "Two or more convulsions":
  B.c('EmCare.B7.DE06')

 define "Vomits immediately / everything":
  B.c('EmCare.B7.DE15')

 define "Completely unable to drink":
  B.c('EmCare.B7.DE16')

 define "Drinks poorly":
  B.c('EmCare.B7.DE17')

 define "Drinks eagerly / thirstily":
  B.c('EmCare.B7.DE18')

 define "Drinks normally":
  B.c('EmCare.B7.DE19')

 define "Unable to perform test - assumes vomits everything/unable to drink":
  B.c('EmCare.B7.DE20')

 define "Successful":
  B.c('fluid_test_passed')

 define "Goes back very slowly (More than 2 seconds)":
  B.c('EmCare.B20S2.DE03')

 define "Goes back slowly (2 seconds or fewer, but not immediately)":
  B.c('EmCare.B20S2.DE04')

 define "Goes back Normally (immediately)":
  B.c('EmCare.B20S2.DE05')

 define "Skin Lesions ≥ 4 cm":
  B.c('EmCare.B14S2.DE27')

 define "Red Skin Streaks":
  B.c('EmCare.B14S2.DE28')

 define "Tender Nodes (Nodules) under the skin":
  B.c('EmCare.B14S2.DE29')

 define "Skin Infection extends to Muscle":
  B.c('EmCare.B14S2.DE30')

 define "Generalised Skin Problem":
  B.c('EmCare.B14S2.DE07')

 define "Localised Skin Problem":
  B.c('EmCare.B14S2.DE08')

 define "No Skin Problem":
  B.c('EmCare.B14S2.DE09')

 define "Deep or extends to muscle":
  B.c('EmCare.B14S2.DE15')

 define "Papular Urticaria or Papular Pruritic Eruptions":
  B.c('EmCare.B14S2.DE18')

 define "Ringworm (Tinea)":
  B.c('EmCare.B14S2.DE19')

 define "Scabies":
  B.c('EmCare.B14S2.DE21')

 define "Chickenpox":
  B.c('EmCare.B14S2.DE22')

 define "Herpes Zoster":
  B.c('EmCare.B14S2.DE23')

 define "Impetigo":
  B.c('EmCare.B14S2.DE25')

 define "Molluscum Contagiosum":
  B.c('EmCare.B14S2.DE31')

 define "Warts":
  B.c('EmCare.B14S2.DE32')

 define "Seborrhoeic Dermatitis":
  B.c('EmCare.B14S2.DE33')

 define "Fixed Drug Reaction":
  B.c('EmCare.B14S2.DE35')

 define "Eczema":
  B.c('EmCare.B14S2.DE36')

 define "Steven Johnson Syndrome (SJS)":
  B.c('EmCare.B14S2.DE37')

 define "None of the above":
  B.c('non')

 define "No Oral Sores or Mouth Ulcers":
  B.c('EmCare.B14S2.DE39')

 define "Oral Thrush":
  B.c('EmCare.B14S2.DE40')

 define "Mouth Sores or Mouth Ulcers - Deep and Extensive":
  B.c('EmCare.B14S2.DE41')

 define "Mouth Sores or Mouth Ulcers - Not Deep and Extensive":
  B.c('EmCare.B14S2.DE42')

 define "Skin Problem":
  B.c('EmCare.B14S2.DE44')

 define "Oral Sores or Mouth Ulcers":
  B.c('EmCare.B14S2.DE45')

 define "Eye Problem":
  B.c('EmCare.B14S2.DE46')

 define "No - Do not add a Skin or Mouth or Eye Problem":
  B.c('EmCare.B14S2.DE47')

 define "Severe Palmar Pallor":
  B.c('EmCare.B15S2.DE02')

 define "Some Palmar Pallor":
  B.c('EmCare.B15S2.DE03')

 define "No Palmar Pallor":
  B.c('EmCare.B15S2.DE04')

 define "High Malaria Risk":
  B.c('EmCare.B15S2.DE06')

 define "Low Malaria Risk":
  B.c('EmCare.B15S2.DE07')

 define "No Malaria Risk":
  B.c('EmCare.B15S2.DE08')

 define "Not Able to Feed At All":
  B.c('EmCare.B18S1.DE03')

 define "Not Feeding Well":
  B.c('EmCare.B18S1.DE04')

 define "Feeding Well":
  B.c('EmCare.B18S1.DE05')

 define "Measured Fever":
  B.c('EmCare.B18S2.DE02')

 define "Measured Low Body Temperature":
  B.c('EmCare.B18S2.DE03')

 define "No movement at all":
  B.c('EmCare.B18S2.DE09')

 define "Movement only when stimulated but then stops":
  B.c('EmCare.B18S2.DE10')

 define "Moves on his or her own or moves spontaneously or without stimulation":
  B.c('EmCare.B18S2.DE11')

 define "Within less than 24 hours of birth":
  B.c('EmCare.B19S2.DE05')

 define "24 hours or more after birth":
  B.c('EmCare.B19S2.DE06')

 define "Unknown when Jaundice first appeared":
  B.c('EmCare.B19S2.DE07')

 define "Very Low Weight for Age":
  B.c('EmCare.B21S2.DE02')

 define "Low Weight for Age":
  B.c('EmCare.B21S2.DE03')

 define "Normal Weight for Age":
  B.c('EmCare.B21S2.DE04')

 define "Breastmilk also given":
  B.c('EmCare.B21S2.DE28')

 define "No Breastmilk at all":
  B.c('EmCare.B21S2.DE29')

 define "Appropriate replacement milk":
  B.c('EmCare.B21S2.DE10')

 define "Inappropriate replacement milk":
  B.c('EmCare.B21S2.DE11')

 define "Stabilised, continue consultation":
  B.c('EmCare.B7/B8/B9.DE02')

 define "End consultation":
  B.c('EmCare.B7/B8/B9.DE03')

 define "Entered response in error":
  B.c('EmCare.B7/B8/B9.DE04')

 define "Mother HIV Positive":
  B.c('EmCare.B21S1.DE02')

 define "Mother HIV Negative":
  B.c('EmCare.B21S1.DE03')

 define "Mother HIV Status - Unknown or Not Tested":
  B.c('EmCare.B21S1.DE04')

 define "Mother HIV Status - Decline to answer":
  B.c('EmCare.B21S1.DE05')

 define "Correct and hygienic feed preparation":
  B.c('EmCare.B21S2.DE19')

 define "Incorrect or unhygienic feed preparation":
  B.c('EmCare.B21S2.DE20')

 define "Cup":
  B.c('EmCare.B21S2.DE22')

 define "Bottle":
  B.c('EmCare.B21S2.DE23')

 define "Feeding utensils cleaned hygienically":
  B.c('EmCare.B21S2.DE25')

 define "Feeding utensils not cleaned hygienically":
  B.c('EmCare.B21S2.DE26')

 define "Yes, Date documented, but not here":
  B.c('EmCare.B17.DE06')

 define "No, but last dose given less than 1 month ago":
  B.c('EmCare.B17.DE07')

 define "No, but last dose given between 1 and 6 months ago":
  B.c('EmCare.B17.DE08')

 define "No, but last dose given more than 6 months ago":
  B.c('EmCare.B17.DE09')

 define "No, Do not know when last dose was given":
  B.c('EmCare.B17.DE10')

 define "High HIV Risk":
  B.c('EmCare.B17.DE23')

 define "Low HIV Risk":
  B.c('EmCare.B17.DE24')

 define "Child HIV Positive - Virological":
  B.c('EmCare.B17.DE31')

 define "Child HIV Positive - Serological":
  B.c('EmCare.B17.DE32')

 define "Child HIV Positive - Unknown Type of Test":
  B.c('EmCare.B17.DE33')

 define "Child HIV Negative":
  B.c('EmCare.B17.DE34')

 define "Child HIV Status - Unknown or Not Tested":
  B.c('EmCare.B17.DE35')

 define "Child HIV Status - Decline to answer":
  B.c('EmCare.B17.DE36')

 define "No, incomplete vaccination":
  B.c('EmCare.B17.DE47')

 define "No, the child has never received any vaccinations to date":
  B.c('EmCare.B17.DE48')

 define "BCG":
  B.c('EmCare.B17.DE51')

 define "OPV":
  B.c('EmCare.B17.DE52')

 define "Hep B":
  B.c('EmCare.B17.DE53')

 define "DPT":
  B.c('EmCare.B17.DE54')

 define "DPT 18 month booster":
  B.c('EmCare.B17.DE55')

 define "HIB":
  B.c('EmCare.B17.DE56')

 define "RTV":
  B.c('EmCare.B17.DE57')

 define "PCV":
  B.c('EmCare.B17.DE58')

 define "PCV Booster 1 for Confirmed HIV Infection":
  B.c('EmCare.B17.DE59')

 define "PCV Booster 2 for Confirmed HIV Infection":
  B.c('EmCare.B17.DE60')

 define "Measles":
  B.c('EmCare.B17.DE61')

 define "Completely Unable to Drink":
  B.c('EmCare.B22.DE09')

 define "Vomits Immediately / Everything":
  B.c('EmCare.B22.DE10')

 define "Drinks Poorly":
  B.c('EmCare.B22.DE11')

 define "Drinks Eagerly / Thirstily":
  B.c('EmCare.B22.DE12')

 define "Drinks Normally":
  B.c('EmCare.B22.DE13')

 define "Unable to Perform Oral Fluid Test":
  B.c('EmCare.B22.DE14')

 define "Able to finish RUTF":
  B.c('EmCare.B22.DE24')

 define "Unable to finish RUTF":
  B.c('EmCare.B22.DE25')

 define "RUTF Not Available":
  B.c('EmCare.B22.DE26')

 define "Not well Attached to Breast":
  B.c('EmCare.B22.DE37')

 define "Good Attachment":
  B.c('EmCare.B22.DE38')

 define "Not Sucking Effectively":
  B.c('EmCare.B22.DE39')

 define "Sucking Effectively":
  B.c('EmCare.B22.DE40')

 define "Malaria Positive":
  B.c('EmCare.B22.DE54')

 define "Malaria Negative":
  B.c('EmCare.B22.DE55')

 define "Malaria Status Unknown / Unavailable / Invalid / Not Feasible":
  B.c('EmCare.B22.DE56')

 define "RDT":
  B.c('EmCare.B22.DE58')

 define "Microscopy":
  B.c('EmCare.B22.DE59')

 define "Not Recorded / Unsure":
  B.c('EmCare.B22.DE60')

 define "P. falciparum":
  B.c('EmCare.B22.DE62')

 define "Non-falciparum":
  B.c('EmCare.B22.DE63')

 define "P. vivax":
  B.c('EmCare.B22.DE64')

 define "P. ovale":
  B.c('EmCare.B22.DE65')

 define "P. malariae":
  B.c('EmCare.B22.DE66')

 define "P. knowlesi":
  B.c('EmCare.B22.DE67')

 define "Mixed Infection unknown species types":
  B.c('EmCare.B22.DE74')

 define "No Species Reported":
  B.c('EmCare.B22.DE75')

 define "Biological Mother Alive":
  B.c('EmCare.A.DE46')

 define "Biological Mother Alive but not caring for child":
  B.c('EmCare.A.DE44')

 define "Biological Mother Dead":
  B.c('EmCare.A.DE32')

 define "Biological Father Alive":
  B.c('EmCare.A.DE47')

 define "Biological Father Dead":
  B.c('EmCare.A.DE33')

 define "Paternal Vital Status Unknown":
  B.c('EmCare.A.DE34')

 define "Red (congested) throat":
  B.c('EmCare.B17S1.DE03')

 define "Exudate on Throat":
  B.c('EmCare.B17S1.DE04')

 define "Membrane on throat":
  B.c('EmCare.B17S1.DE05')

 define "None of the listed throat problems observed":
  B.c('none')

 define "Yes, without difficulty":
  B.c('EmCare.B17S1.DE08')

 define "Difficulty in swallowing":
  B.c('EmCare.B17S1.DE09')

 define "Unable to swallow":
  B.c('EmCare.B17S1.DE10')

 define "Does not appear to be Underweight":
  B.c('EmCare.B6.DE19')

 define "Appears to be Underweight":
  B.c('EmCare.B6.DE20')

 define "Appears to be Severely Underweight":
  B.c('EmCare.B6.DE21')

 define "Severe mucous membrane pallor":
  B.c('EmCare.B15S2.DE10')

 define "Some mucous membrane pallor":
  B.c('EmCare.B15S2.DE11')

 define "No mucous membrane pallor":
  B.c('EmCare.B15S2.DE12')

 