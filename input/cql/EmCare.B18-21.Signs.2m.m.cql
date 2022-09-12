library emcareb1821signs2mm
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers 
include EmCareBase called Base


context Patient


/* AgeInMonths : nan*/
define "AgeInMonths":

    AgeInMonths()
/* EmCare.B20S1.DE01 : The client is reported to have diarrhoea*/
define "EmCare.B20S1.DE01":

    HasObs({c('EmCare.B20S1.DE01')},'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
/* EmCare.A.DE31 : The client's mother and father's vital status*/
define "EmCare.A.DE31":

    HasObs({c('EmCare.A.DE31')},'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
/* EmCare.B21S1.DE01 : The client is breastfed*/
define "EmCare.B21S1.DE01":

    HasObs({c('EmCare.B21S1.DE01')},'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
/* EmCare.B18S1.DE02 : The client is reported to have difficulty with Feeding*/
define "EmCare.B18S1.DE02":

    HasObs({c('EmCare.B18S1.DE02')},'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
/* EmCare.B6.DE06 : The client's weight in Kilograms*/
define "EmCare.B6.DE06":

    HasObs({c('EmCare.B6.DE06')},'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')