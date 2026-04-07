# Ccc.b10-14.symptoms.2m.p - WHO FHIR Implementation Guide (IG): Integrated Management of Childhood Illness (IMCI) in emergencies v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Ccc.b10-14.symptoms.2m.p**

## ActivityDefinition: Ccc.b10-14.symptoms.2m.p 

| | |
| :--- | :--- |
| *Official URL*:https://smart.who.int/ccc/ActivityDefinition/Ccc.b10-14.symptoms.2m.p | *Version*:0.1.0 |
| Active as of 2026-04-07 | *Computable Name*: |
| **Usage:**Workflow Task: Collect infornation with questionnaire Ccc.B10-14.Symptoms.2m.p | |

* **Code: **: **Version: **
  * **system: **[http://hl7.org/fhir/uv/cpg/CodeSystem/cpg-activity-type](http://hl7.org/fhir/uv/cpg/CodeSystem/cpg-activity-type)**code: **collect-information**display: **Collect information: 0.1.0
* **Code: **: **Date (date last changed): **
  * **system: **[http://hl7.org/fhir/uv/cpg/CodeSystem/cpg-activity-type](http://hl7.org/fhir/uv/cpg/CodeSystem/cpg-activity-type)**code: **collect-information**display: **Collect information: 2026-04-07 13:45:53+0000
* **Code: **: **Publisher (steward): **
  * **system: **[http://hl7.org/fhir/uv/cpg/CodeSystem/cpg-activity-type](http://hl7.org/fhir/uv/cpg/CodeSystem/cpg-activity-type)**code: **collect-information**display: **Collect information: World Health Organization (WHO)
* **Code: **: **Knowledge Capability: **
  * **system: **[http://hl7.org/fhir/uv/cpg/CodeSystem/cpg-activity-type](http://hl7.org/fhir/uv/cpg/CodeSystem/cpg-activity-type)**code: **collect-information**display: **Collect information: shareable computable publishable
* **Code: **: **Knowledge Representation Level: **
  * **system: **[http://hl7.org/fhir/uv/cpg/CodeSystem/cpg-activity-type](http://hl7.org/fhir/uv/cpg/CodeSystem/cpg-activity-type)**code: **collect-information**display: **Collect information: structured
* **Code: **: **Jurisdiction: **
  * **system: **[http://hl7.org/fhir/uv/cpg/CodeSystem/cpg-activity-type](http://hl7.org/fhir/uv/cpg/CodeSystem/cpg-activity-type)**code: **collect-information**display: **Collect information: 001
* **Code: **: **Kind: **
  * **system: **[http://hl7.org/fhir/uv/cpg/CodeSystem/cpg-activity-type](http://hl7.org/fhir/uv/cpg/CodeSystem/cpg-activity-type)**code: **collect-information**display: **Collect information: Task
* **Code: **: **Profile: **
  * **system: **[http://hl7.org/fhir/uv/cpg/CodeSystem/cpg-activity-type](http://hl7.org/fhir/uv/cpg/CodeSystem/cpg-activity-type)**code: **collect-information**display: **Collect information: http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-questionnairetask
* **Code: **: **Dynamic Values: **
  * **system: **[http://hl7.org/fhir/uv/cpg/CodeSystem/cpg-activity-type](http://hl7.org/fhir/uv/cpg/CodeSystem/cpg-activity-type)**code: **collect-information**display: **Collect information: * input.type: *(code)*

* input.value: *(extension('http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-collectWith').value)*





## Resource Content

```json
{
  "resourceType" : "ActivityDefinition",
  "id" : "Ccc.b10-14.symptoms.2m.p",
  "extension" : [{
    "url" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-knowledgeCapability",
    "valueCode" : "shareable"
  },
  {
    "url" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-knowledgeCapability",
    "valueCode" : "computable"
  },
  {
    "url" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-knowledgeCapability",
    "valueCode" : "publishable"
  },
  {
    "url" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-knowledgeRepresentationLevel",
    "valueCode" : "structured"
  },
  {
    "url" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-collectWith",
    "valueCanonical" : "https://smart.who.int/ccc/Questionnaire/Ccc.b10-14.symptoms.2m.p"
  }],
  "url" : "https://smart.who.int/ccc/ActivityDefinition/Ccc.b10-14.symptoms.2m.p",
  "version" : "0.1.0",
  "status" : "active",
  "experimental" : false,
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
  "useContext" : [{
    "code" : {
      "system" : "http://terminology.hl7.org/CodeSystem/usage-context-type",
      "code" : "task"
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
        "code" : "PATDOC",
        "display" : "Collect infornation with questionnaire Ccc.B10-14.Symptoms.2m.p"
      }]
    }
  }],
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "kind" : "Task",
  "profile" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-questionnairetask",
  "code" : {
    "coding" : [{
      "system" : "http://hl7.org/fhir/uv/cpg/CodeSystem/cpg-activity-type",
      "code" : "collect-information",
      "display" : "Collect information"
    }]
  },
  "dynamicValue" : [{
    "path" : "input.type",
    "expression" : {
      "language" : "text/cql-expression",
      "expression" : "code"
    }
  },
  {
    "path" : "input.value",
    "expression" : {
      "language" : "text/cql-expression",
      "expression" : "extension('http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-collectWith').value"
    }
  }]
}

```
