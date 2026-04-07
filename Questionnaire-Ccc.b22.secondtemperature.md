# Ccc.B22.SecondTemperature - WHO FHIR Implementation Guide (IG): Integrated Management of Childhood Illness (IMCI) in emergencies v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Ccc.B22.SecondTemperature**

## Questionnaire: Ccc.B22.SecondTemperature
Branch:



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "Ccc.b22.secondtemperature",
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
    "valueCanonical" : "https://smart.who.int/ccc/StructureMap/Ccc.b22.secondtemperature"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/cqf-library",
    "valueCanonical" : "https://smart.who.int/ccc/Library/Cccb22secondtemperature"
  }],
  "url" : "https://smart.who.int/ccc/Questionnaire/Ccc.b22.secondtemperature",
  "version" : "0.1.0",
  "name" : "Ccc.B22.SecondTemperature",
  "title" : "Ccc.B22.SecondTemperature",
  "status" : "active",
  "experimental" : false,
  "subjectType" : ["Patient"],
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
  "item" : [{
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden",
      "valueBoolean" : true
    },
    {
      "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression",
      "valueExpression" : {
        "language" : "text/cql-identifier",
        "expression" : "ageinmonths"
      }
    }],
    "linkId" : "AgeInMonths",
    "text" : "Age",
    "type" : "integer",
    "required" : false,
    "repeats" : false
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-unit",
      "valueCoding" : {
        "system" : "http://unitsofmeasure.org",
        "code" : "Cel"
      }
    },
    {
      "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression",
      "valueExpression" : {
        "language" : "text/fhirpath",
        "expression" : "%resource.repeat(item).where(linkId='Ccc.B22.DE46').answer.first().empty()"
      }
    }],
    "linkId" : "Ccc.B22.DE47",
    "text" : "Axillary Temperature (second measurement)",
    "type" : "quantity",
    "required" : false,
    "repeats" : false,
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
      "linkId" : "Ccc.B22.DE47-help",
      "text" : "The client&#8217;s axillary temperature in degrees Celcius (temperature taken under the armpit)<br />\nWarning/error if above 45 and below 32 degrees Celcius.",
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
        "expression" : "%resource.repeat(item).where(linkId='Ccc.B22.DE47').answer.first().empty()"
      }
    }],
    "linkId" : "Ccc.B22.DE46",
    "type" : "choice",
    "required" : false,
    "repeats" : true,
    "answerOption" : [{
      "valueCoding" : {
        "code" : "Ccc.B22.DE46",
        "display" : "Second Temperature Measurement Not Feasible"
      }
    }]
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression",
      "valueExpression" : {
        "language" : "text/fhirpath",
        "expression" : "%resource.repeat(item).where(linkId='Ccc.B22.DE47').answer.first().exists()"
      }
    },
    {
      "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression",
      "valueExpression" : {
        "language" : "text/fhirpath",
        "expression" : "iif(%resource.repeat(item).where(linkId='Ccc.B22.DE47').answer.first().value >= 38.5 'Cel' and %resource.repeat(item).where(linkId='AgeInMonths').answer.first().value >= 2, '2',iif(%resource.repeat(item).where(linkId='Ccc.B22.DE47').answer.first().value >= 38 'Cel' and %resource.repeat(item).where(linkId='AgeInMonths').answer.first().value< 2 or %resource.repeat(item).where(linkId='Ccc.B22.DE47').answer.first().value >= 37.5 'Cel' and %resource.repeat(item).where(linkId='AgeInMonths').answer.first().value >= 2, 'High',iif(%resource.repeat(item).where(linkId='Ccc.B22.DE47').answer.first().value < 35.5 'Cel' , 'Low',iif(%resource.repeat(item).where(linkId='Ccc.B22.DE47').answer.first().value.exists(), 'Normal',{}))))"
      }
    }],
    "linkId" : "Ccc.B22.DE50",
    "text" : "Measured Temperature (second measurement)",
    "type" : "string",
    "required" : false,
    "repeats" : false,
    "readOnly" : true
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
