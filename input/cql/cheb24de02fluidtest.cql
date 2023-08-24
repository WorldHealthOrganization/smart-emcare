/*
@author: Patrick Delcroix
@description: This library is part of the project CHE
*/
library cheb24de02fluidtest version '1.0.246+build.389'
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers 
include chebase version '1.0.246+build.389' called Base
include chevalueset version '1.0.246+build.389' called val
include cheobservation version '1.0.246+build.389' called obs




context Patient


/* 
OBSdefine.CHE.B7.DE09 : Not able to drink or breastfeed

*/
define "OBSdefine.CHE.B7.DE09":
    Base.GetObsValue('CHE.B7.DE09')

/* 
OBSdefine.CHE.B7.DE10 : Vomiting

*/
define "OBSdefine.CHE.B7.DE10":
    Base.GetObsValue('CHE.B7.DE10')

/* 
CHE.B7.DE09 : 
Coalesce( o"Not able to drink or breastfeed" , false)
*/
define "CHE.B7.DE09":
    Coalesce( "OBSdefine.CHE.B7.DE09" , false)

/* 
Not able to drink or breastfeed : CHE.B7.DE09
Alias
*/
define "Not able to drink or breastfeed":
    "CHE.B7.DE09"

/* 
CHE.B7.DE10 : 
o"Vomiting"
*/
define "CHE.B7.DE10":
    "OBSdefine.CHE.B7.DE10"

/* 
Vomiting : CHE.B7.DE10
Alias
*/
define "Vomiting":
    "CHE.B7.DE10"

/* 
BackReference : 
back reference to resource
*/
define "BackReference":
    Reference {reference: string { value: 'Questionnaire/che.b24.de02.fluidtest'}}
