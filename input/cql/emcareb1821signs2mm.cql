/*
@author: Patrick Delcroix
@description: This library is part of the project EmCare
*/
library emcareb1821signs2mm version '0.99.99'
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers 
include EmCareBase version '0.99.99' called Base
include EmCareObservation version '0.99.99' called obs
include EmCareValueSet version '0.99.99' called val


context Patient
      

/* ageinmonths : Age in Month*/
define "ageinmonths":
    AgeInMonths()

/* age in month : Age in Month*/
define "age in month":
    AgeInMonths()

/* emcare.b20s1.de01 : Diarrhoea*/
define "emcare.b20s1.de01":
    Base.GetObsValue('EmCare.B20S1.DE01','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* diarrhoea : Diarrhoea*/
define "diarrhoea":
    Base.GetObsValue('EmCare.B20S1.DE01','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* emcare.a.de31 : Biological Mother Vital Status*/
define "emcare.a.de31":
    Base.GetObsValue('EmCare.A.DE31','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* biological mother vital status : Biological Mother Vital Status*/
define "biological mother vital status":
    Base.GetObsValue('EmCare.A.DE31','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* emcare.b21s1.de01 : Breastfed*/
define "emcare.b21s1.de01":
    Base.GetObsValue('EmCare.B21S1.DE01','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* breastfed : Breastfed*/
define "breastfed":
    Base.GetObsValue('EmCare.B21S1.DE01','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* emcare.b18s1.de02 : Difficulty with Feeding*/
define "emcare.b18s1.de02":
    Base.GetObsValue('EmCare.B18S1.DE02','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* difficulty with feeding : Difficulty with Feeding*/
define "difficulty with feeding":
    Base.GetObsValue('EmCare.B18S1.DE02','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* emcare.b6.de06 : Weight*/
define "emcare.b6.de06":
    Base.GetObsValue('EmCare.B6.DE06','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* weight : Weight*/
define "weight":
    Base.GetObsValue('EmCare.B6.DE06','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
