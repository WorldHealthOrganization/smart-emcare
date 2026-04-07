# Ccc.B22.SecondTemperature - WHO FHIR Implementation Guide (IG): Integrated Management of Childhood Illness (IMCI) in emergencies v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Ccc.B22.SecondTemperature**

## Library: Ccc.B22.SecondTemperature 

| | |
| :--- | :--- |
| *Official URL*:https://smart.who.int/ccc/Library/Cccb22secondtemperature | *Version*:0.1.0 |
| Active as of 2026-04-07 | *Computable Name*:Cccb22secondtemperature |
| *Other Identifiers:*Ccc.b22.secondtemperature (use: official, ) | |

* **Parameters: **: **Id: **
  * * **Name**: ageinmonths
  * **Type**: integer
  * **Min**: 
  * **Max**: 
  * **In/Out**: Out
* **Name**: age
  * **Type**: integer
  * **Min**: 
  * **Max**: 
  * **In/Out**: Out: Cccb22secondtemperature
* **Parameters: **: **Version: **
  * * **Name**: ageinmonths
  * **Type**: integer
  * **Min**: 
  * **Max**: 
  * **In/Out**: Out
* **Name**: age
  * **Type**: integer
  * **Min**: 
  * **Max**: 
  * **In/Out**: Out: 0.1.0
* **Parameters: **: **Url: **
  * * **Name**: ageinmonths
  * **Type**: integer
  * **Min**: 
  * **Max**: 
  * **In/Out**: Out
* **Name**: age
  * **Type**: integer
  * **Min**: 
  * **Max**: 
  * **In/Out**: Out: [Ccc.B22.SecondTemperature](Library-Cccb22secondtemperature.md)
* **Parameters: **: ** Official **
  * * **Name**: ageinmonths
  * **Type**: integer
  * **Min**: 
  * **Max**: 
  * **In/Out**: Out
* **Name**: age
  * **Type**: integer
  * **Min**: 
  * **Max**: 
  * **In/Out**: Out:  Ccc.b22.secondtemperature 
* **Parameters: **: **Date: **
  * * **Name**: ageinmonths
  * **Type**: integer
  * **Min**: 
  * **Max**: 
  * **In/Out**: Out
* **Name**: age
  * **Type**: integer
  * **Min**: 
  * **Max**: 
  * **In/Out**: Out: 2026-04-07 13:45:53+0000
* **Parameters: **: **Publisher: **
  * * **Name**: ageinmonths
  * **Type**: integer
  * **Min**: 
  * **Max**: 
  * **In/Out**: Out
* **Name**: age
  * **Type**: integer
  * **Min**: 
  * **Max**: 
  * **In/Out**: Out: World Health Organization (WHO)
* **Parameters: **: **Jurisdiction: **
  * * **Name**: ageinmonths
  * **Type**: integer
  * **Min**: 
  * **Max**: 
  * **In/Out**: Out
* **Name**: age
  * **Type**: integer
  * **Min**: 
  * **Max**: 
  * **In/Out**: Out: 001



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "Cccb22secondtemperature",
  "url" : "https://smart.who.int/ccc/Library/Cccb22secondtemperature",
  "identifier" : [{
    "use" : "official",
    "value" : "Ccc.b22.secondtemperature"
  }],
  "version" : "0.1.0",
  "name" : "Cccb22secondtemperature",
  "title" : "Ccc.B22.SecondTemperature",
  "status" : "active",
  "type" : {
    "coding" : [{
      "system" : "http://hl7.org/fhir/ValueSet/library-type",
      "code" : "logic-library"
    }]
  },
  "date" : "2026-04-07T13:45:53+00:00",
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
    "name" : "ageinmonths",
    "use" : "out",
    "type" : "integer"
  },
  {
    "name" : "age",
    "use" : "out",
    "type" : "integer"
  }]
}

```
