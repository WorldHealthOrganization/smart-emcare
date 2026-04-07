# Home - WHO FHIR Implementation Guide (IG): Integrated Management of Childhood Illness (IMCI) in emergencies v0.1.0

* [**Table of Contents**](toc.md)
* **Home**

## Home

| | |
| :--- | :--- |
| *Official URL*:https://smart.who.int/ccc/ImplementationGuide/smart.who.int.ccc | *Version*:0.1.0 |
| Draft as of 2022-01-06 | *Computable Name*:Ccc |

This WHO Implementation Guide for Immunizations details how to use Health Level 7 (HL7) Fast Healthcare Interoperability Resources (FHIR) for consistent digital representation of Immunization services.

 This implementation guide and set of artifacts are still undergoing development. 

 Content is for demonstration purposes only. 

### Summary

This implementation guide includes a machine-readable representation of WHO guidelines for Immunizations, as documented in the WHO Digital Adaptation Kit for Immunizations (link forthcoming) and explicitly encodes computer-interoperable logic, including data models, terminologies, and logic expressions, in a computable language to support implementation of Immunization use cases by WHO Member States.

The guide is part of the [WHO SMART Guidelines approach](https://www.who.int/teams/digital-health-and-innovation/smart-guidelines) to support countries to integrate WHO global health and data recommendations into digital systems accurately and consistently. It defines a series of FHIR Resources, Profiles, Extensions, and Terminology based on the [WHO Digital Adaptation Kit for Immunizations](https://www.who.int/publications/i/item/9789240099456).

Supporting guidance, recommendations, resources, and standards are included in the [References](references.md) and [Dependencies](dependencies.md).

### About this implementation guide

This implementation guide is broken into the following levels of [knowledge representation](https://hl7.org/fhir/uv/cpg/documentation-approach-06-01-levels-of-knowledge-representation.html):

* [Home](index.md) - contains references to the guidance, guidelines, policies and recommendations underpinning this implementation guide.
* [Business Requirements](business-requirements.md) - contains the requirements for this implementation guide including the definition of key concepts, use cases, and a data dictionary.
* [Data Models and Exchange](data-models-and-exchange.md) - contains the data models and data exchange protocols with actors and transactions defined.
* [Deployment Guidance ](deployment.md) - contains relevant technical specifications and guidance, testing resources, reference implementation materials, and supporting guidance for adaptation to local contexts.

This guide is prepared to facilitate digital implementation of WHO Immunization guidelines by providing FHIR-based computable representations of and implementation guidance for using the key components of the WHO Digital adaptation kit (DAK) for immunizations:

* Health Interventions & Recommendations
* Generic Personas
* User Scenarios
* Business Processes & Workflows
* Core Data Elements
* Decision Support Logic
* Indicators & Monitoring
* Functional & Non-functional Requirements

This guide is a companion to the Digital Adaptation Kit (DAK) and should be used side-by-side with it. Implementers are strongly encouraged to make use of the Digital Adaptation Kit. The focus of this guide is on the explanation and use of the computable artifacts.

This guide assumes use of the following resources:

* [IPS Patient](http://hl7.org/fhir/uv/ips/StructureDefinition/Patient-uv-ips)
* [CPG ActivityDefinitions](https://hl7.org/fhir/uv/cpg/artifacts.html#activitydefinition-index)
* For a complete listing of the artifacts defined in this implementation guide, refer to the [Artifact Index](artifacts.md).
* A complete offline copy of this implementation guide can be found on the [Downloads](downloads.md) page.
* This Implementation Guide makes use of [Clinical Quality Language](https://cql.hl7.org/) for the decision support artifacts including the PlanDefinitions and Measures. They are used to express how a calculation should occur and can be used with a CQL engine in order to process the decision or indicator directly from the applicable FHIR resources. Links to this specification, the FHIR Clinical Practice Guidelines Speciciation, and other helpful resources can be found in the Support dropdown.

### Disclaimer

The specification herewith documented is a demo working specification and may not be used for any implementation purposes. This draft is provided without warranty of completeness or consistency and the official publication supersedes this draft. No liability can be inferred from the use or misuse of this specification or its consequences.

This publication includes IP covered under the following statements.

* The UCUM codes, UCUM table (regardless of format), and UCUM Specification are copyright 1999-2009, Regenstrief Institute, Inc. and the Unified Codes for Units of Measures (UCUM) Organization. All rights reserved. [https://ucum.org/trac/wiki/TermsOfUse](https://ucum.org/trac/wiki/TermsOfUse)

* [Unified Code for Units of Measure (UCUM)](http://terminology.hl7.org/6.1.0/CodeSystem-v3-ucum.html): [Ccc.B10-16.Signs.2m.p](Questionnaire-Ccc.b10-16.signs.2m.p.md), [Ccc.B18-21.Signs.2m.m](Questionnaire-Ccc.b18-21.signs.2m.m.md)... Show 6 more, [Ccc.B22.AssessmentsTests](Questionnaire-Ccc.b22.assessmentstests.md), [Ccc.B22.RespiratoryRate](Questionnaire-Ccc.b22.respiratoryrate.md), [Ccc.B22.SecondTemperature](Questionnaire-Ccc.b22.secondtemperature.md), [Ccc.B23.Classification](Questionnaire-Ccc.b23.classification.md), [Ccc.B6.Measurements](Questionnaire-Ccc.b6.measurements.md) and [CccA.Registration.P](Questionnaire-Ccca.registration.p.md)


* This material derives from the HL7 Terminology (THO). THO is copyright ©1989+ Health Level Seven International and is made available under the CC0 designation. For more licensing information see: [https://terminology.hl7.org/license.html](https://terminology.hl7.org/license.html)

* [PlanDefinitionType](http://terminology.hl7.org/6.1.0/CodeSystem-plan-definition-type.html): [Cccdt01](PlanDefinition-Cccdt01.md)
* [UsageContextType](http://terminology.hl7.org/6.1.0/CodeSystem-usage-context-type.html): [ActivityDefinition/Ccc.b10-14.symptoms.2m.p](ActivityDefinition-Ccc.b10-14.symptoms.2m.p.md), [ActivityDefinition/Ccc.b10-16.signs.2m.p](ActivityDefinition-Ccc.b10-16.signs.2m.p.md)... Show 16 more, [ActivityDefinition/Ccc.b18-21.signs.2m.m](ActivityDefinition-Ccc.b18-21.signs.2m.m.md), [ActivityDefinition/Ccc.b18-21.symptoms.2m.m](ActivityDefinition-Ccc.b18-21.symptoms.2m.m.md), [ActivityDefinition/Ccc.b22.assessmentstests](ActivityDefinition-Ccc.b22.assessmentstests.md), [ActivityDefinition/Ccc.b22.breastfeeding](ActivityDefinition-Ccc.b22.breastfeeding.md), [ActivityDefinition/Ccc.b22.bronchodilatortest](ActivityDefinition-Ccc.b22.bronchodilatortest.md), [ActivityDefinition/Ccc.b22.fluidtest](ActivityDefinition-Ccc.b22.fluidtest.md), [ActivityDefinition/Ccc.b22.hemoglobin](ActivityDefinition-Ccc.b22.hemoglobin.md), [ActivityDefinition/Ccc.b22.respiratoryrate](ActivityDefinition-Ccc.b22.respiratoryrate.md), [ActivityDefinition/Ccc.b22.secondtemperature](ActivityDefinition-Ccc.b22.secondtemperature.md), [ActivityDefinition/Ccc.b23.classification](ActivityDefinition-Ccc.b23.classification.md), [ActivityDefinition/Ccc.b23.classification.m](ActivityDefinition-Ccc.b23.classification.m.md), [ActivityDefinition/Ccc.b6.measurements](ActivityDefinition-Ccc.b6.measurements.md), [ActivityDefinition/Ccc.b7.lti-dangersigns](ActivityDefinition-Ccc.b7.lti-dangersigns.md), [ActivityDefinition/Ccc.treatment](ActivityDefinition-Ccc.treatment.md), [ActivityDefinition/Ccca.registration.p](ActivityDefinition-Ccca.registration.p.md) and [ActivityDefinition/Cccb.registration.e](ActivityDefinition-Cccb.registration.e.md)
* [ActCode](http://terminology.hl7.org/6.1.0/CodeSystem-v3-ActCode.html): [ActivityDefinition/Ccc.b10-14.symptoms.2m.p](ActivityDefinition-Ccc.b10-14.symptoms.2m.p.md), [ActivityDefinition/Ccc.b10-16.signs.2m.p](ActivityDefinition-Ccc.b10-16.signs.2m.p.md)... Show 16 more, [ActivityDefinition/Ccc.b18-21.signs.2m.m](ActivityDefinition-Ccc.b18-21.signs.2m.m.md), [ActivityDefinition/Ccc.b18-21.symptoms.2m.m](ActivityDefinition-Ccc.b18-21.symptoms.2m.m.md), [ActivityDefinition/Ccc.b22.assessmentstests](ActivityDefinition-Ccc.b22.assessmentstests.md), [ActivityDefinition/Ccc.b22.breastfeeding](ActivityDefinition-Ccc.b22.breastfeeding.md), [ActivityDefinition/Ccc.b22.bronchodilatortest](ActivityDefinition-Ccc.b22.bronchodilatortest.md), [ActivityDefinition/Ccc.b22.fluidtest](ActivityDefinition-Ccc.b22.fluidtest.md), [ActivityDefinition/Ccc.b22.hemoglobin](ActivityDefinition-Ccc.b22.hemoglobin.md), [ActivityDefinition/Ccc.b22.respiratoryrate](ActivityDefinition-Ccc.b22.respiratoryrate.md), [ActivityDefinition/Ccc.b22.secondtemperature](ActivityDefinition-Ccc.b22.secondtemperature.md), [ActivityDefinition/Ccc.b23.classification](ActivityDefinition-Ccc.b23.classification.md), [ActivityDefinition/Ccc.b23.classification.m](ActivityDefinition-Ccc.b23.classification.m.md), [ActivityDefinition/Ccc.b6.measurements](ActivityDefinition-Ccc.b6.measurements.md), [ActivityDefinition/Ccc.b7.lti-dangersigns](ActivityDefinition-Ccc.b7.lti-dangersigns.md), [ActivityDefinition/Ccc.treatment](ActivityDefinition-Ccc.treatment.md), [ActivityDefinition/Ccca.registration.p](ActivityDefinition-Ccca.registration.p.md) and [ActivityDefinition/Cccb.registration.e](ActivityDefinition-Cccb.registration.e.md)




## Resource Content

```json
{
  "resourceType" : "ImplementationGuide",
  "id" : "smart.who.int.ccc",
  "url" : "https://smart.who.int/ccc/ImplementationGuide/smart.who.int.ccc",
  "version" : "0.1.0",
  "name" : "Ccc",
  "title" : "WHO FHIR Implementation Guide (IG): Integrated Management of Childhood Illness (IMCI) in emergencies",
  "status" : "draft",
  "experimental" : false,
  "date" : "2022-01-06",
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
  "description" : "This implementation guide provides implementation resources and guidance in support of applying the WHO recommendations on emergency care.<br/>This implementation guide is part of the WHO Smart Guidelines approach to support countries to integrate WHO global data and health recommendations into digital systems accurately and consistently.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "packageId" : "smart.who.int.ccc",
  "license" : "CC0-1.0",
  "fhirVersion" : ["4.0.1"],
  "dependsOn" : [{
    "id" : "hl7_terminology",
    "uri" : "http://terminology.hl7.org/ImplementationGuide/hl7.terminology",
    "packageId" : "hl7.terminology",
    "version" : "5.5.0"
  },
  {
    "id" : "hl7_fhir_uv_extensions_r4",
    "uri" : "http://hl7.org/fhir/extensions/ImplementationGuide/hl7.fhir.uv.extensions",
    "packageId" : "hl7.fhir.uv.extensions.r4",
    "version" : "5.1.0"
  },
  {
    "id" : "hl7_fhir_uv_extensions_r5",
    "uri" : "http://hl7.org/fhir/extensions/ImplementationGuide/hl7.fhir.uv.extensions",
    "packageId" : "hl7.fhir.uv.extensions.r5",
    "version" : "5.2.0"
  },
  {
    "id" : "cql",
    "extension" : [{
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ImplementationGuide.dependsOn.reason",
      "valueMarkdown" : "This IG uses CQL profiles and capabilities provided by the Using CQL With FHIR IG"
    }],
    "uri" : "http://hl7.org/fhir/uv/cql/ImplementationGuide/hl7.fhir.uv.cql",
    "packageId" : "hl7.fhir.uv.cql",
    "version" : "1.0.0"
  },
  {
    "id" : "cpg",
    "extension" : [{
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ImplementationGuide.dependsOn.reason",
      "valueMarkdown" : "For Decision Tables"
    }],
    "uri" : "http://hl7.org/fhir/uv/cpg/ImplementationGuide/hl7.fhir.uv.cpg",
    "packageId" : "hl7.fhir.uv.cpg",
    "version" : "2.0.0"
  },
  {
    "id" : "crmi",
    "extension" : [{
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ImplementationGuide.dependsOn.reason",
      "valueMarkdown" : "This IG uses content management profiles and capabilities provided by the Canonical Resource Management Infrastructure (CRMI) IG"
    }],
    "uri" : "http://hl7.org/fhir/uv/crmi/ImplementationGuide/hl7.fhir.uv.crmi",
    "packageId" : "hl7.fhir.uv.crmi",
    "version" : "1.0.0"
  },
  {
    "id" : "sdc",
    "extension" : [{
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ImplementationGuide.dependsOn.reason",
      "valueMarkdown" : "This IG uses questionnaire profiles and capabilities provided by the Structure Data Capture (SDC) IG"
    }],
    "uri" : "http://hl7.org/fhir/uv/sdc/ImplementationGuide/hl7.fhir.uv.sdc",
    "packageId" : "hl7.fhir.uv.sdc",
    "version" : "3.0.0"
  },
  {
    "id" : "smart_who_int_base",
    "uri" : "http://smart.who.int/base/ImplementationGuide/smart.who.int.base",
    "packageId" : "smart.who.int.base",
    "version" : "current"
  }],
  "definition" : {
    "extension" : [{
      "extension" : [{
        "url" : "code",
        "valueString" : "copyrightyear"
      },
      {
        "url" : "value",
        "valueString" : "2022+"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "releaselabel"
      },
      {
        "url" : "value",
        "valueString" : "release"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "copyrightyear"
      },
      {
        "url" : "value",
        "valueString" : "2022+"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "releaselabel"
      },
      {
        "url" : "value",
        "valueString" : "CI Build"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "templates/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-suppressed-warnings"
      },
      {
        "url" : "value",
        "valueString" : "input/ignoreWarnings.txt"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "excludettl"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://fhir.org/guides/who/core/StructureDefinition/who-doNotPerformReason"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://fhir.org/guides/who/core/StructureDefinition/who-notDone"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://fhir.org/guides/who/core/StructureDefinition/who-notDoneReason"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://fhir.org/guides/who/core/StructureDefinition/who-reportedLocation"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://fhir.org/guides/who/core/StructureDefinition/who-allergyintolerance"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://fhir.org/guides/who/core/StructureDefinition/who-appointment"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://fhir.org/guides/who/core/StructureDefinition/who-careplan"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://fhir.org/guides/who/core/StructureDefinition/who-careteam"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://fhir.org/guides/who/core/StructureDefinition/who-condition"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://fhir.org/guides/who/core/StructureDefinition/who-encounter"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://fhir.org/guides/who/core/StructureDefinition/who-episodeofcare"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://fhir.org/guides/who/core/StructureDefinition/who-group"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://fhir.org/guides/who/core/StructureDefinition/who-groupdefinition"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://fhir.org/guides/who/core/StructureDefinition/who-immunization"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://fhir.org/guides/who/core/StructureDefinition/who-immunizationnotdone"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://fhir.org/guides/who/core/StructureDefinition/who-location"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://fhir.org/guides/who/core/StructureDefinition/who-measurereport"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://fhir.org/guides/who/core/StructureDefinition/who-medicationnotrequested"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://fhir.org/guides/who/core/StructureDefinition/who-medicationrequest"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://fhir.org/guides/who/core/StructureDefinition/who-observation"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://fhir.org/guides/who/core/StructureDefinition/who-observationnotdone"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://fhir.org/guides/who/core/StructureDefinition/who-organization"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://fhir.org/guides/who/core/StructureDefinition/who-patient"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://fhir.org/guides/who/core/StructureDefinition/who-practitioner"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://fhir.org/guides/who/core/StructureDefinition/who-practitionerrole"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://fhir.org/guides/who/core/StructureDefinition/who-procedure"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://fhir.org/guides/who/core/StructureDefinition/who-procedurenotdone"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://fhir.org/guides/who/core/StructureDefinition/who-relatedperson"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://fhir.org/guides/who/core/StructureDefinition/who-servicenotrequested"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://fhir.org/guides/who/core/StructureDefinition/who-servicerequest"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "autoload-resources"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "template/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "input/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-qa"
      },
      {
        "url" : "value",
        "valueString" : "temp/qa"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-temp"
      },
      {
        "url" : "value",
        "valueString" : "temp/pages"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-output"
      },
      {
        "url" : "value",
        "valueString" : "output"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-history"
      },
      {
        "url" : "value",
        "valueString" : "https://smart.who.int/ccc/history.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "template-html"
      },
      {
        "url" : "value",
        "valueString" : "template-page.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "template-md"
      },
      {
        "url" : "value",
        "valueString" : "template-page-md.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-contact"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-context"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-copyright"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-jurisdiction"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-license"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-publisher"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-version"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-wg"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "active-tables"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "fmm-definition"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/fhir/versions.html#maturity"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "propagate-status"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "excludelogbinaryformat"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "tabbed-snapshots"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-internal-dependency",
      "valueCode" : "hl7.fhir.uv.tools.r4#1.1.2"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "copyrightyear"
      },
      {
        "url" : "value",
        "valueString" : "2022+"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "releaselabel"
      },
      {
        "url" : "value",
        "valueString" : "release"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "copyrightyear"
      },
      {
        "url" : "value",
        "valueString" : "2022+"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "releaselabel"
      },
      {
        "url" : "value",
        "valueString" : "CI Build"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "templates/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-suppressed-warnings"
      },
      {
        "url" : "value",
        "valueString" : "input/ignoreWarnings.txt"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "excludettl"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://fhir.org/guides/who/core/StructureDefinition/who-doNotPerformReason"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://fhir.org/guides/who/core/StructureDefinition/who-notDone"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://fhir.org/guides/who/core/StructureDefinition/who-notDoneReason"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://fhir.org/guides/who/core/StructureDefinition/who-reportedLocation"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://fhir.org/guides/who/core/StructureDefinition/who-allergyintolerance"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://fhir.org/guides/who/core/StructureDefinition/who-appointment"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://fhir.org/guides/who/core/StructureDefinition/who-careplan"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://fhir.org/guides/who/core/StructureDefinition/who-careteam"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://fhir.org/guides/who/core/StructureDefinition/who-condition"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://fhir.org/guides/who/core/StructureDefinition/who-encounter"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://fhir.org/guides/who/core/StructureDefinition/who-episodeofcare"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://fhir.org/guides/who/core/StructureDefinition/who-group"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://fhir.org/guides/who/core/StructureDefinition/who-groupdefinition"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://fhir.org/guides/who/core/StructureDefinition/who-immunization"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://fhir.org/guides/who/core/StructureDefinition/who-immunizationnotdone"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://fhir.org/guides/who/core/StructureDefinition/who-location"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://fhir.org/guides/who/core/StructureDefinition/who-measurereport"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://fhir.org/guides/who/core/StructureDefinition/who-medicationnotrequested"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://fhir.org/guides/who/core/StructureDefinition/who-medicationrequest"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://fhir.org/guides/who/core/StructureDefinition/who-observation"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://fhir.org/guides/who/core/StructureDefinition/who-observationnotdone"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://fhir.org/guides/who/core/StructureDefinition/who-organization"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://fhir.org/guides/who/core/StructureDefinition/who-patient"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://fhir.org/guides/who/core/StructureDefinition/who-practitioner"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://fhir.org/guides/who/core/StructureDefinition/who-practitionerrole"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://fhir.org/guides/who/core/StructureDefinition/who-procedure"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://fhir.org/guides/who/core/StructureDefinition/who-procedurenotdone"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://fhir.org/guides/who/core/StructureDefinition/who-relatedperson"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://fhir.org/guides/who/core/StructureDefinition/who-servicenotrequested"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://fhir.org/guides/who/core/StructureDefinition/who-servicerequest"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "autoload-resources"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "template/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "input/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-qa"
      },
      {
        "url" : "value",
        "valueString" : "temp/qa"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-temp"
      },
      {
        "url" : "value",
        "valueString" : "temp/pages"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-output"
      },
      {
        "url" : "value",
        "valueString" : "output"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-history"
      },
      {
        "url" : "value",
        "valueString" : "https://smart.who.int/ccc/history.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "template-html"
      },
      {
        "url" : "value",
        "valueString" : "template-page.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "template-md"
      },
      {
        "url" : "value",
        "valueString" : "template-page-md.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-contact"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-context"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-copyright"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-jurisdiction"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-license"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-publisher"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-version"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-wg"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "active-tables"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "fmm-definition"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/fhir/versions.html#maturity"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "propagate-status"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "excludelogbinaryformat"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "tabbed-snapshots"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    }],
    "resource" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ActivityDefinition"
      }],
      "reference" : {
        "reference" : "ActivityDefinition/Ccc.b10-14.symptoms.2m.p"
      },
      "name" : "Ccc.b10-14.symptoms.2m.p",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Library"
      }],
      "reference" : {
        "reference" : "Library/Cccb1014symptoms2mp"
      },
      "name" : "Ccc.B10-14.Symptoms.2m.p",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      }],
      "reference" : {
        "reference" : "Questionnaire/Ccc.b10-14.symptoms.2m.p"
      },
      "name" : "Ccc.B10-14.Symptoms.2m.p",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureMap"
      }],
      "reference" : {
        "reference" : "StructureMap/Ccc.b10-14.symptoms.2m.p"
      },
      "name" : "Ccc.b10-14.symptoms.2m.p",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ActivityDefinition"
      }],
      "reference" : {
        "reference" : "ActivityDefinition/Ccc.b10-16.signs.2m.p"
      },
      "name" : "Ccc.b10-16.signs.2m.p",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Library"
      }],
      "reference" : {
        "reference" : "Library/Cccb1016signs2mp"
      },
      "name" : "Ccc.B10-16.Signs.2m.p",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      }],
      "reference" : {
        "reference" : "Questionnaire/Ccc.b10-16.signs.2m.p"
      },
      "name" : "Ccc.B10-16.Signs.2m.p",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureMap"
      }],
      "reference" : {
        "reference" : "StructureMap/Ccc.b10-16.signs.2m.p"
      },
      "name" : "Ccc.b10-16.signs.2m.p",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ActivityDefinition"
      }],
      "reference" : {
        "reference" : "ActivityDefinition/Ccc.b18-21.signs.2m.m"
      },
      "name" : "Ccc.b18-21.signs.2m.m",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Library"
      }],
      "reference" : {
        "reference" : "Library/Cccb1821signs2mm"
      },
      "name" : "Ccc.B18-21.Signs.2m.m",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      }],
      "reference" : {
        "reference" : "Questionnaire/Ccc.b18-21.signs.2m.m"
      },
      "name" : "Ccc.B18-21.Signs.2m.m",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureMap"
      }],
      "reference" : {
        "reference" : "StructureMap/Ccc.b18-21.signs.2m.m"
      },
      "name" : "Ccc.b18-21.signs.2m.m",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ActivityDefinition"
      }],
      "reference" : {
        "reference" : "ActivityDefinition/Ccc.b18-21.symptoms.2m.m"
      },
      "name" : "Ccc.b18-21.symptoms.2m.m",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Library"
      }],
      "reference" : {
        "reference" : "Library/Cccb1821symptoms2mm"
      },
      "name" : "Ccc.B18-21.Symptoms.2m.m",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      }],
      "reference" : {
        "reference" : "Questionnaire/Ccc.b18-21.symptoms.2m.m"
      },
      "name" : "Ccc.B18-21.Symptoms.2m.m",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureMap"
      }],
      "reference" : {
        "reference" : "StructureMap/Ccc.b18-21.symptoms.2m.m"
      },
      "name" : "Ccc.b18-21.symptoms.2m.m",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ActivityDefinition"
      }],
      "reference" : {
        "reference" : "ActivityDefinition/Ccc.b22.assessmentstests"
      },
      "name" : "Ccc.b22.assessmentstests",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Library"
      }],
      "reference" : {
        "reference" : "Library/Cccb22assessmentstests"
      },
      "name" : "Ccc.B22.AssessmentsTests",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      }],
      "reference" : {
        "reference" : "Questionnaire/Ccc.b22.assessmentstests"
      },
      "name" : "Ccc.B22.AssessmentsTests",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureMap"
      }],
      "reference" : {
        "reference" : "StructureMap/Ccc.b22.assessmentstests"
      },
      "name" : "Ccc.b22.assessmentstests",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ActivityDefinition"
      }],
      "reference" : {
        "reference" : "ActivityDefinition/Ccc.b22.breastfeeding"
      },
      "name" : "Ccc.b22.breastfeeding",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Library"
      }],
      "reference" : {
        "reference" : "Library/Cccb22breastfeeding"
      },
      "name" : "Ccc.B22.BreastFeeding",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      }],
      "reference" : {
        "reference" : "Questionnaire/Ccc.b22.breastfeeding"
      },
      "name" : "Ccc.B22.BreastFeeding",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureMap"
      }],
      "reference" : {
        "reference" : "StructureMap/Ccc.b22.breastfeeding"
      },
      "name" : "Ccc.b22.breastfeeding",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ActivityDefinition"
      }],
      "reference" : {
        "reference" : "ActivityDefinition/Ccc.b22.bronchodilatortest"
      },
      "name" : "Ccc.b22.bronchodilatortest",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      }],
      "reference" : {
        "reference" : "Questionnaire/Ccc.b22.bronchodilatortest"
      },
      "name" : "Ccc.B22.BronchodilatorTest",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureMap"
      }],
      "reference" : {
        "reference" : "StructureMap/Ccc.b22.bronchodilatortest"
      },
      "name" : "Ccc.b22.bronchodilatortest",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ActivityDefinition"
      }],
      "reference" : {
        "reference" : "ActivityDefinition/Ccc.b22.fluidtest"
      },
      "name" : "Ccc.b22.fluidtest",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Library"
      }],
      "reference" : {
        "reference" : "Library/Cccb22fluidtest"
      },
      "name" : "Ccc.B22.FluidTest",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      }],
      "reference" : {
        "reference" : "Questionnaire/Ccc.b22.fluidtest"
      },
      "name" : "Ccc.B22.FluidTest",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureMap"
      }],
      "reference" : {
        "reference" : "StructureMap/Ccc.b22.fluidtest"
      },
      "name" : "Ccc.b22.fluidtest",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ActivityDefinition"
      }],
      "reference" : {
        "reference" : "ActivityDefinition/Ccc.b22.hemoglobin"
      },
      "name" : "Ccc.b22.hemoglobin",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      }],
      "reference" : {
        "reference" : "Questionnaire/Ccc.b22.hemoglobin"
      },
      "name" : "Ccc.B22.Hemoglobin",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureMap"
      }],
      "reference" : {
        "reference" : "StructureMap/Ccc.b22.hemoglobin"
      },
      "name" : "Ccc.b22.hemoglobin",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ActivityDefinition"
      }],
      "reference" : {
        "reference" : "ActivityDefinition/Ccc.b22.respiratoryrate"
      },
      "name" : "Ccc.b22.respiratoryrate",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Library"
      }],
      "reference" : {
        "reference" : "Library/Cccb22respiratoryrate"
      },
      "name" : "Ccc.B22.RespiratoryRate",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      }],
      "reference" : {
        "reference" : "Questionnaire/Ccc.b22.respiratoryrate"
      },
      "name" : "Ccc.B22.RespiratoryRate",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureMap"
      }],
      "reference" : {
        "reference" : "StructureMap/Ccc.b22.respiratoryrate"
      },
      "name" : "Ccc.b22.respiratoryrate",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ActivityDefinition"
      }],
      "reference" : {
        "reference" : "ActivityDefinition/Ccc.b22.secondtemperature"
      },
      "name" : "Ccc.b22.secondtemperature",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Library"
      }],
      "reference" : {
        "reference" : "Library/Cccb22secondtemperature"
      },
      "name" : "Ccc.B22.SecondTemperature",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      }],
      "reference" : {
        "reference" : "Questionnaire/Ccc.b22.secondtemperature"
      },
      "name" : "Ccc.B22.SecondTemperature",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureMap"
      }],
      "reference" : {
        "reference" : "StructureMap/Ccc.b22.secondtemperature"
      },
      "name" : "Ccc.b22.secondtemperature",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ActivityDefinition"
      }],
      "reference" : {
        "reference" : "ActivityDefinition/Ccc.b23.classification"
      },
      "name" : "Ccc.b23.classification",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Library"
      }],
      "reference" : {
        "reference" : "Library/Cccb23classification"
      },
      "name" : "Ccc.B23.Classification",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      }],
      "reference" : {
        "reference" : "Questionnaire/Ccc.b23.classification"
      },
      "name" : "Ccc.B23.Classification",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureMap"
      }],
      "reference" : {
        "reference" : "StructureMap/Ccc.b23.classification"
      },
      "name" : "Ccc.b23.classification",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ActivityDefinition"
      }],
      "reference" : {
        "reference" : "ActivityDefinition/Ccc.b23.classification.m"
      },
      "name" : "Ccc.b23.classification.m",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Library"
      }],
      "reference" : {
        "reference" : "Library/Cccb23classificationm"
      },
      "name" : "Ccc.B23.Classification.m",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      }],
      "reference" : {
        "reference" : "Questionnaire/Ccc.b23.classification.m"
      },
      "name" : "Ccc.B23.Classification.m",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureMap"
      }],
      "reference" : {
        "reference" : "StructureMap/Ccc.b23.classification.m"
      },
      "name" : "Ccc.b23.classification.m",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ActivityDefinition"
      }],
      "reference" : {
        "reference" : "ActivityDefinition/Ccc.b6.measurements"
      },
      "name" : "Ccc.b6.measurements",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Library"
      }],
      "reference" : {
        "reference" : "Library/Cccb6measurements"
      },
      "name" : "Ccc.B6.Measurements",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      }],
      "reference" : {
        "reference" : "Questionnaire/Ccc.b6.measurements"
      },
      "name" : "Ccc.B6.Measurements",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureMap"
      }],
      "reference" : {
        "reference" : "StructureMap/Ccc.b6.measurements"
      },
      "name" : "Ccc.b6.measurements",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ActivityDefinition"
      }],
      "reference" : {
        "reference" : "ActivityDefinition/Ccc.b7.lti-dangersigns"
      },
      "name" : "Ccc.b7.lti-dangersigns",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Library"
      }],
      "reference" : {
        "reference" : "Library/Cccb7ltidangersigns"
      },
      "name" : "Ccc.B7.LTI-DangerSigns",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      }],
      "reference" : {
        "reference" : "Questionnaire/Ccc.b7.lti-dangersigns"
      },
      "name" : "Ccc.B7.LTI-DangerSigns",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureMap"
      }],
      "reference" : {
        "reference" : "StructureMap/Ccc.b7.lti-dangersigns"
      },
      "name" : "Ccc.b7.lti-dangersigns",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Library"
      }],
      "reference" : {
        "reference" : "Library/Ccccombineddataelements"
      },
      "name" : "Ccc.CombinedDataElements",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ActivityDefinition"
      }],
      "reference" : {
        "reference" : "ActivityDefinition/Ccc.treatment"
      },
      "name" : "Ccc.treatment",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Library"
      }],
      "reference" : {
        "reference" : "Library/Ccctreatment"
      },
      "name" : "Ccc.Treatment",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      }],
      "reference" : {
        "reference" : "Questionnaire/Ccc.treatment"
      },
      "name" : "Ccc.Treatment",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureMap"
      }],
      "reference" : {
        "reference" : "StructureMap/Ccc.treatment"
      },
      "name" : "Ccc.treatment",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Library"
      }],
      "reference" : {
        "reference" : "Library/Ccczscore"
      },
      "name" : "Ccc.Z.Score",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ActivityDefinition"
      }],
      "reference" : {
        "reference" : "ActivityDefinition/Ccca.registration.p"
      },
      "name" : "Ccca.registration.p",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      }],
      "reference" : {
        "reference" : "Questionnaire/Ccca.registration.p"
      },
      "name" : "CccA.Registration.P",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureMap"
      }],
      "reference" : {
        "reference" : "StructureMap/Ccca.registration.p"
      },
      "name" : "Ccca.registration.p",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ActivityDefinition"
      }],
      "reference" : {
        "reference" : "ActivityDefinition/Cccb.registration.e"
      },
      "name" : "Cccb.registration.e",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      }],
      "reference" : {
        "reference" : "Questionnaire/Cccb.registration.e"
      },
      "name" : "CccB.Registration.E",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureMap"
      }],
      "reference" : {
        "reference" : "StructureMap/Cccb.registration.e"
      },
      "name" : "Cccb.registration.e",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Library"
      }],
      "reference" : {
        "reference" : "Library/Cccbase"
      },
      "name" : "CccBase",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Library"
      }],
      "reference" : {
        "reference" : "Library/Ccccondition"
      },
      "name" : "Ccccondition",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Library"
      }],
      "reference" : {
        "reference" : "Library/Cccdt01"
      },
      "name" : "Cccdt01",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "PlanDefinition"
      }],
      "reference" : {
        "reference" : "PlanDefinition/Cccdt01"
      },
      "name" : "Cccdt01",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Library"
      }],
      "reference" : {
        "reference" : "Library/Cccobservation"
      },
      "name" : "Cccobservation",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Library"
      }],
      "reference" : {
        "reference" : "Library/Cccobservationvalueset"
      },
      "name" : "Cccobservation-valueset",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Library"
      }],
      "reference" : {
        "reference" : "Library/Cccvalueset"
      },
      "name" : "Cccvalueset",
      "exampleBoolean" : false
    }],
    "page" : {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
        "valueUrl" : "toc.html"
      }],
      "nameUrl" : "toc.html",
      "title" : "Table of Contents",
      "generation" : "html",
      "page" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "index.html"
        }],
        "nameUrl" : "index.html",
        "title" : "Home",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "documentation.html"
        }],
        "nameUrl" : "documentation.html",
        "title" : "Documentation",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "guidance.html"
        }],
        "nameUrl" : "guidance.html",
        "title" : "Guidance",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "downloads.html"
        }],
        "nameUrl" : "downloads.html",
        "title" : "Downloads",
        "generation" : "html"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "license.html"
        }],
        "nameUrl" : "license.html",
        "title" : "License",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "changes.html"
        }],
        "nameUrl" : "changes.html",
        "title" : "Changes",
        "generation" : "html"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "quick-start.html"
        }],
        "nameUrl" : "quick-start.html",
        "title" : "Quick Start",
        "generation" : "html"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "dak-api.html"
        }],
        "nameUrl" : "dak-api.html",
        "title" : "DAK API Documentation Hub",
        "generation" : "markdown"
      }]
    },
    "parameter" : [{
      "code" : "path-pages",
      "value" : "ext-ig/cpg"
    },
    {
      "code" : "path-pages",
      "value" : "ext-ig/who"
    },
    {
      "code" : "path-pages",
      "value" : "input/pagecontent"
    },
    {
      "code" : "path-resource",
      "value" : "input/resources/activitydefinition"
    },
    {
      "code" : "path-resource",
      "value" : "input/resources/library"
    },
    {
      "code" : "path-resource",
      "value" : "input/resources/plandefinition"
    },
    {
      "code" : "path-resource",
      "value" : "input/profiles/"
    },
    {
      "code" : "path-resource",
      "value" : "input/extensions/"
    },
    {
      "code" : "path-resource",
      "value" : "input/resources/questionnaire"
    },
    {
      "code" : "path-resource",
      "value" : "input/resources/structuremap"
    },
    {
      "code" : "path-resource",
      "value" : "input/vocabulary/codesystem"
    },
    {
      "code" : "path-resource",
      "value" : "input/vocabulary/valueset"
    },
    {
      "code" : "path-resource",
      "value" : "input/capabilities"
    },
    {
      "code" : "path-resource",
      "value" : "input/examples"
    },
    {
      "code" : "path-resource",
      "value" : "input/extensions"
    },
    {
      "code" : "path-resource",
      "value" : "input/models"
    },
    {
      "code" : "path-resource",
      "value" : "input/operations"
    },
    {
      "code" : "path-resource",
      "value" : "input/profiles"
    },
    {
      "code" : "path-resource",
      "value" : "input/resources"
    },
    {
      "code" : "path-resource",
      "value" : "input/vocabulary"
    },
    {
      "code" : "path-resource",
      "value" : "input/testing"
    },
    {
      "code" : "path-resource",
      "value" : "input/history"
    },
    {
      "code" : "path-resource",
      "value" : "fsh-generated/resources"
    },
    {
      "code" : "path-pages",
      "value" : "template/config"
    },
    {
      "code" : "path-pages",
      "value" : "input/images"
    },
    {
      "code" : "path-tx-cache",
      "value" : "input-cache/txcache"
    }]
  }
}

```
