library healthprevention
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers 
include EmCareBase called Base


context Patient


/* AgeInMonths : nan*/
define "AgeInMonths":

    AgeInMonths()
/* EmCare.B7.DE02 : The client is convulsing now*/
define "EmCare.B7.DE02":

    HasObs({c('EmCare.B7.DE02')},'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
/* EmCare.B7.DE03 : The client is reported to have had one or more convulsions*/
define "EmCare.B7.DE03":

    HasObs({c('EmCare.B7.DE03')},'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
/* EmCare.B8-B9.DE01 : The client has obstructed or absent breathing*/
define "EmCare.B8-B9.DE01":

    HasObs({c('EmCare.B8-B9.DE01')},'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
/* EmCare.B6.DE06 : The client's weight in Kilograms*/
define "EmCare.B6.DE06":

    HasObs({c('EmCare.B6.DE06')},'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
/* EmCare.B18S1.DE02 : The client is reported to have difficulty with Feeding*/
define "EmCare.B18S1.DE02":

    HasObs({c('EmCare.B18S1.DE02')},'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
/* EmCare.B17.DE12 : The date that the client's profile records Deworming being given*/
define "EmCare.B17.DE12":

    PatientLastDeworming({'EmCare.B17.DE13', 'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')