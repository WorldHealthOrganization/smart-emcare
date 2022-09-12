library emcareb1016signs2mp
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers 
include EmCareBase called Base


context Patient


/* AgeInMonths : Age auto-calculated (presented as number of years, months, days) of the client based on date of birth OR estimated age OR based on auto-calculation from estimaged date of birth*/
define "AgeInMonths":

    AgeInMonths()
/* EmCare.B10S1.DE05 : The client is reported to have or has had a cough*/
define "EmCare.B10S1.DE05":

    HasObs({c('EmCare.B10S1.DE05'))},'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
/* EmCare.B10S1.DE01 : The client is reported to have or has had difficulty breathing*/
define "EmCare.B10S1.DE01":

    HasObs({c('EmCare.B10S1.DE01')},'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
/* EmCare.B7.DE10 : The client is reported to be vomiting everything or vomiting but not everything or no vomiting*/
define "EmCare.B7.DE10":

    HasObs({c('EmCare.B7.DE10')},'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
/* EmCare.B11S1.DE01 : The client is reported to have or has had diarrhoea*/
define "EmCare.B11S1.DE01":

    HasObs({c('EmCare.B11S1.DE01')},'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
/* EmCare.B7.DE09 : The client has reported not to have been able to drink or breastfeed or currently is not able to drink or breastfeed.*/
define "EmCare.B7.DE09":

    HasObs({c('EmCare.B7.DE09')},'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
/* EmCare.B7.DE08 : The client is unconscious or lethargic*/
define "EmCare.B7.DE08":

    HasObs({c('EmCare.B7.DE08')},'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
/* EmCare.B12S1.DE02 : The client is reported to have or has had fever*/
define "EmCare.B12S1.DE02":

    HasObs({c('EmCare.B12S1.DE02')},'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
/* EmCare.B12S1.DE07 : The client is reported to be refusing to use a limb*/
define "EmCare.B12S1.DE07":

    HasObs({c('EmCare.B12S1.DE07')},'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
/* EmCare.B12S1.DE13 : The client is in a high / low / no malaria risk area*/
define "EmCare.B12S1.DE13":

    HasObs({c('EmCare.B12S1.DE13')},'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
/* EmCare.B8/B9.DE03 : Variable to check whether patient has been assessed with danger signs or not*/
define "EmCare.B8/B9.DE03":

    HasObs({c('EmCare.B8/B9.DE03')},'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
/* EmCare.B13S1.DE01 : The client is reported to have had or has an ear problem*/
define "EmCare.B13S1.DE01":

    HasObs({c('EmCare.B13S1.DE01')},'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
/* EmCare.B14S1.DE03 : The client is reported to have an eye problem*/
define "EmCare.B14S1.DE03":

    HasObs({c('EmCare.B14S1.DE03')},'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
/* EmCare.B14S1.DE01 : The client is reported to have or has had a skin problem*/
define "EmCare.B14S1.DE01":

    HasObs({c('EmCare.B14S1.DE01')},'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
/* EmCare.B13S1.DE03 : The client is reported to have or has had ear discharge*/
define "EmCare.B13S1.DE03":

    HasObs({c('EmCare.B13S1.DE03')},'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
/* EmCare.B12S1.DE08 : The client is reported to have,  has had, or appears to be in pain*/
define "EmCare.B12S1.DE08":

    HasObs({c('EmCare.B12S1.DE08')},'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')