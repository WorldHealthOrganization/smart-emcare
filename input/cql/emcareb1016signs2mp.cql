/*
@author: Patrick Delcroix
@description: This library is part of the project EmCare
*/
library emcareb1016signs2mp version '0.99.99'
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers 
include EmCareBase version '0.99.99' called Base
include EmCareObservation version '0.99.99' called obs
include EmCareValueSet version '0.99.99' called val


context Patient
      

/* ageinmonths : Age*/
define "ageinmonths":
    AgeInMonths()

/* age : Age*/
define "age":
    AgeInMonths()

/* cough : nan*/
define "cough":
    Base.HasObs('EmCare.B10S1.DE05','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* difficulty breathing : nan*/
define "difficulty breathing":
    Base.HasObs('EmCare.B10S1.DE01','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* oral fluid test results : nan*/
define "oral fluid test results":
    obs."completely unable to drink or vomits immediately / everything"=Base."Yes" or  obs."unable to perform oral fluid test"=Base."Yes"

/* diarrhoea : nan*/
define "diarrhoea":
    Base.HasObs('EmCare.B11S1.DE01','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* not able to drink or breastfeed : nan*/
define "not able to drink or breastfeed":
    Base.HasObs('EmCare.B7.DE09','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* unconscious or lethargic : nan*/
define "unconscious or lethargic":
    Base.HasObs('EmCare.B7.DE08','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes') is not null and Base.HasObs('EmCare.B7.DE08','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes') != Base."No" or Base.HasObs('EmCare.B7.DE08a','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes') is not null and Base.HasObs('EmCare.B7.DE08a','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes') != Base."No"

/* fever : nan*/
define "fever":
    Base.HasObs('EmCare.B12S1.DE02','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* refusal to use a limb : nan*/
define "refusal to use a limb":
    Base.HasObs('EmCare.B12S1.DE07','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* has danger signs : nan*/
define "has danger signs":
    Base.HasObs('EmCare.B8-B9.DE03','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* ear problem : nan*/
define "ear problem":
    Base.HasObs('EmCare.B13S1.DE01','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* eye problem : nan*/
define "eye problem":
    Base.HasObs('EmCare.B14S1.DE03','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* skin problem : nan*/
define "skin problem":
    Base.HasObs('EmCare.B14S1.DE01','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* ear discharge : nan*/
define "ear discharge":
    Base.HasObs('EmCare.B13S1.DE03','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* ear discharge for how long? : nan*/
define "ear discharge for how long?":
    Base.HasObs('EmCare.B13S1.DE04','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* itchy skin : nan*/
define "itchy skin":
    Base.HasObs('EmCare.B14S1.DE02','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
