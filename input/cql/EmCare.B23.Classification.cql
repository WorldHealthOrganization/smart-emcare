library emcareb23classification
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers 


context Patient


/* HistoryObstructedOrAbsentBreathing : nan*/
define "HistoryObstructedOrAbsentBreathing":

    ("Age" = "≥2 months to <60 months" and "Danger Signs" = "No" and "Obstructed or Absent Breathing" = "Yes" and "Continue to Assess Sick Child" = "Stabilised, continue consultation")
     AND
     (    HasNamedObs({'Danger Signs'}) = false and HasNamedObs({'Obstructed or Absent Breathing'}) = true and HasNamedObs({'Continue to Assess Sick Child'}).display = 'Stabilised, continue consultation')
/* VerySevereDisease : nan*/
define "VerySevereDisease":

    (${AgeInMonths} >= 2 and ${AgeInMonths} < 60)
     AND
     (    HasNamedObs('Convulsiong Now') = true and HasNamedObs({'Continue to Assess Sick Child'}).display = 'Stabilised, continue consultation' OR
        HasNamedObs('Convulsion(s) in this illness') = true and HasNamedObs('Number of Convulsions in this illness').display = '1 convulsion' and HasNamedObs('Convulsion(s) last 15 minutes or more') = true OR
        HasNamedObs('Convulsion(s) in this illness') = true and HasNamedObs({'Number of Convulsions in this illness'}).display = 'Two or more convulsions' OR
        HasNamedObs('Unconscious or Lethargic') = true OR
        (HasNamedObs('Not able to drink or breastfeed') = true or HasNamedObs({'Vomiting'}).display = 'Vomiting Everything') and (HasNamedObs({'Oral Fluid Test Results'}).display = 'Completely Unable to Drink' or HasNamedObs({'Oral Fluid Test Results'}).display = 'Vomits Immediately / Everything' or HasNamedObs({'Oral Fluid Test Results'}).display = 'Unable to Perform Oral Fluid Test'))
/* VerySevereDiseaseOrSeverePneumonia : nan*/
define "VerySevereDiseaseOrSeverePneumonia":

    (${AgeInMonths} >= 2 and ${AgeInMonths} < 60)
     AND
     (    HasNamedObs({'Danger Signs'}) = true and HasNamedObs('Cough') = true OR
        (HasNamedObs('Cough') = true or HasNamedObs('Difficulty Breathing') = true) and HasNamedObs('Stridor in a Calm Child') = true OR
        (HasNamedObs('Cough') = true or HasNamedObs('Difficulty Breathing') = true) and HasNamedObs({'Oxygen Saturation'}).display = '<90%')
/* LowOxygenSaturation : nan*/
define "LowOxygenSaturation":

    ${AgeInMonths} >= 2 and ${AgeInMonths} < 60 and (((HasNamedObs('Cough') = true or HasNamedObs('Difficulty Breathing') = true) and HasNamedObs({'Oxygen Saturation'}).display = '<90%') or ((HasNamedObs('Cough') = true or HasNamedObs('Difficulty Breathing') = true) and HasNamedObs({'Danger Signs'}) = true and HasNamedObs('Wheezing') = true and HasNamedObs({'Oxygen Saturation'}).display = '<90%'))
/* withWheezing : nan*/
define "withWheezing":

    ${AgeInMonths} >= 2 and ${AgeInMonths} < 60 and ((HasNamedObs('Cough') = true or
    HasNamedObs('Difficulty Breathing') = true) and (HasNamedObs({'Danger Signs'}) = true or HasNamedObs('Stridor in a Calm Child') = true or
    HasNamedObs({'Oxygen'}).display = '<90%') and HasNamedObs('Wheezing') = true) or
    ((HasNamedObs('Cough') = true or
    HasNamedObs('Difficulty Breathing') = true) and HasNamedObs({'Danger Signs'}) = true and HasNamedObs('Wheezing') = true and HasNamedObs({'Oxygen'}).display = '<90%') or
    ((HasNamedObs('Cough') = true or HasNamedObs('Difficulty Breathing') = true) and (Base.PatientHasNamedClassification('Confirmed HIV Infection') = true or Base.PatientHasNamedClassification('HIV Exposed') = true) and HasNamedObs('Chest Indrawing') = true and HasNamedObs('Wheezing') = true and (HasNamedObs('Inhaled Bronchodilator Trial Results').display = 'Inhaled Bronchodilator Trial Not Feasible or Available' or HasNamedObs({'Inhaled Bronchodilator Trial Results').display = 'Chest Indrawing (post inhaled bronchodilator trial)') or ((HasNamedObs('Cough') = true or HasNamedObs('Difficulty Breathing') = true) and (Base.PatientHasNamedClassification('Confirmed HIV Infection') = true or Base.PatientHasNamedClassification('HIV Exposed') = true) and HasNamedObs('Chest Indrawing') = true and HasNamedObs('Wheezing') = true and ((HasNamedObs({'Inhaled Bronchodilator Trial Results').display = 'Inhaled Bronchodilator Trial Not Feasible or Available' or HasNamedObs({'Inhaled Bronchodilator Trial Results').display = 'Chest Indrawing (post inhaled bronchodilator trial)') and (HasNamedObs('Cough for how long?').display = 'More than 14 days') or HasNamedObs('Recurrent Wheeze')= true)) or ((HasNamedObs('Cough') = true or
    HasNamedObs('Difficulty Breathing') = true) and (HasNamedCondition('Fast breathing') = true or HasNamedCondition)) )