library EmCareDT01

 using FHIR version 4.0.1

 include FHIRHelpers version ' 4.0.1'

 include EmCareConcepts called Config
 include EmCareConcepts called Cx
 include EmCareDataElements called PatientData

 context Patient

 /*
 "Register the child in the encounter":
 
 */
 define "now() -  5 years > %subject.BirthDate":
   false

 