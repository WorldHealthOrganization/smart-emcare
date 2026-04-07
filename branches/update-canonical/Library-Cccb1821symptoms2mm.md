# Ccc.B18-21.Symptoms.2m.m - WHO FHIR Implementation Guide (IG): Integrated Management of Childhood Illness (IMCI) in emergencies v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Ccc.B18-21.Symptoms.2m.m**

## Library: Ccc.B18-21.Symptoms.2m.m 

| | |
| :--- | :--- |
| *Official URL*:https://smart.who.int/ccc/Library/Cccb1821symptoms2mm | *Version*:0.1.0 |
| Active as of 2026-04-07 | *Computable Name*:Cccb1821symptoms2mm |
| *Other Identifiers:*Ccc.b18-21.symptoms.2m.m (use: official, ) | |

* **Parameters: **: **Id: **
  * * **Name**: convulsing now
  * **Type**: boolean
  * **Min**: 
  * **Max**: 
  * **In/Out**: Out: Cccb1821symptoms2mm
* **Parameters: **: **Version: **
  * * **Name**: convulsing now
  * **Type**: boolean
  * **Min**: 
  * **Max**: 
  * **In/Out**: Out: 0.1.0
* **Parameters: **: **Url: **
  * * **Name**: convulsing now
  * **Type**: boolean
  * **Min**: 
  * **Max**: 
  * **In/Out**: Out: [Ccc.B18-21.Symptoms.2m.m](Library-Cccb1821symptoms2mm.md)
* **Parameters: **: ** Official **
  * * **Name**: convulsing now
  * **Type**: boolean
  * **Min**: 
  * **Max**: 
  * **In/Out**: Out:  Ccc.b18-21.symptoms.2m.m 
* **Parameters: **: **Date: **
  * * **Name**: convulsing now
  * **Type**: boolean
  * **Min**: 
  * **Max**: 
  * **In/Out**: Out: 2026-04-07 13:42:05+0000
* **Parameters: **: **Publisher: **
  * * **Name**: convulsing now
  * **Type**: boolean
  * **Min**: 
  * **Max**: 
  * **In/Out**: Out: World Health Organization (WHO)
* **Parameters: **: **Jurisdiction: **
  * * **Name**: convulsing now
  * **Type**: boolean
  * **Min**: 
  * **Max**: 
  * **In/Out**: Out: 001



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "Cccb1821symptoms2mm",
  "url" : "https://smart.who.int/ccc/Library/Cccb1821symptoms2mm",
  "identifier" : [{
    "use" : "official",
    "value" : "Ccc.b18-21.symptoms.2m.m"
  }],
  "version" : "0.1.0",
  "name" : "Cccb1821symptoms2mm",
  "title" : "Ccc.B18-21.Symptoms.2m.m",
  "status" : "active",
  "type" : {
    "coding" : [{
      "system" : "http://hl7.org/fhir/ValueSet/library-type",
      "code" : "logic-library"
    }]
  },
  "date" : "2026-04-07T13:42:05+00:00",
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
    "name" : "convulsing now",
    "use" : "out",
    "type" : "boolean"
  }]
}

```
