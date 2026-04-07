# EmCare.B22.FluidTest - WHO FHIR Implementation Guide (IG): Integrated Management of Childhood Illness (IMCI) in emergencies v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EmCare.B22.FluidTest**

## Library: EmCare.B22.FluidTest 

| | |
| :--- | :--- |
| *Official URL*:https://smart.who.int/ccc/Library/emcareb22fluidtest | *Version*:0.1.0 |
| Active as of 2026-04-07 | *Computable Name*:emcareb22fluidtest |
| *Other Identifiers:*emcare.b22.fluidtest (use: official, ) | |

* **Parameters: **: **Id: **
  * * **Name**: oftrp
  * **Type**: boolean
  * **Min**: 
  * **Max**: 
  * **In/Out**: Out
* **Name**: ds
  * **Type**: boolean
  * **Min**: 
  * **Max**: 
  * **In/Out**: Out
* **Name**: emcare.b7.de09
  * **Type**: boolean
  * **Min**: 
  * **Max**: 
  * **In/Out**: Out
* **Name**: emcare.b7.de10
  * **Type**: boolean
  * **Min**: 
  * **Max**: 
  * **In/Out**: Out: emcareb22fluidtest
* **Parameters: **: **Version: **
  * * **Name**: oftrp
  * **Type**: boolean
  * **Min**: 
  * **Max**: 
  * **In/Out**: Out
* **Name**: ds
  * **Type**: boolean
  * **Min**: 
  * **Max**: 
  * **In/Out**: Out
* **Name**: emcare.b7.de09
  * **Type**: boolean
  * **Min**: 
  * **Max**: 
  * **In/Out**: Out
* **Name**: emcare.b7.de10
  * **Type**: boolean
  * **Min**: 
  * **Max**: 
  * **In/Out**: Out: 0.1.0
* **Parameters: **: **Url: **
  * * **Name**: oftrp
  * **Type**: boolean
  * **Min**: 
  * **Max**: 
  * **In/Out**: Out
* **Name**: ds
  * **Type**: boolean
  * **Min**: 
  * **Max**: 
  * **In/Out**: Out
* **Name**: emcare.b7.de09
  * **Type**: boolean
  * **Min**: 
  * **Max**: 
  * **In/Out**: Out
* **Name**: emcare.b7.de10
  * **Type**: boolean
  * **Min**: 
  * **Max**: 
  * **In/Out**: Out: [EmCare.B22.FluidTest](Library-emcareb22fluidtest.md)
* **Parameters: **: ** Official **
  * * **Name**: oftrp
  * **Type**: boolean
  * **Min**: 
  * **Max**: 
  * **In/Out**: Out
* **Name**: ds
  * **Type**: boolean
  * **Min**: 
  * **Max**: 
  * **In/Out**: Out
* **Name**: emcare.b7.de09
  * **Type**: boolean
  * **Min**: 
  * **Max**: 
  * **In/Out**: Out
* **Name**: emcare.b7.de10
  * **Type**: boolean
  * **Min**: 
  * **Max**: 
  * **In/Out**: Out:  emcare.b22.fluidtest 
* **Parameters: **: **Date: **
  * * **Name**: oftrp
  * **Type**: boolean
  * **Min**: 
  * **Max**: 
  * **In/Out**: Out
* **Name**: ds
  * **Type**: boolean
  * **Min**: 
  * **Max**: 
  * **In/Out**: Out
* **Name**: emcare.b7.de09
  * **Type**: boolean
  * **Min**: 
  * **Max**: 
  * **In/Out**: Out
* **Name**: emcare.b7.de10
  * **Type**: boolean
  * **Min**: 
  * **Max**: 
  * **In/Out**: Out: 2026-04-07 12:55:48+0000
* **Parameters: **: **Publisher: **
  * * **Name**: oftrp
  * **Type**: boolean
  * **Min**: 
  * **Max**: 
  * **In/Out**: Out
* **Name**: ds
  * **Type**: boolean
  * **Min**: 
  * **Max**: 
  * **In/Out**: Out
* **Name**: emcare.b7.de09
  * **Type**: boolean
  * **Min**: 
  * **Max**: 
  * **In/Out**: Out
* **Name**: emcare.b7.de10
  * **Type**: boolean
  * **Min**: 
  * **Max**: 
  * **In/Out**: Out: World Health Organization (WHO)
* **Parameters: **: **Jurisdiction: **
  * * **Name**: oftrp
  * **Type**: boolean
  * **Min**: 
  * **Max**: 
  * **In/Out**: Out
* **Name**: ds
  * **Type**: boolean
  * **Min**: 
  * **Max**: 
  * **In/Out**: Out
* **Name**: emcare.b7.de09
  * **Type**: boolean
  * **Min**: 
  * **Max**: 
  * **In/Out**: Out
* **Name**: emcare.b7.de10
  * **Type**: boolean
  * **Min**: 
  * **Max**: 
  * **In/Out**: Out: 001



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "emcareb22fluidtest",
  "url" : "https://smart.who.int/ccc/Library/emcareb22fluidtest",
  "identifier" : [{
    "use" : "official",
    "value" : "emcare.b22.fluidtest"
  }],
  "version" : "0.1.0",
  "name" : "emcareb22fluidtest",
  "title" : "EmCare.B22.FluidTest",
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
    "name" : "oftrp",
    "use" : "out",
    "type" : "boolean"
  },
  {
    "name" : "ds",
    "use" : "out",
    "type" : "boolean"
  },
  {
    "name" : "emcare.b7.de09",
    "use" : "out",
    "type" : "boolean"
  },
  {
    "name" : "emcare.b7.de10",
    "use" : "out",
    "type" : "boolean"
  }]
}

```
