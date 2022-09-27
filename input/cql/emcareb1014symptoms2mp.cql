library emcareb1014symptoms2mp version '4.0.1'
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers 
include EmCareBase called Base


context Patient


/* EmCare.B6.DE01 : The client's axillary temperature in degrees Celsius (temperature taken under the armpit)*/
define "EmCare.B6.DE01":
    B.HasObs({c('EmCare.B6.DE01')},'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* EmCare.B6.DE05 : The client is hot to touch*/
define "EmCare.B6.DE05":
    B.HasObs({c('EmCare.B6.DE05')},'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* EmCare.B8/B9.DE03 : Variable to check whether patient has been assessed with danger signs or not*/
define "EmCare.B8/B9.DE03":
    B.HasObs({c('EmCare.B8/B9.DE03')},'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* AgeInMonths : Age auto-calculated (presented as number of years, months, days) of the client based on date of birth OR estimated age OR based on auto-calculation from estimaged date of birth*/
define "AgeInMonths":
    AgeInMonths()

/* EmCare.B14S2.DE05 : The client has a generalised or localised skin problem*/
define "EmCare.B14S2.DE05":
    B.HasObs({c('EmCare.B14S2.DE05')},'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* EmCare.B12S2.DE09 : The client has a measles rash*/
define "EmCare.B12S2.DE09":
    B.HasObs({c('EmCare.B12S2.DE09')},'https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* EmCare.B12S1.DE01 : The client's temperature has been measured and the client has a fever*/
define "EmCare.B12S1.DE01":
    ${EmCare.B6.DE01} >= 35 or ${EmCare.B6.DE05}.code=true

/* EmCare.B12S1.DE03 : The length of time the client has or has had fever*/
define "EmCare.B12S1.DE03":
    iff(${EmCare.B6.DE01} >= 37.5 or ${EmCare.B6.DE05}=true, {EmCare.B12S1.DE03}='EmCare.B12S1.DE05', {})

/* EmCare.B14S1.DE01 : The client is reported to have or has had a skin problem*/
define "EmCare.B14S1.DE01":
    (${EmCare.B12S1.DE08}.code = 'EmCare.B12S1.DE12' or (${EmCare.B14S2.DE05}.code = 'EmCare.B14S2.DE06' or ${EmCare.B14S2.DE05}.code = 'EmCare.B14S2.DE07' and ${EmCare.B12S2.DE09}.code = false )
