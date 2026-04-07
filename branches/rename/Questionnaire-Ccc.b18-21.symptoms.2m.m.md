# Ccc.B18-21.Symptoms.2m.m - WHO FHIR Implementation Guide (IG): Integrated Management of Childhood Illness (IMCI) in emergencies v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Ccc.B18-21.Symptoms.2m.m**

## Questionnaire: Ccc.B18-21.Symptoms.2m.m
Branch:



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "Ccc.b18-21.symptoms.2m.m",
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
    "valueCanonical" : "https://smart.who.int/ccc/StructureMap/Ccc.b18-21.symptoms.2m.m"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/cqf-library",
    "valueCanonical" : "https://smart.who.int/ccc/Library/Cccb1821symptoms2mm"
  }],
  "url" : "https://smart.who.int/ccc/Questionnaire/Ccc.b18-21.symptoms.2m.m",
  "version" : "0.1.0",
  "name" : "Ccc.B18-21.Symptoms.2m.m",
  "title" : "Ccc.B18-21.Symptoms.2m.m",
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
        "expression" : "convulsing now"
      }
    }],
    "linkId" : "Convulsing Now",
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
        "expression" : "%resource.repeat(item).where(linkId='Convulsing Now').answer.first().value = false"
      }
    }],
    "linkId" : "Ccc.B7.DE03",
    "text" : "Convulsion(s) in this Illness",
    "type" : "boolean",
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
      "linkId" : "Ccc.B7.DE03-help",
      "text" : "Use words the caregiver understands. For example, the caregiver may know<br />\nconvulsions as “fits” or “spasms”.<br />\nDuring a convulsion, the young infant’s arms and legs may become stiff. The infant<br />\nmay stop breathing and become blue. Many times there may only be rhythmic<br />\nmovements of a part of the body, such as rhythmic twitching of the mouth or<br />\nblinking of eyes. The young infant may lose consciousness",
      "type" : "display"
    }]
  },
  {
    "linkId" : "Ccc.B18S1.DE02",
    "text" : "Difficulty with Feeding",
    "type" : "choice",
    "required" : true,
    "repeats" : false,
    "answerOption" : [{
      "valueCoding" : {
        "system" : "https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes",
        "code" : "Ccc.B18S1.DE03",
        "display" : "Not Able to Feed At All"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes",
        "code" : "Ccc.B18S1.DE04",
        "display" : "Not Feeding Well"
      }
    },
    {
      "valueCoding" : {
        "system" : "https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes",
        "code" : "Ccc.B18S1.DE05",
        "display" : "Feeding Well"
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
      "linkId" : "Ccc.B18S1.DE02-help",
      "text" : "Any difficulty mentioned by the mother is important. A newborn that has not been able to feed since birth may be premature or may have<br />\ncomplications such as birth asphyxia. These infants who are either not able to<br />\nfeed or are not feeding well should be referred urgently to hospital.</p>\n\n\t<p>The caregiver may also mention difficulties such as: her infant feeds too frequently<br />\n(or not frequently enough), she does not have enough milk, her nipples are sore,<br />\nor she has flat or inverted nipples. You will assess these difficulties later during<br />\nbreastfeeding assessment. These problems do not mean the infant is not feeding well or not feeding at all.",
      "type" : "display"
    }]
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-choiceOrientation",
      "valueCode" : "horizontal"
    }],
    "linkId" : "Ccc.B11S1.DE01",
    "text" : "Diarrhoea",
    "type" : "boolean",
    "required" : true,
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
      "linkId" : "Ccc.B11S1.DE01-help",
      "text" : "A young infant has diarrhoea if the stools have changed from the usual pattern, and are many and watery. This means more water than faecal matter. The normally frequent or semi-solid stools of a breastfed baby are not diarrhoea.<br />\nThe mother of a breastfed young infant can recognize diarrhoea because the consistency or frequency of the stools is different than normal.",
      "type" : "display"
    }]
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-choiceOrientation",
      "valueCode" : "horizontal"
    }],
    "linkId" : "Ccc.B21S1.DE06",
    "text" : "Breastfed",
    "type" : "boolean",
    "required" : true,
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
      "linkId" : "Ccc.B21S1.DE06-help",
      "text" : "Ask the caregiver if the infant is breastfed. This includes both exclusive breastfeeding or receiving breast milk and other foods/fluids.",
      "type" : "display"
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
