# Ccc.B22.BronchodilatorTest - WHO FHIR Implementation Guide (IG): Integrated Management of Childhood Illness (IMCI) in emergencies v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Ccc.B22.BronchodilatorTest**

## Questionnaire: Ccc.B22.BronchodilatorTest
Branch:



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "Ccc.b22.bronchodilatortest",
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
    "valueCanonical" : "https://smart.who.int/ccc/StructureMap/Ccc.b22.bronchodilatortest"
  }],
  "url" : "https://smart.who.int/ccc/Questionnaire/Ccc.b22.bronchodilatortest",
  "version" : "0.1.0",
  "name" : "Ccc.B22.BronchodilatorTest",
  "title" : "Ccc.B22.BronchodilatorTest",
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
        "expression" : "%resource.repeat(item).where(linkId='Ccc.B22.DE22').answer.first().empty()"
      }
    }],
    "linkId" : "Ccc.B22.DE17",
    "text" : "Inhaled Bronchodilator Trial Results",
    "type" : "choice",
    "required" : false,
    "repeats" : true,
    "answerOption" : [{
      "valueCoding" : {
        "system" : "https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes",
        "code" : "Ccc.B22.DE18",
        "display" : "Chest Indrawing (post inhaled bronchodilator trial)"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes",
        "code" : "Ccc.B22.DE19",
        "display" : "Respiratory Rate (post inhaled bronchodilator trial)"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes",
        "code" : "Ccc.B22.DE20",
        "display" : "Fast Breathing (post inhaled bronchodilator trial)"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes",
        "code" : "Ccc.B22.DE21",
        "display" : "No Fast Breathing and No Chest Indrawing (post Inhaled Bronchodilator Trial)"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes",
        "code" : "Ccc.B22.DE22",
        "display" : "Inhaled Bronchodilator Trial Not Feasible or Available"
      }
    }],
    "item" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "http://hl7.org/fhir/questionnaire-item-control",
            "code" : "help"
          }]
        }
      }],
      "linkId" : "Ccc.B22.DE17-help",
      "text" : "Provide information on how to conduct an Inhaled Bronchodilator Trial as per <span class=\"caps\">IMCI</span> training &#8211; <span class=\"caps\">TBC</span>",
      "type" : "display"
    }]
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
        "expression" : "%resource.repeat(item).where(linkId='Ccc.B22.DE17').answer.first().empty()"
      }
    }],
    "linkId" : "Ccc.B22.DE22",
    "type" : "choice",
    "required" : false,
    "repeats" : true,
    "answerOption" : [{
      "valueCoding" : {
        "code" : "Ccc.B22.DE22",
        "display" : "Inhaled Bronchodilator Trial Not Feasible or Available"
      }
    }]
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-choiceOrientation",
      "valueCode" : "horizontal"
    }],
    "linkId" : "Ccc.B22.DE21",
    "text" : "No Fast Breathing and No Chest Indrawing (post Inhaled Bronchodilator Trial)",
    "type" : "boolean",
    "required" : false,
    "repeats" : false
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
