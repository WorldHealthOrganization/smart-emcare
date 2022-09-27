library emcareb6measurements version '4.0.1'
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers 


context Patient


/* AgeInDays.cql : Age auto-calculated (presented as number of years, months, days) of the client based on date of birth OR estimated age OR based on auto-calculation from estimaged date of birth*/
define "AgeInDays.cql":
    AgeInDays()

/* AgeInMonth.cql : Age auto-calculated (presented as number of years, months, days) of the client based on date of birth OR estimated age OR based on auto-calculation from estimaged date of birth*/
define "AgeInMonth.cql":
    AgeInMonths()

/* AgeInYears.cql : Age auto-calculated (presented as number of years, months, days) of the client based on date of birth OR estimated age OR based on auto-calculation from estimaged date of birth*/
define "AgeInYears.cql":
    AgeInYears()
