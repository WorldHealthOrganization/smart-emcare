/*
@author: Patrick Delcroix
@description: This library is part of the project EmCare
*/
library emcarezscore version '1.0.1.rc12.build.284'
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers 
include emcarebase version '1.0.1.rc12.build.284' called Base
include WeightForAge version '1.0.0' called wfa
include WeightForLength version '1.0.0' called wfl
include WeightForHeight version '1.0.0' called wfh

codesystem "EmCare" : 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes'

code "Weight": 'EmCare.B6.DE06' from "EmCare" display 'Weight'
code "Estimated Weight": 'EmCare.B6.DE08' from "EmCare" display 'Estimated Weight'
code "MUAC": 'EmCare.B6.DE17' from "EmCare" display 'MUAC'
code "Length": 'EmCare.B6.DE12' from "EmCare" display 'Length'
code "Height": 'EmCare.B6.DE09' from "EmCare" display 'Height'
code "Visually assess": 'EmCare.B6.DE18' from "EmCare" display 'Visually assess'
code "Underweight": 'EmCare.B6.DE20' from "EmCare" display 'Underweight' 
code "Severely Underweight": 'EmCare.B6.DE21' from "EmCare" display 'Severely Underweight' 

parameter "encounterid" String

context Patient





/* pastweight : Previous Weight*/
define "pastweightobs":
    if AgeInMonths()< 4 and Base.GetHistoricObservation("Weight", 63) is not null then
      Base.GetHistoricObservation("Weight", 63)  as FHIR.Observation
    else  if AgeInMonths()< 6 and Base.GetHistoricObservation("Weight", 94)   is not null then
      Base.GetHistoricObservation("Weight", 94)  as  FHIR.Observation
    else if AgeInMonths()< 6 and Base.GetHistoricObservation("Weight", 126)   is not null then
       Base.GetHistoricObservation("Weight", 126)  as FHIR.Observation
    else if Base.GetHistoricObservation("Weight", 201)  is not null then
       Base.GetHistoricObservation("Weight", 201)  as FHIR.Observation
    else
      null

define "pastweight":
    if "pastweightobs" is not null then
      "pastweightobs".value
    else
      null


/* patientsex : Patient sex*/
define "patientsex":
    if Patient.gender = 'female' then 'female' else 'male'

/* ageatpastweight : Age at Previous Weight*/
define "ageatpastweight":
    if "pastweight" is not null  then
      (difference in days between Patient.birthDate and ToDate("pastweightobs".issued) ) * ( 1.0 as System.Decimal )
    else
     null

/* pastweightzscore : Z-Score at Previous Weight*/
define "pastweightzscore":
    if "pastweight" is not null  then
      wfa.generateZScoreWeightForAge("patientsex", "ageatpastweight" , ((convert "pastweight" to 'kg').value * ( 1.0 as System.Decimal)))
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

define existingvisual:
  Base.GetObsValue("Visually assess")

define existingmuac:
  Base.GetObsValue("MUAC")




define zscorefrommuac:
  if existingmuac is null then 0.0
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
         wfa.generateZScoreWeightForAge("patientsex", AgeInDays() * ( 1.0 as System.Decimal ) ,  (convert existingweight to 'kg').value * ( 1.0 as System.Decimal ))
    else if existingmuac is not null then
        zscorefrommuac
    else if existingvisual then
        zscorefromvisual
    else null

