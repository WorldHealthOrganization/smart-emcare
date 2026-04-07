# Ccc.B22.Hemoglobin - WHO FHIR Implementation Guide (IG): Integrated Management of Childhood Illness (IMCI) in emergencies v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Ccc.B22.Hemoglobin**

## Questionnaire: Ccc.B22.Hemoglobin
Branch:



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "Ccc.b22.hemoglobin",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire"]
  },
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
    "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-targetStructureMap",
    "valueCanonical" : "https://smart.who.int/ccc/StructureMap/Ccc.b22.hemoglobin"
  }],
  "url" : "https://smart.who.int/ccc/Questionnaire/Ccc.b22.hemoglobin",
  "version" : "0.1.0",
  "name" : "Ccc.B22.Hemoglobin",
  "title" : "Ccc.B22.Hemoglobin",
  "status" : "active",
  "experimental" : false,
  "subjectType" : ["Patient"],
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
  "item" : [{
    "extension" : [{
      "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression",
      "valueExpression" : {
        "language" : "text/fhirpath",
        "expression" : "%resource.repeat(item).where(linkId='Ccc.B22.DE82').answer.first().empty()"
      }
    }],
    "linkId" : "Ccc.B22.DE81",
    "text" : "Hemoglobin (Hb) g/dL",
    "type" : "quantity",
    "required" : true,
    "repeats" : false
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://hl7.org/fhir/questionnaire-item-control",
          "code" : "check-box",
          "display" : "Check-box"
        }],
        "text" : "Check-box"
      }
    },
    {
      "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression",
      "valueExpression" : {
        "language" : "text/fhirpath",
        "expression" : "%resource.repeat(item).where(linkId='Ccc.B22.DE81').answer.first().empty()"
      }
    }],
    "linkId" : "Ccc.B22.DE82",
    "type" : "choice",
    "required" : true,
    "repeats" : true,
    "answerOption" : [{
      "valueCoding" : {
        "code" : "Ccc.B22.DE82",
        "display" : "Hemoglobin Test Not Available"
      }
    }]
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression",
      "valueExpression" : {
        "language" : "text/fhirpath",
        "expression" : "now()"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden",
      "valueBoolean" : true
    }],
    "linkId" : "timestamp",
    "type" : "dateTime",
    "required" : false
  }]
}

```
