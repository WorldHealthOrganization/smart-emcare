# emcare.b22.secondtemperature - WHO FHIR Implementation Guide (IG): Integrated Management of Childhood Illness (IMCI) in emergencies v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **emcare.b22.secondtemperature**

## StructureMap: emcare.b22.secondtemperature 

| | |
| :--- | :--- |
| *Official URL*:https://smart.who.int/ccc/StructureMap/emcare.b22.secondtemperature | *Version*:0.1.0 |
| Active as of 2026-04-07 | *Computable Name*:emcare.b22.secondtemperature |

```
map "https://smart.who.int/ccc/StructureMap/emcare.b22.secondtemperature" = "emcare.b22.secondtemperature"


uses "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaireresponse" alias 'questionnaireResponse' as source
uses "http://hl7.org/fhir/StructureDefinition/Bundle" alias 'Bundle' as target
uses "https://smart.who.int/ccc/StructureDefinition/observation" alias 'Observation' as target
uses "https://smart.who.int/ccc/StructureDefinition/emcareobservation" alias 'EmCare Observation' as produced

group bundletrans(source src : questionnaireResponse, target bundle : Bundle) {
  src -> bundle.id = uuid() "id";
  src -> bundle.type = 'batch' "type";
  src.item first as item where (linkId = 'EmCare.B22.DE47') and answer.exists() then {
    src -> bundle.entry as entry then {
      src ->  entry.request as request,  request.method = 'POST',  uuid() as uuid,  request.url = append('/Observation/', uuid) "b50ac4c5";
      src -> entry.resource = create('Observation') as tgt then {
        src -> tgt then emcareobservationemcareb22de47(src, tgt) "27e1ae58";
      } "68ad31bf";
    } "6ac0c1c9";
  } "921b6c4e";
  src.item first as item where (linkId = 'EmCare.B22.DE46') and answer.exists() then {
    src -> bundle.entry as entry then {
      src ->  entry.request as request,  request.method = 'POST',  uuid() as uuid,  request.url = append('/Observation/', uuid) "b50ac4c5";
      src -> entry.resource = create('Observation') as tgt then {
        src -> tgt then emcareobservationemcareb22de46(src, tgt) "d4ea6333";
      } "1ee0adeb";
    } "9266b262";
  } "822ffc0d";
  src.item first as item where (linkId = 'EmCare.B22.DE50') and answer.exists() then {
    src -> bundle.entry as entry then {
      src ->  entry.request as request,  request.method = 'POST',  uuid() as uuid,  request.url = append('/Observation/', uuid) "b50ac4c5";
      src -> entry.resource = create('Observation') as tgt then {
        src -> tgt then emcareobservationemcareb22de50(src, tgt) "b5c48578";
      } "1d3deeec";
    } "82120e52";
  } "7a077eb8";
}

group emcareobservationemcareb22de47(source src, target tgt) {
  src ->  tgt.identifier = create('Identifier') as CodeID,  CodeID.system = 'http://hl7.org/fhir/namingsystem-identifier-type',  CodeID.use = 'official',  CodeID.value = 'uuid',  CodeID.id = uuid() "id-emcareb22de47";
  src.encounter as encounter -> tgt.encounter = encounter "35bc6b82";
  src.subject as subject ->  tgt.subject = subject,  tgt.meta = create('Meta') as newMeta,  newMeta.profile = 'https://smart.who.int/ccc/StructureDefinition/emcareobservation',  tgt.code = create('CodeableConcept') as concept,  concept.coding = create('Coding') as coding,  coding.system = 'https://smart.who.int/ccc/CodeSystem/emcare-custom-codes',  coding.code = 'EmCare.B22.DE47' "code-emcareb22de47";
  src.item as itemtimestamp where linkId = 'timestamp' then {
    itemtimestamp.answer first as atimestamp then {
      atimestamp.value as val -> tgt.issued = val "5af77f2c";
    } "7f22f29f";
  } "aae7a11d";
  src.subject as subject -> tgt.subject = subject "patient";
  src.item first as item where (linkId = 'EmCare.B22.DE47') and answer.exists() then {
    item.answer first as a then {
      a.value as val ->  tgt.value = val,  tgt.status = 'final' "afa0ccc0";
    } "d40466ff";
  } "48393240";
}

group emcareobservationemcareb22de46(source src, target tgt) {
  src ->  tgt.identifier = create('Identifier') as CodeID,  CodeID.system = 'http://hl7.org/fhir/namingsystem-identifier-type',  CodeID.use = 'official',  CodeID.value = 'uuid',  CodeID.id = uuid() "id-emcareb22de46";
  src.encounter as encounter -> tgt.encounter = encounter "35bc6b82";
  src.subject as subject ->  tgt.subject = subject,  tgt.meta = create('Meta') as newMeta,  newMeta.profile = 'https://smart.who.int/ccc/StructureDefinition/emcareobservation',  tgt.code = create('CodeableConcept') as concept,  concept.coding = create('Coding') as coding,  coding.system = 'https://smart.who.int/ccc/CodeSystem/emcare-custom-codes',  coding.code = 'EmCare.B22.DE46' "code-emcareb22de46";
  src.item as itemtimestamp where linkId = 'timestamp' then {
    itemtimestamp.answer first as atimestamp then {
      atimestamp.value as val -> tgt.issued = val "5af77f2c";
    } "7f22f29f";
  } "aae7a11d";
  src.subject as subject -> tgt.subject = subject "patient";
  src.item first as item where (linkId = 'EmCare.B22.DE46') and answer.exists() then {
    item.answer first as a then {
      a.value as val then {
        val where val.code = 'true' ->  tgt.status = 'final',  tgt.value = true "8a65aaa5";
      } "26c2c8c7";
    } "721205d5";
  } "a4475795";
}

group emcareobservationemcareb22de50(source src, target tgt) {
  src ->  tgt.identifier = create('Identifier') as CodeID,  CodeID.system = 'http://hl7.org/fhir/namingsystem-identifier-type',  CodeID.use = 'official',  CodeID.value = 'uuid',  CodeID.id = uuid() "id-emcareb22de50";
  src.encounter as encounter -> tgt.encounter = encounter "35bc6b82";
  src.subject as subject ->  tgt.subject = subject,  tgt.meta = create('Meta') as newMeta,  newMeta.profile = 'https://smart.who.int/ccc/StructureDefinition/emcareobservation',  tgt.code = create('CodeableConcept') as concept,  concept.coding = create('Coding') as coding,  coding.system = 'https://smart.who.int/ccc/CodeSystem/emcare-custom-codes',  coding.code = 'EmCare.B22.DE50' "code-emcareb22de50";
  src.item as itemtimestamp where linkId = 'timestamp' then {
    itemtimestamp.answer first as atimestamp then {
      atimestamp.value as val -> tgt.issued = val "5af77f2c";
    } "7f22f29f";
  } "aae7a11d";
  src.subject as subject -> tgt.subject = subject "patient";
  src.item first as item where (linkId = 'EmCare.B22.DE50') and answer.exists() then {
    item.answer first as a then {
      a.value as val then {
        val ->  tgt.value = create('CodeableConcept') as cc,  cc.coding = create('Coding') as c,  c.code = val,  c.system = 'https://smart.who.int/ccc/CodeSystem/emcare-custom-codes',  tgt.status = 'final' "759a9a54";
      } "1b820ab0";
    } "d39f9088";
  } "7972a70f";
}


```



## Resource Content

```json
{
  "resourceType" : "StructureMap",
  "id" : "emcare.b22.secondtemperature",
  "url" : "https://smart.who.int/ccc/StructureMap/emcare.b22.secondtemperature",
  "version" : "0.1.0",
  "name" : "emcare.b22.secondtemperature",
  "status" : "active",
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
  "structure" : [{
    "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaireresponse",
    "mode" : "source",
    "alias" : "'questionnaireResponse'"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/Bundle",
    "mode" : "target",
    "alias" : "'Bundle'"
  },
  {
    "url" : "https://smart.who.int/ccc/StructureDefinition/observation",
    "mode" : "target",
    "alias" : "'Observation'"
  },
  {
    "url" : "https://smart.who.int/ccc/StructureDefinition/emcareobservation",
    "mode" : "produced",
    "alias" : "'EmCare Observation'"
  }],
  "group" : [{
    "name" : "bundletrans",
    "typeMode" : "none",
    "input" : [{
      "name" : "src",
      "type" : "questionnaireResponse",
      "mode" : "source"
    },
    {
      "name" : "bundle",
      "type" : "Bundle",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "id",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "bundle",
        "contextType" : "variable",
        "element" : "id",
        "transform" : "uuid"
      }]
    },
    {
      "name" : "type",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "bundle",
        "contextType" : "variable",
        "element" : "type",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "batch"
        }]
      }]
    },
    {
      "name" : "921b6c4e",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "item",
        "condition" : "(linkId = 'EmCare.B22.DE47') and answer.exists()"
      }],
      "rule" : [{
        "name" : "6ac0c1c9",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "bundle",
          "contextType" : "variable",
          "element" : "entry",
          "variable" : "entry"
        }],
        "rule" : [{
          "name" : "b50ac4c5",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "entry",
            "contextType" : "variable",
            "element" : "request",
            "variable" : "request"
          },
          {
            "context" : "request",
            "contextType" : "variable",
            "element" : "method",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "POST"
            }]
          },
          {
            "contextType" : "variable",
            "variable" : "uuid",
            "transform" : "uuid"
          },
          {
            "context" : "request",
            "contextType" : "variable",
            "element" : "url",
            "transform" : "append",
            "parameter" : [{
              "valueString" : "/Observation/"
            },
            {
              "valueId" : "uuid"
            }]
          }]
        },
        {
          "name" : "68ad31bf",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "entry",
            "contextType" : "variable",
            "element" : "resource",
            "variable" : "tgt",
            "transform" : "create",
            "parameter" : [{
              "valueString" : "Observation"
            }]
          }],
          "rule" : [{
            "name" : "27e1ae58",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "contextType" : "variable",
              "transform" : "copy",
              "parameter" : [{
                "valueId" : "tgt"
              }]
            }],
            "dependent" : [{
              "name" : "emcareobservationemcareb22de47",
              "variable" : ["src", "tgt"]
            }]
          }]
        }]
      }]
    },
    {
      "name" : "822ffc0d",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "item",
        "condition" : "(linkId = 'EmCare.B22.DE46') and answer.exists()"
      }],
      "rule" : [{
        "name" : "9266b262",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "bundle",
          "contextType" : "variable",
          "element" : "entry",
          "variable" : "entry"
        }],
        "rule" : [{
          "name" : "b50ac4c5",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "entry",
            "contextType" : "variable",
            "element" : "request",
            "variable" : "request"
          },
          {
            "context" : "request",
            "contextType" : "variable",
            "element" : "method",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "POST"
            }]
          },
          {
            "contextType" : "variable",
            "variable" : "uuid",
            "transform" : "uuid"
          },
          {
            "context" : "request",
            "contextType" : "variable",
            "element" : "url",
            "transform" : "append",
            "parameter" : [{
              "valueString" : "/Observation/"
            },
            {
              "valueId" : "uuid"
            }]
          }]
        },
        {
          "name" : "1ee0adeb",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "entry",
            "contextType" : "variable",
            "element" : "resource",
            "variable" : "tgt",
            "transform" : "create",
            "parameter" : [{
              "valueString" : "Observation"
            }]
          }],
          "rule" : [{
            "name" : "d4ea6333",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "contextType" : "variable",
              "transform" : "copy",
              "parameter" : [{
                "valueId" : "tgt"
              }]
            }],
            "dependent" : [{
              "name" : "emcareobservationemcareb22de46",
              "variable" : ["src", "tgt"]
            }]
          }]
        }]
      }]
    },
    {
      "name" : "7a077eb8",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "item",
        "condition" : "(linkId = 'EmCare.B22.DE50') and answer.exists()"
      }],
      "rule" : [{
        "name" : "82120e52",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "bundle",
          "contextType" : "variable",
          "element" : "entry",
          "variable" : "entry"
        }],
        "rule" : [{
          "name" : "b50ac4c5",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "entry",
            "contextType" : "variable",
            "element" : "request",
            "variable" : "request"
          },
          {
            "context" : "request",
            "contextType" : "variable",
            "element" : "method",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "POST"
            }]
          },
          {
            "contextType" : "variable",
            "variable" : "uuid",
            "transform" : "uuid"
          },
          {
            "context" : "request",
            "contextType" : "variable",
            "element" : "url",
            "transform" : "append",
            "parameter" : [{
              "valueString" : "/Observation/"
            },
            {
              "valueId" : "uuid"
            }]
          }]
        },
        {
          "name" : "1d3deeec",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "entry",
            "contextType" : "variable",
            "element" : "resource",
            "variable" : "tgt",
            "transform" : "create",
            "parameter" : [{
              "valueString" : "Observation"
            }]
          }],
          "rule" : [{
            "name" : "b5c48578",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "contextType" : "variable",
              "transform" : "copy",
              "parameter" : [{
                "valueId" : "tgt"
              }]
            }],
            "dependent" : [{
              "name" : "emcareobservationemcareb22de50",
              "variable" : ["src", "tgt"]
            }]
          }]
        }]
      }]
    }]
  },
  {
    "name" : "emcareobservationemcareb22de47",
    "typeMode" : "none",
    "input" : [{
      "name" : "src",
      "mode" : "source"
    },
    {
      "name" : "tgt",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "id-emcareb22de47",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "identifier",
        "variable" : "CodeID",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "Identifier"
        }]
      },
      {
        "context" : "CodeID",
        "contextType" : "variable",
        "element" : "system",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "http://hl7.org/fhir/namingsystem-identifier-type"
        }]
      },
      {
        "context" : "CodeID",
        "contextType" : "variable",
        "element" : "use",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "official"
        }]
      },
      {
        "context" : "CodeID",
        "contextType" : "variable",
        "element" : "value",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "uuid"
        }]
      },
      {
        "context" : "CodeID",
        "contextType" : "variable",
        "element" : "id",
        "transform" : "uuid"
      }]
    },
    {
      "name" : "35bc6b82",
      "source" : [{
        "context" : "src",
        "element" : "encounter",
        "variable" : "encounter"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "encounter",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "encounter"
        }]
      }]
    },
    {
      "name" : "code-emcareb22de47",
      "source" : [{
        "context" : "src",
        "element" : "subject",
        "variable" : "subject"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "subject",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "subject"
        }]
      },
      {
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "meta",
        "variable" : "newMeta",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "Meta"
        }]
      },
      {
        "context" : "newMeta",
        "contextType" : "variable",
        "element" : "profile",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "https://smart.who.int/ccc/StructureDefinition/emcareobservation"
        }]
      },
      {
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "code",
        "variable" : "concept",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "CodeableConcept"
        }]
      },
      {
        "context" : "concept",
        "contextType" : "variable",
        "element" : "coding",
        "variable" : "coding",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "Coding"
        }]
      },
      {
        "context" : "coding",
        "contextType" : "variable",
        "element" : "system",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "https://smart.who.int/ccc/CodeSystem/emcare-custom-codes"
        }]
      },
      {
        "context" : "coding",
        "contextType" : "variable",
        "element" : "code",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "EmCare.B22.DE47"
        }]
      }]
    },
    {
      "name" : "aae7a11d",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "variable" : "itemtimestamp",
        "condition" : "linkId = 'timestamp'"
      }],
      "rule" : [{
        "name" : "7f22f29f",
        "source" : [{
          "context" : "itemtimestamp",
          "element" : "answer",
          "listMode" : "first",
          "variable" : "atimestamp"
        }],
        "rule" : [{
          "name" : "5af77f2c",
          "source" : [{
            "context" : "atimestamp",
            "element" : "value",
            "variable" : "val"
          }],
          "target" : [{
            "context" : "tgt",
            "contextType" : "variable",
            "element" : "issued",
            "transform" : "copy",
            "parameter" : [{
              "valueId" : "val"
            }]
          }]
        }]
      }]
    },
    {
      "name" : "patient",
      "source" : [{
        "context" : "src",
        "element" : "subject",
        "variable" : "subject"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "subject",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "subject"
        }]
      }]
    },
    {
      "name" : "48393240",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "item",
        "condition" : "(linkId = 'EmCare.B22.DE47') and answer.exists()"
      }],
      "rule" : [{
        "name" : "d40466ff",
        "source" : [{
          "context" : "item",
          "element" : "answer",
          "listMode" : "first",
          "variable" : "a"
        }],
        "rule" : [{
          "name" : "afa0ccc0",
          "source" : [{
            "context" : "a",
            "element" : "value",
            "variable" : "val"
          }],
          "target" : [{
            "context" : "tgt",
            "contextType" : "variable",
            "element" : "value",
            "transform" : "copy",
            "parameter" : [{
              "valueId" : "val"
            }]
          },
          {
            "context" : "tgt",
            "contextType" : "variable",
            "element" : "status",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "final"
            }]
          }]
        }]
      }]
    }]
  },
  {
    "name" : "emcareobservationemcareb22de46",
    "typeMode" : "none",
    "input" : [{
      "name" : "src",
      "mode" : "source"
    },
    {
      "name" : "tgt",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "id-emcareb22de46",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "identifier",
        "variable" : "CodeID",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "Identifier"
        }]
      },
      {
        "context" : "CodeID",
        "contextType" : "variable",
        "element" : "system",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "http://hl7.org/fhir/namingsystem-identifier-type"
        }]
      },
      {
        "context" : "CodeID",
        "contextType" : "variable",
        "element" : "use",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "official"
        }]
      },
      {
        "context" : "CodeID",
        "contextType" : "variable",
        "element" : "value",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "uuid"
        }]
      },
      {
        "context" : "CodeID",
        "contextType" : "variable",
        "element" : "id",
        "transform" : "uuid"
      }]
    },
    {
      "name" : "35bc6b82",
      "source" : [{
        "context" : "src",
        "element" : "encounter",
        "variable" : "encounter"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "encounter",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "encounter"
        }]
      }]
    },
    {
      "name" : "code-emcareb22de46",
      "source" : [{
        "context" : "src",
        "element" : "subject",
        "variable" : "subject"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "subject",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "subject"
        }]
      },
      {
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "meta",
        "variable" : "newMeta",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "Meta"
        }]
      },
      {
        "context" : "newMeta",
        "contextType" : "variable",
        "element" : "profile",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "https://smart.who.int/ccc/StructureDefinition/emcareobservation"
        }]
      },
      {
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "code",
        "variable" : "concept",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "CodeableConcept"
        }]
      },
      {
        "context" : "concept",
        "contextType" : "variable",
        "element" : "coding",
        "variable" : "coding",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "Coding"
        }]
      },
      {
        "context" : "coding",
        "contextType" : "variable",
        "element" : "system",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "https://smart.who.int/ccc/CodeSystem/emcare-custom-codes"
        }]
      },
      {
        "context" : "coding",
        "contextType" : "variable",
        "element" : "code",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "EmCare.B22.DE46"
        }]
      }]
    },
    {
      "name" : "aae7a11d",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "variable" : "itemtimestamp",
        "condition" : "linkId = 'timestamp'"
      }],
      "rule" : [{
        "name" : "7f22f29f",
        "source" : [{
          "context" : "itemtimestamp",
          "element" : "answer",
          "listMode" : "first",
          "variable" : "atimestamp"
        }],
        "rule" : [{
          "name" : "5af77f2c",
          "source" : [{
            "context" : "atimestamp",
            "element" : "value",
            "variable" : "val"
          }],
          "target" : [{
            "context" : "tgt",
            "contextType" : "variable",
            "element" : "issued",
            "transform" : "copy",
            "parameter" : [{
              "valueId" : "val"
            }]
          }]
        }]
      }]
    },
    {
      "name" : "patient",
      "source" : [{
        "context" : "src",
        "element" : "subject",
        "variable" : "subject"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "subject",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "subject"
        }]
      }]
    },
    {
      "name" : "a4475795",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "item",
        "condition" : "(linkId = 'EmCare.B22.DE46') and answer.exists()"
      }],
      "rule" : [{
        "name" : "721205d5",
        "source" : [{
          "context" : "item",
          "element" : "answer",
          "listMode" : "first",
          "variable" : "a"
        }],
        "rule" : [{
          "name" : "26c2c8c7",
          "source" : [{
            "context" : "a",
            "element" : "value",
            "variable" : "val"
          }],
          "rule" : [{
            "name" : "8a65aaa5",
            "source" : [{
              "context" : "val",
              "condition" : "val.code = 'true'"
            }],
            "target" : [{
              "context" : "tgt",
              "contextType" : "variable",
              "element" : "status",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "final"
              }]
            },
            {
              "context" : "tgt",
              "contextType" : "variable",
              "element" : "value",
              "transform" : "copy",
              "parameter" : [{
                "valueBoolean" : true
              }]
            }]
          }]
        }]
      }]
    }]
  },
  {
    "name" : "emcareobservationemcareb22de50",
    "typeMode" : "none",
    "input" : [{
      "name" : "src",
      "mode" : "source"
    },
    {
      "name" : "tgt",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "id-emcareb22de50",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "identifier",
        "variable" : "CodeID",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "Identifier"
        }]
      },
      {
        "context" : "CodeID",
        "contextType" : "variable",
        "element" : "system",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "http://hl7.org/fhir/namingsystem-identifier-type"
        }]
      },
      {
        "context" : "CodeID",
        "contextType" : "variable",
        "element" : "use",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "official"
        }]
      },
      {
        "context" : "CodeID",
        "contextType" : "variable",
        "element" : "value",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "uuid"
        }]
      },
      {
        "context" : "CodeID",
        "contextType" : "variable",
        "element" : "id",
        "transform" : "uuid"
      }]
    },
    {
      "name" : "35bc6b82",
      "source" : [{
        "context" : "src",
        "element" : "encounter",
        "variable" : "encounter"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "encounter",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "encounter"
        }]
      }]
    },
    {
      "name" : "code-emcareb22de50",
      "source" : [{
        "context" : "src",
        "element" : "subject",
        "variable" : "subject"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "subject",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "subject"
        }]
      },
      {
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "meta",
        "variable" : "newMeta",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "Meta"
        }]
      },
      {
        "context" : "newMeta",
        "contextType" : "variable",
        "element" : "profile",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "https://smart.who.int/ccc/StructureDefinition/emcareobservation"
        }]
      },
      {
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "code",
        "variable" : "concept",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "CodeableConcept"
        }]
      },
      {
        "context" : "concept",
        "contextType" : "variable",
        "element" : "coding",
        "variable" : "coding",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "Coding"
        }]
      },
      {
        "context" : "coding",
        "contextType" : "variable",
        "element" : "system",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "https://smart.who.int/ccc/CodeSystem/emcare-custom-codes"
        }]
      },
      {
        "context" : "coding",
        "contextType" : "variable",
        "element" : "code",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "EmCare.B22.DE50"
        }]
      }]
    },
    {
      "name" : "aae7a11d",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "variable" : "itemtimestamp",
        "condition" : "linkId = 'timestamp'"
      }],
      "rule" : [{
        "name" : "7f22f29f",
        "source" : [{
          "context" : "itemtimestamp",
          "element" : "answer",
          "listMode" : "first",
          "variable" : "atimestamp"
        }],
        "rule" : [{
          "name" : "5af77f2c",
          "source" : [{
            "context" : "atimestamp",
            "element" : "value",
            "variable" : "val"
          }],
          "target" : [{
            "context" : "tgt",
            "contextType" : "variable",
            "element" : "issued",
            "transform" : "copy",
            "parameter" : [{
              "valueId" : "val"
            }]
          }]
        }]
      }]
    },
    {
      "name" : "patient",
      "source" : [{
        "context" : "src",
        "element" : "subject",
        "variable" : "subject"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "subject",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "subject"
        }]
      }]
    },
    {
      "name" : "7972a70f",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "item",
        "condition" : "(linkId = 'EmCare.B22.DE50') and answer.exists()"
      }],
      "rule" : [{
        "name" : "d39f9088",
        "source" : [{
          "context" : "item",
          "element" : "answer",
          "listMode" : "first",
          "variable" : "a"
        }],
        "rule" : [{
          "name" : "1b820ab0",
          "source" : [{
            "context" : "a",
            "element" : "value",
            "variable" : "val"
          }],
          "rule" : [{
            "name" : "759a9a54",
            "source" : [{
              "context" : "val"
            }],
            "target" : [{
              "context" : "tgt",
              "contextType" : "variable",
              "element" : "value",
              "variable" : "cc",
              "transform" : "create",
              "parameter" : [{
                "valueString" : "CodeableConcept"
              }]
            },
            {
              "context" : "cc",
              "contextType" : "variable",
              "element" : "coding",
              "variable" : "c",
              "transform" : "create",
              "parameter" : [{
                "valueString" : "Coding"
              }]
            },
            {
              "context" : "c",
              "contextType" : "variable",
              "element" : "code",
              "transform" : "copy",
              "parameter" : [{
                "valueId" : "val"
              }]
            },
            {
              "context" : "c",
              "contextType" : "variable",
              "element" : "system",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "https://smart.who.int/ccc/CodeSystem/emcare-custom-codes"
              }]
            },
            {
              "context" : "tgt",
              "contextType" : "variable",
              "element" : "status",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "final"
              }]
            }]
          }]
        }]
      }]
    }]
  }]
}

```
