library EmCareDataElements

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.1'
include FHIRCommon called FC

include WHOCommon called WC
include EmCareCommon called AC
include EmCareConcepts called Cx

context Patient

/*
  @dataElement: EmCare.A.DE38 Caregiver wants to receive SMS or other messages regarding the child's visits and health status
  @activity: EmCare.A4. Gather Client Details?OR ?EmCare.A8.Create Client Record?AND/OR EmCare.A9.Validate Client Details
  @description: The caregiver wants to receive SMS or other messages regarding the client's contacts/visits and health status
*/
define "Caregiver wants to receive SMS or other messages regarding the child's visits and health status":
  [CommunicationRequest]

/*
  @dataElement: EmCare.A.DE07 Visit date
  @activity: EmCare.A4. Gather Client Details?OR ?EmCare.A8.Create Client Record?AND/OR EmCare.A9.Validate Client Details
  @description: The date and time of the client's visit
*/
define "Visit date":
  [Encounter]

/*
  @dataElement: EmCare.A.DE40 Person accompanying child today's First Name
  @activity: EmCare.A4. Gather Client Details?OR ?EmCare.A8.Create Client Record?AND/OR EmCare.A9.Validate Client Details
  @description: First name of person accompanying child today when client has not arrived with the primary Caregiver
*/
define "Person accompanying child today's First Name":
  [Encounter]

/*
  @dataElement: EmCare.A.DE41 Person accompanying child today's Last Name
  @activity: EmCare.A4. Gather Client Details?OR ?EmCare.A8.Create Client Record?AND/OR EmCare.A9.Validate Client Details
  @description: Last name of person accompanying child today when client has not arrived with the primary Caregiver
*/
define "Person accompanying child today's Last Name":
  [Encounter]

/*
  @dataElement: EmCare.A.DE42 Person accompanying child today's contact's phone number
  @activity: EmCare.A4. Gather Client Details?OR ?EmCare.A8.Create Client Record?AND/OR EmCare.A9.Validate Client Details
  @description: Phone number of the visit Caregiver
*/
define "Person accompanying child today's contact's phone number":
  [Encounter]

/*
  @dataElement: EmCare.A.DE43 Person accompanying child today's Relationship to Client
  @activity: EmCare.A4. Gather Client Details?OR ?EmCare.A8.Create Client Record?AND/OR EmCare.A9.Validate Client Details
  @description: The relationship of the visit Caregiver to the client
*/
define "Person accompanying child today's Relationship to Client":
  [Encounter: Cx."Person accompanying child today's Relationship to Client"]

/*
  @dataElement: EmCare.B2.DE01 Type of Visit
  @activity: EmCare.A4. Gather Client Details?OR ?EmCare.A8.Create Client Record?AND/OR EmCare.A9.Validate Client Details
  @description: This is the type of visit - planned or unplanned
*/
define "Type of Visit":
  [Encounter: Cx."Type of Visit"]

/*
  @dataElement: EmCare.B3.DE01 Reason for Consultation
  @activity: EmCare.A4. Gather Client Details?OR ?EmCare.A8.Create Client Record?AND/OR EmCare.A9.Validate Client Details
  @description: The reason for the client's consultation
*/
define "Reason for Consultation":
  [Encounter: Cx."Reason for Consultation"]

/*
  @dataElement: EmCare.A.DE01 Unique identification
  @activity: EmCare.A4. Gather Client Details?OR ?EmCare.A8.Create Client Record?AND/OR EmCare.A9.Validate Client Details
  @description: Unique identifier provided or a universal ID, if used in the country
*/
define "Unique identification":
  [Patient]

/*
  @dataElement: EmCare.A.DE04 First name
  @activity: EmCare.A4. Gather Client Details?OR ?EmCare.A8.Create Client Record?AND/OR EmCare.A9.Validate Client Details
  @description: Client's first name
*/
define "First name":
  [Patient]

/*
  @dataElement: EmCare.A.DE05 Middle Name
  @activity: EmCare.A4. Gather Client Details?OR ?EmCare.A8.Create Client Record?AND/OR EmCare.A9.Validate Client Details
  @description: Client's middle name
*/
define "Middle Name":
  [Patient]

/*
  @dataElement: EmCare.A.DE06 Last name
  @activity: EmCare.A4. Gather Client Details?OR ?EmCare.A8.Create Client Record?AND/OR EmCare.A9.Validate Client Details
  @description: Client's family name or last name
*/
define "Last name":
  [Patient]

/*
  @dataElement: EmCare.A.DE08 Date of birth
  @activity: EmCare.A4. Gather Client Details?OR ?EmCare.A8.Create Client Record?AND/OR EmCare.A9.Validate Client Details
  @description: The client's date of birth (DOB), if known, OR the estimated date of birth IF not known (see EmCare.A.DE10)
*/
define "Date of birth":
  [Patient]

/*
  @dataElement: EmCare.A.DE16 Sex
  @activity: EmCare.A4. Gather Client Details?OR ?EmCare.A8.Create Client Record?AND/OR EmCare.A9.Validate Client Details
  @description: The Sex of the client
*/
define "Sex":
  [Patient: Cx."sex"]

/*
  @dataElement: EmCare.A.DE20 Address
  @activity: EmCare.A4. Gather Client Details?OR ?EmCare.A8.Create Client Record?AND/OR EmCare.A9.Validate Client Details
  @description: Client's home address or address that the client is consenting to disclose
*/
define "Address":
  [Patient]

/*
  @dataElement: EmCare.A.DE35 Caregiver's Mobile telephone number
  @activity: EmCare.A4. Gather Client Details?OR ?EmCare.A8.Create Client Record?AND/OR EmCare.A9.Validate Client Details
  @description: Client's Caregiver's mobile telephone number
*/
define "Caregiver's Mobile telephone number":
  [Patient]

/*
  @dataElement: EmCare.A.DE03 Child's Identity unknown/prefer to remain anonymous
  @activity: EmCare.A4. Gather Client Details?OR ?EmCare.A8.Create Client Record?AND/OR EmCare.A9.Validate Client Details
  @description: The client's identity is unknown or the client's prefers to remain anonymous
*/
define "Child's Identity unknown/prefer to remain anonymous":
  [Patient]

/*
  @dataElement: EmCare.A.DE12 Provide an estimated age or estimated date of birth
  @activity: EmCare.A4. Gather Client Details?OR ?EmCare.A8.Create Client Record?AND/OR EmCare.A9.Validate Client Details
  @description: The client/caregiver will provide an estimated age or estimated date of birth
*/
define "Provide an estimated age or estimated date of birth":
  [Patient]

/*
  @dataElement: EmCare.A.DE21 Primary Caregiver First Name
  @activity: EmCare.A4. Gather Client Details?OR ?EmCare.A8.Create Client Record?AND/OR EmCare.A9.Validate Client Details
  @description: The client's primary Caregiver's first name
*/
define "Primary Caregiver First Name":
  [RelatedPerson]

/*
  @dataElement: EmCare.A.DE22 Primary Caregiver Middle Name
  @activity: EmCare.A4. Gather Client Details?OR ?EmCare.A8.Create Client Record?AND/OR EmCare.A9.Validate Client Details
  @description: The client's primary Caregiver's middle name
*/
define "Primary Caregiver Middle Name":
  [RelatedPerson]

/*
  @dataElement: EmCare.A.DE23 Primary Caregiver Last Name
  @activity: EmCare.A4. Gather Client Details?OR ?EmCare.A8.Create Client Record?AND/OR EmCare.A9.Validate Client Details
  @description: The client's primary Caregiver's last name
*/
define "Primary Caregiver Last Name":
  [RelatedPerson]

/*
  @dataElement: EmCare.A.DE24 Primary Caregiver's Relationship to Client
  @activity: EmCare.A4. Gather Client Details?OR ?EmCare.A8.Create Client Record?AND/OR EmCare.A9.Validate Client Details
  @description: The relationship of the primary Caregiver to the client
*/
define "Primary Caregiver's Relationship to Client":
  [RelatedPerson: Cx."Relationship to Client"]

/*
  @dataElement: EmCare.A.DE34 Relationship Father
  @activity: EmCare.A4. Gather Client Details?OR ?EmCare.A8.Create Client Record?AND/OR EmCare.A9.Validate Client Details
  @description: Relationship Father
*/
define "Relationship Father":
  [RelatedPerson: Cx."FTH"]

/*
  @dataElement: EmCare.A.DE32 Biological Father Vital Status
  @activity: EmCare.A4. Gather Client Details?OR ?EmCare.A8.Create Client Record?AND/OR EmCare.A9.Validate Client Details
  @description: The client's mother and father's vital status
*/
define "Biological Father Vital Status":
  [RelatedPerson]

/*
  @dataElement: EmCare.A.DE33 Relationship Mother
  @activity: EmCare.A4. Gather Client Details?OR ?EmCare.A8.Create Client Record?AND/OR EmCare.A9.Validate Client Details
  @description: Relationship Mother
*/
define "Relationship Mother":
  [RelatedPerson: Cx."MTH"]

/*
  @dataElement: EmCare.A.DE31 Biological Mother Vital Status
  @activity: EmCare.A4. Gather Client Details?OR ?EmCare.A8.Create Client Record?AND/OR EmCare.A9.Validate Client Details
  @description: The client's mother and father's vital status
*/
define "Biological Mother Vital Status":
  [RelatedPerson]

/*
  @dataElement: EmCare.B3.DE05 Is the child sick today
  @activity: EmCare.B3. Determine Reason for Consultation
  @description: The client's visit is for a well child but the child is also presenting as sick
*/
define "Is the child sick today":
  [Observation: Cx."Is the child sick today"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Coalesce(WC.ModifierExtension(O, 'who-notDone').value, false) is false


/*
  @dataElement: EmCare.B6.DE01 Axillary Temperature
  @activity: EmCare.B3. Determine Reason for Consultation
  @description: The client's axillary temperature in degrees Celsius (temperature taken under the armpit)
*/
define "Axillary Temperature":
  [Observation] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Coalesce(WC.ModifierExtension(O, 'who-notDone').value, false) is false


/*
  @dataElement: EmCare.B6.DE18 Visually assess for whether underweight (for drug dose calculation)
  @activity: EmCare.B3. Determine Reason for Consultation
  @description: The health care worker visually assesses for whether underweight (for drug dosing calculations)
*/
define "Visually assess for whether underweight (for drug dose calculation)":
  [Observation] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Coalesce(WC.ModifierExtension(O, 'who-notDone').value, false) is false


/*
  @dataElement: EmCare.B6.DE22 Date of measurement
  @activity: EmCare.B3. Determine Reason for Consultation
  @description: The date when the measurement was taken
*/
define "Date of measurement":
  [Observation] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Coalesce(WC.ModifierExtension(O, 'who-notDone').value, false) is false


/*
  @dataElement: EmCare.B6.DE04 Thermometer not available
  @activity: EmCare.B6. Measurements
  @description: A thermometer is not available to accurately measure the client's temperature
*/
define "Thermometer not available":
  [Observation] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Coalesce(WC.ModifierExtension(O, 'who-notDone').value, false) is false


