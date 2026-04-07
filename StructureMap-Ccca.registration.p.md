# Ccca.registration.p - WHO FHIR Implementation Guide (IG): Integrated Management of Childhood Illness (IMCI) in emergencies v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Ccca.registration.p**

## StructureMap: Ccca.registration.p 

| | |
| :--- | :--- |
| *Official URL*:https://smart.who.int/ccc/StructureMap/Ccca.registration.p | *Version*:0.1.0 |
| Active as of 2026-04-07 | *Computable Name*:Ccca.registration.p |

```
map "https://smart.who.int/ccc/StructureMap/Ccca.registration.p" = "Ccca.registration.p"


uses "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaireresponse" alias 'questionnaireResponse' as source
uses "http://hl7.org/fhir/StructureDefinition/Bundle" alias 'Bundle' as target
uses "https://smart.who.int/ccc/StructureDefinition/patient" alias 'Patient' as target
uses "https://smart.who.int/ccc/StructureDefinition/relatedperson" alias 'RelatedPerson' as target
uses "https://smart.who.int/ccc/StructureDefinition/communicationrequest" alias 'CommunicationRequest' as target
uses "https://smart.who.int/ccc/StructureDefinition/Cccpatient" alias 'Ccc Patient' as produced
uses "https://smart.who.int/ccc/StructureDefinition/relatedperson" alias 'RelatedPerson' as produced
uses "https://smart.who.int/ccc/StructureDefinition/communicationrequest" alias 'CommunicationRequest' as produced

group bundletrans(source src : questionnaireResponse, target bundle : Bundle) {
  src -> bundle.id = uuid() "id";
  src -> bundle.type = 'batch' "type";
  src -> bundle.entry as entry then {
    src.subject as subject then {
      subject.id as idval ->  entry.request as request,  request.method = 'PUT',  request.url = append('/Patient/', idval) "1153aa45";
    } "cf5b2513";
    src -> entry.resource = create('Patient') as tgt then {
      src -> tgt then Cccpatient(src, tgt) "77f3ac03";
    } "75beb242";
  } "put-Cccpatient";
  src.item first as itm1 where linkId = 'Ccc.A.DE21.1' then {
    itm1.item first as item where (linkId = 'relatedpersonid') and answer.exists() then {
      src ->  bundle.entry as entry,  entry.request as request,  request.method = 'POST',  entry.resource = create('RelatedPerson') as tgt then {
        src -> tgt then relatedperson(src, tgt) "8f0b9602";
        item.answer first as a then {
          a.value as val -> request.url = append('/RelatedPerson/', val) "78d8bc69";
        } "eec70023";
      } "00574b8e";
    } "74cc3511";
  } "54daac33";
  src.item first as itm1 where linkId = 'Ccc.A.DE21.1' then {
    itm1.item first as item where (linkId = 'Ccc.A.DE38') and answer.exists() then {
      src -> bundle.entry as entry then {
        src ->  entry.request as request,  request.method = 'POST',  uuid() as uuid,  request.url = append('/CommunicationRequest/', uuid) "e5343f50";
        src -> entry.resource = create('CommunicationRequest') as tgt then {
          src -> tgt then communicationrequestCccade38(src, tgt) "82d8a873";
        } "33eeb100";
      } "d4cd942b";
    } "5ca7be0f";
  } "b78fbe33";
}

group SetOfficalGivenNameCccpatient(source src, target tgt) {
  src -> tgt.use = 'official' then {
    src.item first as item where (linkId = 'Ccc.A.DE06') and answer.exists() then {
      item.answer first as a then {
        a.value as val -> tgt.family = val "77d1bd4f";
      } "e0827d5d";
    } "607c4e16";
    src.item first as item where (linkId = 'Ccc.A.DE04') and answer.exists() then {
      item.answer first as a then {
        a.value as val -> tgt.given = val "5d3d44f6";
      } "18edd234";
    } "e9deb0f3";
    src.item first as item where (linkId = 'Ccc.A.DE05') and answer.exists() then {
      item.answer first as a then {
        a.value as val -> tgt.given = val "5d3d44f6";
      } "18edd234";
    } "d95279c0";
  } "ef0f6810";
}

group MapValueSetExtCodeCccade16(source src, target tgt) {
  src -> tgt then {
    src -> tgt then {
      src where value.code = 'Ccc.A.DE17' -> tgt.gender = 'female' "368f2e2a";
      src where value.code = 'Ccc.A.DE18' -> tgt.gender = 'male' "2ae3beca";
      src where value.code = 'Ccc.A.DE19' -> tgt.gender = 'unknown' "de22e8b7";
    } "mapbase";
  } "57676688";
}

group Cccpatient(source src : questionnaireResponse, target tgt : Patient) {
  src.item first as item where (linkId = 'Ccc.A.DE01') and answer.exists() then {
    item.answer first as a then {
      a.value as val -> tgt.identifier = create('Identifier') as identifier then {
        val ->  identifier.value = val,  identifier.use = 'official' "id";
      } "aCccade01";
    } "aCccade01";
  } "c243b020";
  src.item first as item where (linkId = 'Ccc.A.DE03') and answer.exists() then {
    item.answer first as a ->  tgt.extension = create('Extension') as ext,  ext.url = 'https://smart.who.int/ccc/StructureDefinition/anonymous',  ext.value = true "aCccade03";
  } "54d12495";
  src.item first as item where (linkId = 'Ccc.A.DE06') or (linkId = 'Ccc.A.DE04') or ((linkId = 'Ccc.A.DE05') and answer.exists()) then {
    src ->  tgt as target,  target.name as name then SetOfficalGivenNameCccpatient(src, name) "30643049";
  } "7483ae2e";
  src.item first as item where (linkId = 'Ccc.A.DE12') and answer.exists() then {
    item.answer first as a then {
      a.value as val ->  tgt.extension = create('Extension') as ext,  ext.url = 'https://smart.who.int/ccc/StructureDefinition/birthDateEstimator',  ext.value = val "aCccade12";
    } "aCccade12";
  } "c05cf203";
  src.item first as item where (linkId = 'Ccc.A.DE08') and answer.exists() then {
    item.answer first as a then {
      a.value as val -> tgt.birthDate = val "aCccade08";
    } "aCccade08";
  } "bded6ae8";
  src.item first as item where (linkId = 'Ccc.A.DE16') and answer.exists() then {
    item.answer first as a then MapValueSetExtCodeCccade16(a, tgt) "225baa79";
  } "bf4b35f0";
  src.item first as item where (linkId = 'Ccc.A.DE48') and answer.exists() then {
    item.answer first as a ->  tgt.extension = create('Extension') as ext,  ext.url = 'https://smart.who.int/ccc/StructureDefinition/primarycaregiver',  ext.value = create('Reference') as ref,  ref.reference = 'relatated-person-id' "aCccade48";
  } "04772b09";
  src.item first as itm1 where linkId = 'Ccc.A.DE21.1' then {
    itm1.item first as item where (linkId = 'Ccc.A.DE31') and answer.exists() then {
      item.answer first as a then {
        a.value as val ->  tgt.extension = create('Extension') as ext,  ext.url = 'https://smart.who.int/ccc/Extension/motherVitalStatus',  ext.value = val "aCccade31";
      } "aCccade31";
    } "7f408694";
  } "39f45e5d";
  src.item first as itm1 where linkId = 'Ccc.A.DE21.1' then {
    itm1.item first as item where (linkId = 'Ccc.A.DE32') and answer.exists() then {
      item.answer first as a then {
        a.value as val ->  tgt.extension = create('Extension') as ext,  ext.url = 'https://smart.who.int/ccc/Extension/fatherVitalStatus',  ext.value = val "aCccade32";
      } "aCccade32";
    } "06ec2524";
  } "f7424037";
}

group SetOfficalGivenNamerelatedperson(source src, target tgt) {
  src -> tgt.use = 'official' then {
    src.item first as itm1 where linkId = 'Ccc.A.DE21.1' then {
      itm1.item first as item where (linkId = 'Ccc.A.DE23') and answer.exists() then {
        item.answer first as a then {
          a.value as val -> tgt.family = val "77d1bd4f";
        } "e0827d5d";
      } "8c426238";
    } "4cc155ee";
    src.item first as itm1 where linkId = 'Ccc.A.DE21.1' then {
      itm1.item first as item where (linkId = 'Ccc.A.DE21') and answer.exists() then {
        item.answer first as a then {
          a.value as val -> tgt.given = val "5d3d44f6";
        } "18edd234";
      } "ad3fbc15";
    } "8bc880ed";
    src.item first as itm1 where linkId = 'Ccc.A.DE21.1' then {
      itm1.item first as item where (linkId = 'Ccc.A.DE22') and answer.exists() then {
        item.answer first as a then {
          a.value as val -> tgt.given = val "5d3d44f6";
        } "18edd234";
      } "e9ba83c8";
    } "17d8d988";
  } "f41b9847";
}

group MapValueSetExtCodeCccade24(source src, target tgt) {
  src -> tgt then {
    src ->  tgt.relationship = create('CodeableConcept') as cc,  cc.coding = create('Coding') as coding then {
      src where value.code = 'Ccc.A.DE25' ->  coding.code = 'MTH',  coding.system = 'http://terminology.hl7.org/CodeSystem/v3-RoleCode' "abd34a78";
      src where value.code = 'Ccc.A.DE26' ->  coding.code = 'FTH',  coding.system = 'http://terminology.hl7.org/CodeSystem/v3-RoleCode' "b53d1d15";
      src where value.code = 'Ccc.A.DE27' ->  coding.code = 'SIB',  coding.system = 'http://terminology.hl7.org/CodeSystem/v3-RoleCode' "949ee35f";
      src where value.code = 'Ccc.A.DE28' ->  coding.code = 'EXT',  coding.system = 'http://terminology.hl7.org/CodeSystem/v3-RoleCode' "7c5a4400";
      src where value.code = 'Ccc.A.DE29' ->  coding.code = 'PRNINLAW',  coding.system = 'http://terminology.hl7.org/CodeSystem/v3-RoleCode' "544df0cc";
      src where value.code = 'Ccc.A.DE30' ->  coding.code = 'U',  coding.system = 'http://terminology.hl7.org/CodeSystem/v2-0131' "8c2d96fc";
    } "4a251df5";
  } "1b7b6d7a";
}

group relatedperson(source src : questionnaireResponse, target tgt : RelatedPerson) {
  src.item first as item where (linkId = 'Cccrelatedpersoncaregiverid') and answer.exists() then {
    item.answer first as a then {
      a.value as val ->  tgt.extension = create('Extension') as ext,  ext.url = 'https://smart.who.int/ccc/StructureDefinition/primary-caregiver',  ext.value = create('Reference') as ref,  ref.reference = append('/RelatedPerson/', val) "aCccrelatedpersoncaregiverid";
    } "aCccrelatedpersoncaregiverid";
  } "04cd0ec2";
  src.item first as itm1 where linkId = 'Ccc.A.DE21.1' then {
    itm1.item first as item where (linkId = 'Ccc.A.DE23') or (linkId = 'Ccc.A.DE21') or ((linkId = 'Ccc.A.DE22') and answer.exists()) then {
      src ->  tgt as target,  target.name as name then SetOfficalGivenNamerelatedperson(src, name) "8e1455ea";
    } "18dc21d5";
  } "f0e6459e";
  src.item first as itm1 where linkId = 'Ccc.A.DE21.1' then {
    itm1.item first as item where (linkId = 'Ccc.A.DE35') and answer.exists() then {
      item.answer first as a then {
        a.value as val ->  tgt.telecom as tel,  tel.system = 'phone',  tel.use = 'mobile',  tel.value = val "aCccade35";
      } "aCccade35";
    } "9731ba92";
  } "30b90d37";
  src.item first as itm1 where linkId = 'Ccc.A.DE21.1' then {
    itm1.item first as item where (linkId = 'relatedpersonid') and answer.exists() then {
      item.answer first as a -> tgt then {
        src.subject as subject -> tgt.patient = subject "patient";
      } "arelatedpersonid";
    } "d79d72db";
  } "d50c1aed";
  src.item first as itm1 where linkId = 'Ccc.A.DE21.1' then {
    itm1.item first as item where (linkId = 'Ccc.A.DE24') and answer.exists() then {
      item.answer first as a then MapValueSetExtCodeCccade24(a, tgt) "24e5e488";
    } "6adb811a";
  } "92a0e955";
}

group communicationrequestCccade38(source src, target tgt) {
  src ->  tgt.category = create('CodeableConcept') as cc,  cc.coding = create('Coding') as c,  c.system = 'http://hl7.org/fhir/ValueSet/communication-category',  c.code = 'notification' "053233cd";
  src.questionnaire as q ->  tgt.about = create('Reference') as ref,  ref.type = 'Questionnaire',  ref.reference = q "quest";
  src.subject as subject -> tgt.subject = subject "fe3bec4d";
  src -> tgt.recipient = create('Reference') as ref then {
    src -> ref.type = 'RelatedPerson' "c26ab31f";
    src.item first as item where linkId = 'CccrelatedpersonCaregiveruuid' -> tgt then {
      item.answer first as a -> tgt then {
        a.value as val -> ref.reference = append('/RelatedPerson/', val) "25b16148";
      } "00b2016a";
    } "3c6c4c80";
  } "eaa7d3cf";
}


```



## Resource Content

```json
{
  "resourceType" : "StructureMap",
  "id" : "Ccca.registration.p",
  "url" : "https://smart.who.int/ccc/StructureMap/Ccca.registration.p",
  "version" : "0.1.0",
  "name" : "Ccca.registration.p",
  "status" : "active",
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
    "url" : "https://smart.who.int/ccc/StructureDefinition/patient",
    "mode" : "target",
    "alias" : "'Patient'"
  },
  {
    "url" : "https://smart.who.int/ccc/StructureDefinition/relatedperson",
    "mode" : "target",
    "alias" : "'RelatedPerson'"
  },
  {
    "url" : "https://smart.who.int/ccc/StructureDefinition/communicationrequest",
    "mode" : "target",
    "alias" : "'CommunicationRequest'"
  },
  {
    "url" : "https://smart.who.int/ccc/StructureDefinition/Cccpatient",
    "mode" : "produced",
    "alias" : "'Ccc Patient'"
  },
  {
    "url" : "https://smart.who.int/ccc/StructureDefinition/relatedperson",
    "mode" : "produced",
    "alias" : "'RelatedPerson'"
  },
  {
    "url" : "https://smart.who.int/ccc/StructureDefinition/communicationrequest",
    "mode" : "produced",
    "alias" : "'CommunicationRequest'"
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
      "name" : "put-Cccpatient",
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
        "name" : "cf5b2513",
        "source" : [{
          "context" : "src",
          "element" : "subject",
          "variable" : "subject"
        }],
        "rule" : [{
          "name" : "1153aa45",
          "source" : [{
            "context" : "subject",
            "element" : "id",
            "variable" : "idval"
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
              "valueString" : "PUT"
            }]
          },
          {
            "context" : "request",
            "contextType" : "variable",
            "element" : "url",
            "transform" : "append",
            "parameter" : [{
              "valueString" : "/Patient/"
            },
            {
              "valueId" : "idval"
            }]
          }]
        }]
      },
      {
        "name" : "75beb242",
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
            "valueString" : "Patient"
          }]
        }],
        "rule" : [{
          "name" : "77f3ac03",
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
            "name" : "Cccpatient",
            "variable" : ["src", "tgt"]
          }]
        }]
      }]
    },
    {
      "name" : "54daac33",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "itm1",
        "condition" : "linkId = 'Ccc.A.DE21.1'"
      }],
      "rule" : [{
        "name" : "74cc3511",
        "source" : [{
          "context" : "itm1",
          "element" : "item",
          "listMode" : "first",
          "variable" : "item",
          "condition" : "(linkId = 'relatedpersonid') and answer.exists()"
        }],
        "rule" : [{
          "name" : "00574b8e",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "bundle",
            "contextType" : "variable",
            "element" : "entry",
            "variable" : "entry"
          },
          {
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
            "context" : "entry",
            "contextType" : "variable",
            "element" : "resource",
            "variable" : "tgt",
            "transform" : "create",
            "parameter" : [{
              "valueString" : "RelatedPerson"
            }]
          }],
          "rule" : [{
            "name" : "8f0b9602",
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
              "name" : "relatedperson",
              "variable" : ["src", "tgt"]
            }]
          },
          {
            "name" : "eec70023",
            "source" : [{
              "context" : "item",
              "element" : "answer",
              "listMode" : "first",
              "variable" : "a"
            }],
            "rule" : [{
              "name" : "78d8bc69",
              "source" : [{
                "context" : "a",
                "element" : "value",
                "variable" : "val"
              }],
              "target" : [{
                "context" : "request",
                "contextType" : "variable",
                "element" : "url",
                "transform" : "append",
                "parameter" : [{
                  "valueString" : "/RelatedPerson/"
                },
                {
                  "valueId" : "val"
                }]
              }]
            }]
          }]
        }]
      }]
    },
    {
      "name" : "b78fbe33",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "itm1",
        "condition" : "linkId = 'Ccc.A.DE21.1'"
      }],
      "rule" : [{
        "name" : "5ca7be0f",
        "source" : [{
          "context" : "itm1",
          "element" : "item",
          "listMode" : "first",
          "variable" : "item",
          "condition" : "(linkId = 'Ccc.A.DE38') and answer.exists()"
        }],
        "rule" : [{
          "name" : "d4cd942b",
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
            "name" : "e5343f50",
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
                "valueString" : "/CommunicationRequest/"
              },
              {
                "valueId" : "uuid"
              }]
            }]
          },
          {
            "name" : "33eeb100",
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
                "valueString" : "CommunicationRequest"
              }]
            }],
            "rule" : [{
              "name" : "82d8a873",
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
                "name" : "communicationrequestCccade38",
                "variable" : ["src", "tgt"]
              }]
            }]
          }]
        }]
      }]
    }]
  },
  {
    "name" : "SetOfficalGivenNameCccpatient",
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
      "name" : "ef0f6810",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "use",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "official"
        }]
      }],
      "rule" : [{
        "name" : "607c4e16",
        "source" : [{
          "context" : "src",
          "element" : "item",
          "listMode" : "first",
          "variable" : "item",
          "condition" : "(linkId = 'Ccc.A.DE06') and answer.exists()"
        }],
        "rule" : [{
          "name" : "e0827d5d",
          "source" : [{
            "context" : "item",
            "element" : "answer",
            "listMode" : "first",
            "variable" : "a"
          }],
          "rule" : [{
            "name" : "77d1bd4f",
            "source" : [{
              "context" : "a",
              "element" : "value",
              "variable" : "val"
            }],
            "target" : [{
              "context" : "tgt",
              "contextType" : "variable",
              "element" : "family",
              "transform" : "copy",
              "parameter" : [{
                "valueId" : "val"
              }]
            }]
          }]
        }]
      },
      {
        "name" : "e9deb0f3",
        "source" : [{
          "context" : "src",
          "element" : "item",
          "listMode" : "first",
          "variable" : "item",
          "condition" : "(linkId = 'Ccc.A.DE04') and answer.exists()"
        }],
        "rule" : [{
          "name" : "18edd234",
          "source" : [{
            "context" : "item",
            "element" : "answer",
            "listMode" : "first",
            "variable" : "a"
          }],
          "rule" : [{
            "name" : "5d3d44f6",
            "source" : [{
              "context" : "a",
              "element" : "value",
              "variable" : "val"
            }],
            "target" : [{
              "context" : "tgt",
              "contextType" : "variable",
              "element" : "given",
              "transform" : "copy",
              "parameter" : [{
                "valueId" : "val"
              }]
            }]
          }]
        }]
      },
      {
        "name" : "d95279c0",
        "source" : [{
          "context" : "src",
          "element" : "item",
          "listMode" : "first",
          "variable" : "item",
          "condition" : "(linkId = 'Ccc.A.DE05') and answer.exists()"
        }],
        "rule" : [{
          "name" : "18edd234",
          "source" : [{
            "context" : "item",
            "element" : "answer",
            "listMode" : "first",
            "variable" : "a"
          }],
          "rule" : [{
            "name" : "5d3d44f6",
            "source" : [{
              "context" : "a",
              "element" : "value",
              "variable" : "val"
            }],
            "target" : [{
              "context" : "tgt",
              "contextType" : "variable",
              "element" : "given",
              "transform" : "copy",
              "parameter" : [{
                "valueId" : "val"
              }]
            }]
          }]
        }]
      }]
    }]
  },
  {
    "name" : "MapValueSetExtCodeCccade16",
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
      "name" : "57676688",
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
      "rule" : [{
        "name" : "mapbase",
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
        "rule" : [{
          "name" : "368f2e2a",
          "source" : [{
            "context" : "src",
            "condition" : "value.code = 'Ccc.A.DE17'"
          }],
          "target" : [{
            "context" : "tgt",
            "contextType" : "variable",
            "element" : "gender",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "female"
            }]
          }]
        },
        {
          "name" : "2ae3beca",
          "source" : [{
            "context" : "src",
            "condition" : "value.code = 'Ccc.A.DE18'"
          }],
          "target" : [{
            "context" : "tgt",
            "contextType" : "variable",
            "element" : "gender",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "male"
            }]
          }]
        },
        {
          "name" : "de22e8b7",
          "source" : [{
            "context" : "src",
            "condition" : "value.code = 'Ccc.A.DE19'"
          }],
          "target" : [{
            "context" : "tgt",
            "contextType" : "variable",
            "element" : "gender",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "unknown"
            }]
          }]
        }]
      }]
    }]
  },
  {
    "name" : "Cccpatient",
    "typeMode" : "none",
    "input" : [{
      "name" : "src",
      "type" : "questionnaireResponse",
      "mode" : "source"
    },
    {
      "name" : "tgt",
      "type" : "Patient",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "c243b020",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "item",
        "condition" : "(linkId = 'Ccc.A.DE01') and answer.exists()"
      }],
      "rule" : [{
        "name" : "aCccade01",
        "source" : [{
          "context" : "item",
          "element" : "answer",
          "listMode" : "first",
          "variable" : "a"
        }],
        "rule" : [{
          "name" : "aCccade01",
          "source" : [{
            "context" : "a",
            "element" : "value",
            "variable" : "val"
          }],
          "target" : [{
            "context" : "tgt",
            "contextType" : "variable",
            "element" : "identifier",
            "variable" : "identifier",
            "transform" : "create",
            "parameter" : [{
              "valueString" : "Identifier"
            }]
          }],
          "rule" : [{
            "name" : "id",
            "source" : [{
              "context" : "val"
            }],
            "target" : [{
              "context" : "identifier",
              "contextType" : "variable",
              "element" : "value",
              "transform" : "copy",
              "parameter" : [{
                "valueId" : "val"
              }]
            },
            {
              "context" : "identifier",
              "contextType" : "variable",
              "element" : "use",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "official"
              }]
            }]
          }]
        }]
      }]
    },
    {
      "name" : "54d12495",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "item",
        "condition" : "(linkId = 'Ccc.A.DE03') and answer.exists()"
      }],
      "rule" : [{
        "name" : "aCccade03",
        "source" : [{
          "context" : "item",
          "element" : "answer",
          "listMode" : "first",
          "variable" : "a"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "extension",
          "variable" : "ext",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Extension"
          }]
        },
        {
          "context" : "ext",
          "contextType" : "variable",
          "element" : "url",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "https://smart.who.int/ccc/StructureDefinition/anonymous"
          }]
        },
        {
          "context" : "ext",
          "contextType" : "variable",
          "element" : "value",
          "transform" : "copy",
          "parameter" : [{
            "valueBoolean" : true
          }]
        }]
      }]
    },
    {
      "name" : "7483ae2e",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "item",
        "condition" : "(linkId = 'Ccc.A.DE06') or (linkId = 'Ccc.A.DE04') or ((linkId = 'Ccc.A.DE05') and answer.exists())"
      }],
      "rule" : [{
        "name" : "30643049",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "contextType" : "variable",
          "variable" : "target",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "tgt"
          }]
        },
        {
          "context" : "target",
          "contextType" : "variable",
          "element" : "name",
          "variable" : "name"
        }],
        "dependent" : [{
          "name" : "SetOfficalGivenNameCccpatient",
          "variable" : ["src", "name"]
        }]
      }]
    },
    {
      "name" : "c05cf203",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "item",
        "condition" : "(linkId = 'Ccc.A.DE12') and answer.exists()"
      }],
      "rule" : [{
        "name" : "aCccade12",
        "source" : [{
          "context" : "item",
          "element" : "answer",
          "listMode" : "first",
          "variable" : "a"
        }],
        "rule" : [{
          "name" : "aCccade12",
          "source" : [{
            "context" : "a",
            "element" : "value",
            "variable" : "val"
          }],
          "target" : [{
            "context" : "tgt",
            "contextType" : "variable",
            "element" : "extension",
            "variable" : "ext",
            "transform" : "create",
            "parameter" : [{
              "valueString" : "Extension"
            }]
          },
          {
            "context" : "ext",
            "contextType" : "variable",
            "element" : "url",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "https://smart.who.int/ccc/StructureDefinition/birthDateEstimator"
            }]
          },
          {
            "context" : "ext",
            "contextType" : "variable",
            "element" : "value",
            "transform" : "copy",
            "parameter" : [{
              "valueId" : "val"
            }]
          }]
        }]
      }]
    },
    {
      "name" : "bded6ae8",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "item",
        "condition" : "(linkId = 'Ccc.A.DE08') and answer.exists()"
      }],
      "rule" : [{
        "name" : "aCccade08",
        "source" : [{
          "context" : "item",
          "element" : "answer",
          "listMode" : "first",
          "variable" : "a"
        }],
        "rule" : [{
          "name" : "aCccade08",
          "source" : [{
            "context" : "a",
            "element" : "value",
            "variable" : "val"
          }],
          "target" : [{
            "context" : "tgt",
            "contextType" : "variable",
            "element" : "birthDate",
            "transform" : "copy",
            "parameter" : [{
              "valueId" : "val"
            }]
          }]
        }]
      }]
    },
    {
      "name" : "bf4b35f0",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "item",
        "condition" : "(linkId = 'Ccc.A.DE16') and answer.exists()"
      }],
      "rule" : [{
        "name" : "225baa79",
        "source" : [{
          "context" : "item",
          "element" : "answer",
          "listMode" : "first",
          "variable" : "a"
        }],
        "dependent" : [{
          "name" : "MapValueSetExtCodeCccade16",
          "variable" : ["a", "tgt"]
        }]
      }]
    },
    {
      "name" : "04772b09",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "item",
        "condition" : "(linkId = 'Ccc.A.DE48') and answer.exists()"
      }],
      "rule" : [{
        "name" : "aCccade48",
        "source" : [{
          "context" : "item",
          "element" : "answer",
          "listMode" : "first",
          "variable" : "a"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "extension",
          "variable" : "ext",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Extension"
          }]
        },
        {
          "context" : "ext",
          "contextType" : "variable",
          "element" : "url",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "https://smart.who.int/ccc/StructureDefinition/primarycaregiver"
          }]
        },
        {
          "context" : "ext",
          "contextType" : "variable",
          "element" : "value",
          "variable" : "ref",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Reference"
          }]
        },
        {
          "context" : "ref",
          "contextType" : "variable",
          "element" : "reference",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "relatated-person-id"
          }]
        }]
      }]
    },
    {
      "name" : "39f45e5d",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "itm1",
        "condition" : "linkId = 'Ccc.A.DE21.1'"
      }],
      "rule" : [{
        "name" : "7f408694",
        "source" : [{
          "context" : "itm1",
          "element" : "item",
          "listMode" : "first",
          "variable" : "item",
          "condition" : "(linkId = 'Ccc.A.DE31') and answer.exists()"
        }],
        "rule" : [{
          "name" : "aCccade31",
          "source" : [{
            "context" : "item",
            "element" : "answer",
            "listMode" : "first",
            "variable" : "a"
          }],
          "rule" : [{
            "name" : "aCccade31",
            "source" : [{
              "context" : "a",
              "element" : "value",
              "variable" : "val"
            }],
            "target" : [{
              "context" : "tgt",
              "contextType" : "variable",
              "element" : "extension",
              "variable" : "ext",
              "transform" : "create",
              "parameter" : [{
                "valueString" : "Extension"
              }]
            },
            {
              "context" : "ext",
              "contextType" : "variable",
              "element" : "url",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "https://smart.who.int/ccc/Extension/motherVitalStatus"
              }]
            },
            {
              "context" : "ext",
              "contextType" : "variable",
              "element" : "value",
              "transform" : "copy",
              "parameter" : [{
                "valueId" : "val"
              }]
            }]
          }]
        }]
      }]
    },
    {
      "name" : "f7424037",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "itm1",
        "condition" : "linkId = 'Ccc.A.DE21.1'"
      }],
      "rule" : [{
        "name" : "06ec2524",
        "source" : [{
          "context" : "itm1",
          "element" : "item",
          "listMode" : "first",
          "variable" : "item",
          "condition" : "(linkId = 'Ccc.A.DE32') and answer.exists()"
        }],
        "rule" : [{
          "name" : "aCccade32",
          "source" : [{
            "context" : "item",
            "element" : "answer",
            "listMode" : "first",
            "variable" : "a"
          }],
          "rule" : [{
            "name" : "aCccade32",
            "source" : [{
              "context" : "a",
              "element" : "value",
              "variable" : "val"
            }],
            "target" : [{
              "context" : "tgt",
              "contextType" : "variable",
              "element" : "extension",
              "variable" : "ext",
              "transform" : "create",
              "parameter" : [{
                "valueString" : "Extension"
              }]
            },
            {
              "context" : "ext",
              "contextType" : "variable",
              "element" : "url",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "https://smart.who.int/ccc/Extension/fatherVitalStatus"
              }]
            },
            {
              "context" : "ext",
              "contextType" : "variable",
              "element" : "value",
              "transform" : "copy",
              "parameter" : [{
                "valueId" : "val"
              }]
            }]
          }]
        }]
      }]
    }]
  },
  {
    "name" : "SetOfficalGivenNamerelatedperson",
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
      "name" : "f41b9847",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "use",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "official"
        }]
      }],
      "rule" : [{
        "name" : "4cc155ee",
        "source" : [{
          "context" : "src",
          "element" : "item",
          "listMode" : "first",
          "variable" : "itm1",
          "condition" : "linkId = 'Ccc.A.DE21.1'"
        }],
        "rule" : [{
          "name" : "8c426238",
          "source" : [{
            "context" : "itm1",
            "element" : "item",
            "listMode" : "first",
            "variable" : "item",
            "condition" : "(linkId = 'Ccc.A.DE23') and answer.exists()"
          }],
          "rule" : [{
            "name" : "e0827d5d",
            "source" : [{
              "context" : "item",
              "element" : "answer",
              "listMode" : "first",
              "variable" : "a"
            }],
            "rule" : [{
              "name" : "77d1bd4f",
              "source" : [{
                "context" : "a",
                "element" : "value",
                "variable" : "val"
              }],
              "target" : [{
                "context" : "tgt",
                "contextType" : "variable",
                "element" : "family",
                "transform" : "copy",
                "parameter" : [{
                  "valueId" : "val"
                }]
              }]
            }]
          }]
        }]
      },
      {
        "name" : "8bc880ed",
        "source" : [{
          "context" : "src",
          "element" : "item",
          "listMode" : "first",
          "variable" : "itm1",
          "condition" : "linkId = 'Ccc.A.DE21.1'"
        }],
        "rule" : [{
          "name" : "ad3fbc15",
          "source" : [{
            "context" : "itm1",
            "element" : "item",
            "listMode" : "first",
            "variable" : "item",
            "condition" : "(linkId = 'Ccc.A.DE21') and answer.exists()"
          }],
          "rule" : [{
            "name" : "18edd234",
            "source" : [{
              "context" : "item",
              "element" : "answer",
              "listMode" : "first",
              "variable" : "a"
            }],
            "rule" : [{
              "name" : "5d3d44f6",
              "source" : [{
                "context" : "a",
                "element" : "value",
                "variable" : "val"
              }],
              "target" : [{
                "context" : "tgt",
                "contextType" : "variable",
                "element" : "given",
                "transform" : "copy",
                "parameter" : [{
                  "valueId" : "val"
                }]
              }]
            }]
          }]
        }]
      },
      {
        "name" : "17d8d988",
        "source" : [{
          "context" : "src",
          "element" : "item",
          "listMode" : "first",
          "variable" : "itm1",
          "condition" : "linkId = 'Ccc.A.DE21.1'"
        }],
        "rule" : [{
          "name" : "e9ba83c8",
          "source" : [{
            "context" : "itm1",
            "element" : "item",
            "listMode" : "first",
            "variable" : "item",
            "condition" : "(linkId = 'Ccc.A.DE22') and answer.exists()"
          }],
          "rule" : [{
            "name" : "18edd234",
            "source" : [{
              "context" : "item",
              "element" : "answer",
              "listMode" : "first",
              "variable" : "a"
            }],
            "rule" : [{
              "name" : "5d3d44f6",
              "source" : [{
                "context" : "a",
                "element" : "value",
                "variable" : "val"
              }],
              "target" : [{
                "context" : "tgt",
                "contextType" : "variable",
                "element" : "given",
                "transform" : "copy",
                "parameter" : [{
                  "valueId" : "val"
                }]
              }]
            }]
          }]
        }]
      }]
    }]
  },
  {
    "name" : "MapValueSetExtCodeCccade24",
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
      "name" : "1b7b6d7a",
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
      "rule" : [{
        "name" : "4a251df5",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "relationship",
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
          "variable" : "coding",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Coding"
          }]
        }],
        "rule" : [{
          "name" : "abd34a78",
          "source" : [{
            "context" : "src",
            "condition" : "value.code = 'Ccc.A.DE25'"
          }],
          "target" : [{
            "context" : "coding",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "MTH"
            }]
          },
          {
            "context" : "coding",
            "contextType" : "variable",
            "element" : "system",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "http://terminology.hl7.org/CodeSystem/v3-RoleCode"
            }]
          }]
        },
        {
          "name" : "b53d1d15",
          "source" : [{
            "context" : "src",
            "condition" : "value.code = 'Ccc.A.DE26'"
          }],
          "target" : [{
            "context" : "coding",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "FTH"
            }]
          },
          {
            "context" : "coding",
            "contextType" : "variable",
            "element" : "system",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "http://terminology.hl7.org/CodeSystem/v3-RoleCode"
            }]
          }]
        },
        {
          "name" : "949ee35f",
          "source" : [{
            "context" : "src",
            "condition" : "value.code = 'Ccc.A.DE27'"
          }],
          "target" : [{
            "context" : "coding",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "SIB"
            }]
          },
          {
            "context" : "coding",
            "contextType" : "variable",
            "element" : "system",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "http://terminology.hl7.org/CodeSystem/v3-RoleCode"
            }]
          }]
        },
        {
          "name" : "7c5a4400",
          "source" : [{
            "context" : "src",
            "condition" : "value.code = 'Ccc.A.DE28'"
          }],
          "target" : [{
            "context" : "coding",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "EXT"
            }]
          },
          {
            "context" : "coding",
            "contextType" : "variable",
            "element" : "system",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "http://terminology.hl7.org/CodeSystem/v3-RoleCode"
            }]
          }]
        },
        {
          "name" : "544df0cc",
          "source" : [{
            "context" : "src",
            "condition" : "value.code = 'Ccc.A.DE29'"
          }],
          "target" : [{
            "context" : "coding",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "PRNINLAW"
            }]
          },
          {
            "context" : "coding",
            "contextType" : "variable",
            "element" : "system",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "http://terminology.hl7.org/CodeSystem/v3-RoleCode"
            }]
          }]
        },
        {
          "name" : "8c2d96fc",
          "source" : [{
            "context" : "src",
            "condition" : "value.code = 'Ccc.A.DE30'"
          }],
          "target" : [{
            "context" : "coding",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "U"
            }]
          },
          {
            "context" : "coding",
            "contextType" : "variable",
            "element" : "system",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "http://terminology.hl7.org/CodeSystem/v2-0131"
            }]
          }]
        }]
      }]
    }]
  },
  {
    "name" : "relatedperson",
    "typeMode" : "none",
    "input" : [{
      "name" : "src",
      "type" : "questionnaireResponse",
      "mode" : "source"
    },
    {
      "name" : "tgt",
      "type" : "RelatedPerson",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "04cd0ec2",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "item",
        "condition" : "(linkId = 'Cccrelatedpersoncaregiverid') and answer.exists()"
      }],
      "rule" : [{
        "name" : "aCccrelatedpersoncaregiverid",
        "source" : [{
          "context" : "item",
          "element" : "answer",
          "listMode" : "first",
          "variable" : "a"
        }],
        "rule" : [{
          "name" : "aCccrelatedpersoncaregiverid",
          "source" : [{
            "context" : "a",
            "element" : "value",
            "variable" : "val"
          }],
          "target" : [{
            "context" : "tgt",
            "contextType" : "variable",
            "element" : "extension",
            "variable" : "ext",
            "transform" : "create",
            "parameter" : [{
              "valueString" : "Extension"
            }]
          },
          {
            "context" : "ext",
            "contextType" : "variable",
            "element" : "url",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "https://smart.who.int/ccc/StructureDefinition/primary-caregiver"
            }]
          },
          {
            "context" : "ext",
            "contextType" : "variable",
            "element" : "value",
            "variable" : "ref",
            "transform" : "create",
            "parameter" : [{
              "valueString" : "Reference"
            }]
          },
          {
            "context" : "ref",
            "contextType" : "variable",
            "element" : "reference",
            "transform" : "append",
            "parameter" : [{
              "valueString" : "/RelatedPerson/"
            },
            {
              "valueId" : "val"
            }]
          }]
        }]
      }]
    },
    {
      "name" : "f0e6459e",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "itm1",
        "condition" : "linkId = 'Ccc.A.DE21.1'"
      }],
      "rule" : [{
        "name" : "18dc21d5",
        "source" : [{
          "context" : "itm1",
          "element" : "item",
          "listMode" : "first",
          "variable" : "item",
          "condition" : "(linkId = 'Ccc.A.DE23') or (linkId = 'Ccc.A.DE21') or ((linkId = 'Ccc.A.DE22') and answer.exists())"
        }],
        "rule" : [{
          "name" : "8e1455ea",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "contextType" : "variable",
            "variable" : "target",
            "transform" : "copy",
            "parameter" : [{
              "valueId" : "tgt"
            }]
          },
          {
            "context" : "target",
            "contextType" : "variable",
            "element" : "name",
            "variable" : "name"
          }],
          "dependent" : [{
            "name" : "SetOfficalGivenNamerelatedperson",
            "variable" : ["src", "name"]
          }]
        }]
      }]
    },
    {
      "name" : "30b90d37",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "itm1",
        "condition" : "linkId = 'Ccc.A.DE21.1'"
      }],
      "rule" : [{
        "name" : "9731ba92",
        "source" : [{
          "context" : "itm1",
          "element" : "item",
          "listMode" : "first",
          "variable" : "item",
          "condition" : "(linkId = 'Ccc.A.DE35') and answer.exists()"
        }],
        "rule" : [{
          "name" : "aCccade35",
          "source" : [{
            "context" : "item",
            "element" : "answer",
            "listMode" : "first",
            "variable" : "a"
          }],
          "rule" : [{
            "name" : "aCccade35",
            "source" : [{
              "context" : "a",
              "element" : "value",
              "variable" : "val"
            }],
            "target" : [{
              "context" : "tgt",
              "contextType" : "variable",
              "element" : "telecom",
              "variable" : "tel"
            },
            {
              "context" : "tel",
              "contextType" : "variable",
              "element" : "system",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "phone"
              }]
            },
            {
              "context" : "tel",
              "contextType" : "variable",
              "element" : "use",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "mobile"
              }]
            },
            {
              "context" : "tel",
              "contextType" : "variable",
              "element" : "value",
              "transform" : "copy",
              "parameter" : [{
                "valueId" : "val"
              }]
            }]
          }]
        }]
      }]
    },
    {
      "name" : "d50c1aed",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "itm1",
        "condition" : "linkId = 'Ccc.A.DE21.1'"
      }],
      "rule" : [{
        "name" : "d79d72db",
        "source" : [{
          "context" : "itm1",
          "element" : "item",
          "listMode" : "first",
          "variable" : "item",
          "condition" : "(linkId = 'relatedpersonid') and answer.exists()"
        }],
        "rule" : [{
          "name" : "arelatedpersonid",
          "source" : [{
            "context" : "item",
            "element" : "answer",
            "listMode" : "first",
            "variable" : "a"
          }],
          "target" : [{
            "contextType" : "variable",
            "transform" : "copy",
            "parameter" : [{
              "valueId" : "tgt"
            }]
          }],
          "rule" : [{
            "name" : "patient",
            "source" : [{
              "context" : "src",
              "element" : "subject",
              "variable" : "subject"
            }],
            "target" : [{
              "context" : "tgt",
              "contextType" : "variable",
              "element" : "patient",
              "transform" : "copy",
              "parameter" : [{
                "valueId" : "subject"
              }]
            }]
          }]
        }]
      }]
    },
    {
      "name" : "92a0e955",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "itm1",
        "condition" : "linkId = 'Ccc.A.DE21.1'"
      }],
      "rule" : [{
        "name" : "6adb811a",
        "source" : [{
          "context" : "itm1",
          "element" : "item",
          "listMode" : "first",
          "variable" : "item",
          "condition" : "(linkId = 'Ccc.A.DE24') and answer.exists()"
        }],
        "rule" : [{
          "name" : "24e5e488",
          "source" : [{
            "context" : "item",
            "element" : "answer",
            "listMode" : "first",
            "variable" : "a"
          }],
          "dependent" : [{
            "name" : "MapValueSetExtCodeCccade24",
            "variable" : ["a", "tgt"]
          }]
        }]
      }]
    }]
  },
  {
    "name" : "communicationrequestCccade38",
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
      "name" : "053233cd",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "category",
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
        "element" : "system",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "http://hl7.org/fhir/ValueSet/communication-category"
        }]
      },
      {
        "context" : "c",
        "contextType" : "variable",
        "element" : "code",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "notification"
        }]
      }]
    },
    {
      "name" : "quest",
      "source" : [{
        "context" : "src",
        "element" : "questionnaire",
        "variable" : "q"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "about",
        "variable" : "ref",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "Reference"
        }]
      },
      {
        "context" : "ref",
        "contextType" : "variable",
        "element" : "type",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "Questionnaire"
        }]
      },
      {
        "context" : "ref",
        "contextType" : "variable",
        "element" : "reference",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "q"
        }]
      }]
    },
    {
      "name" : "fe3bec4d",
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
      "name" : "eaa7d3cf",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "recipient",
        "variable" : "ref",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "Reference"
        }]
      }],
      "rule" : [{
        "name" : "c26ab31f",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "ref",
          "contextType" : "variable",
          "element" : "type",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "RelatedPerson"
          }]
        }]
      },
      {
        "name" : "3c6c4c80",
        "source" : [{
          "context" : "src",
          "element" : "item",
          "listMode" : "first",
          "variable" : "item",
          "condition" : "linkId = 'CccrelatedpersonCaregiveruuid'"
        }],
        "target" : [{
          "contextType" : "variable",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "tgt"
          }]
        }],
        "rule" : [{
          "name" : "00b2016a",
          "source" : [{
            "context" : "item",
            "element" : "answer",
            "listMode" : "first",
            "variable" : "a"
          }],
          "target" : [{
            "contextType" : "variable",
            "transform" : "copy",
            "parameter" : [{
              "valueId" : "tgt"
            }]
          }],
          "rule" : [{
            "name" : "25b16148",
            "source" : [{
              "context" : "a",
              "element" : "value",
              "variable" : "val"
            }],
            "target" : [{
              "context" : "ref",
              "contextType" : "variable",
              "element" : "reference",
              "transform" : "append",
              "parameter" : [{
                "valueString" : "/RelatedPerson/"
              },
              {
                "valueId" : "val"
              }]
            }]
          }]
        }]
      }]
    }]
  }]
}

```
