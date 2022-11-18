/*
@author: Patrick Delcroix
@description: This library is part of the project EmCare
*/
library emcareb22secondtemperature version '0.99.99'
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers 
include EmCareBase version '0.99.99' called Base
include EmCareObservation version '0.99.99' called obs
include EmCareValueSet version '0.99.99' called val

context Encounter

define Patient:
    Base.EmCarePatient    

/* ageinmonths : Age*/
define "ageinmonths":
    Base.AgeInMonths

/* alias age : ageinmonths*/
define "age":
    "ageinmonths"

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

/* emcare.b12s1.de15 : Malaria Risk*/
define "emcare.b12s1.de15":
    Base.GetObsValue('EmCare.B12S1.DE15')

/* alias malaria risk : emcare.b12s1.de15*/
define "malaria risk":
    "emcare.b12s1.de15"

/* emcare.b12s1.de19 : Recent Travel to a High Malaria Risk area*/
define "emcare.b12s1.de19":
    Base.GetObsValue('EmCare.B12S1.DE19')

/* alias recent travel to a high malaria risk area : emcare.b12s1.de19*/
define "recent travel to a high malaria risk area":
    "emcare.b12s1.de19"

/* emcare.b12s2.de04 : Obvious Cause of Fever (to determine if Malaria test required)*/
define "emcare.b12s2.de04":
    Base.GetObsValue('EmCare.B12S2.DE04')

/* alias obvious cause of fever (to determine if malaria test required) : emcare.b12s2.de04*/
define "obvious cause of fever (to determine if malaria test required)":
    "emcare.b12s2.de04"

/* emcare.b15s2.de02 : Palmar Pallor*/
define "emcare.b15s2.de02":
    Base.GetObsValue('EmCare.B15S2.DE02')

/* alias palmar pallor : emcare.b15s2.de02*/
define "palmar pallor":
    "emcare.b15s2.de02"

/* emcare.b15s2.de09 : Mucous membrane pallor*/
define "emcare.b15s2.de09":
    Base.GetObsValue('EmCare.B15S2.DE09')

/* alias mucous membrane pallor : emcare.b15s2.de09*/
define "mucous membrane pallor":
    "emcare.b15s2.de09"

/* emcare.b22.de07 : Fast Breathing*/
define "emcare.b22.de07":
    Base.GetObsValue('EmCare.B22.DE07')

/* alias fast breathing : emcare.b22.de07*/
define "fast breathing":
    "emcare.b22.de07"
