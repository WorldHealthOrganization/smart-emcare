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
include emcarecombineddataelements version '0.99.99' called clas


context Patient
context Encounter      

/* has danger signs : nan*/
define "has danger signs":
    clas."emcare.b.g.de01"

/* ageinmonths : Age*/
define "ageinmonths":
    AgeInMonths()

/* alias age : ageinmonths*/
define "age":
    "ageinmonths"

/* cough : nan*/
define "cough":
    Base.GetObsValue('EmCare.B10S1.DE05')

/* difficulty breathing : nan*/
define "difficulty breathing":
    Base.GetObsValue('EmCare.B10S1.DE01')

/* oral fluid test results : nan*/
define "oral fluid test results":
    obs."completely unable to drink or vomits immediately / everything" is not null and obs."completely unable to drink or vomits immediately / everything"=true or  obs."unable to perform oral fluid test" is not null and obs."unable to perform oral fluid test"=true

/* diarrhoea : nan*/
define "diarrhoea":
    Base.GetObsValue('EmCare.B11S1.DE01')

/* not able to drink or breastfeed : nan*/
define "not able to drink or breastfeed":
    Base.GetObsValue('EmCare.B7.DE09')

/* unconscious or lethargic : nan*/
define "unconscious or lethargic":
    Base.HasObs('EmCare.B7.DE08') is not null and Base.HasObs('EmCare.B7.DE08') != false or Base.HasObs('EmCare.B7.DE08a') is not null and Base.HasObs('EmCare.B7.DE08a') != false

/* fever : nan*/
define "fever":
    Base.GetObsValue('EmCare.B.G.DE06')

/* refusal to use a limb : nan*/
define "refusal to use a limb":
    Base.GetObsValue('EmCare.B12S1.DE07')

/* emcare.b14s2.de07 : Generalised Skin Problem*/
define "emcare.b14s2.de07":
    Base.GetObsValue('EmCare.B14S2.DE07')

/* alias generalised skin problem : emcare.b14s2.de07*/
define "generalised skin problem":
    "emcare.b14s2.de07"

/* ear problem : nan*/
define "ear problem":
    Base.GetObsValue('EmCare.B13S1.DE01')

/* eye problem : nan*/
define "eye problem":
    Base.GetObsValue('EmCare.B14S1.DE03')

/* skin problem : nan*/
define "skin problem":
    Base.GetObsValue('EmCare.B14S1.DE01')

/* ear discharge : nan*/
define "ear discharge":
    Base.GetObsValue('EmCare.B13S1.DE03')

/* ear discharge for how long? : nan*/
define "ear discharge for how long?":
    Base.GetObsValue('EmCare.B13S1.DE04')

/* itchy skin : nan*/
define "itchy skin":
    Base.GetObsValue('EmCare.B14S1.DE02')
