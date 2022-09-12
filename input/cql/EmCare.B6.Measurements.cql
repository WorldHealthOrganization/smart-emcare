library emcareb6measurements
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers 


context Patient


/* AgeInDays : Age auto-calculated (presented as number of years, months, days) of the client based on date of birth OR estimated age OR based on auto-calculation from estimaged date of birth*/
define "AgeInDays":

    AgeInDays()
/* AgeInMonth : Age auto-calculated (presented as number of years, months, days) of the client based on date of birth OR estimated age OR based on auto-calculation from estimaged date of birth*/
define "AgeInMonth":

    AgeInMonths()
/* AgeInYears : Age auto-calculated (presented as number of years, months, days) of the client based on date of birth OR estimated age OR based on auto-calculation from estimaged date of birth*/
define "AgeInYears":

    AgeInYears()