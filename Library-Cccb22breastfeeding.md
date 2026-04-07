# Ccc.B22.BreastFeeding - WHO FHIR Implementation Guide (IG): Integrated Management of Childhood Illness (IMCI) in emergencies v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Ccc.B22.BreastFeeding**

## Library: Ccc.B22.BreastFeeding 

| | |
| :--- | :--- |
| *Official URL*:https://smart.who.int/ccc/Library/Cccb22breastfeeding | *Version*:0.1.0 |
| Active as of 2026-04-07 | *Computable Name*:Cccb22breastfeeding |
| *Other Identifiers:*Ccc.b22.breastfeeding (use: official, ) | |

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
  * **In/Out**: Out: Cccb22breastfeeding
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
  * **In/Out**: Out: [Ccc.B22.BreastFeeding](Library-Cccb22breastfeeding.md)
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
  * **In/Out**: Out:  Ccc.b22.breastfeeding 
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
  "id" : "Cccb22breastfeeding",
  "url" : "https://smart.who.int/ccc/Library/Cccb22breastfeeding",
  "identifier" : [{
    "use" : "official",
    "value" : "Ccc.b22.breastfeeding"
  }],
  "version" : "0.1.0",
  "name" : "Cccb22breastfeeding",
  "title" : "Ccc.B22.BreastFeeding",
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
