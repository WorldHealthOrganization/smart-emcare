# Ccc.b7.lti-dangersigns - WHO FHIR Implementation Guide (IG): Integrated Management of Childhood Illness (IMCI) in emergencies v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Ccc.b7.lti-dangersigns**

## StructureMap: Ccc.b7.lti-dangersigns 

| | |
| :--- | :--- |
| *Official URL*:https://smart.who.int/ccc/StructureMap/Ccc.b7.lti-dangersigns | *Version*:0.1.0 |
| Active as of 2026-04-07 | *Computable Name*:Ccc.b7.lti-dangersigns |

```
map "https://smart.who.int/ccc/StructureMap/Ccc.b7.lti-dangersigns" = "Ccc.b7.lti-dangersigns"


uses "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaireresponse" alias 'questionnaireResponse' as source
uses "http://hl7.org/fhir/StructureDefinition/Bundle" alias 'Bundle' as target
uses "https://smart.who.int/ccc/StructureDefinition/observation" alias 'Observation' as target
uses "https://smart.who.int/ccc/StructureDefinition/Cccobservation" alias 'Ccc Observation' as produced

group bundletrans(source src : questionnaireResponse, target bundle : Bundle) {
  src -> bundle.id = uuid() "id";
  src -> bundle.type = 'batch' "type";
  src.item first as item where (linkId = 'Ccc.B7.DE02') and answer.exists() then {
    src -> bundle.entry as entry then {
      src ->  entry.request as request,  request.method = 'POST',  uuid() as uuid,  request.url = append('/Observation/', uuid) "b50ac4c5";
      src -> entry.resource = create('Observation') as tgt then {
        src -> tgt then CccobservationCccb7de02(src, tgt) "004b4d1e";
      } "92e7f5f9";
    } "402826af";
  } "8c26175a";
  src.item first as item where (linkId = 'Ccc.B7-B8-B9.DE01') and answer.exists() then {
    src -> bundle.entry as entry then {
      src ->  entry.request as request,  request.method = 'POST',  uuid() as uuid,  request.url = append('/Observation/', uuid) "b50ac4c5";
      src -> entry.resource = create('Observation') as tgt then {
        src -> tgt then CccobservationCccb7b8b9de01(src, tgt) "ff2fa2ef";
      } "a8c4cecd";
    } "cab32791";
  } "8f0ade51";
  src.item first as itm1 where linkId = 'stable-child' then {
    itm1.item first as item where (linkId = 'Ccc.B7.DE03') and answer.exists() then {
      src -> bundle.entry as entry then {
        src ->  entry.request as request,  request.method = 'POST',  uuid() as uuid,  request.url = append('/Observation/', uuid) "b50ac4c5";
        src -> entry.resource = create('Observation') as tgt then {
          src -> tgt then CccobservationCccb7de03(src, tgt) "f2e89805";
        } "8dded58a";
      } "6d815194";
    } "b1580360";
  } "f9ff931c";
  src.item first as itm1 where linkId = 'stable-child' then {
    itm1.item first as item where (linkId = 'Ccc.B7.DE08b') and answer.exists() then {
      src -> bundle.entry as entry then {
        src ->  entry.request as request,  request.method = 'POST',  uuid() as uuid,  request.url = append('/Observation/', uuid) "b50ac4c5";
        src -> entry.resource = create('Observation') as tgt then {
          src -> tgt then CccobservationCccb7de08b(src, tgt) "7c424dce";
        } "090c71e8";
      } "366ba7ba";
    } "65aaf8e5";
  } "340cad6a";
  src.item first as itm1 where linkId = 'stable-child' then {
    itm1.item first as item where (linkId = 'Ccc.B7.DE08') and answer.exists() then {
      src -> bundle.entry as entry then {
        src ->  entry.request as request,  request.method = 'POST',  uuid() as uuid,  request.url = append('/Observation/', uuid) "b50ac4c5";
        src -> entry.resource = create('Observation') as tgt then {
          src -> tgt then CccobservationCccb7de08(src, tgt) "279d6969";
        } "20cc88b6";
      } "3f40ba3d";
    } "350d6fc4";
  } "eaa550b2";
  src.item first as itm1 where linkId = 'stable-child' then {
    itm1.item first as item where (linkId = 'Ccc.B7.DE08a') and answer.exists() then {
      src -> bundle.entry as entry then {
        src ->  entry.request as request,  request.method = 'POST',  uuid() as uuid,  request.url = append('/Observation/', uuid) "b50ac4c5";
        src -> entry.resource = create('Observation') as tgt then {
          src -> tgt then CccobservationCccb7de08a(src, tgt) "d2861aff";
        } "7be6660a";
      } "bd06a10d";
    } "1343a39a";
  } "d8ac86b0";
  src.item first as itm1 where linkId = 'stable-child' then {
    itm1.item first as item where (linkId = 'Ccc.B7.DE09') and answer.exists() then {
      src -> bundle.entry as entry then {
        src ->  entry.request as request,  request.method = 'POST',  uuid() as uuid,  request.url = append('/Observation/', uuid) "b50ac4c5";
        src -> entry.resource = create('Observation') as tgt then {
          src -> tgt then CccobservationCccb7de09(src, tgt) "3f6a9726";
        } "2c4ac41f";
      } "98869034";
    } "0ea146b2";
  } "dd9b5c52";
  src.item first as itm1 where linkId = 'stable-child' then {
    itm1.item first as item where (linkId = 'Ccc.B7.DE10') and answer.exists() then {
      src -> bundle.entry as entry then {
        src ->  entry.request as request,  request.method = 'POST',  uuid() as uuid,  request.url = append('/Observation/', uuid) "b50ac4c5";
        src -> entry.resource = create('Observation') as tgt then {
          src -> tgt then CccobservationCccb7de10(src, tgt) "1fe53b0d";
        } "0fb952bc";
      } "980ae740";
    } "5b813bca";
  } "492052bb";
  src.item first as itm1 where linkId = 'stable-child' then {
    itm1.item first as itm2 where linkId = 'Ccc.B22.FluidTest' then {
      itm2.item first as item where (linkId = 'Ccc.B22.DE08') and answer.exists() then {
        src -> bundle.entry as entry then {
          src ->  entry.request as request,  request.method = 'POST',  uuid() as uuid,  request.url = append('/Observation/', uuid) "b50ac4c5";
          src -> entry.resource = create('Observation') as tgt then {
            src -> tgt then CccobservationCccb22de08(src, tgt) "d34db40c";
          } "bd8403a6";
        } "09eb3e1a";
      } "5b2cdf2b";
    } "147ec831";
  } "e1f072a2";
  src.item first as itm1 where linkId = 'stable-child' then {
    itm1.item first as itm2 where linkId = 'Ccc.B22.FluidTest' then {
      itm2.item first as item where (linkId = 'Ccc.B22.DE14') and answer.exists() then {
        src -> bundle.entry as entry then {
          src ->  entry.request as request,  request.method = 'POST',  uuid() as uuid,  request.url = append('/Observation/', uuid) "b50ac4c5";
          src -> entry.resource = create('Observation') as tgt then {
            src -> tgt then CccobservationCccb22de14(src, tgt) "128f555c";
          } "2cba61ee";
        } "1eb502ac";
      } "9758fd8e";
    } "680dcb34";
  } "8bc21454";
  src.item first as itm1 where linkId = 'stable-child' then {
    itm1.item first as itm2 where linkId = 'Ccc.B22.FluidTest' then {
      itm2.item first as item where (linkId = 'Ccc.B22.DE14a') and answer.exists() then {
        src -> bundle.entry as entry then {
          src ->  entry.request as request,  request.method = 'POST',  uuid() as uuid,  request.url = append('/Observation/', uuid) "b50ac4c5";
          src -> entry.resource = create('Observation') as tgt then {
            src -> tgt then CccobservationCccb22de14a(src, tgt) "7b46291c";
          } "17f1508c";
        } "64f82f5e";
      } "d955cd1e";
    } "29fc59e7";
  } "5a220c96";
  src.item first as itm1 where linkId = 'stable-child' then {
    itm1.item first as itm2 where linkId = 'Ccc.B22.FluidTest' then {
      itm2.item first as item where (linkId = 'Ccc.B22.DE15') and answer.exists() then {
        src -> bundle.entry as entry then {
          src ->  entry.request as request,  request.method = 'POST',  uuid() as uuid,  request.url = append('/Observation/', uuid) "b50ac4c5";
          src -> entry.resource = create('Observation') as tgt then {
            src -> tgt then CccobservationCccb22de15(src, tgt) "0d25d61c";
          } "49095bbf";
        } "7ffa5829";
      } "408d099b";
    } "f64298f5";
  } "28f93c51";
  src.item first as itm1 where linkId = 'stable-child' then {
    itm1.item first as itm2 where linkId = 'Ccc.B22.FluidTest' then {
      itm2.item first as item where (linkId = 'Ccc.B22.DE16') and answer.exists() then {
        src -> bundle.entry as entry then {
          src ->  entry.request as request,  request.method = 'POST',  uuid() as uuid,  request.url = append('/Observation/', uuid) "b50ac4c5";
          src -> entry.resource = create('Observation') as tgt then {
            src -> tgt then CccobservationCccb22de16(src, tgt) "2bef72fa";
          } "f426fdde";
        } "f53bf22c";
      } "756331ed";
    } "bc80f5f5";
  } "0636116b";
}

group CccobservationCccb7de02(source src, target tgt) {
  src ->  tgt.identifier = create('Identifier') as CodeID,  CodeID.system = 'http://hl7.org/fhir/namingsystem-identifier-type',  CodeID.use = 'official',  CodeID.value = 'uuid',  CodeID.id = uuid() "id-Cccb7de02";
  src.encounter as encounter -> tgt.encounter = encounter "35bc6b82";
  src.subject as subject ->  tgt.subject = subject,  tgt.meta = create('Meta') as newMeta,  newMeta.profile = 'https://smart.who.int/ccc/StructureDefinition/Cccobservation',  tgt.code = create('CodeableConcept') as concept,  concept.coding = create('Coding') as coding,  coding.system = 'https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes',  coding.code = 'Ccc.B7.DE02' "code-Cccb7de02";
  src.item as itemtimestamp where linkId = 'timestamp' then {
    itemtimestamp.answer first as atimestamp then {
      atimestamp.value as val -> tgt.issued = val "5af77f2c";
    } "7f22f29f";
  } "aae7a11d";
  src.subject as subject -> tgt.subject = subject "patient";
  src.item first as item where (linkId = 'Ccc.B7.DE02') and answer.exists() then {
    item.answer first as a then {
      a where a.value = true ->  tgt.status = 'final',  tgt.value = true "final-Cccb7de02";
      a where a.value = false ->  tgt.status = 'cancelled',  tgt.value = false "notfound-Cccb7de02";
    } "bdab9370";
  } "25c89b41";
}

group CccobservationCccb7b8b9de01(source src, target tgt) {
  src ->  tgt.identifier = create('Identifier') as CodeID,  CodeID.system = 'http://hl7.org/fhir/namingsystem-identifier-type',  CodeID.use = 'official',  CodeID.value = 'uuid',  CodeID.id = uuid() "id-Cccb7b8b9de01";
  src.encounter as encounter -> tgt.encounter = encounter "35bc6b82";
  src.subject as subject ->  tgt.subject = subject,  tgt.meta = create('Meta') as newMeta,  newMeta.profile = 'https://smart.who.int/ccc/StructureDefinition/Cccobservation',  tgt.code = create('CodeableConcept') as concept,  concept.coding = create('Coding') as coding,  coding.system = 'https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes',  coding.code = 'Ccc.B7-B8-B9.DE01' "code-Cccb7b8b9de01";
  src.item as itemtimestamp where linkId = 'timestamp' then {
    itemtimestamp.answer first as atimestamp then {
      atimestamp.value as val -> tgt.issued = val "5af77f2c";
    } "7f22f29f";
  } "aae7a11d";
  src.subject as subject -> tgt.subject = subject "patient";
  src.item first as item where (linkId = 'Ccc.B7-B8-B9.DE01') and answer.exists() then {
    item.answer first as a then {
      a.value as val then {
        val where val.code = 'none' -> tgt.swrapin_entry_createtatus = 'cancelled' "d0a13fda";
        val where val.code != 'none' ->  tgt.value = create('CodeableConcept') as cc,  cc.coding = val,  tgt.status = 'final' "a1050460";
      } "310f4b1f";
    } "6af9bfcc";
  } "1deb5925";
}

group CccobservationCccb7de03(source src, target tgt) {
  src ->  tgt.identifier = create('Identifier') as CodeID,  CodeID.system = 'http://hl7.org/fhir/namingsystem-identifier-type',  CodeID.use = 'official',  CodeID.value = 'uuid',  CodeID.id = uuid() "id-Cccb7de03";
  src.encounter as encounter -> tgt.encounter = encounter "35bc6b82";
  src.subject as subject ->  tgt.subject = subject,  tgt.meta = create('Meta') as newMeta,  newMeta.profile = 'https://smart.who.int/ccc/StructureDefinition/Cccobservation',  tgt.code = create('CodeableConcept') as concept,  concept.coding = create('Coding') as coding,  coding.system = 'https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes',  coding.code = 'Ccc.B7.DE03' "code-Cccb7de03";
  src.item as itemtimestamp where linkId = 'timestamp' then {
    itemtimestamp.answer first as atimestamp then {
      atimestamp.value as val -> tgt.issued = val "5af77f2c";
    } "7f22f29f";
  } "aae7a11d";
  src.subject as subject -> tgt.subject = subject "patient";
  src.item first as itm1 where linkId = 'stable-child' then {
    itm1.item first as item where (linkId = 'Ccc.B7.DE03') and answer.exists() then {
      item.answer first as a then {
        a where a.value = true ->  tgt.status = 'final',  tgt.value = true "final-Cccb7de03";
        a where a.value = false ->  tgt.status = 'cancelled',  tgt.value = false "notfound-Cccb7de03";
      } "bdab9370";
    } "a2c65533";
  } "06440f2e";
}

group CccobservationCccb7de08b(source src, target tgt) {
  src ->  tgt.identifier = create('Identifier') as CodeID,  CodeID.system = 'http://hl7.org/fhir/namingsystem-identifier-type',  CodeID.use = 'official',  CodeID.value = 'uuid',  CodeID.id = uuid() "id-Cccb7de08b";
  src.encounter as encounter -> tgt.encounter = encounter "35bc6b82";
  src.subject as subject ->  tgt.subject = subject,  tgt.meta = create('Meta') as newMeta,  newMeta.profile = 'https://smart.who.int/ccc/StructureDefinition/Cccobservation',  tgt.code = create('CodeableConcept') as concept,  concept.coding = create('Coding') as coding,  coding.system = 'https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes',  coding.code = 'Ccc.B7.DE08b' "code-Cccb7de08b";
  src.item as itemtimestamp where linkId = 'timestamp' then {
    itemtimestamp.answer first as atimestamp then {
      atimestamp.value as val -> tgt.issued = val "5af77f2c";
    } "7f22f29f";
  } "aae7a11d";
  src.subject as subject -> tgt.subject = subject "patient";
  src.item first as itm1 where linkId = 'stable-child' then {
    itm1.item first as item where (linkId = 'Ccc.B7.DE08b') and answer.exists() then {
      item.answer first as a then {
        a where a.value = true ->  tgt.status = 'final',  tgt.value = true "final-Cccb7de08b";
        a where a.value = false ->  tgt.status = 'cancelled',  tgt.value = false "notfound-Cccb7de08b";
      } "bdab9370";
    } "9b1cc305";
  } "5c09828f";
}

group CccobservationCccb7de08(source src, target tgt) {
  src ->  tgt.identifier = create('Identifier') as CodeID,  CodeID.system = 'http://hl7.org/fhir/namingsystem-identifier-type',  CodeID.use = 'official',  CodeID.value = 'uuid',  CodeID.id = uuid() "id-Cccb7de08";
  src.encounter as encounter -> tgt.encounter = encounter "35bc6b82";
  src.subject as subject ->  tgt.subject = subject,  tgt.meta = create('Meta') as newMeta,  newMeta.profile = 'https://smart.who.int/ccc/StructureDefinition/Cccobservation',  tgt.code = create('CodeableConcept') as concept,  concept.coding = create('Coding') as coding,  coding.system = 'https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes',  coding.code = 'Ccc.B7.DE08' "code-Cccb7de08";
  src.item as itemtimestamp where linkId = 'timestamp' then {
    itemtimestamp.answer first as atimestamp then {
      atimestamp.value as val -> tgt.issued = val "5af77f2c";
    } "7f22f29f";
  } "aae7a11d";
  src.subject as subject -> tgt.subject = subject "patient";
  src.item first as itm1 where linkId = 'stable-child' then {
    itm1.item first as item where (linkId = 'Ccc.B7.DE08') and answer.exists() then {
      item.answer first as a then {
        a where a.value = true ->  tgt.status = 'final',  tgt.value = true "final-Cccb7de08";
        a where a.value = false ->  tgt.status = 'cancelled',  tgt.value = false "notfound-Cccb7de08";
      } "bdab9370";
    } "2bfe418a";
  } "899ae4be";
}

group CccobservationCccb7de08a(source src, target tgt) {
  src ->  tgt.identifier = create('Identifier') as CodeID,  CodeID.system = 'http://hl7.org/fhir/namingsystem-identifier-type',  CodeID.use = 'official',  CodeID.value = 'uuid',  CodeID.id = uuid() "id-Cccb7de08a";
  src.encounter as encounter -> tgt.encounter = encounter "35bc6b82";
  src.subject as subject ->  tgt.subject = subject,  tgt.meta = create('Meta') as newMeta,  newMeta.profile = 'https://smart.who.int/ccc/StructureDefinition/Cccobservation',  tgt.code = create('CodeableConcept') as concept,  concept.coding = create('Coding') as coding,  coding.system = 'https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes',  coding.code = 'Ccc.B7.DE08a' "code-Cccb7de08a";
  src.item as itemtimestamp where linkId = 'timestamp' then {
    itemtimestamp.answer first as atimestamp then {
      atimestamp.value as val -> tgt.issued = val "5af77f2c";
    } "7f22f29f";
  } "aae7a11d";
  src.subject as subject -> tgt.subject = subject "patient";
  src.item first as itm1 where linkId = 'stable-child' then {
    itm1.item first as item where (linkId = 'Ccc.B7.DE08a') and answer.exists() then {
      item.answer first as a then {
        a where a.value = true ->  tgt.status = 'final',  tgt.value = true "final-Cccb7de08a";
        a where a.value = false ->  tgt.status = 'cancelled',  tgt.value = false "notfound-Cccb7de08a";
      } "bdab9370";
    } "f01cf4cb";
  } "dffa204b";
}

group CccobservationCccb7de09(source src, target tgt) {
  src ->  tgt.identifier = create('Identifier') as CodeID,  CodeID.system = 'http://hl7.org/fhir/namingsystem-identifier-type',  CodeID.use = 'official',  CodeID.value = 'uuid',  CodeID.id = uuid() "id-Cccb7de09";
  src.encounter as encounter -> tgt.encounter = encounter "35bc6b82";
  src.subject as subject ->  tgt.subject = subject,  tgt.meta = create('Meta') as newMeta,  newMeta.profile = 'https://smart.who.int/ccc/StructureDefinition/Cccobservation',  tgt.code = create('CodeableConcept') as concept,  concept.coding = create('Coding') as coding,  coding.system = 'https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes',  coding.code = 'Ccc.B7.DE09' "code-Cccb7de09";
  src.item as itemtimestamp where linkId = 'timestamp' then {
    itemtimestamp.answer first as atimestamp then {
      atimestamp.value as val -> tgt.issued = val "5af77f2c";
    } "7f22f29f";
  } "aae7a11d";
  src.subject as subject -> tgt.subject = subject "patient";
  src.item first as itm1 where linkId = 'stable-child' then {
    itm1.item first as item where (linkId = 'Ccc.B7.DE09') and answer.exists() then {
      item.answer first as a then {
        a where a.value = true ->  tgt.status = 'final',  tgt.value = true "final-Cccb7de09";
        a where a.value = false ->  tgt.status = 'cancelled',  tgt.value = false "notfound-Cccb7de09";
      } "bdab9370";
    } "d2857a7f";
  } "9311a6c3";
}

group CccobservationCccb7de10(source src, target tgt) {
  src ->  tgt.identifier = create('Identifier') as CodeID,  CodeID.system = 'http://hl7.org/fhir/namingsystem-identifier-type',  CodeID.use = 'official',  CodeID.value = 'uuid',  CodeID.id = uuid() "id-Cccb7de10";
  src.encounter as encounter -> tgt.encounter = encounter "35bc6b82";
  src.subject as subject ->  tgt.subject = subject,  tgt.meta = create('Meta') as newMeta,  newMeta.profile = 'https://smart.who.int/ccc/StructureDefinition/Cccobservation',  tgt.code = create('CodeableConcept') as concept,  concept.coding = create('Coding') as coding,  coding.system = 'https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes',  coding.code = 'Ccc.B7.DE10' "code-Cccb7de10";
  src.item as itemtimestamp where linkId = 'timestamp' then {
    itemtimestamp.answer first as atimestamp then {
      atimestamp.value as val -> tgt.issued = val "5af77f2c";
    } "7f22f29f";
  } "aae7a11d";
  src.subject as subject -> tgt.subject = subject "patient";
  src.item first as itm1 where linkId = 'stable-child' then {
    itm1.item first as item where (linkId = 'Ccc.B7.DE10') and answer.exists() then {
      item.answer first as a then {
        a where a.value = true ->  tgt.status = 'final',  tgt.value = true "final-Cccb7de10";
        a where a.value = false ->  tgt.status = 'cancelled',  tgt.value = false "notfound-Cccb7de10";
      } "bdab9370";
    } "86a60301";
  } "d7b8fbb0";
}

group CccobservationCccb22de08(source src, target tgt) {
  src ->  tgt.identifier = create('Identifier') as CodeID,  CodeID.system = 'http://hl7.org/fhir/namingsystem-identifier-type',  CodeID.use = 'official',  CodeID.value = 'uuid',  CodeID.id = uuid() "id-Cccb22de08";
  src.encounter as encounter -> tgt.encounter = encounter "35bc6b82";
  src.subject as subject ->  tgt.subject = subject,  tgt.meta = create('Meta') as newMeta,  newMeta.profile = 'https://smart.who.int/ccc/StructureDefinition/Cccobservation',  tgt.code = create('CodeableConcept') as concept,  concept.coding = create('Coding') as coding,  coding.system = 'https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes',  coding.code = 'Ccc.B22.DE08' "code-Cccb22de08";
  src.item as itemtimestamp where linkId = 'timestamp' then {
    itemtimestamp.answer first as atimestamp then {
      atimestamp.value as val -> tgt.issued = val "5af77f2c";
    } "7f22f29f";
  } "aae7a11d";
  src.subject as subject -> tgt.subject = subject "patient";
  src.item first as itm1 where linkId = 'stable-child' then {
    itm1.item first as itm2 where linkId = 'Ccc.B22.FluidTest' then {
      itm2.item first as item where (linkId = 'Ccc.B22.DE08') and answer.exists() then {
        item.answer first as a then {
          a.value as val then {
            val where val.code = 'none' -> tgt.swrapin_entry_createtatus = 'cancelled' "d0a13fda";
            val where val.code != 'none' ->  tgt.value = create('CodeableConcept') as cc,  cc.coding = val,  tgt.status = 'final' "a1050460";
          } "310f4b1f";
        } "6af9bfcc";
      } "217a0abc";
    } "1ebe5f9b";
  } "4113c5c7";
}

group CccobservationCccb22de14(source src, target tgt) {
  src ->  tgt.identifier = create('Identifier') as CodeID,  CodeID.system = 'http://hl7.org/fhir/namingsystem-identifier-type',  CodeID.use = 'official',  CodeID.value = 'uuid',  CodeID.id = uuid() "id-Cccb22de14";
  src.encounter as encounter -> tgt.encounter = encounter "35bc6b82";
  src.subject as subject ->  tgt.subject = subject,  tgt.meta = create('Meta') as newMeta,  newMeta.profile = 'https://smart.who.int/ccc/StructureDefinition/Cccobservation',  tgt.code = create('CodeableConcept') as concept,  concept.coding = create('Coding') as coding,  coding.system = 'https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes',  coding.code = 'Ccc.B22.DE14' "code-Cccb22de14";
  src.item as itemtimestamp where linkId = 'timestamp' then {
    itemtimestamp.answer first as atimestamp then {
      atimestamp.value as val -> tgt.issued = val "5af77f2c";
    } "7f22f29f";
  } "aae7a11d";
  src.subject as subject -> tgt.subject = subject "patient";
  src.item first as itm1 where linkId = 'stable-child' then {
    itm1.item first as itm2 where linkId = 'Ccc.B22.FluidTest' then {
      itm2.item first as item where (linkId = 'Ccc.B22.DE14') and answer.exists() then {
        item.answer first as a then {
          a.value as val then {
            val where val.code = 'true' ->  tgt.status = 'final',  tgt.value = true "8a65aaa5";
          } "26c2c8c7";
        } "721205d5";
      } "b72aac92";
    } "e7d47de7";
  } "0204726e";
}

group CccobservationCccb22de14a(source src, target tgt) {
  src ->  tgt.identifier = create('Identifier') as CodeID,  CodeID.system = 'http://hl7.org/fhir/namingsystem-identifier-type',  CodeID.use = 'official',  CodeID.value = 'uuid',  CodeID.id = uuid() "id-Cccb22de14a";
  src.encounter as encounter -> tgt.encounter = encounter "35bc6b82";
  src.subject as subject ->  tgt.subject = subject,  tgt.meta = create('Meta') as newMeta,  newMeta.profile = 'https://smart.who.int/ccc/StructureDefinition/Cccobservation',  tgt.code = create('CodeableConcept') as concept,  concept.coding = create('Coding') as coding,  coding.system = 'https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes',  coding.code = 'Ccc.B22.DE14a' "code-Cccb22de14a";
  src.item as itemtimestamp where linkId = 'timestamp' then {
    itemtimestamp.answer first as atimestamp then {
      atimestamp.value as val -> tgt.issued = val "5af77f2c";
    } "7f22f29f";
  } "aae7a11d";
  src.subject as subject -> tgt.subject = subject "patient";
  src.item first as itm1 where linkId = 'stable-child' then {
    itm1.item first as itm2 where linkId = 'Ccc.B22.FluidTest' then {
      itm2.item first as item where (linkId = 'Ccc.B22.DE14a') and answer.exists() then {
        item.answer first as a then {
          a where a.value = true ->  tgt.status = 'final',  tgt.value = true "final-Cccb22de14a";
          a where a.value = false ->  tgt.status = 'cancelled',  tgt.value = false "notfound-Cccb22de14a";
        } "bdab9370";
      } "120b0bc5";
    } "ffa20ee2";
  } "e1505882";
}

group CccobservationCccb22de15(source src, target tgt) {
  src ->  tgt.identifier = create('Identifier') as CodeID,  CodeID.system = 'http://hl7.org/fhir/namingsystem-identifier-type',  CodeID.use = 'official',  CodeID.value = 'uuid',  CodeID.id = uuid() "id-Cccb22de15";
  src.encounter as encounter -> tgt.encounter = encounter "35bc6b82";
  src.subject as subject ->  tgt.subject = subject,  tgt.meta = create('Meta') as newMeta,  newMeta.profile = 'https://smart.who.int/ccc/StructureDefinition/Cccobservation',  tgt.code = create('CodeableConcept') as concept,  concept.coding = create('Coding') as coding,  coding.system = 'https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes',  coding.code = 'Ccc.B22.DE15' "code-Cccb22de15";
  src.item as itemtimestamp where linkId = 'timestamp' then {
    itemtimestamp.answer first as atimestamp then {
      atimestamp.value as val -> tgt.issued = val "5af77f2c";
    } "7f22f29f";
  } "aae7a11d";
  src.subject as subject -> tgt.subject = subject "patient";
  src.item first as itm1 where linkId = 'stable-child' then {
    itm1.item first as itm2 where linkId = 'Ccc.B22.FluidTest' then {
      itm2.item first as item where (linkId = 'Ccc.B22.DE15') and answer.exists() then {
        item.answer first as a then {
          a where a.value = true ->  tgt.status = 'final',  tgt.value = true "final-Cccb22de15";
          a where a.value = false ->  tgt.status = 'cancelled',  tgt.value = false "notfound-Cccb22de15";
        } "bdab9370";
      } "f886f65c";
    } "0ff7ff35";
  } "455546fc";
}

group CccobservationCccb22de16(source src, target tgt) {
  src ->  tgt.identifier = create('Identifier') as CodeID,  CodeID.system = 'http://hl7.org/fhir/namingsystem-identifier-type',  CodeID.use = 'official',  CodeID.value = 'uuid',  CodeID.id = uuid() "id-Cccb22de16";
  src.encounter as encounter -> tgt.encounter = encounter "35bc6b82";
  src.subject as subject ->  tgt.subject = subject,  tgt.meta = create('Meta') as newMeta,  newMeta.profile = 'https://smart.who.int/ccc/StructureDefinition/Cccobservation',  tgt.code = create('CodeableConcept') as concept,  concept.coding = create('Coding') as coding,  coding.system = 'https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes',  coding.code = 'Ccc.B22.DE16' "code-Cccb22de16";
  src.item as itemtimestamp where linkId = 'timestamp' then {
    itemtimestamp.answer first as atimestamp then {
      atimestamp.value as val -> tgt.issued = val "5af77f2c";
    } "7f22f29f";
  } "aae7a11d";
  src.subject as subject -> tgt.subject = subject "patient";
  src.item first as itm1 where linkId = 'stable-child' then {
    itm1.item first as itm2 where linkId = 'Ccc.B22.FluidTest' then {
      itm2.item first as item where (linkId = 'Ccc.B22.DE16') and answer.exists() then {
        item.answer first as a then {
          a.value as val then {
            val where val.code = 'none' -> tgt.swrapin_entry_createtatus = 'cancelled' "d0a13fda";
            val where val.code != 'none' ->  tgt.value = create('CodeableConcept') as cc,  cc.coding = val,  tgt.status = 'final' "a1050460";
          } "310f4b1f";
        } "6af9bfcc";
      } "56e7c54b";
    } "270c6d04";
  } "1b98a048";
}


```



## Resource Content

```json
{
  "resourceType" : "StructureMap",
  "id" : "Ccc.b7.lti-dangersigns",
  "url" : "https://smart.who.int/ccc/StructureMap/Ccc.b7.lti-dangersigns",
  "version" : "0.1.0",
  "name" : "Ccc.b7.lti-dangersigns",
  "status" : "active",
  "date" : "2026-04-07T13:42:05+00:00",
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
    "url" : "https://smart.who.int/ccc/StructureDefinition/Cccobservation",
    "mode" : "produced",
    "alias" : "'Ccc Observation'"
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
      "name" : "8c26175a",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "item",
        "condition" : "(linkId = 'Ccc.B7.DE02') and answer.exists()"
      }],
      "rule" : [{
        "name" : "402826af",
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
          "name" : "92e7f5f9",
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
            "name" : "004b4d1e",
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
              "name" : "CccobservationCccb7de02",
              "variable" : ["src", "tgt"]
            }]
          }]
        }]
      }]
    },
    {
      "name" : "8f0ade51",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "item",
        "condition" : "(linkId = 'Ccc.B7-B8-B9.DE01') and answer.exists()"
      }],
      "rule" : [{
        "name" : "cab32791",
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
          "name" : "a8c4cecd",
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
            "name" : "ff2fa2ef",
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
              "name" : "CccobservationCccb7b8b9de01",
              "variable" : ["src", "tgt"]
            }]
          }]
        }]
      }]
    },
    {
      "name" : "f9ff931c",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "itm1",
        "condition" : "linkId = 'stable-child'"
      }],
      "rule" : [{
        "name" : "b1580360",
        "source" : [{
          "context" : "itm1",
          "element" : "item",
          "listMode" : "first",
          "variable" : "item",
          "condition" : "(linkId = 'Ccc.B7.DE03') and answer.exists()"
        }],
        "rule" : [{
          "name" : "6d815194",
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
            "name" : "8dded58a",
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
              "name" : "f2e89805",
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
                "name" : "CccobservationCccb7de03",
                "variable" : ["src", "tgt"]
              }]
            }]
          }]
        }]
      }]
    },
    {
      "name" : "340cad6a",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "itm1",
        "condition" : "linkId = 'stable-child'"
      }],
      "rule" : [{
        "name" : "65aaf8e5",
        "source" : [{
          "context" : "itm1",
          "element" : "item",
          "listMode" : "first",
          "variable" : "item",
          "condition" : "(linkId = 'Ccc.B7.DE08b') and answer.exists()"
        }],
        "rule" : [{
          "name" : "366ba7ba",
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
            "name" : "090c71e8",
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
              "name" : "7c424dce",
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
                "name" : "CccobservationCccb7de08b",
                "variable" : ["src", "tgt"]
              }]
            }]
          }]
        }]
      }]
    },
    {
      "name" : "eaa550b2",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "itm1",
        "condition" : "linkId = 'stable-child'"
      }],
      "rule" : [{
        "name" : "350d6fc4",
        "source" : [{
          "context" : "itm1",
          "element" : "item",
          "listMode" : "first",
          "variable" : "item",
          "condition" : "(linkId = 'Ccc.B7.DE08') and answer.exists()"
        }],
        "rule" : [{
          "name" : "3f40ba3d",
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
            "name" : "20cc88b6",
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
              "name" : "279d6969",
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
                "name" : "CccobservationCccb7de08",
                "variable" : ["src", "tgt"]
              }]
            }]
          }]
        }]
      }]
    },
    {
      "name" : "d8ac86b0",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "itm1",
        "condition" : "linkId = 'stable-child'"
      }],
      "rule" : [{
        "name" : "1343a39a",
        "source" : [{
          "context" : "itm1",
          "element" : "item",
          "listMode" : "first",
          "variable" : "item",
          "condition" : "(linkId = 'Ccc.B7.DE08a') and answer.exists()"
        }],
        "rule" : [{
          "name" : "bd06a10d",
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
            "name" : "7be6660a",
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
              "name" : "d2861aff",
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
                "name" : "CccobservationCccb7de08a",
                "variable" : ["src", "tgt"]
              }]
            }]
          }]
        }]
      }]
    },
    {
      "name" : "dd9b5c52",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "itm1",
        "condition" : "linkId = 'stable-child'"
      }],
      "rule" : [{
        "name" : "0ea146b2",
        "source" : [{
          "context" : "itm1",
          "element" : "item",
          "listMode" : "first",
          "variable" : "item",
          "condition" : "(linkId = 'Ccc.B7.DE09') and answer.exists()"
        }],
        "rule" : [{
          "name" : "98869034",
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
            "name" : "2c4ac41f",
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
              "name" : "3f6a9726",
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
                "name" : "CccobservationCccb7de09",
                "variable" : ["src", "tgt"]
              }]
            }]
          }]
        }]
      }]
    },
    {
      "name" : "492052bb",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "itm1",
        "condition" : "linkId = 'stable-child'"
      }],
      "rule" : [{
        "name" : "5b813bca",
        "source" : [{
          "context" : "itm1",
          "element" : "item",
          "listMode" : "first",
          "variable" : "item",
          "condition" : "(linkId = 'Ccc.B7.DE10') and answer.exists()"
        }],
        "rule" : [{
          "name" : "980ae740",
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
            "name" : "0fb952bc",
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
              "name" : "1fe53b0d",
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
                "name" : "CccobservationCccb7de10",
                "variable" : ["src", "tgt"]
              }]
            }]
          }]
        }]
      }]
    },
    {
      "name" : "e1f072a2",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "itm1",
        "condition" : "linkId = 'stable-child'"
      }],
      "rule" : [{
        "name" : "147ec831",
        "source" : [{
          "context" : "itm1",
          "element" : "item",
          "listMode" : "first",
          "variable" : "itm2",
          "condition" : "linkId = 'Ccc.B22.FluidTest'"
        }],
        "rule" : [{
          "name" : "5b2cdf2b",
          "source" : [{
            "context" : "itm2",
            "element" : "item",
            "listMode" : "first",
            "variable" : "item",
            "condition" : "(linkId = 'Ccc.B22.DE08') and answer.exists()"
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
                  "name" : "CccobservationCccb22de08",
                  "variable" : ["src", "tgt"]
                }]
              }]
            }]
          }]
        }]
      }]
    },
    {
      "name" : "8bc21454",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "itm1",
        "condition" : "linkId = 'stable-child'"
      }],
      "rule" : [{
        "name" : "680dcb34",
        "source" : [{
          "context" : "itm1",
          "element" : "item",
          "listMode" : "first",
          "variable" : "itm2",
          "condition" : "linkId = 'Ccc.B22.FluidTest'"
        }],
        "rule" : [{
          "name" : "9758fd8e",
          "source" : [{
            "context" : "itm2",
            "element" : "item",
            "listMode" : "first",
            "variable" : "item",
            "condition" : "(linkId = 'Ccc.B22.DE14') and answer.exists()"
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
                  "name" : "CccobservationCccb22de14",
                  "variable" : ["src", "tgt"]
                }]
              }]
            }]
          }]
        }]
      }]
    },
    {
      "name" : "5a220c96",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "itm1",
        "condition" : "linkId = 'stable-child'"
      }],
      "rule" : [{
        "name" : "29fc59e7",
        "source" : [{
          "context" : "itm1",
          "element" : "item",
          "listMode" : "first",
          "variable" : "itm2",
          "condition" : "linkId = 'Ccc.B22.FluidTest'"
        }],
        "rule" : [{
          "name" : "d955cd1e",
          "source" : [{
            "context" : "itm2",
            "element" : "item",
            "listMode" : "first",
            "variable" : "item",
            "condition" : "(linkId = 'Ccc.B22.DE14a') and answer.exists()"
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
                  "name" : "CccobservationCccb22de14a",
                  "variable" : ["src", "tgt"]
                }]
              }]
            }]
          }]
        }]
      }]
    },
    {
      "name" : "28f93c51",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "itm1",
        "condition" : "linkId = 'stable-child'"
      }],
      "rule" : [{
        "name" : "f64298f5",
        "source" : [{
          "context" : "itm1",
          "element" : "item",
          "listMode" : "first",
          "variable" : "itm2",
          "condition" : "linkId = 'Ccc.B22.FluidTest'"
        }],
        "rule" : [{
          "name" : "408d099b",
          "source" : [{
            "context" : "itm2",
            "element" : "item",
            "listMode" : "first",
            "variable" : "item",
            "condition" : "(linkId = 'Ccc.B22.DE15') and answer.exists()"
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
                  "name" : "CccobservationCccb22de15",
                  "variable" : ["src", "tgt"]
                }]
              }]
            }]
          }]
        }]
      }]
    },
    {
      "name" : "0636116b",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "itm1",
        "condition" : "linkId = 'stable-child'"
      }],
      "rule" : [{
        "name" : "bc80f5f5",
        "source" : [{
          "context" : "itm1",
          "element" : "item",
          "listMode" : "first",
          "variable" : "itm2",
          "condition" : "linkId = 'Ccc.B22.FluidTest'"
        }],
        "rule" : [{
          "name" : "756331ed",
          "source" : [{
            "context" : "itm2",
            "element" : "item",
            "listMode" : "first",
            "variable" : "item",
            "condition" : "(linkId = 'Ccc.B22.DE16') and answer.exists()"
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
                  "name" : "CccobservationCccb22de16",
                  "variable" : ["src", "tgt"]
                }]
              }]
            }]
          }]
        }]
      }]
    }]
  },
  {
    "name" : "CccobservationCccb7de02",
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
      "name" : "id-Cccb7de02",
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
      "name" : "code-Cccb7de02",
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
          "valueString" : "https://smart.who.int/ccc/StructureDefinition/Cccobservation"
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
          "valueString" : "https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes"
        }]
      },
      {
        "context" : "coding",
        "contextType" : "variable",
        "element" : "code",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "Ccc.B7.DE02"
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
      "name" : "25c89b41",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "item",
        "condition" : "(linkId = 'Ccc.B7.DE02') and answer.exists()"
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
          "name" : "final-Cccb7de02",
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
          "name" : "notfound-Cccb7de02",
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
    "name" : "CccobservationCccb7b8b9de01",
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
      "name" : "id-Cccb7b8b9de01",
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
      "name" : "code-Cccb7b8b9de01",
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
          "valueString" : "https://smart.who.int/ccc/StructureDefinition/Cccobservation"
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
          "valueString" : "https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes"
        }]
      },
      {
        "context" : "coding",
        "contextType" : "variable",
        "element" : "code",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "Ccc.B7-B8-B9.DE01"
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
      "name" : "1deb5925",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "item",
        "condition" : "(linkId = 'Ccc.B7-B8-B9.DE01') and answer.exists()"
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
    "name" : "CccobservationCccb7de03",
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
      "name" : "id-Cccb7de03",
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
      "name" : "code-Cccb7de03",
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
          "valueString" : "https://smart.who.int/ccc/StructureDefinition/Cccobservation"
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
          "valueString" : "https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes"
        }]
      },
      {
        "context" : "coding",
        "contextType" : "variable",
        "element" : "code",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "Ccc.B7.DE03"
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
      "name" : "06440f2e",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "itm1",
        "condition" : "linkId = 'stable-child'"
      }],
      "rule" : [{
        "name" : "a2c65533",
        "source" : [{
          "context" : "itm1",
          "element" : "item",
          "listMode" : "first",
          "variable" : "item",
          "condition" : "(linkId = 'Ccc.B7.DE03') and answer.exists()"
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
            "name" : "final-Cccb7de03",
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
            "name" : "notfound-Cccb7de03",
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
    }]
  },
  {
    "name" : "CccobservationCccb7de08b",
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
      "name" : "id-Cccb7de08b",
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
      "name" : "code-Cccb7de08b",
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
          "valueString" : "https://smart.who.int/ccc/StructureDefinition/Cccobservation"
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
          "valueString" : "https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes"
        }]
      },
      {
        "context" : "coding",
        "contextType" : "variable",
        "element" : "code",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "Ccc.B7.DE08b"
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
      "name" : "5c09828f",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "itm1",
        "condition" : "linkId = 'stable-child'"
      }],
      "rule" : [{
        "name" : "9b1cc305",
        "source" : [{
          "context" : "itm1",
          "element" : "item",
          "listMode" : "first",
          "variable" : "item",
          "condition" : "(linkId = 'Ccc.B7.DE08b') and answer.exists()"
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
            "name" : "final-Cccb7de08b",
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
            "name" : "notfound-Cccb7de08b",
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
    }]
  },
  {
    "name" : "CccobservationCccb7de08",
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
      "name" : "id-Cccb7de08",
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
      "name" : "code-Cccb7de08",
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
          "valueString" : "https://smart.who.int/ccc/StructureDefinition/Cccobservation"
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
          "valueString" : "https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes"
        }]
      },
      {
        "context" : "coding",
        "contextType" : "variable",
        "element" : "code",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "Ccc.B7.DE08"
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
      "name" : "899ae4be",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "itm1",
        "condition" : "linkId = 'stable-child'"
      }],
      "rule" : [{
        "name" : "2bfe418a",
        "source" : [{
          "context" : "itm1",
          "element" : "item",
          "listMode" : "first",
          "variable" : "item",
          "condition" : "(linkId = 'Ccc.B7.DE08') and answer.exists()"
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
            "name" : "final-Cccb7de08",
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
            "name" : "notfound-Cccb7de08",
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
    }]
  },
  {
    "name" : "CccobservationCccb7de08a",
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
      "name" : "id-Cccb7de08a",
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
      "name" : "code-Cccb7de08a",
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
          "valueString" : "https://smart.who.int/ccc/StructureDefinition/Cccobservation"
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
          "valueString" : "https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes"
        }]
      },
      {
        "context" : "coding",
        "contextType" : "variable",
        "element" : "code",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "Ccc.B7.DE08a"
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
      "name" : "dffa204b",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "itm1",
        "condition" : "linkId = 'stable-child'"
      }],
      "rule" : [{
        "name" : "f01cf4cb",
        "source" : [{
          "context" : "itm1",
          "element" : "item",
          "listMode" : "first",
          "variable" : "item",
          "condition" : "(linkId = 'Ccc.B7.DE08a') and answer.exists()"
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
            "name" : "final-Cccb7de08a",
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
            "name" : "notfound-Cccb7de08a",
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
    }]
  },
  {
    "name" : "CccobservationCccb7de09",
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
      "name" : "id-Cccb7de09",
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
      "name" : "code-Cccb7de09",
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
          "valueString" : "https://smart.who.int/ccc/StructureDefinition/Cccobservation"
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
          "valueString" : "https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes"
        }]
      },
      {
        "context" : "coding",
        "contextType" : "variable",
        "element" : "code",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "Ccc.B7.DE09"
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
      "name" : "9311a6c3",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "itm1",
        "condition" : "linkId = 'stable-child'"
      }],
      "rule" : [{
        "name" : "d2857a7f",
        "source" : [{
          "context" : "itm1",
          "element" : "item",
          "listMode" : "first",
          "variable" : "item",
          "condition" : "(linkId = 'Ccc.B7.DE09') and answer.exists()"
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
            "name" : "final-Cccb7de09",
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
            "name" : "notfound-Cccb7de09",
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
    }]
  },
  {
    "name" : "CccobservationCccb7de10",
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
      "name" : "id-Cccb7de10",
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
      "name" : "code-Cccb7de10",
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
          "valueString" : "https://smart.who.int/ccc/StructureDefinition/Cccobservation"
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
          "valueString" : "https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes"
        }]
      },
      {
        "context" : "coding",
        "contextType" : "variable",
        "element" : "code",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "Ccc.B7.DE10"
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
      "name" : "d7b8fbb0",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "itm1",
        "condition" : "linkId = 'stable-child'"
      }],
      "rule" : [{
        "name" : "86a60301",
        "source" : [{
          "context" : "itm1",
          "element" : "item",
          "listMode" : "first",
          "variable" : "item",
          "condition" : "(linkId = 'Ccc.B7.DE10') and answer.exists()"
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
            "name" : "final-Cccb7de10",
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
            "name" : "notfound-Cccb7de10",
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
    }]
  },
  {
    "name" : "CccobservationCccb22de08",
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
      "name" : "id-Cccb22de08",
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
      "name" : "code-Cccb22de08",
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
          "valueString" : "https://smart.who.int/ccc/StructureDefinition/Cccobservation"
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
          "valueString" : "https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes"
        }]
      },
      {
        "context" : "coding",
        "contextType" : "variable",
        "element" : "code",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "Ccc.B22.DE08"
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
      "name" : "4113c5c7",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "itm1",
        "condition" : "linkId = 'stable-child'"
      }],
      "rule" : [{
        "name" : "1ebe5f9b",
        "source" : [{
          "context" : "itm1",
          "element" : "item",
          "listMode" : "first",
          "variable" : "itm2",
          "condition" : "linkId = 'Ccc.B22.FluidTest'"
        }],
        "rule" : [{
          "name" : "217a0abc",
          "source" : [{
            "context" : "itm2",
            "element" : "item",
            "listMode" : "first",
            "variable" : "item",
            "condition" : "(linkId = 'Ccc.B22.DE08') and answer.exists()"
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
    }]
  },
  {
    "name" : "CccobservationCccb22de14",
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
      "name" : "id-Cccb22de14",
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
      "name" : "code-Cccb22de14",
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
          "valueString" : "https://smart.who.int/ccc/StructureDefinition/Cccobservation"
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
          "valueString" : "https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes"
        }]
      },
      {
        "context" : "coding",
        "contextType" : "variable",
        "element" : "code",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "Ccc.B22.DE14"
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
      "name" : "0204726e",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "itm1",
        "condition" : "linkId = 'stable-child'"
      }],
      "rule" : [{
        "name" : "e7d47de7",
        "source" : [{
          "context" : "itm1",
          "element" : "item",
          "listMode" : "first",
          "variable" : "itm2",
          "condition" : "linkId = 'Ccc.B22.FluidTest'"
        }],
        "rule" : [{
          "name" : "b72aac92",
          "source" : [{
            "context" : "itm2",
            "element" : "item",
            "listMode" : "first",
            "variable" : "item",
            "condition" : "(linkId = 'Ccc.B22.DE14') and answer.exists()"
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
      }]
    }]
  },
  {
    "name" : "CccobservationCccb22de14a",
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
      "name" : "id-Cccb22de14a",
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
      "name" : "code-Cccb22de14a",
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
          "valueString" : "https://smart.who.int/ccc/StructureDefinition/Cccobservation"
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
          "valueString" : "https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes"
        }]
      },
      {
        "context" : "coding",
        "contextType" : "variable",
        "element" : "code",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "Ccc.B22.DE14a"
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
      "name" : "e1505882",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "itm1",
        "condition" : "linkId = 'stable-child'"
      }],
      "rule" : [{
        "name" : "ffa20ee2",
        "source" : [{
          "context" : "itm1",
          "element" : "item",
          "listMode" : "first",
          "variable" : "itm2",
          "condition" : "linkId = 'Ccc.B22.FluidTest'"
        }],
        "rule" : [{
          "name" : "120b0bc5",
          "source" : [{
            "context" : "itm2",
            "element" : "item",
            "listMode" : "first",
            "variable" : "item",
            "condition" : "(linkId = 'Ccc.B22.DE14a') and answer.exists()"
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
              "name" : "final-Cccb22de14a",
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
              "name" : "notfound-Cccb22de14a",
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
      }]
    }]
  },
  {
    "name" : "CccobservationCccb22de15",
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
      "name" : "id-Cccb22de15",
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
      "name" : "code-Cccb22de15",
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
          "valueString" : "https://smart.who.int/ccc/StructureDefinition/Cccobservation"
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
          "valueString" : "https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes"
        }]
      },
      {
        "context" : "coding",
        "contextType" : "variable",
        "element" : "code",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "Ccc.B22.DE15"
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
      "name" : "455546fc",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "itm1",
        "condition" : "linkId = 'stable-child'"
      }],
      "rule" : [{
        "name" : "0ff7ff35",
        "source" : [{
          "context" : "itm1",
          "element" : "item",
          "listMode" : "first",
          "variable" : "itm2",
          "condition" : "linkId = 'Ccc.B22.FluidTest'"
        }],
        "rule" : [{
          "name" : "f886f65c",
          "source" : [{
            "context" : "itm2",
            "element" : "item",
            "listMode" : "first",
            "variable" : "item",
            "condition" : "(linkId = 'Ccc.B22.DE15') and answer.exists()"
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
              "name" : "final-Cccb22de15",
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
              "name" : "notfound-Cccb22de15",
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
      }]
    }]
  },
  {
    "name" : "CccobservationCccb22de16",
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
      "name" : "id-Cccb22de16",
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
      "name" : "code-Cccb22de16",
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
          "valueString" : "https://smart.who.int/ccc/StructureDefinition/Cccobservation"
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
          "valueString" : "https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes"
        }]
      },
      {
        "context" : "coding",
        "contextType" : "variable",
        "element" : "code",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "Ccc.B22.DE16"
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
      "name" : "1b98a048",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "itm1",
        "condition" : "linkId = 'stable-child'"
      }],
      "rule" : [{
        "name" : "270c6d04",
        "source" : [{
          "context" : "itm1",
          "element" : "item",
          "listMode" : "first",
          "variable" : "itm2",
          "condition" : "linkId = 'Ccc.B22.FluidTest'"
        }],
        "rule" : [{
          "name" : "56e7c54b",
          "source" : [{
            "context" : "itm2",
            "element" : "item",
            "listMode" : "first",
            "variable" : "item",
            "condition" : "(linkId = 'Ccc.B22.DE16') and answer.exists()"
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
    }]
  }]
}

```
