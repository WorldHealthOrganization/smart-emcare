/*
@author: Patrick Delcroix
@description: This library is part of the project EmCare Project, its allows standardisation for the observation processing
*/

library EmCareBase version '{{LIB_VERSION}}'

using FHIR version '{{FHIR_VERSION}}'

include FHIRHelpers version '4.0.1'


context Encounter
define function Equal(id FHIR.id ,ref FHIR.Reference):
  case
    when id = ref.id then true
    when id = Last(Split(ref.reference, '/')) then true
    when ref.identifier is not null and id = ref.identifier.id then true
    else false
end

define EmCarePatient: First([Patient] P where Equal(P.id, Encounter.subject))

context Patient 

define AgeInDays:
  difference in days between EmCarePatient.birthDate and Today()  

define AgeInMonths: 
  difference in months between EmCarePatient.birthDate and Today()  

define AgeInYears:
  difference in years between EmCarePatient.birthDate and Today()  




// *********************   PatientHasObservationDuringEncounter *********************/
// obs and value : return value
// obs and no value: return true
// obs cancelled (not found) : return false
// obs not found : return null




define "Yes":
  true

define "No":
  false 

define function getValue(O Observation):
  case  
      when  O is null then null
      else O.value
  end


define function assesObservation(O Observation):
  case  
      when  O is null then null
      when  O.status in  {'cancelled'} then false
      when O.value is null then  true
      else O.value
  end
/*      
define function GetObservationDuringEncounter(idlist List<System.Code>):
  if GetObservationDuringEncounterDone(idlist ) is null then 
      GetObservationDuringEncounterDone(idlist )
  else
    GetObservationDuringEncounterNotFound(idlist )
*/
context Encounter

define function GetObservationDuringEncounter(id System.Code):
  if GetObservationDuringEncounterDone(id ) is not null then 
      GetObservationDuringEncounterDone(id )
  else
    GetObservationDuringEncounterNotFound(id )
/*
define function GetObservationDuringEncounterDone(idlist List<System.Code>):
      Last([Observation: idlist ] O
        where   Equal(Encounter.id, O.encounter) 
        and O.status in { 'final', 'amended', 'corrected'})
*/
define function GetObservationDuringEncounterDone(id System.Code):
      Last([Observation: id ] O
        where   Equal(Encounter.id, O.encounter) 
        and O.status in { 'final', 'amended', 'corrected'})

/*
define function GetObservationDuringEncounterNotFound(idlist List<System.Code>):
      Last([Observation: idlist] O
       where  Equal(Encounter.id, O.encounter) 
          and O.status in {'cancelled'})
          */
define function GetObservationDuringEncounterNotFound(id System.Code):
      Last([Observation: id] O
       where  Equal(Encounter.id, O.encounter) 
          and O.status in {'cancelled'})
/*

define function GetNumberObservationDuringEncounter(idlist List<System.Code>):
  Count(
    [Observation: idlist] O
        where  Equal(Encounter.id, O.encounter) 
        and O.status in { 'final', 'amended', 'corrected'})
*/
define function GetNumberObservationDuringEncounter(id System.Code):
  Count(
    [Observation: id] O
        where  Equal(Encounter.id, O.encounter) 
        and O.status in { 'final', 'amended', 'corrected'})

// ************************   GetObsValue ************************/
/*
define function GetObsValue(idlist List<System.Code>):
    getValue(GetObservationDuringEncounter(idlist))

define function GetObsValue(id System.Code):
    getValue(GetObservationDuringEncounter({id}))
*/

define function GetObsValue(id System.Code):
    getValue(GetObservationDuringEncounter(id))

define function GetObsValue(id System.String, codesystem System.String):
    getValue(GetObservationDuringEncounter(coding(id, codesystem)))

define function GetObsValue(id System.String):
    getValue(GetObservationDuringEncounter(coding(id, '{{cs_url}}')))


// ************************   HasObs ************************/
/*
define function HasObs(idlist List<System.Code>):
    assesObservation(GetObservationDuringEncounter(idlist))

define function HasObs(id System.Code):
    assesObservation(GetObservationDuringEncounter({id}))
*/
define function HasObs(id System.Code):
    assesObservation(GetObservationDuringEncounter(id))

define function HasObs(id System.String, codesystem System.String):
    assesObservation(GetObservationDuringEncounter(coding(id, codesystem)))

define function HasObs(id System.String):
    assesObservation(GetObservationDuringEncounter(coding(id, '{{cs_url}}')))

define function HasObs(id FHIR.code, codesystem System.String):
    assesObservation(GetObservationDuringEncounter(coding(id, codesystem)))
/*
define function GetHistoricObservation(idlist List<System.Code>, nbdays Integer):
  if GetHistoricObservationNotfound(idlist , codesystem , nbdays ) is null then 
      GetHistoricObservationNotfound(idlist , codesystem , nbdays )
  else
    GetHistoricObservationNotfound(idlist , codesystem , nbdays )
*/

context Patient
define function GetHistoricObservation(id System.Code, nbdays Integer):
  if GetHistoricObservationDone(id ,  nbdays ) is not null then 
      GetHistoricObservationDone(id ,  nbdays )
  else
    GetHistoricObservationNotfound(id  , nbdays )
/*
define function GetHistoricObservationDone(idlist List<System.Code>, nbdays Integer):
      Last([Observation: idlist ] O
        where  O.status in { 'final', 'amended', 'corrected'}
        and (difference in days between O.issued and Today()) < nbdays)
*/
define function GetHistoricObservationDone(id System.Code, nbdays Integer):
      Last([Observation: id ] O
        where  O.status in { 'final', 'amended', 'corrected'}
        and (difference in days between O.issued and Today()) < nbdays)

/*
define function GetHistoricObservationNotfound(idlist List<System.Code>, nbdays Integer):
      Last([Observation: idlist] O
        where  O.status in {'cancelled'}define Patient: singleton from ([Patient: Encounter.subject]]
*/
define function GetHistoricObservationNotfound(id System.Code, nbdays Integer):
      Last([Observation: id] O
        where  O.status in {'cancelled'}
          and (difference in days between O.issued and Today()) < nbdays)
// ************************   HasObsHistory ************************/

/*
define function HasObsHistory(idlist List<System.Code>,  nbdays Integer):
  assesObservation(GetHistoricObservation(idlist, nbdays))


define function HasObsHistory(id System.Code, cnbdays Integer):
  assesObservation(GetHistoricObservation({id}, nbdays))
*/
define function HasObsHistory(id System.Code, nbdays Integer):
  assesObservation(GetHistoricObservation(id, nbdays))

define function HasObsHistory(id System.String, codesystem System.String, nbdays Integer):
  assesObservation(GetHistoricObservation(coding(id, codesystem), nbdays))


define function HasObsHistory(id System.String, nbdays Integer):
  assesObservation(GetHistoricObservation(coding(id, '{{cs_url}}'), nbdays))

define function c(s System.String):
  FHIR.code { value: s }



define function coding(s System.String, url System.String):
  System.Code {
                code:  s ,
                system:  url 
            }

define function coding(s FHIR.code, url System.String):
  System.Code {
                code:  s.value ,
                system:  url 
            }

define function coding(s System.String):
  System.Code {
                code:  s ,
                system:  '{{cs_url}}' 
            }


define function ToUrl(s System.String):
  url {value:s}

context Encounter


// ************************   GetCond ************************/
/*
define function GetCoO.encounterndition(idlist List<System.Code>):
      Last([Condition: idlist] O
        where  Equal(Encounter.id, O.encounter) 
        and exists(O.verificationStatus.coding C where C.code in {'unconfirmed', 'provisional', 'differential', 'confirmed'} 
        and C.system = 'http://terminology.hl7.org/CodeSystem/condition-ver-status'))
*/
define function GetCondition(id System.Code):
      Last([Condition: id] O
        where  Equal(Encounter.id, O.encounter) 
        and exists(O.verificationStatus.coding C where C.code in {'unconfirmed', 'provisional', 'differential', 'confirmed'} 
        and C.system = 'http://terminology.hl7.org/CodeSystem/condition-ver-status'))


define function assesCondition(O Condition):
  if O is null then 
    false
  else
    true
/*
define function GetCond(idlist List<System.Code>):
  GetCondition(idlist)

define function GetCond(id System.Code):
  GetCondition({id})
*/
define function GetCond(id System.Code):
  (GetCondition(id))

define function GetCond(id System.String, codesystem System.String):
  (GetCondition(coding(id, codesystem)))

define function GetCond(id System.String):
  (GetCondition(coding(id, '{{cs_url}}')))

// ************************   HasCond ************************/
/*
define function HasCond(idlist List<System.Code>):
  assesCondition(GetCondition(idlist))

define function HasCond(id System.Code):
  assesCondition(GetCondition({id}))
*/


define function HasCond(id System.Code):
  assesCondition(GetCondition(id))

define function HasCond(id System.String, codesystem System.String):
  assesCondition(GetCondition(coding(id, codesystem)))

define function HasCond(id System.String):
  assesCondition(GetCondition(coding(id, '{{cs_url}}')))



// ************************   PatientHasHistoryOfCondition ************************/
/*
define function GetHistoricCondition(idlist List<System.Code>,  nbdays Integer):
      Last([Condition: idlist] O
        where  (difference in days between O.recordedDate and Today()) < nbdays
        and exists(O.verificationStatus.coding C where C.code in {'unconfirmed', 'provisional', 'differential', 'confirmed'} 
        and C.system = 'http://terminology.hl7.org/CodeSystem/condition-ver-status'))
*/
context Patient

define function GetHistoricCondition(id System.Code,  nbdays Integer):
      Last([Condition: id] O
        where  (difference in days between O.recordedDate and Today()) < nbdays
        and exists(O.verificationStatus.coding C where C.code in {'unconfirmed', 'provisional', 'differential', 'confirmed'} 
        and C.system = 'http://terminology.hl7.org/CodeSystem/condition-ver-status'))




/*
define function HasCondHistory(idlist List<System.Code>,  nbdays Integer):
  assesCondition(GetHistoricCondition(idlist,  nbdays))


define function HasCondHistory(id System.Code,  nbdays Integer):
  assesCondition(GetHistoricCondition({id}, nbdays))
*/
define function HasCondHistory(id System.Code, nbdays Integer):
  assesCondition(GetHistoricCondition(id,  nbdays))

define function HasCondHistory(id System.String, codesystem System.String, nbdays Integer):
  assesCondition(GetHistoricCondition(coding(id,codesystem),nbdays))


define function HasCondHistory(id System.String, nbdays Integer):
  assesCondition(GetHistoricCondition(coding(id,'{{cs_url}}'),  nbdays))



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
