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
      

/* AgeInMonths : Age in Month*/
define "AgeInMonths":
    AgeInMonths()

/* Age in Month : Age in Month*/
define "Age in Month":
    AgeInMonths()

/* EmCare.B20S1.DE01 : Diarrhoea*/
define "EmCare.B20S1.DE01":
    Base.HasObs('EmCare.B20S1.DE01','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* Diarrhoea : Diarrhoea*/
define "Diarrhoea":
    Base.HasObs('EmCare.B20S1.DE01','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* EmCare.A.DE31 : Biological Mother Vital Status*/
define "EmCare.A.DE31":
    Base.HasObs('EmCare.A.DE31','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* Biological Mother Vital Status : Biological Mother Vital Status*/
define "Biological Mother Vital Status":
    Base.HasObs('EmCare.A.DE31','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* EmCare.B21S1.DE01 : Breastfed*/
define "EmCare.B21S1.DE01":
    Base.HasObs('EmCare.B21S1.DE01','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* Breastfed : Breastfed*/
define "Breastfed":
    Base.HasObs('EmCare.B21S1.DE01','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* EmCare.B18S1.DE02 : Difficulty with Feeding*/
define "EmCare.B18S1.DE02":
    Base.HasObs('EmCare.B18S1.DE02','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* Difficulty with Feeding : Difficulty with Feeding*/
define "Difficulty with Feeding":
    Base.HasObs('EmCare.B18S1.DE02','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* EmCare.B6.DE06 : Weight*/
define "EmCare.B6.DE06":
    Base.HasObs('EmCare.B6.DE06','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')

/* Weight : Weight*/
define "Weight":
    Base.HasObs('EmCare.B6.DE06','https://fhir.dk.swisstph-mis.ch/matchbox/fhir/CodeSystem/emcare-custom-codes')
