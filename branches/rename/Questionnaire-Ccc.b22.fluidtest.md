# Ccc.B22.FluidTest - WHO FHIR Implementation Guide (IG): Integrated Management of Childhood Illness (IMCI) in emergencies v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Ccc.B22.FluidTest**

## Questionnaire: Ccc.B22.FluidTest
Branch:



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "Ccc.b22.fluidtest",
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
    "valueCanonical" : "https://smart.who.int/ccc/StructureMap/Ccc.b22.fluidtest"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/cqf-library",
    "valueCanonical" : "https://smart.who.int/ccc/Library/Cccb22fluidtest"
  }],
  "url" : "https://smart.who.int/ccc/Questionnaire/Ccc.b22.fluidtest",
  "version" : "0.1.0",
  "name" : "Ccc.B22.FluidTest",
  "title" : "Ccc.B22.FluidTest",
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
      "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-choiceOrientation",
      "valueCode" : "horizontal"
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden",
      "valueBoolean" : true
    },
    {
      "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression",
      "valueExpression" : {
        "language" : "text/cql-identifier",
        "expression" : "ds"
      }
    }],
    "linkId" : "DS",
    "text" : "Danger Signs",
    "type" : "boolean",
    "required" : false,
    "repeats" : false
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-choiceOrientation",
      "valueCode" : "horizontal"
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden",
      "valueBoolean" : true
    },
    {
      "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression",
      "valueExpression" : {
        "language" : "text/cql-identifier",
        "expression" : "Ccc.b7.de09"
      }
    }],
    "linkId" : "Ccc.B7.DE09",
    "text" : "Not able to drink or breastfeed",
    "type" : "boolean",
    "required" : false,
    "repeats" : false
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-choiceOrientation",
      "valueCode" : "horizontal"
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden",
      "valueBoolean" : true
    },
    {
      "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression",
      "valueExpression" : {
        "language" : "text/cql-identifier",
        "expression" : "Ccc.b7.de10"
      }
    }],
    "linkId" : "Ccc.B7.DE10",
    "text" : "Vomiting Everything",
    "type" : "boolean",
    "required" : false,
    "repeats" : false
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression",
      "valueExpression" : {
        "language" : "text/fhirpath",
        "expression" : "%resource.repeat(item).where(linkId='Ccc.B22.DE14').answer.first().empty() and ( %resource.repeat(item).where(linkId='oftrp').answer.empty()  or %resource.repeat(item).where(linkId='oftrp').answer.first().value=true )"
      }
    }],
    "linkId" : "Ccc.B22.DE08",
    "text" : "Oral Fluid Test Results",
    "type" : "choice",
    "required" : true,
    "repeats" : false,
    "answerOption" : [{
      "valueCoding" : {
        "system" : "https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes",
        "code" : "Ccc.B22.DE09",
        "display" : "Completely Unable to Drink"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes",
        "code" : "Ccc.B22.DE10",
        "display" : "Vomits Immediately / Everything"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes",
        "code" : "Ccc.B22.DE11",
        "display" : "Drinks Poorly"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes",
        "code" : "Ccc.B22.DE12",
        "display" : "Drinks Eagerly / Thirstily"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes",
        "code" : "Ccc.B22.DE13",
        "display" : "Drinks Normally"
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
      "linkId" : "Ccc.B22.DE08-help",
      "text" : "If a child is unconscious do not try to carry out an oral fluid test (Exact wording <span class=\"caps\">TBC</span>) &#8211; Pop Up</p>\n\n\t<p>If a breastfeeding assessment and an Oral Fluid test is recommended for a child that is only breastfed then a pop up is required to ensure that the health care worker observes the signs for both and provides results for both tests. </p>\n\n\t<p>Oral Fluid Test<br />\nIf it is not possible to perform an oral fluid test, the health care worker should assume that the child is vomiting everything<br />\nFor a child under 6 months the health care worker can offer for the mother to breastfeed instead of receiving fluids</p>\n\n\t<p>Caution: Do not force fluids into an unconscious child , it can be dangerous. The fluid can cause them to choke or the fluid can go into their lungs. </p>\n\n\t<p>Pop up box to be made available with instructions on how to carry out an oral fluid test.<br />\nAdditional information <span class=\"caps\">TBC</span>",
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
        "expression" : "%resource.repeat(item).where(linkId='Ccc.B22.DE08').answer.first().empty()"
      }
    }],
    "linkId" : "Ccc.B22.DE14",
    "type" : "choice",
    "required" : true,
    "repeats" : true,
    "answerOption" : [{
      "valueCoding" : {
        "code" : "Ccc.B22.DE14",
        "display" : "Unable to Perform Oral Fluid Test"
      }
    }]
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-choiceOrientation",
      "valueCode" : "horizontal"
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden",
      "valueBoolean" : true
    },
    {
      "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression",
      "valueExpression" : {
        "language" : "text/fhirpath",
        "expression" : "%resource.repeat(item).where(linkId='Ccc.B7.DE09').answer.first().value = true or %resource.repeat(item).where(linkId='Ccc.B7.DE10').answer.first().value =  true"
      }
    },
    {
      "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression",
      "valueExpression" : {
        "language" : "text/fhirpath",
        "expression" : "%resource.repeat(item).where(linkId='Ccc.B22.DE14').answer.first().exists() and (%resource.repeat(item).where(linkId='DS').answer.first().value = true  or %resource.repeat(item).where(linkId='Ccc.B22.DE08').answer.where(value.code='Ccc.B22.DE09').exists() or %resource.repeat(item).where(linkId='Ccc.B22.DE08').answer.where(value.code='Ccc.B22.DE10').exists() )"
      }
    }],
    "linkId" : "Ccc.B22.DE14a",
    "text" : "Completely Unable to Drink or Vomits Immediately / Everything",
    "type" : "boolean",
    "required" : false,
    "repeats" : false
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-choiceOrientation",
      "valueCode" : "horizontal"
    },
    {
      "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression",
      "valueExpression" : {
        "language" : "text/fhirpath",
        "expression" : "%resource.repeat(item).where(linkId='Ccc.B22.DE14').answer.first().value = true and %resource.repeat(item).where(linkId='Ccc.B7.DE09').answer.first().value= false and %resource.repeat(item).where(linkId='Ccc.B7.DE10').answer.first().value = false"
      }
    }],
    "linkId" : "Ccc.B22.DE15",
    "text" : "Has the Child had anything to drink today?",
    "type" : "boolean",
    "required" : false,
    "repeats" : false
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression",
      "valueExpression" : {
        "language" : "text/fhirpath",
        "expression" : "%resource.repeat(item).where(linkId='Ccc.B22.DE15').answer.first().value = true"
      }
    }],
    "linkId" : "Ccc.B22.DE16",
    "text" : "How did the child last drink",
    "type" : "choice",
    "required" : false,
    "repeats" : false,
    "answerOption" : [{
      "valueCoding" : {
        "system" : "https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes",
        "code" : "Ccc.B22.DE09",
        "display" : "Completely Unable to Drink"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes",
        "code" : "Ccc.B22.DE10",
        "display" : "Vomits Immediately / Everything"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes",
        "code" : "Ccc.B22.DE11",
        "display" : "Drinks Poorly"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes",
        "code" : "Ccc.B22.DE12",
        "display" : "Drinks Eagerly / Thirstily"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes",
        "code" : "Ccc.B22.DE13",
        "display" : "Drinks Normally"
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
