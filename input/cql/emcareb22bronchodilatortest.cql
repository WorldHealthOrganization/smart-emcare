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
include emcareb23classification version '0.99.99' called clas


context Patient
      

/* has danger signs : nan*/
define "has danger signs":
    clas."emcare.b.g.de01"

/* ageinmonths : Age*/
define "ageinmonths":
    AgeInMonths()

/* age : Age*/
define "age":
    AgeInMonths()

/* emcare.b10s1.de05 : Cough*/
define "emcare.b10s1.de05":
    Base.GetObsValue('EmCare.B10S1.DE05','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* cough : Cough*/
define "cough":
    Base.GetObsValue('EmCare.B10S1.DE05','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* emcare.b10s1.de01 : Difficulty Breathing*/
define "emcare.b10s1.de01":
    Base.GetObsValue('EmCare.B10S1.DE01','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* difficulty breathing : Difficulty Breathing*/
define "difficulty breathing":
    Base.GetObsValue('EmCare.B10S1.DE01','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* emcare.b10s2.de01 : Respiratory Rate*/
define "emcare.b10s2.de01":
    Base.GetObsValue('EmCare.B10S2.DE01','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* respiratory rate : Respiratory Rate*/
define "respiratory rate":
    Base.GetObsValue('EmCare.B10S2.DE01','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* emcare.b11s1.de01 : Diarrhoea*/
define "emcare.b11s1.de01":
    Base.GetObsValue('EmCare.B11S1.DE01','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* diarrhoea : Diarrhoea*/
define "diarrhoea":
    Base.GetObsValue('EmCare.B11S1.DE01','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* emcare.b10s2.de03 : Chest Indrawing*/
define "emcare.b10s2.de03":
    Base.GetObsValue('EmCare.B10S2.DE03','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* chest indrawing : Chest Indrawing*/
define "chest indrawing":
    Base.GetObsValue('EmCare.B10S2.DE03','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* emcare.b10s2.de05 : Wheezing*/
define "emcare.b10s2.de05":
    Base.GetObsValue('EmCare.B10S2.DE05','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* wheezing : Wheezing*/
define "wheezing":
    Base.GetObsValue('EmCare.B10S2.DE05','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* emcare.b10s2.de04 : Stridor in a calm child*/
define "emcare.b10s2.de04":
    Base.GetObsValue('EmCare.B10S2.DE04','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* stridor in a calm child : Stridor in a calm child*/
define "stridor in a calm child":
    Base.GetObsValue('EmCare.B10S2.DE04','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* emcare.b10s2.de07 : Oxygen Saturation*/
define "emcare.b10s2.de07":
    Base.GetObsValue('EmCare.B10S2.DE07','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* oxygen saturation : Oxygen Saturation*/
define "oxygen saturation":
    Base.GetObsValue('EmCare.B10S2.DE07','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* emcare.a.de24 : Primary Caregiver's Relationship to Client*/
define "emcare.a.de24":
    Base.GetObsValue('EmCare.A.DE24','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* primary caregiver's relationship to client : Primary Caregiver's Relationship to Client*/
define "primary caregiver's relationship to client":
    Base.GetObsValue('EmCare.A.DE24','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* emcare.b21s1.de01 : Breastfed*/
define "emcare.b21s1.de01":
    Base.GetObsValue('EmCare.B21S1.DE01', 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* breastfed : Breastfed*/
define "breastfed":
    Base.GetObsValue('EmCare.B21S1.DE01', 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* emcare.b8-b9.de01 : Obstructed or Absent Breathing*/
define "emcare.b8-b9.de01":
    Base.GetObsValue('EmCare.B8-B9.DE01','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* obstructed or absent breathing : Obstructed or Absent Breathing*/
define "obstructed or absent breathing":
    Base.GetObsValue('EmCare.B8-B9.DE01','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* emcare.b7.de02 : Convulsing Now*/
define "emcare.b7.de02":
    Base.GetObsValue('EmCare.B7.DE02','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* convulsing now : Convulsing Now*/
define "convulsing now":
    Base.GetObsValue('EmCare.B7.DE02','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* emcare.b18s1.de02 : Difficulty with Feeding*/
define "emcare.b18s1.de02":
    Base.GetObsValue('EmCare.B18S1.DE02','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* difficulty with feeding : Difficulty with Feeding*/
define "difficulty with feeding":
    Base.GetObsValue('EmCare.B18S1.DE02','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* emcare.b18s1.de01 : Convulsions in this Illness*/
define "emcare.b18s1.de01":
    Base.GetObsValue('EmCare.B18S1.DE01','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* convulsions in this illness : Convulsions in this Illness*/
define "convulsions in this illness":
    Base.GetObsValue('EmCare.B18S1.DE01','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* emcare.b18s2.de07 : Severe Chest Indrawing*/
define "emcare.b18s2.de07":
    Base.GetObsValue('EmCare.B18S2.DE07','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* severe chest indrawing : Severe Chest Indrawing*/
define "severe chest indrawing":
    Base.GetObsValue('EmCare.B18S2.DE07','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* emcare.b18s2.de08 : Movements*/
define "emcare.b18s2.de08":
    Base.GetObsValue('EmCare.B18S2.DE08','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* movements : Movements*/
define "movements":
    Base.GetObsValue('EmCare.B18S2.DE08','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* emcare.b18s2.de01 : Measured Temperature*/
define "emcare.b18s2.de01":
    Base.GetObsValue('EmCare.B18S2.DE01','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* measured temperature : Measured Temperature*/
define "measured temperature":
    Base.GetObsValue('EmCare.B18S2.DE01','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* emcare.b19s2.de01 : Yellow Skin*/
define "emcare.b19s2.de01":
    Base.GetObsValue('EmCare.B19S2.DE01','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* yellow skin : Yellow Skin*/
define "yellow skin":
    Base.GetObsValue('EmCare.B19S2.DE01','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* emcare.b19s2.de04 : When did the Jaundice first appear?*/
define "emcare.b19s2.de04":
    Base.GetObsValue('EmCare.B19S2.DE04','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* when did the jaundice first appear? : When did the Jaundice first appear?*/
define "when did the jaundice first appear?":
    Base.GetObsValue('EmCare.B19S2.DE04','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* emcare.b19s2.de02 : Yellow Palms or Yellow Soles*/
define "emcare.b19s2.de02":
    Base.GetObsValue('EmCare.B19S2.DE02','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* yellow palms or yellow soles : Yellow Palms or Yellow Soles*/
define "yellow palms or yellow soles":
    Base.GetObsValue('EmCare.B19S2.DE02','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* emcare.b21s2.de01 : Weight Status*/
define "emcare.b21s2.de01":
    Base.GetObsValue('EmCare.B21S2.DE01','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* weight status : Weight Status*/
define "weight status":
    Base.GetObsValue('EmCare.B21S2.DE01','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* emcare.b12s2.de01 : Stiff neck*/
define "emcare.b12s2.de01":
    Base.GetObsValue('EmCare.B12S2.DE01','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* stiff neck : Stiff neck*/
define "stiff neck":
    Base.GetObsValue('EmCare.B12S2.DE01','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
