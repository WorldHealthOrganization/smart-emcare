
#### EmCare.A4. Gather Client Details?OR ?EmCare.A8.Create Client Record?AND/OR EmCare.A9.Validate Client Details

Data elements for this activity can be collected using the [EmCareA4](Questionnaire-EmCareA4.html)

|Id|Label|Description|Type|Profile Path|
|---|---|---|---|---|
|EmCare.A.DE38|Caregiver wants to receive SMS or other messages regarding the child's visits and health status|The caregiver wants to receive SMS or other messages regarding the client's contacts/visits and health status|Code|[CommunicationRequest.medium.sms](StructureDefinition-emcare-a-de38.html)|
|EmCare.A.DE07|Visit date|The date and time of the client's visit|dateTime|[Encounter.period.start](StructureDefinition-emcare-encounter.html)|
|EmCare.A.DE40|Person accompanying child today's First Name|First name of person accompanying child today when client has not arrived with the primary Caregiver|string|[RelatedPerson.name.given](StructureDefinition-emcare-encounter.html)|
|EmCare.A.DE41|Person accompanying child today's Last Name|Last name of person accompanying child today when client has not arrived with the primary Caregiver|string|[RelatedPerson.name.family](StructureDefinition-emcare-encounter.html)|
|EmCare.A.DE42|Person accompanying child today's contact's phone number|Phone number of the visit Caregiver|null|[RelatedPerson.telecom.contactPoint.system.phone](StructureDefinition-emcare-encounter.html)|
|EmCare.A.DE43|Person accompanying child today's Relationship to Client|The relationship of the visit Caregiver to the client|CodeableConcept|[RelatedPerson.relationship](StructureDefinition-emcare-encounter.html)|
|EmCare.B2.DE01|Type of Visit|This is the type of visit - planned or unplanned|CodeableConcept|[Encounter.type](StructureDefinition-emcare-encounter.html)|
|EmCare.B3.DE01|Reason for Consultation|The reason for the client's consultation|CodeableConcept|[Encounter.reasonCode](StructureDefinition-emcare-encounter.html)|
|EmCare.A.DE01|Unique identification|Unique identifier provided or a universal ID, if used in the country|string|[Patient.identifier.id.value](StructureDefinition-emcare-patient.html)|
|EmCare.A.DE04|First name|Client's first name|string|[Patient.name.given](StructureDefinition-emcare-patient.html)|
|EmCare.A.DE06|Last name|Client's family name or last name|string|[Patient.name.family](StructureDefinition-emcare-patient.html)|
|EmCare.A.DE08|Date of birth|The client's date of birth (DOB), if known, OR the estimated date of birth IF not known (see EmCare.A.DE10)|dateTime|[Patient.birthDate](StructureDefinition-emcare-patient.html)|
|EmCare.A.DE16|Sex|The Sex of the client|CodeableConcept|[Patient.gender](StructureDefinition-emcare-patient.html)|
|EmCare.A.DE20|Address|Client's home address or address that the client is consenting to disclose|string|[Patient.address.line](StructureDefinition-emcare-patient.html)|
|EmCare.A.DE35|Caregiver's Mobile telephone number|Client's Caregiver's mobile telephone number|string|[RelatedPerson.telecom.value](StructureDefinition-emcare-patient.html)|
|EmCare.A.DE03|Child's Identity unknown/prefer to remain anonymous|The client's identity is unknown or the client's prefers to remain anonymous|boolean|[Patient.identifier.unknown](StructureDefinition-emcare-patient.html)|
|EmCare.A.DE12|Provide an estimated age or estimated date of birth|The client/caregiver will provide an estimated age or estimated date of birth|Code|[Patient.birthDateEstimator](StructureDefinition-emcare-patient.html)|
|EmCare.A.DE23|Primary Caregiver Last Name|The client's primary Caregiver's last name|string|[RelatedPerson.name.family](StructureDefinition-emcare-relatedperson-caregiver.html)|
|EmCare.A.DE24|Primary Caregiver's Relationship to Client|The relationship of the primary Caregiver to the client|CodeableConcept|[RelatedPerson.relationship](StructureDefinition-emcare-relatedperson-caregiver.html)|
|EmCare.A.DE34|Relationship Father|Relationship Father|CodeableConcept|[RelatedPerson.relationship](StructureDefinition-emcare-relatedperson-father.html)|
|EmCare.A.DE32|Biological Father Vital Status|The client's mother and father's vital status|boolean|[RelatedPerson.vitalStatus](StructureDefinition-emcare-relatedperson-father.html)|
|EmCare.A.DE33|Relationship Mother|Relationship Mother|CodeableConcept|[RelatedPerson.relationship](StructureDefinition-emcare-relatedperson-mother.html)|
|EmCare.A.DE31|Biological Mother Vital Status|The client's mother and father's vital status|boolean|[RelatedPerson.vitalStatus](StructureDefinition-emcare-relatedperson-mother.html)|

#### EmCare.B3. Determine Reason for Consultation

Data elements for this activity can be collected using the [EmCareB3](Questionnaire-EmCareB3.html)

|Id|Label|Description|Type|Profile Path|
|---|---|---|---|---|
|EmCare.B3.DE05|Is the child sick today|The client's visit is for a well child but the child is also presenting as sick|CodeableConcept|[Observation.value[x]](StructureDefinition-emcare-observation.html)|
