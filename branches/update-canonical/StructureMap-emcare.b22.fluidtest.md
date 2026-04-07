# emcare.b22.fluidtest - WHO FHIR Implementation Guide (IG): Integrated Management of Childhood Illness (IMCI) in emergencies v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **emcare.b22.fluidtest**

## StructureMap: emcare.b22.fluidtest 

| | |
| :--- | :--- |
| *Official URL*:https://smart.who.int/ccc/StructureMap/emcare.b22.fluidtest | *Version*:0.1.0 |
| Active as of 2026-04-07 | *Computable Name*:emcare.b22.fluidtest |

```
map "https://smart.who.int/ccc/StructureMap/emcare.b22.fluidtest" = "emcare.b22.fluidtest"


uses "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaireresponse" alias 'questionnaireResponse' as source
uses "http://hl7.org/fhir/StructureDefinition/Bundle" alias 'Bundle' as target
uses "https://smart.who.int/ccc/StructureDefinition/observation" alias 'Observation' as target
uses "https://smart.who.int/ccc/StructureDefinition/emcareobservation" alias 'EmCare Observation' as produced

group bundletrans(source src : questionnaireResponse, target bundle : Bundle) {
  src -> bundle.id = uuid() "id";
  src -> bundle.type = 'batch' "type";
  src.item first as item where (linkId = 'EmCare.B22.DE08') and answer.exists() then {
    src -> bundle.entry as entry then {
      src ->  entry.request as request,  request.method = 'POST',  uuid() as uuid,  request.url = append('/Observation/', uuid) "b50ac4c5";
      src -> entry.resource = create('Observation') as tgt then {
        src -> tgt then emcareobservationemcareb22de08(src, tgt) "d34db40c";
      } "bd8403a6";
    } "09eb3e1a";
  } "9a6f78aa";
  src.item first as item where (linkId = 'EmCare.B22.DE14') and answer.exists() then {
    src -> bundle.entry as entry then {
      src ->  entry.request as request,  request.method = 'POST',  uuid() as uuid,  request.url = append('/Observation/', uuid) "b50ac4c5";
      src -> entry.resource = create('Observation') as tgt then {
        src -> tgt then emcareobservationemcareb22de14(src, tgt) "128f555c";
      } "2cba61ee";
    } "1eb502ac";
  } "4a69f58d";
  src.item first as item where (linkId = 'EmCare.B22.DE14a') and answer.exists() then {
    src -> bundle.entry as entry then {
      src ->  entry.request as request,  request.method = 'POST',  uuid() as uuid,  request.url = append('/Observation/', uuid) "b50ac4c5";
      src -> entry.resource = create('Observation') as tgt then {
        src -> tgt then emcareobservationemcareb22de14a(src, tgt) "7b46291c";
      } "17f1508c";
    } "64f82f5e";
  } "17d5b370";
  src.item first as item where (linkId = 'EmCare.B22.DE15') and answer.exists() then {
    src -> bundle.entry as entry then {
      src ->  entry.request as request,  request.method = 'POST',  uuid() as uuid,  request.url = append('/Observation/', uuid) "b50ac4c5";
      src -> entry.resource = create('Observation') as tgt then {
        src -> tgt then emcareobservationemcareb22de15(src, tgt) "0d25d61c";
      } "49095bbf";
    } "7ffa5829";
  } "33c9d538";
  src.item first as item where (linkId = 'EmCare.B22.DE16') and answer.exists() then {
    src -> bundle.entry as entry then {
      src ->  entry.request as request,  request.method = 'POST',  uuid() as uuid,  request.url = append('/Observation/', uuid) "b50ac4c5";
      src -> entry.resource = create('Observation') as tgt then {
        src -> tgt then emcareobservationemcareb22de16(src, tgt) "2bef72fa";
      } "f426fdde";
    } "f53bf22c";
  } "1a49e616";
}

group emcareobservationemcareb22de08(source src, target tgt) {
  src ->  tgt.identifier = create('Identifier') as CodeID,  CodeID.system = 'http://hl7.org/fhir/namingsystem-identifier-type',  CodeID.use = 'official',  CodeID.value = 'uuid',  CodeID.id = uuid() "id-emcareb22de08";
  src.encounter as encounter -> tgt.encounter = encounter "35bc6b82";
  src.subject as subject ->  tgt.subject = subject,  tgt.meta = create('Meta') as newMeta,  newMeta.profile = 'https://smart.who.int/ccc/StructureDefinition/emcareobservation',  tgt.code = create('CodeableConcept') as concept,  concept.coding = create('Coding') as coding,  coding.system = 'https://smart.who.int/ccc/CodeSystem/emcare-custom-codes',  coding.code = 'EmCare.B22.DE08' "code-emcareb22de08";
  src.item as itemtimestamp where linkId = 'timestamp' then {
    itemtimestamp.answer first as atimestamp then {
      atimestamp.value as val -> tgt.issued = val "5af77f2c";
    } "7f22f29f";
  } "aae7a11d";
  src.subject as subject -> tgt.subject = subject "patient";
  src.item first as item where (linkId = 'EmCare.B22.DE08') and answer.exists() then {
    item.answer first as a then {
      a.value as val then {
        val where val.code = 'none' -> tgt.swrapin_entry_createtatus = 'cancelled' "d0a13fda";
        val where val.code != 'none' ->  tgt.value = create('CodeableConcept') as cc,  cc.coding = val,  tgt.status = 'final' "a1050460";
      } "310f4b1f";
    } "6af9bfcc";
  } "64bb2211";
}

group emcareobservationemcareb22de14(source src, target tgt) {
  src ->  tgt.identifier = create('Identifier') as CodeID,  CodeID.system = 'http://hl7.org/fhir/namingsystem-identifier-type',  CodeID.use = 'official',  CodeID.value = 'uuid',  CodeID.id = uuid() "id-emcareb22de14";
  src.encounter as encounter -> tgt.encounter = encounter "35bc6b82";
  src.subject as subject ->  tgt.subject = subject,  tgt.meta = create('Meta') as newMeta,  newMeta.profile = 'https://smart.who.int/ccc/StructureDefinition/emcareobservation',  tgt.code = create('CodeableConcept') as concept,  concept.coding = create('Coding') as coding,  coding.system = 'https://smart.who.int/ccc/CodeSystem/emcare-custom-codes',  coding.code = 'EmCare.B22.DE14' "code-emcareb22de14";
  src.item as itemtimestamp where linkId = 'timestamp' then {
    itemtimestamp.answer first as atimestamp then {
      atimestamp.value as val -> tgt.issued = val "5af77f2c";
    } "7f22f29f";
  } "aae7a11d";
  src.subject as subject -> tgt.subject = subject "patient";
  src.item first as item where (linkId = 'EmCare.B22.DE14') and answer.exists() then {
    item.answer first as a then {
      a.value as val then {
        val where val.code = 'true' ->  tgt.status = 'final',  tgt.value = true "8a65aaa5";
      } "26c2c8c7";
    } "721205d5";
  } "0ac7445d";
}

group emcareobservationemcareb22de14a(source src, target tgt) {
  src ->  tgt.identifier = create('Identifier') as CodeID,  CodeID.system = 'http://hl7.org/fhir/namingsystem-identifier-type',  CodeID.use = 'official',  CodeID.value = 'uuid',  CodeID.id = uuid() "id-emcareb22de14a";
  src.encounter as encounter -> tgt.encounter = encounter "35bc6b82";
  src.subject as subject ->  tgt.subject = subject,  tgt.meta = create('Meta') as newMeta,  newMeta.profile = 'https://smart.who.int/ccc/StructureDefinition/emcareobservation',  tgt.code = create('CodeableConcept') as concept,  concept.coding = create('Coding') as coding,  coding.system = 'https://smart.who.int/ccc/CodeSystem/emcare-custom-codes',  coding.code = 'EmCare.B22.DE14a' "code-emcareb22de14a";
  src.item as itemtimestamp where linkId = 'timestamp' then {
    itemtimestamp.answer first as atimestamp then {
      atimestamp.value as val -> tgt.issued = val "5af77f2c";
    } "7f22f29f";
  } "aae7a11d";
  src.subject as subject -> tgt.subject = subject "patient";
  src.item first as item where (linkId = 'EmCare.B22.DE14a') and answer.exists() then {
    item.answer first as a then {
      a where a.value = true ->  tgt.status = 'final',  tgt.value = true "final-emcareb22de14a";
      a where a.value = false ->  tgt.status = 'cancelled',  tgt.value = false "notfound-emcareb22de14a";
    } "bdab9370";
  } "b79a05a4";
}

group emcareobservationemcareb22de15(source src, target tgt) {
  src ->  tgt.identifier = create('Identifier') as CodeID,  CodeID.system = 'http://hl7.org/fhir/namingsystem-identifier-type',  CodeID.use = 'official',  CodeID.value = 'uuid',  CodeID.id = uuid() "id-emcareb22de15";
  src.encounter as encounter -> tgt.encounter = encounter "35bc6b82";
  src.subject as subject ->  tgt.subject = subject,  tgt.meta = create('Meta') as newMeta,  newMeta.profile = 'https://smart.who.int/ccc/StructureDefinition/emcareobservation',  tgt.code = create('CodeableConcept') as concept,  concept.coding = create('Coding') as coding,  coding.system = 'https://smart.who.int/ccc/CodeSystem/emcare-custom-codes',  coding.code = 'EmCare.B22.DE15' "code-emcareb22de15";
  src.item as itemtimestamp where linkId = 'timestamp' then {
    itemtimestamp.answer first as atimestamp then {
      atimestamp.value as val -> tgt.issued = val "5af77f2c";
    } "7f22f29f";
  } "aae7a11d";
  src.subject as subject -> tgt.subject = subject "patient";
  src.item first as item where (linkId = 'EmCare.B22.DE15') and answer.exists() then {
    item.answer first as a then {
      a where a.value = true ->  tgt.status = 'final',  tgt.value = true "final-emcareb22de15";
      a where a.value = false ->  tgt.status = 'cancelled',  tgt.value = false "notfound-emcareb22de15";
    } "bdab9370";
  } "6c50dbd5";
}

group emcareobservationemcareb22de16(source src, target tgt) {
  src ->  tgt.identifier = create('Identifier') as CodeID,  CodeID.system = 'http://hl7.org/fhir/namingsystem-identifier-type',  CodeID.use = 'official',  CodeID.value = 'uuid',  CodeID.id = uuid() "id-emcareb22de16";
  src.encounter as encounter -> tgt.encounter = encounter "35bc6b82";
  src.subject as subject ->  tgt.subject = subject,  tgt.meta = create('Meta') as newMeta,  newMeta.profile = 'https://smart.who.int/ccc/StructureDefinition/emcareobservation',  tgt.code = create('CodeableConcept') as concept,  concept.coding = create('Coding') as coding,  coding.system = 'https://smart.who.int/ccc/CodeSystem/emcare-custom-codes',  coding.code = 'EmCare.B22.DE16' "code-emcareb22de16";
  src.item as itemtimestamp where linkId = 'timestamp' then {
    itemtimestamp.answer first as atimestamp then {
      atimestamp.value as val -> tgt.issued = val "5af77f2c";
    } "7f22f29f";
  } "aae7a11d";
  src.subject as subject -> tgt.subject = subject "patient";
  src.item first as item where (linkId = 'EmCare.B22.DE16') and answer.exists() then {
    item.answer first as a then {
      a.value as val then {
        val where val.code = 'none' -> tgt.swrapin_entry_createtatus = 'cancelled' "d0a13fda";
        val where val.code != 'none' ->  tgt.value = create('CodeableConcept') as cc,  cc.coding = val,  tgt.status = 'final' "a1050460";
      } "310f4b1f";
    } "6af9bfcc";
  } "6d23b905";
}


```



## Resource Content

```json
{
  "resourceType" : "StructureMap",
  "id" : "emcare.b22.fluidtest",
  "url" : "https://smart.who.int/ccc/StructureMap/emcare.b22.fluidtest",
  "version" : "0.1.0",
  "name" : "emcare.b22.fluidtest",
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
      "name" : "9a6f78aa",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "item",
        "condition" : "(linkId = 'EmCare.B22.DE08') and answer.exists()"
      }],
      "rule" : [{
        "name" : "09eb3e1a",
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
          "name" : "bd8403a6",
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
            "name" : "d34db40c",
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
              "name" : "emcareobservationemcareb22de08",
              "variable" : ["src", "tgt"]
            }]
          }]
        }]
      }]
    },
    {
      "name" : "4a69f58d",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "item",
        "condition" : "(linkId = 'EmCare.B22.DE14') and answer.exists()"
      }],
      "rule" : [{
        "name" : "1eb502ac",
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
          "name" : "2cba61ee",
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
            "name" : "128f555c",
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
              "name" : "emcareobservationemcareb22de14",
              "variable" : ["src", "tgt"]
            }]
          }]
        }]
      }]
    },
    {
      "name" : "17d5b370",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "item",
        "condition" : "(linkId = 'EmCare.B22.DE14a') and answer.exists()"
      }],
      "rule" : [{
        "name" : "64f82f5e",
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
          "name" : "17f1508c",
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
            "name" : "7b46291c",
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
              "name" : "emcareobservationemcareb22de14a",
              "variable" : ["src", "tgt"]
            }]
          }]
        }]
      }]
    },
    {
      "name" : "33c9d538",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "item",
        "condition" : "(linkId = 'EmCare.B22.DE15') and answer.exists()"
      }],
      "rule" : [{
        "name" : "7ffa5829",
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
          "name" : "49095bbf",
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
            "name" : "0d25d61c",
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
              "name" : "emcareobservationemcareb22de15",
              "variable" : ["src", "tgt"]
            }]
          }]
        }]
      }]
    },
    {
      "name" : "1a49e616",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "item",
        "condition" : "(linkId = 'EmCare.B22.DE16') and answer.exists()"
      }],
      "rule" : [{
        "name" : "f53bf22c",
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
          "name" : "f426fdde",
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
            "name" : "2bef72fa",
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
              "name" : "emcareobservationemcareb22de16",
              "variable" : ["src", "tgt"]
            }]
          }]
        }]
      }]
    }]
  },
  {
    "name" : "emcareobservationemcareb22de08",
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
      "name" : "id-emcareb22de08",
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
      "name" : "code-emcareb22de08",
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
          "valueString" : "EmCare.B22.DE08"
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
      "name" : "64bb2211",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "item",
        "condition" : "(linkId = 'EmCare.B22.DE08') and answer.exists()"
      }],
      "rule" : [{
        "name" : "6af9bfcc",
        "source" : [{
          "context" : "item",
          "element" : "answer",
          "listMode" : "first",
          "variable" : "a"
        }],
        "rule" : [{
          "name" : "310f4b1f",
          "source" : [{
            "context" : "a",
            "element" : "value",
            "variable" : "val"
          }],
          "rule" : [{
            "name" : "d0a13fda",
            "source" : [{
              "context" : "val",
              "condition" : "val.code = 'none'"
            }],
            "target" : [{
              "context" : "tgt",
              "contextType" : "variable",
              "element" : "swrapin_entry_createtatus",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "cancelled"
              }]
            }]
          },
          {
            "name" : "a1050460",
            "source" : [{
              "context" : "val",
              "condition" : "val.code != 'none'"
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
    }]
  },
  {
    "name" : "emcareobservationemcareb22de14",
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
      "name" : "id-emcareb22de14",
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
      "name" : "code-emcareb22de14",
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
          "valueString" : "EmCare.B22.DE14"
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
      "name" : "0ac7445d",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "item",
        "condition" : "(linkId = 'EmCare.B22.DE14') and answer.exists()"
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
    "name" : "emcareobservationemcareb22de14a",
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
      "name" : "id-emcareb22de14a",
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
      "name" : "code-emcareb22de14a",
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
          "valueString" : "EmCare.B22.DE14a"
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
      "name" : "b79a05a4",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "item",
        "condition" : "(linkId = 'EmCare.B22.DE14a') and answer.exists()"
      }],
      "rule" : [{
        "name" : "bdab9370",
        "source" : [{
          "context" : "item",
          "element" : "answer",
          "listMode" : "first",
          "variable" : "a"
        }],
        "rule" : [{
          "name" : "final-emcareb22de14a",
          "source" : [{
            "context" : "a",
            "condition" : "a.value = true"
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
        },
        {
          "name" : "notfound-emcareb22de14a",
          "source" : [{
            "context" : "a",
            "condition" : "a.value = false"
          }],
          "target" : [{
            "context" : "tgt",
            "contextType" : "variable",
            "element" : "status",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "cancelled"
            }]
          },
          {
            "context" : "tgt",
            "contextType" : "variable",
            "element" : "value",
            "transform" : "copy",
            "parameter" : [{
              "valueBoolean" : false
            }]
          }]
        }]
      }]
    }]
  },
  {
    "name" : "emcareobservationemcareb22de15",
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
      "name" : "id-emcareb22de15",
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
      "name" : "code-emcareb22de15",
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
          "valueString" : "EmCare.B22.DE15"
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
      "name" : "6c50dbd5",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "item",
        "condition" : "(linkId = 'EmCare.B22.DE15') and answer.exists()"
      }],
      "rule" : [{
        "name" : "bdab9370",
        "source" : [{
          "context" : "item",
          "element" : "answer",
          "listMode" : "first",
          "variable" : "a"
        }],
        "rule" : [{
          "name" : "final-emcareb22de15",
          "source" : [{
            "context" : "a",
            "condition" : "a.value = true"
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
        },
        {
          "name" : "notfound-emcareb22de15",
          "source" : [{
            "context" : "a",
            "condition" : "a.value = false"
          }],
          "target" : [{
            "context" : "tgt",
            "contextType" : "variable",
            "element" : "status",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "cancelled"
            }]
          },
          {
            "context" : "tgt",
            "contextType" : "variable",
            "element" : "value",
            "transform" : "copy",
            "parameter" : [{
              "valueBoolean" : false
            }]
          }]
        }]
      }]
    }]
  },
  {
    "name" : "emcareobservationemcareb22de16",
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
      "name" : "id-emcareb22de16",
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
      "name" : "code-emcareb22de16",
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
          "valueString" : "EmCare.B22.DE16"
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
      "name" : "6d23b905",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "item",
        "condition" : "(linkId = 'EmCare.B22.DE16') and answer.exists()"
      }],
      "rule" : [{
        "name" : "6af9bfcc",
        "source" : [{
          "context" : "item",
          "element" : "answer",
          "listMode" : "first",
          "variable" : "a"
        }],
        "rule" : [{
          "name" : "310f4b1f",
          "source" : [{
            "context" : "a",
            "element" : "value",
            "variable" : "val"
          }],
          "rule" : [{
            "name" : "d0a13fda",
            "source" : [{
              "context" : "val",
              "condition" : "val.code = 'none'"
            }],
            "target" : [{
              "context" : "tgt",
              "contextType" : "variable",
              "element" : "swrapin_entry_createtatus",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "cancelled"
              }]
            }]
          },
          {
            "name" : "a1050460",
            "source" : [{
              "context" : "val",
              "condition" : "val.code != 'none'"
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
    }]
  }]
}

```
