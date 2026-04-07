/*
@author: Patrick Delcroix
@description: This library is part of the project Ccc
*/
library Cccobservation-valueset version '1.0.1.rc12.build.156'
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers 




codesystem "Ccc" : 'https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes'


code "generalised skin problem": 'Ccc.B14S2.DE07' from "Ccc" display 'generalised skin problem'
code "localised skin problem": 'Ccc.B14S2.DE08' from "Ccc" display 'localised skin problem'
code "no problem": 'Ccc.B14S2.DE09' from "Ccc" display 'no problem'
code "papular urticaria or papular pruritic eruptions": 'Ccc.B14S2.DE18' from "Ccc" display 'papular urticaria or papular pruritic eruptions'
code "ringworm (tinea)": 'Ccc.B14S2.DE19' from "Ccc" display 'ringworm (tinea)'
code "scabies": 'Ccc.B14S2.DE21' from "Ccc" display 'scabies'
code "chickenpox": 'Ccc.B14S2.DE22' from "Ccc" display 'chickenpox'
code "herpes zoster": 'Ccc.B14S2.DE23' from "Ccc" display 'herpes zoster'
code "impetigo": 'Ccc.B14S2.DE25' from "Ccc" display 'impetigo'
code "molluscum contagiosum": 'Ccc.B14S2.DE31' from "Ccc" display 'molluscum contagiosum'
code "warts": 'Ccc.B14S2.DE32' from "Ccc" display 'warts'
code "seborrhoeic dermatitis": 'Ccc.B14S2.DE33' from "Ccc" display 'seborrhoeic dermatitis'
code "fixed drug reaction": 'Ccc.B14S2.DE35' from "Ccc" display 'fixed drug reaction'
code "eczema": 'Ccc.B14S2.DE36' from "Ccc" display 'eczema'
code "steven johnson syndrome (sjs)": 'Ccc.B14S2.DE37' from "Ccc" display 'steven johnson syndrome (sjs)'
code "skin problem": 'Ccc.B14S2.DE44' from "Ccc" display 'skin problem'
code "oral sores or mouth ulcers": 'Ccc.B14S2.DE45' from "Ccc" display 'oral sores or mouth ulcers'
code "eye problem": 'Ccc.B14S2.DE46' from "Ccc" display 'eye problem'
code "no - do not add a skin or mouth or eye problem": 'Ccc.B14S2.DE47' from "Ccc" display 'no - do not add a skin or mouth or eye problem'
code "no breastmilk at all": 'Ccc.B21S2.DE29' from "Ccc" display 'no breastmilk at all'
code "inappropriate replacement milk": 'Ccc.B21S2.DE11' from "Ccc" display 'inappropriate replacement milk'
code "appropriate replacement milk": 'Ccc.B21S2.DE10' from "Ccc" display 'appropriate replacement milk'
code "chest indrawing (post inhaled bronchodilator trial)": 'Ccc.B22.DE18' from "Ccc" display 'chest indrawing (post inhaled bronchodilator trial)'
code "respiratory rate (post inhaled bronchodilator trial)": 'Ccc.B22.DE19' from "Ccc" display 'respiratory rate (post inhaled bronchodilator trial)'
code "fast breathing (post inhaled bronchodilator trial)": 'Ccc.B22.DE20' from "Ccc" display 'fast breathing (post inhaled bronchodilator trial)'
code "no fast breathing and no chest indrawing (post inhaled bronchodilator trial)": 'Ccc.B22.DE21' from "Ccc" display 'no fast breathing and no chest indrawing (post inhaled bronchodilator trial)'
code "inhaled bronchodilator trial not feasible or available": 'Ccc.B22.DE22' from "Ccc" display 'inhaled bronchodilator trial not feasible or available'
