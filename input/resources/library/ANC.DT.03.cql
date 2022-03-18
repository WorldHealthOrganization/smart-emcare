library ANC.DT.03

 using FHIR version 4.0.1

 include FHIRHelpers version ' 4.0.1'

 include EmCareConcepts called Config
 include EmCareConcepts called Cx
 include EmCareDataElements called PatientData

 context Patient

 /*
 Patient.hasCondition( "Nausea and vomiting")
 */
 define "None":
   false

 /*
 Patient.hasCondition( "Nausea and vomiting")
 */
 define "None":
   false

 /*
 Patient.hasCondition( "Heartburn")
 */
 define "None":
   false

 /*
 Patient.hasCondition( "Heartburn")
 */
 define "None":
   false

 /*
 Patient.hasCondition( "Leg cramps")
 */
 define "None":
   false

 /*
 Patient.hasCondition( "Leg cramps")
 */
 define "None":
   false

 /*
 (((Patient.hasCondition( "Low back pain" ) OR not Patient.hasCondition( "Contractions" ) OR not Patient.hasCondition( "Contractions" ) OR not Patient.hasCondition( "Contractions" ))
  OR (Patient.hasCondition( "Pelvic pain" ) OR not Patient.hasCondition( "Contractions" ) OR not Patient.hasCondition( "Contractions" ) OR not Patient.hasCondition( "Contractions" )))
  OR (Patient.hasCondition( "Low back pain" ) OR not Patient.hasCondition( "Contractions" ) OR not Patient.hasCondition( "Contractions" ) OR not Patient.hasCondition( "Contractions" )))
  OR (Patient.hasCondition( "Pelvic pain" ) OR not Patient.hasCondition( "Contractions" ) OR not Patient.hasCondition( "Contractions" ) OR not Patient.hasCondition( "Contractions" ))
 */
 define "None":
   false

 /*
 (((((Patient.hasCondition( "Constipation"))
  OR (Patient.hasCondition( "Constipation")))
  OR (Patient.hasCondition( "Varicose veins" ) OR not Patient.hasCondition( "Leg pain" ) OR not Patient.hasCondition( "Leg pain" )))
  OR (Patient.hasCondition( "Oedema" ) OR not Patient.hasCondition( "Leg pain" ) OR not Patient.hasCondition( "Leg pain" )))
  OR (Patient.hasCondition( "Varicose veins" ) OR not Patient.hasCondition( "Leg pain" ) OR not Patient.hasCondition( "Leg pain" )))
  OR (Patient.hasCondition( "Oedema" ) OR not Patient.hasCondition( "Leg pain" ) OR not Patient.hasCondition( "Leg pain" ))
 */
 define "None":
   false

 /*
 (((Patient.hasCondition( "Contractions"))
  OR (Patient.hasCondition( "Extreme pelvic pain, cannot walk (symphysis pubis dysfunction)")))
  OR (Patient.hasCondition( "Contractions")))
  OR (Patient.hasCondition( "Extreme pelvic pain, cannot walk (symphysis pubis dysfunction)"))
 */
 define "None":
   false

 /*
 (Patient.hasCondition( "Pain during urination (dysuria)"))
  OR (Patient.hasCondition( "Pain during urination (dysuria)"))
 */
 define "None":
   false

 /*
 (((Patient.hasCondition( "Leg pain"))
  OR (Patient.hasCondition( "Leg redness")))
  OR (Patient.hasCondition( "Leg pain")))
  OR (Patient.hasCondition( "Leg redness"))
 */
 define "None":
   false

 /*
 (((((((((((((((((((Patient.hasCondition( "Abnormal vaginal discharge"))
  OR (Patient.hasCondition( "Breathing difficulty")))
  OR (Patient.hasCondition( "Breathless during routine activities")))
  OR (Patient.hasCondition( "Cough lasting more than 3 weeks")))
  OR (Patient.hasCondition( "Fever")))
  OR (Patient.hasCondition( "Gets tired easily")))
  OR (Patient.hasCondition( "Headache")))
  OR (Patient.hasCondition( "Vaginal bleeding")))
  OR (Patient.hasCondition( "Vaginal discharge")))
  OR (Patient.hasCondition( "Visual disturbance")))
  OR (Patient.hasCondition( "Abnormal vaginal discharge")))
  OR (Patient.hasCondition( "Breathing difficulty")))
  OR (Patient.hasCondition( "Breathless during routine activities")))
  OR (Patient.hasCondition( "Cough lasting more than 3 weeks")))
  OR (Patient.hasCondition( "Fever")))
  OR (Patient.hasCondition( "Gets tired easily")))
  OR (Patient.hasCondition( "Headache")))
  OR (Patient.hasCondition( "Vaginal bleeding")))
  OR (Patient.hasCondition( "Vaginal discharge")))
  OR (Patient.hasCondition( "Visual disturbance"))
 */
 define "None":
   false

 