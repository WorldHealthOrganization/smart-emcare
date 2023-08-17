/*nter"
@author: Patrick Delcroix
@description: This library is part of the project EmCare Project, its allows standardisation for the observation processing
*/

library emcarebase version '1.0.77+build.220'

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.1'

parameter "encounterid" String
//parameter "Encounter" Encounter$
codesystem "RoleCodeSystem" : 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes'
code "Mother": 'MTH' from "RoleCodeSystem"

context Patient

//define encounterid:
//  "Encounter".id




define "Yes":
  true

define "No":
  false 


define function IsInEncounter(ref FHIR.Reference):
    case
    when encounterid = ref.id then true
    when encounterid = Last(Split(ref.reference, '/')) then true
   // when ref.identifier is not null and id = ref.identifier.id then true
    else false
end

define getEncounters:
    [Encounter] E 
      where E.id = "encounterid"
        return E

define getEncounter:
    singleton from getEncounters

define function EmCareExtensions(element Patient, id String):
  element.extension E
      where E.url = ('https://fhir.dk.swisstph-mis.ch/matchbox/fhir/StructureDefinition/' + id)
      return E

define function EmCareExtension(element Patient, id String):
  singleton from EmCareExtensions(element, id)

define function EmCareExtensions(element Encounter, id String):
  element.extension E
      where E.url = ('https://fhir.dk.swisstph-mis.ch/matchbox/fhir/StructureDefinition/' + id)
      return E

define function EmCareExtension(element Encounter, id String):
  singleton from EmCareExtensions(element, id)

define getPrimaryCareGiverReference:
  EmCareExtension(Patient, 'primarycaregiver').value

define getPrimaryCareGiver:
  [RelatedPerson] RP where RP.id = Last(Split(getPrimaryCareGiverReference.reference, '/'))
    return RP

define isMotherPrimaryCareGiver:
  getPrimaryCareGiver is not null and Exists(getPrimaryCareGiver.relationship r where r ~ "Mother")

define "Biological Mother Vital Status":
  EmCareExtension(Patient, 'motherVitalStatus').value
  
define "Biological Father Vital Status":
  EmCareExtension(Patient, 'fatherVitalStatus').value
// person accompanying the child is a participant with a null type
define getRelatedPersonReferenceAccompanyingTheChild:
  Coalesce(First(getEncounter.participant P where not exists(P.type) ).individual, getPrimaryCareGiverReference)

define getRelatedPersonsAccompanyingTheChild:
  [RelatedPerson] RP where RP.id = Last(Split(getRelatedPersonReferenceAccompanyingTheChild.reference, '/'))
    return RP


define getRelatedPersonAccompanyingTheChild:
  singleton from getRelatedPersonsAccompanyingTheChild


define "Person accompanying child today's Relationship to Client":
//WORKARROUND   getRelatedPersonAccompanyingTheChild.relationship
  EmCareExtension(getEncounter, 'motherpresent').value





define function getValue(O Observation):
  case  
      when  O is null then null
      when O.value is CodeableConcept then Coalesce(First(O.value.coding C where C.system  = 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes'), First(O.value.coding))
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

define function GetObservationDuringEncounter(id System.Code):
      First([Observation: id ] O
        where   IsInEncounter(O.encounter) 
        and O.status in { 'final', 'amended', 'corrected','cancelled'} 
        sort by issued.value desc) 

  /*
  this is commented for performance improvement, even if it hides a valid observation if there is an more recent unvalid one
  Coalesce(GetObservationDuringEncounterDone(id ), GetObservationDuringEncounterNotFound(id ))
  */
/*
define function GetObservationDuringEncounterDone(idlist List<System.Code>):
      Last([Observation: idlist ] O
        where   IsInEncounter(O.encounter) 
        and O.status in { 'final', 'amended', 'corrected'})
*/
define function GetObservationDuringEncounterDone(id System.Code):
      First([Observation: id ] O
        where   IsInEncounter(O.encounter) 
        and O.status in { 'final', 'amended', 'corrected'} 
        sort by issued.value desc) 


define function HasObservationCodeDuringEncounterDone(id System.Code, valueCode System.Code):
    
    Exists([Observation: id ] O
        where   IsInEncounter(O.encounter) 
        and O.status in { 'final', 'amended', 'corrected'}
        and O.value is FHIR.CodeableConcept
        and O.value ~ valueCode)

//Exists([Observation] O where O.status in { 'final', 'amended', 'corrected'} and O.value is FHIR.CodeableConcept   and Exists( O.value.coding C where C is FHIR.Coding and C.code = FHIR.code {value: 'EmCare.B20S2.DE04'}) )"

/*
define function GetObservationDuringEncounterNotFound(idlist List<System.Code>):
      Last([Observation: idlist] O
       where  IsInEncounter(O.encounter) 
          and O.status in {'cancelled'})
          */
define function GetObservationDuringEncounterNotFound(id System.Code):
      First([Observation: id] O
       where  IsInEncounter(O.encounter) 
          and O.status in {'cancelled'}
          sort by issued.value desc)
/*

define function GetNumberObservationDuringEncounter(idlist List<System.Code>):
  Count(
    [Observation: idlist] O
        where  IsInEncounter( O.encounter) 
        and O.status in { 'final', 'amended', 'corrected'})
*/
define function GetNumberObservationDuringEncounter(id System.Code):
  Count(
    [Observation: id] O
        where  IsInEncounter( O.encounter) 
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
    getValue(GetObservationDuringEncounter(coding(id, 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')))

define function HasObsValueCode(id System.String, value System.Code):
   HasObservationCodeDuringEncounterDone(coding(id, 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes') , value )
  
define function HasObsValueCode(id System.String, value System.String):
   HasObservationCodeDuringEncounterDone(coding(id, 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes') , coding(value, 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes') )

define function HasObsValueCode(id System.Code, value System.String):
   HasObservationCodeDuringEncounterDone(id , coding(value, 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes') )

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
    assesObservation(GetObservationDuringEncounter(coding(id)))

define function HasObs(id FHIR.code, codesystem System.String):
    assesObservation(GetObservationDuringEncounter(coding(id, codesystem)))
/*
define function GetHistoricObservation(idlist List<System.Code>, nbdays Integer):
  if GetHistoricObservationNotfound(idlist , codesystem , nbdays ) is null then 
      GetHistoricObservationNotfound(idlist , codesystem , nbdays )
  else
    GetHistoricObservationNotfound(idlist , codesystem , nbdays )
*/

define function GetHistoricObservation(id System.Code, nbdays Integer):
      First([Observation: id ] O
        where O.status in { 'final', 'amended', 'corrected','cancelled'} 
        and (difference in days between O.issued and Today()) < nbdays 
        sort by issued.value desc )

  //Coalesce(GetHistoricObservationDone(id ,  nbdays ),  GetHistoricObservationNotfound(id  , nbdays ))
/*
define function GetHistoricObservationDone(idlist List<System.Code>, nbdays Integer):
      Last([Observation: idlist ] O
        where  O.status in { 'final', 'amended', 'corrected'}
        and (difference in days between O.issued and Today()) < nbdays)
*/
define function GetHistoricObservationDone(id System.Code, nbdays Integer):
      First([Observation: id ] O
        where  O.status in { 'final', 'amended', 'corrected'}
        and (difference in days between O.issued and Today()) < nbdays 
        sort by issued.value desc )

/*
define function GetHistoricObservationNotfound(idlist List<System.Code>, nbdays Integer):
      Last([Observation: idlist] O
        where  O.status in {'cancelled'}
*/
define function GetHistoricObservationNotfound(id System.Code, nbdays Integer):
      First([Observation: id] O
        where  O.status in {'cancelled'}
          and (difference in days between O.issued and Today()) < nbdays 
        sort by issued.value desc)
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
  assesObservation(GetHistoricObservation(coding(id), nbdays))

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
                system:  'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes'
            }


define function ToUrl(s System.String):
  url {value:s}

define function ToIntC(b System.Boolean):
  case
  when b is null then 0
  when b = true then 1
  else 0
  end


// ************************   GetCond ************************/
/*
define function GetCoO.encounterndition(idlist List<System.Code>):
      Last([Condition: idlist] O
        where  IsInEncounter( O.encounter) 
        and exists(O.verificationStatus.coding C where C.code in {'unconfirmed', 'provisional', 'differential', 'confirmed'} 
        and C.system = 'http://terminology.hl7.org/CodeSystem/condition-ver-status'))
*/
define function GetCondition(id System.Code):
      First([Condition: id] O
        where  IsInEncounter(O.encounter) 
        and exists(O.verificationStatus.coding C where C.code in {'unconfirmed', 'provisional', 'differential', 'confirmed'} 
        and C.system = 'http://terminology.hl7.org/CodeSystem/condition-ver-status') 
        sort by recordedDate desc)


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
  (GetCondition(coding(id)))

// ************************   HasCond ************************/
/*
define function HasCond(idlist List<System.Code>):
  assesCondition(GetCondition(idlist))


3518GetCondition(id))
*/
define function HasCond(id System.String, codesystem System.String):
  assesCondition(GetCondition(coding(id, codesystem)))

define function HasCond(id System.String):
  assesCondition(GetCondition(coding(id)))

define function HasCond(id System.Code):
  assesCondition(GetCondition(id))

// ************************   PatientHasHistoryOfCondition ************************/
/*
define function GetHistoricCondition(idlist List<System.Code>,  nbdays Integer):
      Last([Condition: idlist] O
        where  (difference in days between O.recordedDate and Today()) < nbdays
        and exists(O.verificationStatus.coding C where C.code in {'unconfirmed', 'provisional', 'differential', 'confirmed'} 
        and C.system = 'http://terminology.hl7.org/CodeSystem/condition-ver-status'))
*/

define function GetHistoricCondition(id System.Code,  nbdays Integer):
      First([Condition: id] O
        where  (difference in days between O.recordedDate and Today()) < nbdays
        and exists(O.verificationStatus.coding C where C.code in {'unconfirmed', 'provisional', 'differential', 'confirmed'} 
        and C.system = 'http://terminology.hl7.org/CodeSystem/condition-ver-status') 
        sort by recordedDate desc)




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
  assesCondition(GetHistoricCondition(coding(id),  nbdays))



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
