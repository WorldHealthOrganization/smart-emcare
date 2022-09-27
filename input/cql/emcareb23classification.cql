library emcareb23classification version '4.0.1'
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers 


context Patient


/* HistoryObstructedOrAbsentBreathing : nan*/
define "HistoryObstructedOrAbsentBreathing":
    ("Age" = "≥2 months to <60 months" and "Danger Signs" = "No" and "Obstructed or Absent Breathing" = "Yes" and "Continue to Assess Sick Child" = "Stabilised, continue consultation")
     AND
     (    B.HasNamedObs({'Danger Signs'}) = false and B.HasNamedObs({'Obstructed or Absent Breathing'}) = true and B.HasNamedObs({'Continue to Assess Sick Child'}).display = 'Stabilised, continue consultation')

/* VerySevereDisease : nan*/
define "VerySevereDisease":
    (${AgeInMonths} >= 2 and ${AgeInMonths} < 60)
     AND
     (    B.HasNamedObs('Convulsiong Now') = true and B.HasNamedObs({'Continue to Assess Sick Child'}).display = 'Stabilised, continue consultation' OR
        B.HasNamedObs('Convulsion(s) in this illness') = true and B.HasNamedObs('Number of Convulsions in this illness').display = '1 convulsion' and B.HasNamedObs('Convulsion(s) last 15 minutes or more') = true OR
        B.HasNamedObs('Convulsion(s) in this illness') = true and B.HasNamedObs({'Number of Convulsions in this illness'}).display = 'Two or more convulsions' OR
        B.HasNamedObs('Unconscious or Lethargic') = true OR
        (B.HasNamedObs('Not able to drink or breastfeed') = true or B.HasNamedObs({'Vomiting'}).display = 'Vomiting Everything') and (B.HasNamedObs({'Oral Fluid Test Results'}).display = 'Completely Unable to Drink' or B.HasNamedObs({'Oral Fluid Test Results'}).display = 'Vomits Immediately / Everything' or B.HasNamedObs({'Oral Fluid Test Results'}).display = 'Unable to Perform Oral Fluid Test'))

/* VerySevereDiseaseOrSeverePneumonia : nan*/
define "VerySevereDiseaseOrSeverePneumonia":
    (${AgeInMonths} >= 2 and ${AgeInMonths} < 60)
     AND
     (    B.HasNamedObs({'Danger Signs'}) = true and B.HasNamedObs('Cough') = true OR
        (B.HasNamedObs('Cough') = true or B.HasNamedObs('Difficulty Breathing') = true) and B.HasNamedObs('Stridor in a Calm Child') = true OR
        (B.HasNamedObs('Cough') = true or B.HasNamedObs('Difficulty Breathing') = true) and B.HasNamedObs({'Oxygen Saturation'}).display = '<90%')

/* LowOxygenSaturation : nan*/
define "LowOxygenSaturation":
    ${AgeInMonths} >= 2 and ${AgeInMonths} < 60 and (((B.HasNamedObs('Cough') = true or B.HasNamedObs('Difficulty Breathing') = true) and B.HasNamedObs({'Oxygen Saturation'}).display = '<90%') or ((B.HasNamedObs('Cough') = true or B.HasNamedObs('Difficulty Breathing') = true) and B.HasNamedObs({'Danger Signs'}) = true and B.HasNamedObs('Wheezing') = true and B.HasNamedObs({'Oxygen Saturation'}).display = '<90%'))

/* withWheezing : nan*/
define "withWheezing":
    ${AgeInMonths} >= 2 and ${AgeInMonths} < 60 and ((B.HasNamedObs('Cough') = true or
    B.HasNamedObs('Difficulty Breathing') = true) and (B.HasNamedObs({'Danger Signs'}) = true or B.HasNamedObs('Stridor in a Calm Child') = true or
    B.HasNamedObs({'Oxygen'}).display = '<90%') and B.HasNamedObs('Wheezing') = true) or
    ((B.HasNamedObs('Cough') = true or
    B.HasNamedObs('Difficulty Breathing') = true) and B.HasNamedObs({'Danger Signs'}) = true and B.HasNamedObs('Wheezing') = true and B.HasNamedObs({'Oxygen'}).display = '<90%') or
    ((B.HasNamedObs('Cough') = true or B.HasNamedObs('Difficulty Breathing') = true) and (PatientB.HasNamedClassification('Confirmed HIV Infection') = true or PatientB.HasNamedClassification('HIV Exposed') = true) and B.HasNamedObs('Chest Indrawing') = true and B.HasNamedObs('Wheezing') = true and (B.HasNamedObs('Inhaled Bronchodilator Trial Results').display = 'Inhaled Bronchodilator Trial Not Feasible or Available' or B.HasNamedObs({'Inhaled Bronchodilator Trial Results').display = 'Chest Indrawing (post inhaled bronchodilator trial)') or ((B.HasNamedObs('Cough') = true or B.HasNamedObs('Difficulty Breathing') = true) and (PatientB.HasNamedClassification('Confirmed HIV Infection') = true or PatientB.HasNamedClassification('HIV Exposed') = true) and B.HasNamedObs('Chest Indrawing') = true and B.HasNamedObs('Wheezing') = true and ((B.HasNamedObs({'Inhaled Bronchodilator Trial Results').display = 'Inhaled Bronchodilator Trial Not Feasible or Available' or B.HasNamedObs({'Inhaled Bronchodilator Trial Results').display = 'Chest Indrawing (post inhaled bronchodilator trial)') and (B.HasNamedObs('Cough for how long?').display = 'More than 14 days') or B.HasNamedObs('Recurrent Wheeze')= true)) or ((B.HasNamedObs('Cough') = true or
    B.HasNamedObs('Difficulty Breathing') = true) and (B.HasNamedCondition('Fast breathing') = true or B.HasNamedCondition)) )
