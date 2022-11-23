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
include emcarecombineddataelements version '0.99.99' called clas


parameter "encounterid"  String


context Patient    

/* has danger signs : nan*/
define "has danger signs":
    clas."emcare.b.g.de01"

/* ageinmonths : Age*/
define "ageinmonths":
    AgeInMonths()

/* alias age : ageinmonths*/
define "age":
    "ageinmonths"

/* emcare.b10s1.de05 : Cough*/
define "emcare.b10s1.de05":
    Base.GetObsValue('EmCare.B10S1.DE05')

/* alias cough : emcare.b10s1.de05*/
define "cough":
    "emcare.b10s1.de05"

/* emcare.b10s1.de01 : Difficulty Breathing*/
define "emcare.b10s1.de01":
    Base.GetObsValue('EmCare.B10S1.DE01')

/* alias difficulty breathing : emcare.b10s1.de01*/
define "difficulty breathing":
    "emcare.b10s1.de01"

/* emcare.b22.de01 : Respiratory Rate*/
define "emcare.b22.de01":
    Base.GetObsValue('EmCare.B22.DE01')

/* alias respiratory rate : emcare.b22.de01*/
define "respiratory rate":
    "emcare.b22.de01"

/* emcare.b11s1.de01 : Diarrhoea*/
define "emcare.b11s1.de01":
    Base.GetObsValue('EmCare.B11S1.DE01')

/* alias diarrhoea : emcare.b11s1.de01*/
define "diarrhoea":
    "emcare.b11s1.de01"

/* emcare.b10s2.de03 : Chest Indrawing*/
define "emcare.b10s2.de03":
    Base.GetObsValue('EmCare.B10S2.DE03')

/* alias chest indrawing : emcare.b10s2.de03*/
define "chest indrawing":
    "emcare.b10s2.de03"

/* emcare.b10s2.de05 : Wheezing*/
define "emcare.b10s2.de05":
    Base.GetObsValue('EmCare.B10S2.DE05')

/* alias wheezing : emcare.b10s2.de05*/
define "wheezing":
    "emcare.b10s2.de05"

/* emcare.b10s2.de04 : Stridor in a calm child*/
define "emcare.b10s2.de04":
    Base.GetObsValue('EmCare.B10S2.DE04')

/* alias stridor in a calm child : emcare.b10s2.de04*/
define "stridor in a calm child":
    "emcare.b10s2.de04"

/* emcare.b10s2.de07 : Oxygen Saturation*/
define "emcare.b10s2.de07":
    Base.GetObsValue('EmCare.B10S2.DE07')

/* alias oxygen saturation : emcare.b10s2.de07*/
define "oxygen saturation":
    "emcare.b10s2.de07"

/* emcare.a.de24 : Primary Caregiver's Relationship to Client*/
define "emcare.a.de24":
    Base.GetObsValue('EmCare.A.DE24')

/* alias primary caregiver's relationship to client : emcare.a.de24*/
define "primary caregiver's relationship to client":
    "emcare.a.de24"

/* emcare.b21s1.de01 : Breastfed*/
define "emcare.b21s1.de01":
    Base.GetObsValue('EmCare.B21S1.DE01', 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* alias breastfed : emcare.b21s1.de01*/
define "breastfed":
    "emcare.b21s1.de01"

/* emcare.b8-b9.de01 : Obstructed or Absent Breathing*/
define "emcare.b8-b9.de01":
    Base.GetObsValue('EmCare.B8-B9.DE01')

/* alias obstructed or absent breathing : emcare.b8-b9.de01*/
define "obstructed or absent breathing":
    "emcare.b8-b9.de01"

/* emcare.b7.de02 : Convulsing Now*/
define "emcare.b7.de02":
    Base.GetObsValue('EmCare.B7.DE02')

/* alias convulsing now : emcare.b7.de02*/
define "convulsing now":
    "emcare.b7.de02"

/* emcare.b18s1.de02 : Difficulty with Feeding*/
define "emcare.b18s1.de02":
    Base.GetObsValue('EmCare.B18S1.DE02')

/* alias difficulty with feeding : emcare.b18s1.de02*/
define "difficulty with feeding":
    "emcare.b18s1.de02"

/* emcare.b18s1.de01 : Convulsions in this Illness*/
define "emcare.b18s1.de01":
    Base.GetObsValue('EmCare.B18S1.DE01')

/* alias convulsions in this illness : emcare.b18s1.de01*/
define "convulsions in this illness":
    "emcare.b18s1.de01"

/* emcare.b18s2.de07 : Severe Chest Indrawing*/
define "emcare.b18s2.de07":
    Base.GetObsValue('EmCare.B18S2.DE07')

/* alias severe chest indrawing : emcare.b18s2.de07*/
define "severe chest indrawing":
    "emcare.b18s2.de07"

/* emcare.b18s2.de08 : Movements*/
define "emcare.b18s2.de08":
    Base.GetObsValue('EmCare.B18S2.DE08')

/* alias movements : emcare.b18s2.de08*/
define "movements":
    "emcare.b18s2.de08"

/* emcare.b18s2.de01 : Measured Temperature*/
define "emcare.b18s2.de01":
    Base.GetObsValue('EmCare.B18S2.DE01')

/* alias measured temperature : emcare.b18s2.de01*/
define "measured temperature":
    "emcare.b18s2.de01"

/* emcare.b19s2.de01 : Yellow Skin*/
define "emcare.b19s2.de01":
    Base.GetObsValue('EmCare.B19S2.DE01')

/* alias yellow skin : emcare.b19s2.de01*/
define "yellow skin":
    "emcare.b19s2.de01"

/* emcare.b19s2.de04 : When did the Jaundice first appear?*/
define "emcare.b19s2.de04":
    Base.GetObsValue('EmCare.B19S2.DE04')

/* alias when did the jaundice first appear? : emcare.b19s2.de04*/
define "when did the jaundice first appear?":
    "emcare.b19s2.de04"

/* emcare.b19s2.de02 : Yellow Palms or Yellow Soles*/
define "emcare.b19s2.de02":
    Base.GetObsValue('EmCare.B19S2.DE02')

/* alias yellow palms or yellow soles : emcare.b19s2.de02*/
define "yellow palms or yellow soles":
    "emcare.b19s2.de02"

/* emcare.b21s2.de01 : Weight Status*/
define "emcare.b21s2.de01":
    Base.GetObsValue('EmCare.B21S2.DE01')

/* alias weight status : emcare.b21s2.de01*/
define "weight status":
    "emcare.b21s2.de01"

/* emcare.b12s2.de01 : Stiff neck*/
define "emcare.b12s2.de01":
    Base.GetObsValue('EmCare.B12S2.DE01')

/* alias stiff neck : emcare.b12s2.de01*/
define "stiff neck":
    "emcare.b12s2.de01"
