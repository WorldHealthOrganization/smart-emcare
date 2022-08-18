library EmCareBase

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.1'

context Encounter

// *********************   PatientHasObservationDuringEncounter *********************/
// obs and value : return value
// obs and no value: return true
// obs cancelled (not found) : return false
// obs not found : return null


define function assesObservation(O Observation):
  case  
      when  O = null then null
      when  O.status in  {'cancelled'} then false
      when O.value is null then  true
      else O.value
  end
      
define function GetObservationDuringEncounter(idlist List<code>, codesystem url):
  singleton  from  (First(
    ([Observation] O
        where Last(Split(O.encounter.reference, '/')) = Encounter.id
        and O.status in { 'final', 'amended', 'corrected'}
        and exists(First(O.code.coding C where C.code in idlist 
        and C.system = codesystem)))
      union
      ([Observation] O
        where Last(Split(O.encounter.reference, '/')) = Encounter.id
          and O.status in {'cancelled'}
          and exists(First(O.code.coding C where C.code in idlist 
          and C.system = codesystem)))))


define function PatientHasObservationDuringEncounter(idlist List<code>, codesystem url):
    assesObservation(GetObservationDuringEncounter(idlist, codesystem))


define function GetHistoricObservation(idlist List<code>, codesystem url, nbdays Integer):
  singleton  from  (First(
    ([Observation] O
        where  O.status in { 'final', 'amended', 'corrected'}
        and difference in days between O.issued and Today() < nbdays
        and exists(First(O.code.coding C where C.code in idlist 
        and C.system = codesystem)))
      union
      ([Observation] O
        where  O.status in {'cancelled'}
          and difference in days between O.issued and Today() < nbdays
          and exists(First(O.code.coding C where C.code in idlist 
          and C.system = codesystem)))))
  
// ************************   PatientHasHistoryOfObservation ************************/


define function PatientHasHistoryOfObservation(idlist List<code>, codesystem url, nbdays Integer):
  assesObservation(GetHistoricObservation(idlist, codesystem, nbdays))









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