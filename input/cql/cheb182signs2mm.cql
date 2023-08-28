/*
@author: Patrick Delcroix
@description: This library is part of the project CHE
*/
library cheb182signs2mm version '1.0.313+build.456'
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers 
include chebase version '1.0.313+build.456' called Base
include chevalueset version '1.0.313+build.456' called val
include b24combineddataelement version '1.0.313+build.456' called C
include chezscore version '1.0.313+build.456' called Z
include cheobservation version '1.0.313+build.456' called obs




context Patient


/* 
OBSdefine.CHE.B6.DE06 : Weight (kilograms)

*/
define "OBSdefine.CHE.B6.DE06":
    Base.GetObsValue('CHE.B6.DE06')

/* 
OBSdefine.CHE.B11S1.DE01 : Diarrhoea

*/
define "OBSdefine.CHE.B11S1.DE01":
    Base.GetObsValue('CHE.B11S1.DE01')

/* 
OBSdefine.CHE.B21S1.DE06 : Breastfed

*/
define "OBSdefine.CHE.B21S1.DE06":
    Base.GetObsValue('CHE.B21S1.DE06')

/* 
Age : 
System.Quantity { value: AgeInDays()  , unit: 'days'}
*/
define "Age":
    System.Quantity { value: AgeInDays()  , unit: 'days'}

/* 
Weight (kilograms) : 
o"Weight (kilograms)"
*/
define "Weight (kilograms)":
    "OBSdefine.CHE.B6.DE06"

/* 
YI severe classification other than severe dehydration : 
C."YI Severe classification other than severe dehydration"
*/
define "YI severe classification other than severe dehydration":
    C."YI Severe classification other than severe dehydration"

/* 
Diarrhoea : 
o"Diarrhoea"
*/
define "Diarrhoea":
    "OBSdefine.CHE.B11S1.DE01"

/* 
Breastfed : 
o"Breastfed"
*/
define "Breastfed":
    "OBSdefine.CHE.B21S1.DE06"

/* 
zwfa : 
Z."WAZ"
*/
define "zwfa":
    Z."WAZ"

/* 
BackReference : 
back reference to resource
*/
define "BackReference":
    Reference {reference: string { value: 'Questionnaire/che.b18-2.signs.2.m.m'}}
