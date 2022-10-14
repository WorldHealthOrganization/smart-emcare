/*
@author: Patrick Delcroix
@description: This library is part of the project EmCare Project, its allows standardisation for the observation processing
*/

library EmCareBase version '0.99.99'

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.1'


context Encounter

// *********************   PatientHasObservationDuringEncounter *********************/
// obs and value : return value
// obs and no value: return true
// obs cancelled (not found) : return false
// obs not found : return null

define "Yes":
  coding('yes', 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/')

define "No":
  coding('no', 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/')

define function assesObservation(O Observation):
  case  
      when  O = null then null
      when  O.status in  {'cancelled'} then "No"
      when O.value is null then  "Yes"
      when O.value is FHIR.boolean and O.value = true then "Yes"
      when O.value is FHIR.boolean and O.value = false then "No"
      else O.value
  end
      
define function GetObservationDuringEncounter(idlist List<code>, codesystem FHIR.url):
  if GetObservationDuringEncounterDone(idlist , codesystem) is null then 
      GetObservationDuringEncounterDone(idlist , codesystem  )
  else
    GetObservationDuringEncounterNotFound(idlist , codesystem  )


define function GetObservationDuringEncounterDone(idlist List<code>, codesystem FHIR.url):
      Last([Observation ] O
        where Last(Split(O.encounter.reference, '/')) = Encounter.id
        and O.status in { 'final', 'amended', 'corrected'}
        and exists(O.code.coding C where C.code in idlist 
        and C.system = codesystem))


define function GetObservationDuringEncounterNotFound(idlist List<code>, codesystem FHIR.url):
      Last([Observation] O
        where Last(Split(O.encounter.reference, '/')) = Encounter.id
          and O.status in {'cancelled'}
          and exists(O.code.coding C where C.code in idlist 
          and C.system = codesystem))

define function GetNumberObservationDuringEncounter(idlist List<code>, codesystem FHIR.url):
  Count(
    [Observation] O
        where Last(Split(O.encounter.reference, '/')) = Encounter.id
        and O.status in { 'final', 'amended', 'corrected'}
        and exists((O.code.coding C where C.code in idlist 
        and C.system = codesystem)))

define function HasObs(idlist List<FHIR.code>, codesystem System.String):
    assesObservation(GetObservationDuringEncounter(idlist, ToUrl(codesystem)))

define function HasObs(id FHIR.code, codesystem System.String):
    assesObservation(GetObservationDuringEncounter({id}, ToUrl(codesystem)))

define function HasObs(id System.String, codesystem System.String):
    assesObservation(GetObservationDuringEncounter({c(id)}, ToUrl(codesystem)))

define function HasObs(id System.String):
    assesObservation(GetObservationDuringEncounter({c(id)}, ToUrl('https://fhir.dk.swisstph-mis.ch/matchbox/fhir/')))



define function GetHistoricObservation(idlist List<code>, codesystem FHIR.url, nbdays Integer):
  if GetHistoricObservationNotfound(idlist , codesystem , nbdays ) is null then 
      GetHistoricObservationNotfound(idlist , codesystem , nbdays )
  else
    GetHistoricObservationNotfound(idlist , codesystem , nbdays )

define function GetHistoricObservationDone(idlist List<code>, codesystem FHIR.url, nbdays Integer):
      Last([Observation] O
        where  O.status in { 'final', 'amended', 'corrected'}
        and difference in days between O.issued and Today() < nbdays
        and exists(O.code.coding C where C.code in idlist 
        and C.system = codesystem))

define function GetHistoricObservationNotfound(idlist List<code>, codesystem FHIR.url, nbdays Integer):
      Last([Observation] O
        where  O.status in {'cancelled'}
          and difference in days between O.issued and Today() < nbdays
          and exists(O.code.coding C where C.code in idlist 
          and C.system = codesystem))
  
// ************************   PatientHasHistoryOfObservation ************************/


define function HasObsHistory(idlist List<FHIR.code>, codesystem System.String, nbdays Integer):
  assesObservation(GetHistoricObservation(idlist, ToUrl(codesystem), nbdays))


define function HasObsHistory(id FHIR.code, codesystem System.String, nbdays Integer):
  assesObservation(GetHistoricObservation({id}, ToUrl(codesystem), nbdays))

define function HasObsHistory(id System.String, codesystem System.String, nbdays Integer):
  assesObservation(GetHistoricObservation({c(id)}, ToUrl(codesystem), nbdays))


define function HasObsHistory(id System.String, nbdays Integer):
  assesObservation(GetHistoricObservation({c(id)}, ToUrl('https://fhir.dk.swisstph-mis.ch/matchbox/fhir/'), nbdays))

define function c(s System.String):
  FHIR.code { value: s }

define function coding(s System.String, url System.String):
  FHIR.Coding {
                code: FHIR.code { value: s },
                system: FHIR.uri { value: url },
                "display": FHIR.string { value: s }
            }

define function ToUrl(s System.String):
  url {value:s}

//define function PatientHasConditionDuringEncounter(id String, codesystem url, duration Integer)):

//define function PatientHasConditionFromValueSetDuringEncounter(id String, codesystem url, duration Integer)):

//define function PatientHasHsistoryCondition(id String,codesystem url , duration Integer):
//define function PatientHasHsistoryConditionFromValueSet(id String,codesystem url , duration Integer):


// PatientHasSymptom("symptom name"): symptom in the encounter


// PatientLastMeasureOf("measure name"): measure in the encounter

// PatientLastHistoricMeasureOf("measure name", duration): measure in the patient history during duration

// PatientHasDiagnostic("Diagnostic name" ): Diagnostic in the encounter

// PatientHasHistoryOfDiagnostic("Diagnostic name", duration ): Diagnostic in the patient history during duration

// PatientHasProposedorConfirmedDianostic("Diagnostic name" ): Diagnostic in the encounter

// PatientHasHistoryOfProposedorConfirmedDianostic("Diagnostic name", duration ): Diagnostic in the patient history during duration

// PatientZScoreWfA(wieght, age)

// PatientWeightFromWfA(age, Muac)
