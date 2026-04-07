# Ccc.B10-14.Symptoms.2m.p - WHO FHIR Implementation Guide (IG): Integrated Management of Childhood Illness (IMCI) in emergencies v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Ccc.B10-14.Symptoms.2m.p**

## Library: Ccc.B10-14.Symptoms.2m.p 

| | |
| :--- | :--- |
| *Official URL*:https://smart.who.int/ccc/Library/Cccb1014symptoms2mp | *Version*:0.1.0 |
| Active as of 2026-04-07 | *Computable Name*:Cccb1014symptoms2mp |
| *Other Identifiers:*Ccc.b10-14.symptoms.2m.p (use: official, ) | |

* **Parameters: **: **Id: **
  * * **Name**: danger signs
  * **Type**: boolean
  * **Min**: 
  * **Max**: 
  * **In/Out**: Out
* **Name**: Ccc.b12s1.de01
  * **Type**: boolean
  * **Min**: 
  * **Max**: 
  * **In/Out**: Out
* **Name**: ageinmonths
  * **Type**: integer
  * **Min**: 
  * **Max**: 
  * **In/Out**: Out
* **Name**: age
  * **Type**: integer
  * **Min**: 
  * **Max**: 
  * **In/Out**: Out: Cccb1014symptoms2mp
* **Parameters: **: **Version: **
  * * **Name**: danger signs
  * **Type**: boolean
  * **Min**: 
  * **Max**: 
  * **In/Out**: Out
* **Name**: Ccc.b12s1.de01
  * **Type**: boolean
  * **Min**: 
  * **Max**: 
  * **In/Out**: Out
* **Name**: ageinmonths
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
  * * **Name**: danger signs
  * **Type**: boolean
  * **Min**: 
  * **Max**: 
  * **In/Out**: Out
* **Name**: Ccc.b12s1.de01
  * **Type**: boolean
  * **Min**: 
  * **Max**: 
  * **In/Out**: Out
* **Name**: ageinmonths
  * **Type**: integer
  * **Min**: 
  * **Max**: 
  * **In/Out**: Out
* **Name**: age
  * **Type**: integer
  * **Min**: 
  * **Max**: 
  * **In/Out**: Out: [Ccc.B10-14.Symptoms.2m.p](Library-Cccb1014symptoms2mp.md)
* **Parameters: **: ** Official **
  * * **Name**: danger signs
  * **Type**: boolean
  * **Min**: 
  * **Max**: 
  * **In/Out**: Out
* **Name**: Ccc.b12s1.de01
  * **Type**: boolean
  * **Min**: 
  * **Max**: 
  * **In/Out**: Out
* **Name**: ageinmonths
  * **Type**: integer
  * **Min**: 
  * **Max**: 
  * **In/Out**: Out
* **Name**: age
  * **Type**: integer
  * **Min**: 
  * **Max**: 
  * **In/Out**: Out:  Ccc.b10-14.symptoms.2m.p 
* **Parameters: **: **Date: **
  * * **Name**: danger signs
  * **Type**: boolean
  * **Min**: 
  * **Max**: 
  * **In/Out**: Out
* **Name**: Ccc.b12s1.de01
  * **Type**: boolean
  * **Min**: 
  * **Max**: 
  * **In/Out**: Out
* **Name**: ageinmonths
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
  * * **Name**: danger signs
  * **Type**: boolean
  * **Min**: 
  * **Max**: 
  * **In/Out**: Out
* **Name**: Ccc.b12s1.de01
  * **Type**: boolean
  * **Min**: 
  * **Max**: 
  * **In/Out**: Out
* **Name**: ageinmonths
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
  * * **Name**: danger signs
  * **Type**: boolean
  * **Min**: 
  * **Max**: 
  * **In/Out**: Out
* **Name**: Ccc.b12s1.de01
  * **Type**: boolean
  * **Min**: 
  * **Max**: 
  * **In/Out**: Out
* **Name**: ageinmonths
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
  "id" : "Cccb1014symptoms2mp",
  "url" : "https://smart.who.int/ccc/Library/Cccb1014symptoms2mp",
  "identifier" : [{
    "use" : "official",
    "value" : "Ccc.b10-14.symptoms.2m.p"
  }],
  "version" : "0.1.0",
  "name" : "Cccb1014symptoms2mp",
  "title" : "Ccc.B10-14.Symptoms.2m.p",
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
    "name" : "danger signs",
    "use" : "out",
    "type" : "boolean"
  },
  {
    "name" : "Ccc.b12s1.de01",
    "use" : "out",
    "type" : "boolean"
  },
  {
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
