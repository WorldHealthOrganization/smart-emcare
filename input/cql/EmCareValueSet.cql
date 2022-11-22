/*
@author: Patrick Delcroix
@description: This library is part of the project EmCare
*/
library EmCareValueSet version '0.99.99'
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers 
include EmCareBase version '0.99.99' called B




context Patient    
define "female":
  B.c('EmCare.A.DE17')

 define "male":
  B.c('EmCare.A.DE18')

 define "not specified":
  B.c('EmCare.A.DE19')

 define "estimated age in years/months for child (2 months or older)":
  B.c('EmCare.A.DE13')

 define "estimated age in weeks/days for young infant (under 2 months old)":
  B.c('EmCare.A.DE14')

 define "estimated date of birth":
  B.c('EmCare.A.DE15')

 define "mother":
  B.c('EmCare.A.DE25')

 define "father":
  B.c('EmCare.A.DE26')

 define "sibling":
  B.c('EmCare.A.DE27')

 define "extended family":
  B.c('EmCare.A.DE28')

 define "legal guardian":
  B.c('EmCare.A.DE29')

 define "not related":
  B.c('EmCare.A.DE30')

 define "planned":
  B.c('EmCare.B2.DE02')

 define "unplanned":
  B.c('EmCare.B2.DE03')

 define "life threatening emergency":
  B.c('EmCare.B3.DE02')

 define "sick child":
  B.c('EmCare.B3.DE03')

 define "well child":
  B.c('EmCare.B3.DE04')

 define "yes":
  B.c('yes')

 define "no":
  B.c('no')

 define "unknown":
  B.c('EmCare.yesnox.unknown')

 define "new consultation":
  B.c('EmCare.B3.DE07')

 define "follow up":
  B.c('EmCare.B3.DE08')

 define "less than 14 days":
  B.c('EmCare.B10S1.DE07')

 define "14 days or more":
  B.c('EmCare.B10S1.DE08')

 define "less than 7 days":
  B.c('EmCare.B12S1.DE04')

 define "7 days or more":
  B.c('EmCare.B12S1.DE05')

 define "oxygen saturation not measured":
  B.c('EmCare.B10S2.DE09')

 define "one convulsion":
  B.c('EmCare.B7.DE05')

 define "two or more convulsions":
  B.c('EmCare.B7.DE06')

 define "skin pinch goes back very slowly (more than 2 seconds)":
  B.c('EmCare.B20S2.DE03')

 define "skin pinch goes back slowly (2 seconds or fewer, but not immediately)":
  B.c('EmCare.B20S2.DE04')

 define "skin pinch goes back normally (immediately)":
  B.c('EmCare.B20S2.DE05')

 define "generalised skin problem":
  B.c('EmCare.B14S2.DE07')

 define "localised skin problem":
  B.c('EmCare.B14S2.DE08')

 define "deep or extends to muscle":
  B.c('EmCare.B14S2.DE15')

 define "papular urticaria or papular pruritic eruptions":
  B.c('EmCare.B14S2.DE18')

 define "ringworm (tinea)":
  B.c('EmCare.B14S2.DE19')

 define "scabies":
  B.c('EmCare.B14S2.DE21')

 define "chickenpox":
  B.c('EmCare.B14S2.DE22')

 define "herpes zoster":
  B.c('EmCare.B14S2.DE23')

 define "impetigo":
  B.c('EmCare.B14S2.DE25')

 define "molluscum contagiosum":
  B.c('EmCare.B14S2.DE31')

 define "warts":
  B.c('EmCare.B14S2.DE32')

 define "seborrhoeic dermatitis":
  B.c('EmCare.B14S2.DE33')

 define "fixed drug reaction":
  B.c('EmCare.B14S2.DE35')

 define "eczema":
  B.c('EmCare.B14S2.DE36')

 define "steven johnson syndrome (sjs)":
  B.c('EmCare.B14S2.DE37')

 define "no oral sores or mouth ulcers":
  B.c('EmCare.B14S2.DE39')

 define "oral thrush":
  B.c('EmCare.B14S2.DE40')

 define "mouth sores or mouth ulcers - deep and extensive":
  B.c('EmCare.B14S2.DE41')

 define "mouth sores or mouth ulcers - not deep and extensive":
  B.c('EmCare.B14S2.DE42')

 define "severe palmar pallor":
  B.c('EmCare.B15S2.DE02')

 define "some palmar pallor":
  B.c('EmCare.B15S2.DE03')

 define "no palmar pallor":
  B.c('EmCare.B15S2.DE04')

 define "high malaria risk":
  B.c('EmCare.B15S2.DE06')

 define "low malaria risk":
  B.c('EmCare.B15S2.DE07')

 define "no malaria risk":
  B.c('EmCare.B15S2.DE08')

 define "not able to feed at all":
  B.c('EmCare.B18S1.DE03')

 define "not feeding well":
  B.c('EmCare.B18S1.DE04')

 define "feeding well":
  B.c('EmCare.B18S1.DE05')

 define "measured fever":
  B.c('EmCare.B18S2.DE02')

 define "measured low body temperature":
  B.c('EmCare.B18S2.DE03')

 define "no movement at all":
  B.c('EmCare.B18S2.DE09')

 define "movement only when stimulated but then stops":
  B.c('EmCare.B18S2.DE10')

 define "moves on his or her own or moves spontaneously or without stimulation":
  B.c('EmCare.B18S2.DE11')

 define "within less than 24 hours of birth":
  B.c('EmCare.B19S2.DE05')

 define "24 hours or more after birth":
  B.c('EmCare.B19S2.DE06')

 define "unknown when jaundice first appeared":
  B.c('EmCare.B19S2.DE07')

 define "very low weight for age":
  B.c('EmCare.B21S2.DE02')

 define "low weight for age":
  B.c('EmCare.B21S2.DE03')

 define "normal weight for age":
  B.c('EmCare.B21S2.DE04')

 define "breastmilk also given":
  B.c('EmCare.B21S2.DE28')

 define "no breastmilk at all":
  B.c('EmCare.B21S2.DE29')

 define "appropriate replacement milk":
  B.c('EmCare.B21S2.DE10')

 define "inappropriate replacement milk":
  B.c('EmCare.B21S2.DE11')

 define "stabilised, continue consultation":
  B.c('EmCare.B7/B8/B9.DE02')

 define "end consultation":
  B.c('EmCare.B7/B8/B9.DE03')

 define "entered response in error":
  B.c('EmCare.B7/B8/B9.DE04')

 define "mother hiv positive":
  B.c('EmCare.B21S1.DE02')

 define "mother hiv negative":
  B.c('EmCare.B21S1.DE03')

 define "mother hiv status - unknown or not tested":
  B.c('EmCare.B21S1.DE04')

 define "mother hiv status - decline to answer":
  B.c('EmCare.B21S1.DE05')

 define "correct and hygienic feed preparation":
  B.c('EmCare.B21S2.DE19')

 define "incorrect or unhygienic feed preparation":
  B.c('EmCare.B21S2.DE20')

 define "cup":
  B.c('EmCare.B21S2.DE22')

 define "bottle":
  B.c('EmCare.B21S2.DE23')

 define "feeding utensils cleaned hygienically":
  B.c('EmCare.B21S2.DE25')

 define "feeding utensils not cleaned hygienically":
  B.c('EmCare.B21S2.DE26')

 define "yes, date documented, but not here":
  B.c('EmCare.B17.DE06')

 define "no, but last dose given less than 1 month ago":
  B.c('EmCare.B17.DE07')

 define "no, but last dose given between 1 and 6 months ago":
  B.c('EmCare.B17.DE08')

 define "no, but last dose given more than 6 months ago":
  B.c('EmCare.B17.DE09')

 define "no, do not know when last dose was given":
  B.c('EmCare.B17.DE10')

 define "high hiv risk":
  B.c('EmCare.B17.DE23')

 define "low hiv risk":
  B.c('EmCare.B17.DE24')

 define "child hiv positive - virological":
  B.c('EmCare.B17.DE31')

 define "child hiv positive - serological":
  B.c('EmCare.B17.DE32')

 define "child hiv positive - unknown type of test":
  B.c('EmCare.B17.DE33')

 define "child hiv negative":
  B.c('EmCare.B17.DE34')

 define "child hiv status - unknown or not tested":
  B.c('EmCare.B17.DE35')

 define "child hiv status - decline to answer":
  B.c('EmCare.B17.DE36')

 define "no, incomplete vaccination":
  B.c('EmCare.B17.DE47')

 define "no, the child has never received any vaccinations to date":
  B.c('EmCare.B17.DE48')

 define "bcg":
  B.c('EmCare.B17.DE51')

 define "opv":
  B.c('EmCare.B17.DE52')

 define "hep b":
  B.c('EmCare.B17.DE53')

 define "dpt":
  B.c('EmCare.B17.DE54')

 define "dpt 18 month booster":
  B.c('EmCare.B17.DE55')

 define "hib":
  B.c('EmCare.B17.DE56')

 define "rtv":
  B.c('EmCare.B17.DE57')

 define "pcv":
  B.c('EmCare.B17.DE58')

 define "pcv booster 1 for confirmed hiv infection":
  B.c('EmCare.B17.DE59')

 define "pcv booster 2 for confirmed hiv infection":
  B.c('EmCare.B17.DE60')

 define "measles":
  B.c('EmCare.B17.DE61')

 define "completely unable to drink":
  B.c('EmCare.B22.DE09')

 define "vomits immediately / everything":
  B.c('EmCare.B22.DE10')

 define "drinks poorly":
  B.c('EmCare.B22.DE11')

 define "drinks eagerly / thirstily":
  B.c('EmCare.B22.DE12')

 define "drinks normally":
  B.c('EmCare.B22.DE13')

 define "able to finish rutf":
  B.c('EmCare.B22.DE24')

 define "unable to finish rutf":
  B.c('EmCare.B22.DE25')

 define "rutf not available":
  B.c('EmCare.B22.DE26')

 define "not well attached to breast":
  B.c('EmCare.B22.DE37')

 define "good attachment":
  B.c('EmCare.B22.DE38')

 define "not sucking effectively":
  B.c('EmCare.B22.DE39')

 define "sucking effectively":
  B.c('EmCare.B22.DE40')

 define "malaria positive":
  B.c('EmCare.B22.DE54')

 define "malaria negative":
  B.c('EmCare.B22.DE55')

 define "malaria status unknown / unavailable / invalid / not feasible":
  B.c('EmCare.B22.DE56')

 define "rdt":
  B.c('EmCare.B22.DE58')

 define "microscopy":
  B.c('EmCare.B22.DE59')

 define "not recorded / unsure":
  B.c('EmCare.B22.DE60')

 define "p. falciparum":
  B.c('EmCare.B22.DE62')

 define "non-falciparum":
  B.c('EmCare.B22.DE63')

 define "p. vivax":
  B.c('EmCare.B22.DE64')

 define "p. ovale":
  B.c('EmCare.B22.DE65')

 define "p. malariae":
  B.c('EmCare.B22.DE66')

 define "p. knowlesi":
  B.c('EmCare.B22.DE67')

 define "mixed infection unknown species types":
  B.c('EmCare.B22.DE74')

 define "no species reported":
  B.c('EmCare.B22.DE75')

 define "biological mother alive":
  B.c('EmCare.A.DE46')

 define "biological mother alive but not caring for child":
  B.c('EmCare.A.DE44')

 define "biological mother dead":
  B.c('EmCare.A.DE32')

 define "biological father alive":
  B.c('EmCare.A.DE47')

 define "biological father dead":
  B.c('EmCare.A.DE33')

 define "paternal vital status unknown":
  B.c('EmCare.A.DE34')

 define "red (congested) throat":
  B.c('EmCare.B17S1.DE03')

 define "exudate on throat":
  B.c('EmCare.B17S1.DE04')

 define "membrane on throat":
  B.c('EmCare.B17S1.DE05')

 define "none of the listed throat problems observed":
  B.c('none')

 define "yes, without difficulty":
  B.c('EmCare.B17S1.DE08')

 define "difficulty in swallowing":
  B.c('EmCare.B17S1.DE09')

 define "unable to swallow":
  B.c('EmCare.B17S1.DE10')

 define "does not appear to be underweight":
  B.c('EmCare.B6.DE19')

 define "appears to be underweight":
  B.c('EmCare.B6.DE20')

 define "appears to be severely underweight":
  B.c('EmCare.B6.DE21')

 define "severe mucous membrane pallor":
  B.c('EmCare.B15S2.DE10')

 define "some mucous membrane pallor":
  B.c('EmCare.B15S2.DE11')

 define "no mucous membrane pallor":
  B.c('EmCare.B15S2.DE12')

 