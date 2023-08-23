/*
@author: Patrick Delcroix
@description: This library is part of the project CHE
*/
library chezscore version '1.0.241+build.384'
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers 
include chebase version '1.0.241+build.384' called Base
include WeightForAge version '1.0.4' called wfa
include WeightForLength version '1.0.4' called wfl
include WeightForHeight version '1.0.4' called wfh



//codesystem "CHE" : 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/che-custom-codes'



//code "Weight": 'CHE.B6.DE06' from "CHE" display 'Weight'
//code "Estimated Weight": 'CHE.B6.DE08' from "CHE" display 'Estimated Weight'
//code "MUAC": 'CHE.B6.DE17' from "CHE" display 'MUAC'
//code "Length": 'CHE.B6.DE12' from "CHE" display 'Length'
//code "Height": 'CHE.B6.DE09' from "CHE" display 'Height'

parameter "encounterid" String

context Patient

define "Weight":
  Base.coding('CHE.B6.DE06')
define "Estimated Weight":
  Base.coding('CHE.B6.DE08')
define "MUAC":
  Base.coding('CHE.B6.DE17')
define "Length":
  Base.coding('CHE.B6.DE12')
define "Height":
  Base.coding('CHE.B6.DE09')
define "Visually assess":
  Base.coding('CHE.B6.DE18')
define "Underweight":
  Base.coding('CHE.B6.DE20') 
define "Severely Underweight":
  Base.coding('CHE.B6.DE21') 

/* pastweight : Previous Weight*/
define "pastweightobs":
    if AgeInMonths()< 4  then
      Base.GetHistoricObservation("Weight", 60)
    else if AgeInMonths()< 6  then
      Base.GetHistoricObservation("Weight", 91)
    else if AgeInMonths()< 12  then
      Base.GetHistoricObservation("Weight", 121)
    else 
      Base.GetHistoricObservation("Weight", 180)

define "pastweight":
    if "pastweightobs" is not null then
      "pastweightobs".value
    else null

/* patientsex : Patient sex*/
define "patientsex":
    if Patient.gender = 'female' then 'female' else 'male'

/* ageatpastweight : Age at Previous Weight*/
define "ageatpastweight":
    if "pastweight" is not null  then
        (difference in days between Patient.birthDate and ToDate(pastweightobs.issued)) * ( 1.0 as System.Decimal )
    else
     null

/* pastweightzscore : Z-Score at Previous Weight*/
define "pastweightzscore":
    if "pastweight" is not null  then
      wfa.generateZScoreWeightForAge("patientsex", "ageatpastweight" , ("pastweight".value * ( 1.0 as System.Decimal)))
    else
      null

/* pastweightactualised : Weight from  at Previous Weight*/
define "pastweightactualised":
    if "pastweightzscore" is not null then
      System.Quantity { value: Round(wfa.generateWeightFromAge("patientsex",AgeInDays() * ( 1.0 as System.Decimal ),  "pastweightzscore" ),2), unit: 'kg'} 
    else 
       null



define existingweight:
  Base.GetObsValue("Weight")

define existingestimnatedweight:
  if existingweight is null then  
    Base.GetObsValue("Estimated Weight")
  else 
    null

define existingheight:
  Base.GetObsValue("Height")

define existinglength:
  Base.GetObsValue("Length")

define existingmuac:
  Base.GetObsValue("MUAC")

define existingvisual:
  Base.GetObsValue("Visually assess")
//
define zscorefrommuac:
  if existingmuac is null then null
  else if existingmuac < 115 'mnm' then -3.0
  else if existingmuac < 125 'mnm' then -2.0
  else 0.0

define estimatedweight:
  case  
  when existingweight is not null then null
  when existingestimnatedweight is not null then existingestimnatedweight
  when pastweightactualised is not null then pastweightactualised
  when AgeInMonths()>24 and existingheight then weightfromheight
  when AgeInMonths()<=24 and existinglength then weightfromlength
  else weightfromage
  end

define zscorefromvisual:
    if existingvisual is not null then
      case  
        when existingvisual ~ "Severely Underweight" then -3.0
        when existingvisual ~ "Underweight" then -2.0
        else 0.0
      end
    else  null


define weightfromlength:
    System.Quantity { value: Round(wfl.generateWeightFromLength("patientsex",(convert existinglength to 'cm').value * ( 1.0 as System.Decimal ), zscorefrommuac),2), unit: 'kg'}

define weightfromheight:
    System.Quantity { value:Round(wfh.generateWeightFromHeight("patientsex",(convert existingheight to 'cm').value * ( 1.0 as System.Decimal ), zscorefrommuac),2), unit: 'kg'}

define weightfromage:
    System.Quantity { value:Round(wfa.generateWeightFromAge("patientsex",AgeInDays() * ( 1.0 as System.Decimal ), zscorefrommuac),2), unit: 'kg'}
/*
(convert Base.HasObs("Weight") to 'Kg') does not work, so let's assume the weight is in Kg
*/
define "WAZ":
    if existingweight is not null then
         wfa.generateZScoreWeightForAge("patientsex", AgeInDays() , (existingweight.value * ( 1.0 as System.Decimal )))
    else if existingmuac is not null then
        zscorefrommuac
    else if existingvisual then
        zscorefromvisual
    else null

define "WLZ":
    if existingweight is not null then
         wfl.generateZScoreWeightForLength("patientsex", (existinglength.value * ( 1.0 as System.Decimal )) ,  (existingweight.value * ( 1.0 as System.Decimal )))
    else if existingmuac is not null then
        zscorefrommuac
    else if existingvisual then
        zscorefromvisual
    else null

define "WHZ":
    if existingweight is not null then
         wfh.generateZScoreWeightForHeight("patientsex", (existingheight.value * ( 1.0 as System.Decimal )) ,  (existingweight.value * ( 1.0 as System.Decimal )))
    else if existingmuac is not null then
        zscorefrommuac
    else if existingvisual then
        zscorefromvisual
    else null
