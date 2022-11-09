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


context Patient
      

/* ageinmonths : Age*/
define "ageinmonths":
    AgeInMonths()

/* age : Age*/
define "age":
    AgeInMonths()

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

/* emcare.b12s1.de15 : Malaria Risk*/
define "emcare.b12s1.de15":
    Base.GetObsValue('EmCare.B12S1.DE15','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* malaria risk : Malaria Risk*/
define "malaria risk":
    Base.GetObsValue('EmCare.B12S1.DE15','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* emcare.b12s1.de19 : Recent Travel to a High Malaria Risk area*/
define "emcare.b12s1.de19":
    Base.GetObsValue('EmCare.B12S1.DE19','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* recent travel to a high malaria risk area : Recent Travel to a High Malaria Risk area*/
define "recent travel to a high malaria risk area":
    Base.GetObsValue('EmCare.B12S1.DE19','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* emcare.b12s2.de04 : Obvious Cause of Fever (to determine if Malaria test required)*/
define "emcare.b12s2.de04":
    Base.GetObsValue('EmCare.B12S2.DE04','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* obvious cause of fever (to determine if malaria test required) : Obvious Cause of Fever (to determine if Malaria test required)*/
define "obvious cause of fever (to determine if malaria test required)":
    Base.GetObsValue('EmCare.B12S2.DE04','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* emcare.b15s2.de02 : Palmar Pallor*/
define "emcare.b15s2.de02":
    Base.GetObsValue('EmCare.B15S2.DE02','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* palmar pallor : Palmar Pallor*/
define "palmar pallor":
    Base.GetObsValue('EmCare.B15S2.DE02','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* emcare.b15s2.de09 : Mucous membrane pallor*/
define "emcare.b15s2.de09":
    Base.GetObsValue('EmCare.B15S2.DE09','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* mucous membrane pallor : Mucous membrane pallor*/
define "mucous membrane pallor":
    Base.GetObsValue('EmCare.B15S2.DE09','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* emcare.b22.de07 : Fast Breathing*/
define "emcare.b22.de07":
    Base.GetObsValue('EmCare.B22.DE07','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* fast breathing : Fast Breathing*/
define "fast breathing":
    Base.GetObsValue('EmCare.B22.DE07','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
