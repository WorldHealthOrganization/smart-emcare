/*
@author: Patrick Delcroix
@description: This library is part of the project EmCare
*/
library zfunctions version '1.0.252+build.395'
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers 
include WeightForAge version '1.0.4' called wfa
include WeightForLength version '1.0.4' called wfl
include WeightForHeight version '1.0.4' called wfh

parameter "sex" String
parameter "dob" Date
parameter "ageindays" Date
parameter "height" Decimal
parameter "length" Decimal
parameter "weight" Decimal
parameter "zscore" Decimal

context Patient

define "AgeInDays":
    case
        when Patient is not null then AgeInDays()
        when  "dob" is not null then (difference in days between "dob" and Today())
        else "ageindays"
    end

define "Sex":
    case
        when Patient is not null then Patient.gender.value
        else "sex"
    end

define "WAZ":
    wfa.generateZScoreWeightForAge("Sex", "AgeInDays" , "weight")

define "WA":
    wfa.generateWeightFromAge("Sex", "AgeInDays" , "zscore") 

define "WLZ":
    wfl.generateZScoreWeightForLength("Sex", "length" , "weight")

define "WL":
    wfl.generateWeightFromLength("Sex", "length" , "zscore")

define "WHZ":
    wfh.generateZScoreWeightForHeight("Sex", "height" , "weight")

define "WH":
    wfh.generateWeightFromHeight("Sex", "height" , "zscore")