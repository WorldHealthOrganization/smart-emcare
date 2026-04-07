# EmCare.B22.SecondTemperature - WHO FHIR Implementation Guide (IG): Integrated Management of Childhood Illness (IMCI) in emergencies v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EmCare.B22.SecondTemperature**

## Library: EmCare.B22.SecondTemperature 

| | |
| :--- | :--- |
| *Official URL*:https://smart.who.int/ccc/Library/emcareb22secondtemperature | *Version*:0.1.0 |
| Active as of 2026-04-07 | *Computable Name*:emcareb22secondtemperature |
| *Other Identifiers:*emcare.b22.secondtemperature (use: official, ) | |

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
  * **In/Out**: Out: emcareb22secondtemperature
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
  * **In/Out**: Out: [EmCare.B22.SecondTemperature](Library-emcareb22secondtemperature.md)
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
  * **In/Out**: Out:  emcare.b22.secondtemperature 
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
  * **In/Out**: Out: 2026-04-07 12:55:48+0000
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
  "id" : "emcareb22secondtemperature",
  "url" : "https://smart.who.int/ccc/Library/emcareb22secondtemperature",
  "identifier" : [{
    "use" : "official",
    "value" : "emcare.b22.secondtemperature"
  }],
  "version" : "0.1.0",
  "name" : "emcareb22secondtemperature",
  "title" : "EmCare.B22.SecondTemperature",
  "status" : "active",
  "type" : {
    "coding" : [{
      "system" : "http://hl7.org/fhir/ValueSet/library-type",
      "code" : "logic-library"
    }]
  },
  "date" : "2026-04-07T12:55:48+00:00",
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
