/*
@author: Patrick Delcroix
@description: This library is part of the project EmCare
*/
library emcarevalueset version '1.0.3.build.169'
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers 




codesystem "EmCare" : 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes'


code "Female": 'EmCare.A.DE17' from "EmCare" display 'Female'
code "Male": 'EmCare.A.DE18' from "EmCare" display 'Male'
code "Not Specified": 'EmCare.A.DE19' from "EmCare" display 'Not Specified'
code "Estimate Age - Years/Months for a child": 'EmCare.A.DE13' from "EmCare" display 'Estimate Age - Years/Months for a child'
code "Estimate Age - Weeks/Days for young infant": 'EmCare.A.DE14' from "EmCare" display 'Estimate Age - Weeks/Days for young infant'
code "Estimate Date of Birth": 'EmCare.A.DE15' from "EmCare" display 'Estimate Date of Birth'
code "Mother": 'EmCare.A.DE25' from "EmCare" display 'Mother'
code "Father": 'EmCare.A.DE26' from "EmCare" display 'Father'
code "Sibling": 'EmCare.A.DE27' from "EmCare" display 'Sibling'
code "Extended Family": 'EmCare.A.DE28' from "EmCare" display 'Extended Family'
code "Legal Guardian": 'EmCare.A.DE29' from "EmCare" display 'Legal Guardian'
code "Not Related": 'EmCare.A.DE30' from "EmCare" display 'Not Related'
code "Dead": 'EmCare.A.DE46' from "EmCare" display 'Dead'
code "Alive": 'EmCare.A.DE34' from "EmCare" display 'Alive'
code "Unknown": 'EmCare.A.DE33' from "EmCare" display 'Unknown'
code "Life Threatening Emergency": 'EmCare.B3.DE02' from "EmCare" display 'Life Threatening Emergency'
code "Sick Child": 'EmCare.B3.DE03' from "EmCare" display 'Sick Child'
code "Routine visit (Well child/infant)": 'EmCare.B3.DE04' from "EmCare" display 'Routine visit (Well child/infant)'
code "Initial visit": 'EmCare.B3.DE07' from "EmCare" display 'Initial visit'
code "Follow Up": 'EmCare.B3.DE08' from "EmCare" display 'Follow Up'
code "Stabilised, continue consultation": 'EmCare.B7.B8.B9.DE02' from "EmCare" display 'Stabilised, continue consultation'
code "End consultation": 'EmCare.B7.B8.B9.DE03' from "EmCare" display 'End consultation'
code "Entered response in error": 'EmCare.B7.B8.B9.DE04' from "EmCare" display 'Entered response in error'
code "One Convulsion": 'EmCare.B7.DE05' from "EmCare" display 'One Convulsion'
code "Two or more convulsions": 'EmCare.B7.DE06' from "EmCare" display 'Two or more convulsions'
code "Vomiting Everything": 'EmCare.B7.DE11' from "EmCare" display 'Vomiting Everything'
code "Vomiting but Not Everything": 'EmCare.B7.DE12' from "EmCare" display 'Vomiting but Not Everything'
code "No Vomiting": 'EmCare.B7.DE13' from "EmCare" display 'No Vomiting'
code "Completely Unable to Drink": 'EmCare.B24.G.DE08' from "EmCare" display 'Completely Unable to Drink'
code "Vomits Immediately / Everything": 'EmCare.B24.G.DE09' from "EmCare" display 'Vomits Immediately / Everything'
code "Drinks Poorly": 'EmCare.B24.G.DE10' from "EmCare" display 'Drinks Poorly'
code "Drinks Eagerly / Thirstily": 'EmCare.B24.G.DE11' from "EmCare" display 'Drinks Eagerly / Thirstily'
code "Drinks Normally": 'EmCare.B24.G.DE12' from "EmCare" display 'Drinks Normally'
