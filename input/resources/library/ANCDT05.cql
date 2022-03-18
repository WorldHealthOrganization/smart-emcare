library ANCDT05

 using FHIR version 4.0.1

 include FHIRHelpers version ' 4.0.1'

 include EmCareConcepts called Config
 include EmCareConcepts called Cx
 include EmCareDataElements called PatientData

 context Patient

 /*
 (((Patient.hasCondition( "Nausea and vomiting"))
  OR (Patient.hasCondition( "Heartburn")))
  OR (Patient.hasCondition( "Heartburn")))
  OR (Patient.hasCondition( "Leg cramps"))
 */
 define "None":
   false

 