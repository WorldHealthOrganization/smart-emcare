library EmCareBase

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.1'
include FHIRCommon called FC

include WHOCommon called WC

context Patient
// migh be valueset 'name'
define function PatientHasConditionDuringEncounter(id String):
  WC.Only(
  Observation O
    where O.status in { 'final', 'amended', 'corrected' }
      and Coalesce(WC.ModifierExtension(O, 'who-notDone').value, false) is false
      and Last(Split(O.encounter.reference, '/')) = Encounter.id
      and O.id = id
  ).value as FHIR.boolean


// PatientHasSymptom("symptom name"): symptom in the encounter

// PatientHasHistoryOfCondition("symptom name", duration): symptom in the patient history during duration

// PatientLastMeasureOf("measure name"): measure in the encounter

// PatientLastHistoricMeasureOf("measure name", duration): measure in the patient history during duration

// PatientHasDiagnostic("Diagnostic name" ): Diagnostic in the encounter

// PatientHasHistoryOfDiagnostic("Diagnostic name", duration ): Diagnostic in the patient history during duration

// PatientHasProposedorConfirmedDianostic("Diagnostic name" ): Diagnostic in the encounter

// PatientHasHistoryOfProposedorConfirmedDianostic("Diagnostic name", duration ): Diagnostic in the patient history during duration

// PatientZScoreWfA(wieght, age)

// PatientWeightFromWfA(age, Muac)