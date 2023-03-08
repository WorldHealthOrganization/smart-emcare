/*
@author: Patrick Delcroix
@description: This library is part of the project EmCare
*/
library emcareobservationValueset version '1.0.1.rc12.build.185'
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers 




codesystem "EmCare" : 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes'


code "generalised skin problem": 'EmCare.B14S2.DE07' from "EmCare" display 'generalised skin problem'
code "localised skin problem": 'EmCare.B14S2.DE08' from "EmCare" display 'localised skin problem'
code "no problem": 'EmCare.B14S2.DE09' from "EmCare" display 'no problem'
code "papular urticaria or papular pruritic eruptions": 'EmCare.B14S2.DE18' from "EmCare" display 'papular urticaria or papular pruritic eruptions'
code "ringworm (tinea)": 'EmCare.B14S2.DE19' from "EmCare" display 'ringworm (tinea)'
code "scabies": 'EmCare.B14S2.DE21' from "EmCare" display 'scabies'
code "chickenpox": 'EmCare.B14S2.DE22' from "EmCare" display 'chickenpox'
code "herpes zoster": 'EmCare.B14S2.DE23' from "EmCare" display 'herpes zoster'
code "impetigo": 'EmCare.B14S2.DE25' from "EmCare" display 'impetigo'
code "molluscum contagiosum": 'EmCare.B14S2.DE31' from "EmCare" display 'molluscum contagiosum'
code "warts": 'EmCare.B14S2.DE32' from "EmCare" display 'warts'
code "seborrhoeic dermatitis": 'EmCare.B14S2.DE33' from "EmCare" display 'seborrhoeic dermatitis'
code "fixed drug reaction": 'EmCare.B14S2.DE35' from "EmCare" display 'fixed drug reaction'
code "eczema": 'EmCare.B14S2.DE36' from "EmCare" display 'eczema'
code "steven johnson syndrome (sjs)": 'EmCare.B14S2.DE37' from "EmCare" display 'steven johnson syndrome (sjs)'
code "skin problem": 'EmCare.B14S2.DE44' from "EmCare" display 'skin problem'
code "oral sores or mouth ulcers": 'EmCare.B14S2.DE45' from "EmCare" display 'oral sores or mouth ulcers'
code "eye problem": 'EmCare.B14S2.DE46' from "EmCare" display 'eye problem'
code "no - do not add a skin or mouth or eye problem": 'EmCare.B14S2.DE47' from "EmCare" display 'no - do not add a skin or mouth or eye problem'
code "no breastmilk at all": 'EmCare.B21S2.DE29' from "EmCare" display 'no breastmilk at all'
code "inappropriate replacement milk": 'EmCare.B21S2.DE11' from "EmCare" display 'inappropriate replacement milk'
code "appropriate replacement milk": 'EmCare.B21S2.DE10' from "EmCare" display 'appropriate replacement milk'
code "chest indrawing (post inhaled bronchodilator trial)": 'EmCare.B22.DE18' from "EmCare" display 'chest indrawing (post inhaled bronchodilator trial)'
code "respiratory rate (post inhaled bronchodilator trial)": 'EmCare.B22.DE19' from "EmCare" display 'respiratory rate (post inhaled bronchodilator trial)'
code "fast breathing (post inhaled bronchodilator trial)": 'EmCare.B22.DE20' from "EmCare" display 'fast breathing (post inhaled bronchodilator trial)'
code "no fast breathing and no chest indrawing (post inhaled bronchodilator trial)": 'EmCare.B22.DE21' from "EmCare" display 'no fast breathing and no chest indrawing (post inhaled bronchodilator trial)'
code "inhaled bronchodilator trial not feasible or available": 'EmCare.B22.DE22' from "EmCare" display 'inhaled bronchodilator trial not feasible or available'
