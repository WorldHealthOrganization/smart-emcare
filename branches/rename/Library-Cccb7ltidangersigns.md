# Ccc.B7.LTI-DangerSigns - WHO FHIR Implementation Guide (IG): Integrated Management of Childhood Illness (IMCI) in emergencies v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Ccc.B7.LTI-DangerSigns**

## Library: Ccc.B7.LTI-DangerSigns 

| | |
| :--- | :--- |
| *Official URL*:https://smart.who.int/ccc/Library/Cccb7ltidangersigns | *Version*:0.1.0 |
| Active as of 2026-04-07 | *Computable Name*:Cccb7ltidangersigns |
| *Other Identifiers:*Ccc.b7.lti-dangersigns (use: official, ) | |

* **Parameters: **: **Id: **
  * * **Name**: ageinmonth.cql
  * **Type**: integer
  * **Min**: 
  * **Max**: 
  * **In/Out**: Out
* **Name**: age auto-calculated (presented as number of years, months, days) of the client based on date of birth or estimated age or based on auto-calculation from estimaged date of birth
  * **Type**: integer
  * **Min**: 
  * **Max**: 
  * **In/Out**: Out
* **Name**: oftrp
  * **Type**: boolean
  * **Min**: 
  * **Max**: 
  * **In/Out**: Out
* **Name**: ds
  * **Type**: boolean
  * **Min**: 
  * **Max**: 
  * **In/Out**: Out: Cccb7ltidangersigns
* **Parameters: **: **Version: **
  * * **Name**: ageinmonth.cql
  * **Type**: integer
  * **Min**: 
  * **Max**: 
  * **In/Out**: Out
* **Name**: age auto-calculated (presented as number of years, months, days) of the client based on date of birth or estimated age or based on auto-calculation from estimaged date of birth
  * **Type**: integer
  * **Min**: 
  * **Max**: 
  * **In/Out**: Out
* **Name**: oftrp
  * **Type**: boolean
  * **Min**: 
  * **Max**: 
  * **In/Out**: Out
* **Name**: ds
  * **Type**: boolean
  * **Min**: 
  * **Max**: 
  * **In/Out**: Out: 0.1.0
* **Parameters: **: **Url: **
  * * **Name**: ageinmonth.cql
  * **Type**: integer
  * **Min**: 
  * **Max**: 
  * **In/Out**: Out
* **Name**: age auto-calculated (presented as number of years, months, days) of the client based on date of birth or estimated age or based on auto-calculation from estimaged date of birth
  * **Type**: integer
  * **Min**: 
  * **Max**: 
  * **In/Out**: Out
* **Name**: oftrp
  * **Type**: boolean
  * **Min**: 
  * **Max**: 
  * **In/Out**: Out
* **Name**: ds
  * **Type**: boolean
  * **Min**: 
  * **Max**: 
  * **In/Out**: Out: [Ccc.B7.LTI-DangerSigns](Library-Cccb7ltidangersigns.md)
* **Parameters: **: ** Official **
  * * **Name**: ageinmonth.cql
  * **Type**: integer
  * **Min**: 
  * **Max**: 
  * **In/Out**: Out
* **Name**: age auto-calculated (presented as number of years, months, days) of the client based on date of birth or estimated age or based on auto-calculation from estimaged date of birth
  * **Type**: integer
  * **Min**: 
  * **Max**: 
  * **In/Out**: Out
* **Name**: oftrp
  * **Type**: boolean
  * **Min**: 
  * **Max**: 
  * **In/Out**: Out
* **Name**: ds
  * **Type**: boolean
  * **Min**: 
  * **Max**: 
  * **In/Out**: Out:  Ccc.b7.lti-dangersigns 
* **Parameters: **: **Date: **
  * * **Name**: ageinmonth.cql
  * **Type**: integer
  * **Min**: 
  * **Max**: 
  * **In/Out**: Out
* **Name**: age auto-calculated (presented as number of years, months, days) of the client based on date of birth or estimated age or based on auto-calculation from estimaged date of birth
  * **Type**: integer
  * **Min**: 
  * **Max**: 
  * **In/Out**: Out
* **Name**: oftrp
  * **Type**: boolean
  * **Min**: 
  * **Max**: 
  * **In/Out**: Out
* **Name**: ds
  * **Type**: boolean
  * **Min**: 
  * **Max**: 
  * **In/Out**: Out: 2026-04-07 13:36:32+0000
* **Parameters: **: **Publisher: **
  * * **Name**: ageinmonth.cql
  * **Type**: integer
  * **Min**: 
  * **Max**: 
  * **In/Out**: Out
* **Name**: age auto-calculated (presented as number of years, months, days) of the client based on date of birth or estimated age or based on auto-calculation from estimaged date of birth
  * **Type**: integer
  * **Min**: 
  * **Max**: 
  * **In/Out**: Out
* **Name**: oftrp
  * **Type**: boolean
  * **Min**: 
  * **Max**: 
  * **In/Out**: Out
* **Name**: ds
  * **Type**: boolean
  * **Min**: 
  * **Max**: 
  * **In/Out**: Out: World Health Organization (WHO)
* **Parameters: **: **Jurisdiction: **
  * * **Name**: ageinmonth.cql
  * **Type**: integer
  * **Min**: 
  * **Max**: 
  * **In/Out**: Out
* **Name**: age auto-calculated (presented as number of years, months, days) of the client based on date of birth or estimated age or based on auto-calculation from estimaged date of birth
  * **Type**: integer
  * **Min**: 
  * **Max**: 
  * **In/Out**: Out
* **Name**: oftrp
  * **Type**: boolean
  * **Min**: 
  * **Max**: 
  * **In/Out**: Out
* **Name**: ds
  * **Type**: boolean
  * **Min**: 
  * **Max**: 
  * **In/Out**: Out: 001



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "Cccb7ltidangersigns",
  "url" : "https://smart.who.int/ccc/Library/Cccb7ltidangersigns",
  "identifier" : [{
    "use" : "official",
    "value" : "Ccc.b7.lti-dangersigns"
  }],
  "version" : "0.1.0",
  "name" : "Cccb7ltidangersigns",
  "title" : "Ccc.B7.LTI-DangerSigns",
  "status" : "active",
  "type" : {
    "coding" : [{
      "system" : "http://hl7.org/fhir/ValueSet/library-type",
      "code" : "logic-library"
    }]
  },
  "date" : "2026-04-07T13:36:32+00:00",
  "publisher" : "World Health Organization (WHO)",
  "contact" : [{
    "name" : "World Health Organization (WHO)",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.who.int"
    }]
  },
  {
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.who.int"
    }]
  }],
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "parameter" : [{
    "name" : "ageinmonth.cql",
    "use" : "out",
    "type" : "integer"
  },
  {
    "name" : "age auto-calculated (presented as number of years, months, days) of the client based on date of birth or estimated age or based on auto-calculation from estimaged date of birth",
    "use" : "out",
    "type" : "integer"
  },
  {
    "name" : "oftrp",
    "use" : "out",
    "type" : "boolean"
  },
  {
    "name" : "ds",
    "use" : "out",
    "type" : "boolean"
  }]
}

```
