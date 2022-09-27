library emcareb22assessmentstests version '4.0.1'
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers 
include EmCareBase called Base


context Patient


/* AgeInMonths : Age auto-calculated (presented as number of years, months, days) of the client based on date of birth OR estimated age OR based on auto-calculation from estimaged date of birth*/
define "AgeInMonths":
    AgeInMonths()

/* EmCare.B10S1.DE05 : The client is reported to have or has had a cough*/
define "EmCare.B10S1.DE05":
    B.HasObs({c('EmCare.B10S1.DE05')},'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* EmCare.B10S1.DE01 : The client is reported to have or has had difficulty breathing*/
define "EmCare.B10S1.DE01":
    B.HasObs({c('EmCare.B10S1.DE01')},'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* EmCare.B10S2.DE01 : The client's respiratory rate*/
define "EmCare.B10S2.DE01":
    B.HasObs({c('EmCare.B10S2.DE01')},'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* EmCare.B11S1.DE01 : The client is reported to have or has had diarrhoea*/
define "EmCare.B11S1.DE01":
    B.HasObs({c('EmCare.B11S1.DE01')},'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* EmCare.B8/B9.DE03 : Variable to check whether patient has been assessed with danger signs or not*/
define "EmCare.B8/B9.DE03":
    B.HasObs({c('EmCare.B8/B9.DE03')},'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* EmCare.B10S2.DE03 : The client has chest indrawing*/
define "EmCare.B10S2.DE03":
    B.HasObs({c('EmCare.B10S2.DE03')},'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* EmCare.B10S2.DE05 : The client is wheezing*/
define "EmCare.B10S2.DE05":
    B.HasObs({c('EmCare.B10S2.DE05')},'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* EmCare.B10S2.DE04 : The client has stridor in a calm child while the client is at rest*/
define "EmCare.B10S2.DE04":
    B.HasObs({c('EmCare.B10S2.DE04')},'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* EmCare.B10S2.DE07 : The client's oxygen saturation measurement*/
define "EmCare.B10S2.DE07":
    B.HasObs({c('EmCare.B10S2.DE07')},'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* EmCare.A.DE24 : The relationship of the primary Caregiver to the client*/
define "EmCare.A.DE24":
    B.HasObs({c('EmCare.A.DE24')},'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* EmCare.B21S1.DE01 : The client is breastfed*/
define "EmCare.B21S1.DE01":
    B.HasObs({c('EmCare.B21S1.DE01', 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* EmCare.B8-B9.DE01 : The client has obstructed or absent breathing*/
define "EmCare.B8-B9.DE01":
    B.HasObs({c('EmCare.B8-B9.DE01')},'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* EmCare.B7.DE02 : The client is convulsing now*/
define "EmCare.B7.DE02":
    B.HasObs({c('EmCare.B7.DE02')},'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* EmCare.B18S1.DE02 : The client is reported to have difficulty with Feeding*/
define "EmCare.B18S1.DE02":
    B.HasObs({c('EmCare.B18S1.DE02')},'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* EmCare.B18S1.DE01 : The client has had convulsions in this illness*/
define "EmCare.B18S1.DE01":
    B.HasObs({c('EmCare.B18S1.DE01')},'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* EmCare.B18S2.DE07 : The client has severe chest indrawing*/
define "EmCare.B18S2.DE07":
    B.HasObs({c('EmCare.B18S2.DE07')},'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* EmCare.B18S2.DE08 : The health care worker's assessments of the client's movements*/
define "EmCare.B18S2.DE08":
    B.HasObs({c('EmCare.B18S2.DE08')},'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* EmCare.B18S2.DE01 : The client's Temperature has been measured*/
define "EmCare.B18S2.DE01":
    B.HasObs({c('EmCare.B18S2.DE01')},'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* EmCare.B19S2.DE01 : The client has yellow skin*/
define "EmCare.B19S2.DE01":
    B.HasObs({c('EmCare.B19S2.DE01')},'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* EmCare.B19S2.DE04 : The age at which the Jaundice first appeared*/
define "EmCare.B19S2.DE04":
    B.HasObs({c('EmCare.B19S2.DE04')},'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* EmCare.B19S2.DE02 : The client has yellow palms or yellow soles*/
define "EmCare.B19S2.DE02":
    B.HasObs({c('EmCare.B19S2.DE02')},'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* EmCare.B21S2.DE01 : The client's weight status*/
define "EmCare.B21S2.DE01":
    B.HasObs({c('EmCare.B21S2.DE01')},'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* EmCare.B12S2.DE01 : The client has a stiff neck*/
define "EmCare.B12S2.DE01":
    B.HasObs({c('EmCare.B12S2.DE01')},'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* EmCare.B12S1.DE15 : The client is in a high / low / no malaria risk area*/
define "EmCare.B12S1.DE15":
    B.HasObs({c('EmCare.B12S1.DE15')},'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* EmCare.B12S1.DE19 : The client has recently travelled to a high Malaria risk area*/
define "EmCare.B12S1.DE19":
    B.HasObs({c('EmCare.B12S1.DE19')},'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* EmCare.B12S2.DE04 : The health care worker determines if there is an obvious cause of fever (to determine if Malaria test is required)  If no obvious cause of fever a malaria test will be prompted*/
define "EmCare.B12S2.DE04":
    B.HasObs({c('EmCare.B12S2.DE04')},'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* EmCare.B22.DE14a : When Danger Signs are present when the healthcare worker is Unable to Perform Oral Fluid Test it is assumed that the client is completely unable to drink or vomits immediately / everything*/
define "EmCare.B22.DE14a":
    ${EmCare.B22.DE08}.code = 'EmCare.B22.DE14' and ${EmCare.B8/B9.DE03} = true
