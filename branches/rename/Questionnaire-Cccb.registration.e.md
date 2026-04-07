# CccB.Registration.E - WHO FHIR Implementation Guide (IG): Integrated Management of Childhood Illness (IMCI) in emergencies v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CccB.Registration.E**

## Questionnaire: CccB.Registration.E
Branch:



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "Cccb.registration.e",
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
    "valueCanonical" : "https://smart.who.int/ccc//StructureMap/Cccb.registration.e"
  }],
  "url" : "https://smart.who.int/ccc//Questionnaire/Cccb.registration.e",
  "version" : "0.1.0",
  "name" : "CccB.Registration.E",
  "title" : "CccB.Registration.E",
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
    "linkId" : "Ccc.B3.DE01",
    "text" : "Reason for Consultation",
    "type" : "choice",
    "required" : false,
    "repeats" : false,
    "answerOption" : [{
      "valueCoding" : {
        "system" : "https://smart.who.int/ccc//CodeSystem/Ccc-custom-codes",
        "code" : "Ccc.B3.DE03",
        "display" : "Sick Child"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://smart.who.int/ccc//CodeSystem/Ccc-custom-codes",
        "code" : "Ccc.B3.DE04",
        "display" : "Routine visit (Well child/infant)"
      }
    }]
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
        "expression" : "%resource.repeat(item).where(linkId='Ccc.B3.DE01').answer.first().value.code = 'Ccc.B3.DE04'"
      }
    }],
    "linkId" : "Ccc.B3.DE05",
    "text" : "Is the child sick Today?",
    "type" : "boolean",
    "required" : true,
    "repeats" : false
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression",
      "valueExpression" : {
        "language" : "text/fhirpath",
        "expression" : "%resource.repeat(item).where(linkId='Ccc.B3.DE01').answer.first().value.code = 'Ccc.B3.DE02'"
      }
    }],
    "linkId" : "Ccc.B3.DE06",
    "text" : "Type of Consultation",
    "type" : "choice",
    "required" : false,
    "repeats" : false,
    "answerOption" : [{
      "valueCoding" : {
        "system" : "https://smart.who.int/ccc//CodeSystem/Ccc-custom-codes",
        "code" : "Ccc.B3.DE07",
        "display" : "Initial visit"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://smart.who.int/ccc//CodeSystem/Ccc-custom-codes",
        "code" : "Ccc.B3.DE08",
        "display" : "Follow Up"
      }
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
      "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden",
      "valueBoolean" : true
    }],
    "linkId" : "Ccc.A.DE39",
    "type" : "choice",
    "required" : false,
    "repeats" : true,
    "answerOption" : [{
      "valueCoding" : {
        "code" : "Ccc.A.DE39",
        "display" : "Person/People accompanying child today?"
      }
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
        "expression" : "%resource.repeat(item).where(linkId='Ccc.A.DE39').answer.first().empty()"
      }
    }],
    "linkId" : "newrelatedperson",
    "type" : "choice",
    "required" : false,
    "repeats" : true,
    "answerOption" : [{
      "valueCoding" : {
        "code" : "newrelatedperson",
        "display" : "Register a new Person/People accompanying child today"
      }
    }]
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden",
      "valueBoolean" : true
    }],
    "linkId" : "relatedpersonuuid",
    "type" : "string",
    "required" : false,
    "repeats" : false,
    "initial" : [{
      "valueString" : "uuid()"
    }]
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden",
      "valueBoolean" : true
    },
    {
      "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression",
      "valueExpression" : {
        "language" : "text/fhirpath",
        "expression" : "iif(%resource.repeat(item).where(linkId='newrelatedperson').answer.first().exists(), %resource.repeat(item).where(linkId='relatedpersonuuid').answer.first().value,{})"
      }
    }],
    "linkId" : "Cccrelatedpersoncaregiverid",
    "type" : "string",
    "required" : false,
    "repeats" : false
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression",
      "valueExpression" : {
        "language" : "text/fhirpath",
        "expression" : "%resource.repeat(item).where(linkId='Cccrelatedpersoncaregiverid').answer.first().exists()"
      }
    }],
    "linkId" : "Ccc.A.DE39.1",
    "type" : "group",
    "required" : false,
    "repeats" : false,
    "item" : [{
      "linkId" : "Ccc.A.DE40",
      "text" : "Person/People accompanying child First Name",
      "type" : "string",
      "required" : true,
      "repeats" : false
    },
    {
      "linkId" : "Ccc.A.DE41",
      "text" : "Person/People accompanying child Middle Name",
      "type" : "string",
      "required" : false,
      "repeats" : false
    },
    {
      "linkId" : "Ccc.A.DE42",
      "text" : "Person/People accompanying child Last Name",
      "type" : "string",
      "required" : true,
      "repeats" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden",
        "valueBoolean" : true
      },
      {
        "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression",
        "valueExpression" : {
          "language" : "text/fhirpath",
          "expression" : "%resource.repeat(item).where(linkId='newrelatedperson').answer.first().exists()"
        }
      }],
      "linkId" : "rppatientid",
      "type" : "string",
      "required" : false,
      "repeats" : false
    },
    {
      "linkId" : "Ccc.A.DE43",
      "text" : "Person/People accompanying child&#8217;s Relationship to Client",
      "type" : "choice",
      "required" : true,
      "repeats" : false,
      "answerOption" : [{
        "valueCoding" : {
          "system" : "https://smart.who.int/ccc//CodeSystem/Ccc-custom-codes",
          "code" : "Ccc.A.DE25",
          "display" : "Mother"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://smart.who.int/ccc//CodeSystem/Ccc-custom-codes",
          "code" : "Ccc.A.DE26",
          "display" : "Father"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://smart.who.int/ccc//CodeSystem/Ccc-custom-codes",
          "code" : "Ccc.A.DE27",
          "display" : "Sibling"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://smart.who.int/ccc//CodeSystem/Ccc-custom-codes",
          "code" : "Ccc.A.DE28",
          "display" : "Extended family"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://smart.who.int/ccc//CodeSystem/Ccc-custom-codes",
          "code" : "Ccc.A.DE29",
          "display" : "Legal Guardian"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://smart.who.int/ccc//CodeSystem/Ccc-custom-codes",
          "code" : "Ccc.A.DE30",
          "display" : "Not Related"
        }
      }]
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
