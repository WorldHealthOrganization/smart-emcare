/*
@author: Patrick Delcroix
@description: This library is part of the project EmCare
*/
library emcareb22bronchodilatortest version '0.99.99'
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers 
include EmCareBase version '0.99.99' called Base
include EmCareObservation version '0.99.99' called obs
include EmCareValueSet version '0.99.99' called val


context Patient
      

/* AgeInMonths : Age*/
define "AgeInMonths":
    AgeInMonths()

/* Age : Age*/
define "Age":
    AgeInMonths()

/* EmCare.B10S1.DE05 : Cough*/
define "EmCare.B10S1.DE05":
    Base.HasObs('EmCare.B10S1.DE05','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* Cough : Cough*/
define "Cough":
    Base.HasObs('EmCare.B10S1.DE05','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* EmCare.B10S1.DE01 : Difficulty Breathing*/
define "EmCare.B10S1.DE01":
    Base.HasObs('EmCare.B10S1.DE01','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* Difficulty Breathing : Difficulty Breathing*/
define "Difficulty Breathing":
    Base.HasObs('EmCare.B10S1.DE01','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* EmCare.B10S2.DE01 : Respiratory Rate*/
define "EmCare.B10S2.DE01":
    Base.HasObs('EmCare.B10S2.DE01','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* Respiratory Rate : Respiratory Rate*/
define "Respiratory Rate":
    Base.HasObs('EmCare.B10S2.DE01','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* EmCare.B11S1.DE01 : Diarrhoea*/
define "EmCare.B11S1.DE01":
    Base.HasObs('EmCare.B11S1.DE01','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* Diarrhoea : Diarrhoea*/
define "Diarrhoea":
    Base.HasObs('EmCare.B11S1.DE01','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* EmCare.B8-B9.DE03 : Has danger signs*/
define "EmCare.B8-B9.DE03":
    Base.HasObs('EmCare.B8-B9.DE03','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* Has danger signs : Has danger signs*/
define "Has danger signs":
    Base.HasObs('EmCare.B8-B9.DE03','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* EmCare.B10S2.DE03 : Chest Indrawing*/
define "EmCare.B10S2.DE03":
    Base.HasObs('EmCare.B10S2.DE03','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* Chest Indrawing : Chest Indrawing*/
define "Chest Indrawing":
    Base.HasObs('EmCare.B10S2.DE03','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* EmCare.B10S2.DE05 : Wheezing*/
define "EmCare.B10S2.DE05":
    Base.HasObs('EmCare.B10S2.DE05','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* Wheezing : Wheezing*/
define "Wheezing":
    Base.HasObs('EmCare.B10S2.DE05','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* EmCare.B10S2.DE04 : Stridor in a calm child*/
define "EmCare.B10S2.DE04":
    Base.HasObs('EmCare.B10S2.DE04','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* Stridor in a calm child : Stridor in a calm child*/
define "Stridor in a calm child":
    Base.HasObs('EmCare.B10S2.DE04','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* EmCare.B10S2.DE07 : Oxygen Saturation*/
define "EmCare.B10S2.DE07":
    Base.HasObs('EmCare.B10S2.DE07','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* Oxygen Saturation : Oxygen Saturation*/
define "Oxygen Saturation":
    Base.HasObs('EmCare.B10S2.DE07','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* EmCare.A.DE24 : Primary Caregiver's Relationship to Client*/
define "EmCare.A.DE24":
    Base.HasObs('EmCare.A.DE24','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* Primary Caregiver's Relationship to Client : Primary Caregiver's Relationship to Client*/
define "Primary Caregiver's Relationship to Client":
    Base.HasObs('EmCare.A.DE24','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* EmCare.B21S1.DE01 : Breastfed*/
define "EmCare.B21S1.DE01":
    Base.HasObs('EmCare.B21S1.DE01', 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* Breastfed : Breastfed*/
define "Breastfed":
    Base.HasObs('EmCare.B21S1.DE01', 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* EmCare.B8-B9.DE01 : Obstructed or Absent Breathing*/
define "EmCare.B8-B9.DE01":
    Base.HasObs('EmCare.B8-B9.DE01','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* Obstructed or Absent Breathing : Obstructed or Absent Breathing*/
define "Obstructed or Absent Breathing":
    Base.HasObs('EmCare.B8-B9.DE01','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* EmCare.B7.DE02 : Convulsing Now*/
define "EmCare.B7.DE02":
    Base.HasObs('EmCare.B7.DE02','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* Convulsing Now : Convulsing Now*/
define "Convulsing Now":
    Base.HasObs('EmCare.B7.DE02','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* EmCare.B18S1.DE02 : Difficulty with Feeding*/
define "EmCare.B18S1.DE02":
    Base.HasObs('EmCare.B18S1.DE02','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* Difficulty with Feeding : Difficulty with Feeding*/
define "Difficulty with Feeding":
    Base.HasObs('EmCare.B18S1.DE02','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* EmCare.B18S1.DE01 : Convulsions in this Illness*/
define "EmCare.B18S1.DE01":
    Base.HasObs('EmCare.B18S1.DE01','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* Convulsions in this Illness : Convulsions in this Illness*/
define "Convulsions in this Illness":
    Base.HasObs('EmCare.B18S1.DE01','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* EmCare.B18S2.DE07 : Severe Chest Indrawing*/
define "EmCare.B18S2.DE07":
    Base.HasObs('EmCare.B18S2.DE07','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* Severe Chest Indrawing : Severe Chest Indrawing*/
define "Severe Chest Indrawing":
    Base.HasObs('EmCare.B18S2.DE07','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* EmCare.B18S2.DE08 : Movements*/
define "EmCare.B18S2.DE08":
    Base.HasObs('EmCare.B18S2.DE08','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* Movements : Movements*/
define "Movements":
    Base.HasObs('EmCare.B18S2.DE08','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* EmCare.B18S2.DE01 : Measured Temperature*/
define "EmCare.B18S2.DE01":
    Base.HasObs('EmCare.B18S2.DE01','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* Measured Temperature : Measured Temperature*/
define "Measured Temperature":
    Base.HasObs('EmCare.B18S2.DE01','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* EmCare.B19S2.DE01 : Yellow Skin*/
define "EmCare.B19S2.DE01":
    Base.HasObs('EmCare.B19S2.DE01','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* Yellow Skin : Yellow Skin*/
define "Yellow Skin":
    Base.HasObs('EmCare.B19S2.DE01','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* EmCare.B19S2.DE04 : When did the Jaundice first appear?*/
define "EmCare.B19S2.DE04":
    Base.HasObs('EmCare.B19S2.DE04','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* When did the Jaundice first appear? : When did the Jaundice first appear?*/
define "When did the Jaundice first appear?":
    Base.HasObs('EmCare.B19S2.DE04','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* EmCare.B19S2.DE02 : Yellow Palms or Yellow Soles*/
define "EmCare.B19S2.DE02":
    Base.HasObs('EmCare.B19S2.DE02','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* Yellow Palms or Yellow Soles : Yellow Palms or Yellow Soles*/
define "Yellow Palms or Yellow Soles":
    Base.HasObs('EmCare.B19S2.DE02','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* EmCare.B21S2.DE01 : Weight Status*/
define "EmCare.B21S2.DE01":
    Base.HasObs('EmCare.B21S2.DE01','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* Weight Status : Weight Status*/
define "Weight Status":
    Base.HasObs('EmCare.B21S2.DE01','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* EmCare.B12S2.DE01 : Stiff neck*/
define "EmCare.B12S2.DE01":
    Base.HasObs('EmCare.B12S2.DE01','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* Stiff neck : Stiff neck*/
define "Stiff neck":
    Base.HasObs('EmCare.B12S2.DE01','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
