# emcare.b6.measurements - WHO FHIR Implementation Guide (IG): Integrated Management of Childhood Illness (IMCI) in emergencies v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **emcare.b6.measurements**

## StructureMap: emcare.b6.measurements 

| | |
| :--- | :--- |
| *Official URL*:https://smart.who.int/ccc/StructureMap/emcare.b6.measurements | *Version*:0.1.0 |
| Active as of 2026-04-07 | *Computable Name*:emcare.b6.measurements |

```
map "https://smart.who.int/ccc/StructureMap/emcare.b6.measurements" = "emcare.b6.measurements"


uses "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaireresponse" alias 'questionnaireResponse' as source
uses "http://hl7.org/fhir/StructureDefinition/Bundle" alias 'Bundle' as target
uses "https://smart.who.int/ccc/StructureDefinition/observation" alias 'Observation' as target
uses "https://smart.who.int/ccc/StructureDefinition/emcareobservation" alias 'EmCare Observation' as produced

group bundletrans(source src : questionnaireResponse, target bundle : Bundle) {
  src -> bundle.id = uuid() "id";
  src -> bundle.type = 'batch' "type";
  src.item first as item where (linkId = 'EmCare.B6.DE01') and answer.exists() then {
    src -> bundle.entry as entry then {
      src ->  entry.request as request,  request.method = 'POST',  uuid() as uuid,  request.url = append('/Observation/', uuid) "b50ac4c5";
      src -> entry.resource = create('Observation') as tgt then {
        src -> tgt then emcareobservationemcareb6de01(src, tgt) "7b9e1570";
      } "9adbf767";
    } "a36f7a7c";
  } "5af679c2";
  src.item first as item where (linkId = 'EmCare.B6.DE04') and answer.exists() then {
    src -> bundle.entry as entry then {
      src ->  entry.request as request,  request.method = 'POST',  uuid() as uuid,  request.url = append('/Observation/', uuid) "b50ac4c5";
      src -> entry.resource = create('Observation') as tgt then {
        src -> tgt then emcareobservationemcareb6de04(src, tgt) "67f4a10a";
      } "0e7daada";
    } "536a3c54";
  } "1e7dc3b3";
  src.item first as item where (linkId = 'EmCare.B6.DE05') and answer.exists() then {
    src -> bundle.entry as entry then {
      src ->  entry.request as request,  request.method = 'POST',  uuid() as uuid,  request.url = append('/Observation/', uuid) "b50ac4c5";
      src -> entry.resource = create('Observation') as tgt then {
        src -> tgt then emcareobservationemcareb6de05(src, tgt) "1b781b40";
      } "b078a223";
    } "8261a595";
  } "f69a4aa0";
  src.item first as item where (linkId = 'EmCare.B6.DE01A') and answer.exists() then {
    src -> bundle.entry as entry then {
      src ->  entry.request as request,  request.method = 'POST',  uuid() as uuid,  request.url = append('/Observation/', uuid) "b50ac4c5";
      src -> entry.resource = create('Observation') as tgt then {
        src -> tgt then emcareobservationemcareb6de01a(src, tgt) "12e03591";
      } "ce53c93f";
    } "b254b7a3";
  } "75778e5d";
  src.item first as item where (linkId = 'EmCare.B6.DE06') and answer.exists() then {
    src -> bundle.entry as entry then {
      src ->  entry.request as request,  request.method = 'POST',  uuid() as uuid,  request.url = append('/Observation/', uuid) "b50ac4c5";
      src -> entry.resource = create('Observation') as tgt then {
        src -> tgt then emcareobservationemcareb6de06(src, tgt) "12cee51c";
      } "2efb0b06";
    } "b561f2d8";
  } "a4bb9383";
  src.item first as item where (linkId = 'EmCare.B6.DE08') and answer.exists() then {
    src -> bundle.entry as entry then {
      src ->  entry.request as request,  request.method = 'POST',  uuid() as uuid,  request.url = append('/Observation/', uuid) "b50ac4c5";
      src -> entry.resource = create('Observation') as tgt then {
        src -> tgt then emcareobservationemcareb6de08(src, tgt) "6bb35e76";
      } "eb449882";
    } "e71738d1";
  } "b739680e";
  src.item first as itm1 where linkId = 'HeightOrLength' then {
    itm1.item first as item where (linkId = 'EmCare.B6.DE09') and answer.exists() then {
      src -> bundle.entry as entry then {
        src ->  entry.request as request,  request.method = 'POST',  uuid() as uuid,  request.url = append('/Observation/', uuid) "b50ac4c5";
        src -> entry.resource = create('Observation') as tgt then {
          src -> tgt then emcareobservationemcareb6de09(src, tgt) "266493b1";
        } "2f726482";
      } "6e52b729";
    } "8eeae5c7";
  } "b0d72fdc";
  src.item first as itm1 where linkId = 'HeightOrLength' then {
    itm1.item first as item where (linkId = 'EmCare.B6.DE11') and answer.exists() then {
      src -> bundle.entry as entry then {
        src ->  entry.request as request,  request.method = 'POST',  uuid() as uuid,  request.url = append('/Observation/', uuid) "b50ac4c5";
        src -> entry.resource = create('Observation') as tgt then {
          src -> tgt then emcareobservationemcareb6de11(src, tgt) "561b6a20";
        } "e820b17c";
      } "083c0960";
    } "89d9cbf4";
  } "407446d8";
  src.item first as itm1 where linkId = 'HeightOrLength' then {
    itm1.item first as item where (linkId = 'EmCare.B6.DE12') and answer.exists() then {
      src -> bundle.entry as entry then {
        src ->  entry.request as request,  request.method = 'POST',  uuid() as uuid,  request.url = append('/Observation/', uuid) "b50ac4c5";
        src -> entry.resource = create('Observation') as tgt then {
          src -> tgt then emcareobservationemcareb6de12(src, tgt) "68ca10f0";
        } "c5484336";
      } "36f4bed7";
    } "af843ed1";
  } "3eece966";
  src.item first as itm1 where linkId = 'HeightOrLength' then {
    itm1.item first as item where (linkId = 'EmCare.B6.DE16') and answer.exists() then {
      src -> bundle.entry as entry then {
        src ->  entry.request as request,  request.method = 'POST',  uuid() as uuid,  request.url = append('/Observation/', uuid) "b50ac4c5";
        src -> entry.resource = create('Observation') as tgt then {
          src -> tgt then emcareobservationemcareb6de16(src, tgt) "e096bb18";
        } "bd26fdf7";
      } "6699c1df";
    } "22423885";
  } "f65b099d";
  src.item first as itm1 where linkId = 'HeightOrLength' then {
    itm1.item first as item where (linkId = 'EmCare.B6.DE17') and answer.exists() then {
      src -> bundle.entry as entry then {
        src ->  entry.request as request,  request.method = 'POST',  uuid() as uuid,  request.url = append('/Observation/', uuid) "b50ac4c5";
        src -> entry.resource = create('Observation') as tgt then {
          src -> tgt then emcareobservationemcareb6de17(src, tgt) "ba2a3c82";
        } "e7d4b396";
      } "5b9abbd1";
    } "69c61b5c";
  } "ec872a8f";
  src.item first as itm1 where linkId = 'HeightOrLength' then {
    itm1.item first as item where (linkId = 'EmCare.B6.DE17a') and answer.exists() then {
      src -> bundle.entry as entry then {
        src ->  entry.request as request,  request.method = 'POST',  uuid() as uuid,  request.url = append('/Observation/', uuid) "b50ac4c5";
        src -> entry.resource = create('Observation') as tgt then {
          src -> tgt then emcareobservationemcareb6de17a(src, tgt) "7bc3b5ea";
        } "5622cb01";
      } "d4830ac3";
    } "75bc4091";
  } "40e94db6";
  src.item first as itm1 where linkId = 'HeightOrLength' then {
    itm1.item first as item where (linkId = 'EmCare.B6.DE18') and answer.exists() then {
      src -> bundle.entry as entry then {
        src ->  entry.request as request,  request.method = 'POST',  uuid() as uuid,  request.url = append('/Observation/', uuid) "b50ac4c5";
        src -> entry.resource = create('Observation') as tgt then {
          src -> tgt then emcareobservationemcareb6de18(src, tgt) "307489c1";
        } "e8491d3e";
      } "9e7c1f1c";
    } "4570d962";
  } "f83a9a0e";
}

group emcareobservationemcareb6de01(source src, target tgt) {
  src ->  tgt.identifier = create('Identifier') as CodeID,  CodeID.system = 'http://hl7.org/fhir/namingsystem-identifier-type',  CodeID.use = 'official',  CodeID.value = 'uuid',  CodeID.id = uuid() "id-emcareb6de01";
  src.encounter as encounter -> tgt.encounter = encounter "35bc6b82";
  src.subject as subject ->  tgt.subject = subject,  tgt.meta = create('Meta') as newMeta,  newMeta.profile = 'https://smart.who.int/ccc/StructureDefinition/emcareobservation',  tgt.code = create('CodeableConcept') as concept,  concept.coding = create('Coding') as coding,  coding.system = 'https://smart.who.int/ccc/CodeSystem/emcare-custom-codes',  coding.code = 'EmCare.B6.DE01' "code-emcareb6de01";
  src.item as itemtimestamp where linkId = 'timestamp' then {
    itemtimestamp.answer first as atimestamp then {
      atimestamp.value as val -> tgt.issued = val "5af77f2c";
    } "7f22f29f";
  } "aae7a11d";
  src.subject as subject -> tgt.subject = subject "patient";
  src.item first as item where (linkId = 'EmCare.B6.DE01') and answer.exists() then {
    item.answer first as a then {
      a.value as val ->  tgt.value = val,  tgt.status = 'final' "afa0ccc0";
    } "d40466ff";
  } "74f627a9";
}

group emcareobservationemcareb6de04(source src, target tgt) {
  src ->  tgt.identifier = create('Identifier') as CodeID,  CodeID.system = 'http://hl7.org/fhir/namingsystem-identifier-type',  CodeID.use = 'official',  CodeID.value = 'uuid',  CodeID.id = uuid() "id-emcareb6de04";
  src.encounter as encounter -> tgt.encounter = encounter "35bc6b82";
  src.subject as subject ->  tgt.subject = subject,  tgt.meta = create('Meta') as newMeta,  newMeta.profile = 'https://smart.who.int/ccc/StructureDefinition/emcareobservation',  tgt.code = create('CodeableConcept') as concept,  concept.coding = create('Coding') as coding,  coding.system = 'https://smart.who.int/ccc/CodeSystem/emcare-custom-codes',  coding.code = 'EmCare.B6.DE04' "code-emcareb6de04";
  src.item as itemtimestamp where linkId = 'timestamp' then {
    itemtimestamp.answer first as atimestamp then {
      atimestamp.value as val -> tgt.issued = val "5af77f2c";
    } "7f22f29f";
  } "aae7a11d";
  src.subject as subject -> tgt.subject = subject "patient";
  src.item first as item where (linkId = 'EmCare.B6.DE04') and answer.exists() then {
    item.answer first as a then {
      a.value as val then {
        val where val.code = 'true' ->  tgt.status = 'final',  tgt.value = true "8a65aaa5";
      } "26c2c8c7";
    } "721205d5";
  } "a27d71d0";
}

group emcareobservationemcareb6de05(source src, target tgt) {
  src ->  tgt.identifier = create('Identifier') as CodeID,  CodeID.system = 'http://hl7.org/fhir/namingsystem-identifier-type',  CodeID.use = 'official',  CodeID.value = 'uuid',  CodeID.id = uuid() "id-emcareb6de05";
  src.encounter as encounter -> tgt.encounter = encounter "35bc6b82";
  src.subject as subject ->  tgt.subject = subject,  tgt.meta = create('Meta') as newMeta,  newMeta.profile = 'https://smart.who.int/ccc/StructureDefinition/emcareobservation',  tgt.code = create('CodeableConcept') as concept,  concept.coding = create('Coding') as coding,  coding.system = 'https://smart.who.int/ccc/CodeSystem/emcare-custom-codes',  coding.code = 'EmCare.B6.DE05' "code-emcareb6de05";
  src.item as itemtimestamp where linkId = 'timestamp' then {
    itemtimestamp.answer first as atimestamp then {
      atimestamp.value as val -> tgt.issued = val "5af77f2c";
    } "7f22f29f";
  } "aae7a11d";
  src.subject as subject -> tgt.subject = subject "patient";
  src.item first as item where (linkId = 'EmCare.B6.DE05') and answer.exists() then {
    item.answer first as a then {
      a where a.value = true ->  tgt.status = 'final',  tgt.value = true "final-emcareb6de05";
      a where a.value = false ->  tgt.status = 'cancelled',  tgt.value = false "notfound-emcareb6de05";
    } "bdab9370";
  } "fe4a3fce";
}

group emcareobservationemcareb6de01a(source src, target tgt) {
  src ->  tgt.identifier = create('Identifier') as CodeID,  CodeID.system = 'http://hl7.org/fhir/namingsystem-identifier-type',  CodeID.use = 'official',  CodeID.value = 'uuid',  CodeID.id = uuid() "id-emcareb6de01a";
  src.encounter as encounter -> tgt.encounter = encounter "35bc6b82";
  src.subject as subject ->  tgt.subject = subject,  tgt.meta = create('Meta') as newMeta,  newMeta.profile = 'https://smart.who.int/ccc/StructureDefinition/emcareobservation',  tgt.code = create('CodeableConcept') as concept,  concept.coding = create('Coding') as coding,  coding.system = 'https://smart.who.int/ccc/CodeSystem/emcare-custom-codes',  coding.code = 'EmCare.B6.DE01A' "code-emcareb6de01a";
  src.item as itemtimestamp where linkId = 'timestamp' then {
    itemtimestamp.answer first as atimestamp then {
      atimestamp.value as val -> tgt.issued = val "5af77f2c";
    } "7f22f29f";
  } "aae7a11d";
  src.subject as subject -> tgt.subject = subject "patient";
  src.item first as item where (linkId = 'EmCare.B6.DE01A') and answer.exists() then {
    item.answer first as a then {
      a.value as val then {
        val ->  tgt.value = create('CodeableConcept') as cc,  cc.coding = create('Coding') as c,  c.code = val,  c.system = 'https://smart.who.int/ccc/CodeSystem/emcare-custom-codes',  tgt.status = 'final' "759a9a54";
      } "1b820ab0";
    } "d39f9088";
  } "a471ce48";
}

group emcareobservationemcareb6de06(source src, target tgt) {
  src ->  tgt.identifier = create('Identifier') as CodeID,  CodeID.system = 'http://hl7.org/fhir/namingsystem-identifier-type',  CodeID.use = 'official',  CodeID.value = 'uuid',  CodeID.id = uuid() "id-emcareb6de06";
  src.encounter as encounter -> tgt.encounter = encounter "35bc6b82";
  src.subject as subject ->  tgt.subject = subject,  tgt.meta = create('Meta') as newMeta,  newMeta.profile = 'https://smart.who.int/ccc/StructureDefinition/emcareobservation',  tgt.code = create('CodeableConcept') as concept,  concept.coding = create('Coding') as coding,  coding.system = 'https://smart.who.int/ccc/CodeSystem/emcare-custom-codes',  coding.code = 'EmCare.B6.DE06' "code-emcareb6de06";
  src.item as itemtimestamp where linkId = 'timestamp' then {
    itemtimestamp.answer first as atimestamp then {
      atimestamp.value as val -> tgt.issued = val "5af77f2c";
    } "7f22f29f";
  } "aae7a11d";
  src.subject as subject -> tgt.subject = subject "patient";
  src.item first as item where (linkId = 'EmCare.B6.DE06') and answer.exists() then {
    item.answer first as a then {
      a.value as val ->  tgt.value = val,  tgt.status = 'final' "afa0ccc0";
    } "d40466ff";
  } "39925fe2";
}

group emcareobservationemcareb6de08(source src, target tgt) {
  src ->  tgt.identifier = create('Identifier') as CodeID,  CodeID.system = 'http://hl7.org/fhir/namingsystem-identifier-type',  CodeID.use = 'official',  CodeID.value = 'uuid',  CodeID.id = uuid() "id-emcareb6de08";
  src.encounter as encounter -> tgt.encounter = encounter "35bc6b82";
  src.subject as subject ->  tgt.subject = subject,  tgt.meta = create('Meta') as newMeta,  newMeta.profile = 'https://smart.who.int/ccc/StructureDefinition/emcareobservation',  tgt.code = create('CodeableConcept') as concept,  concept.coding = create('Coding') as coding,  coding.system = 'https://smart.who.int/ccc/CodeSystem/emcare-custom-codes',  coding.code = 'EmCare.B6.DE08' "code-emcareb6de08";
  src.item as itemtimestamp where linkId = 'timestamp' then {
    itemtimestamp.answer first as atimestamp then {
      atimestamp.value as val -> tgt.issued = val "5af77f2c";
    } "7f22f29f";
  } "aae7a11d";
  src.subject as subject -> tgt.subject = subject "patient";
  src.item first as item where (linkId = 'EmCare.B6.DE08') and answer.exists() then {
    item.answer first as a then {
      a.value as val ->  tgt.value = val,  tgt.status = 'final' "afa0ccc0";
    } "d40466ff";
  } "dc896557";
}

group emcareobservationemcareb6de09(source src, target tgt) {
  src ->  tgt.identifier = create('Identifier') as CodeID,  CodeID.system = 'http://hl7.org/fhir/namingsystem-identifier-type',  CodeID.use = 'official',  CodeID.value = 'uuid',  CodeID.id = uuid() "id-emcareb6de09";
  src.encounter as encounter -> tgt.encounter = encounter "35bc6b82";
  src.subject as subject ->  tgt.subject = subject,  tgt.meta = create('Meta') as newMeta,  newMeta.profile = 'https://smart.who.int/ccc/StructureDefinition/emcareobservation',  tgt.code = create('CodeableConcept') as concept,  concept.coding = create('Coding') as coding,  coding.system = 'https://smart.who.int/ccc/CodeSystem/emcare-custom-codes',  coding.code = 'EmCare.B6.DE09' "code-emcareb6de09";
  src.item as itemtimestamp where linkId = 'timestamp' then {
    itemtimestamp.answer first as atimestamp then {
      atimestamp.value as val -> tgt.issued = val "5af77f2c";
    } "7f22f29f";
  } "aae7a11d";
  src.subject as subject -> tgt.subject = subject "patient";
  src.item first as itm1 where linkId = 'HeightOrLength' then {
    itm1.item first as item where (linkId = 'EmCare.B6.DE09') and answer.exists() then {
      item.answer first as a then {
        a.value as val ->  tgt.value = val,  tgt.status = 'final' "afa0ccc0";
      } "d40466ff";
    } "589bbaf1";
  } "a045bbd4";
}

group emcareobservationemcareb6de11(source src, target tgt) {
  src ->  tgt.identifier = create('Identifier') as CodeID,  CodeID.system = 'http://hl7.org/fhir/namingsystem-identifier-type',  CodeID.use = 'official',  CodeID.value = 'uuid',  CodeID.id = uuid() "id-emcareb6de11";
  src.encounter as encounter -> tgt.encounter = encounter "35bc6b82";
  src.subject as subject ->  tgt.subject = subject,  tgt.meta = create('Meta') as newMeta,  newMeta.profile = 'https://smart.who.int/ccc/StructureDefinition/emcareobservation',  tgt.code = create('CodeableConcept') as concept,  concept.coding = create('Coding') as coding,  coding.system = 'https://smart.who.int/ccc/CodeSystem/emcare-custom-codes',  coding.code = 'EmCare.B6.DE11' "code-emcareb6de11";
  src.item as itemtimestamp where linkId = 'timestamp' then {
    itemtimestamp.answer first as atimestamp then {
      atimestamp.value as val -> tgt.issued = val "5af77f2c";
    } "7f22f29f";
  } "aae7a11d";
  src.subject as subject -> tgt.subject = subject "patient";
  src.item first as itm1 where linkId = 'HeightOrLength' then {
    itm1.item first as item where (linkId = 'EmCare.B6.DE11') and answer.exists() then {
      item.answer first as a then {
        a.value as val then {
          val where val.code = 'true' ->  tgt.status = 'final',  tgt.value = true "8a65aaa5";
        } "26c2c8c7";
      } "721205d5";
    } "d64ae780";
  } "9a6a0b00";
}

group emcareobservationemcareb6de12(source src, target tgt) {
  src ->  tgt.identifier = create('Identifier') as CodeID,  CodeID.system = 'http://hl7.org/fhir/namingsystem-identifier-type',  CodeID.use = 'official',  CodeID.value = 'uuid',  CodeID.id = uuid() "id-emcareb6de12";
  src.encounter as encounter -> tgt.encounter = encounter "35bc6b82";
  src.subject as subject ->  tgt.subject = subject,  tgt.meta = create('Meta') as newMeta,  newMeta.profile = 'https://smart.who.int/ccc/StructureDefinition/emcareobservation',  tgt.code = create('CodeableConcept') as concept,  concept.coding = create('Coding') as coding,  coding.system = 'https://smart.who.int/ccc/CodeSystem/emcare-custom-codes',  coding.code = 'EmCare.B6.DE12' "code-emcareb6de12";
  src.item as itemtimestamp where linkId = 'timestamp' then {
    itemtimestamp.answer first as atimestamp then {
      atimestamp.value as val -> tgt.issued = val "5af77f2c";
    } "7f22f29f";
  } "aae7a11d";
  src.subject as subject -> tgt.subject = subject "patient";
  src.item first as itm1 where linkId = 'HeightOrLength' then {
    itm1.item first as item where (linkId = 'EmCare.B6.DE12') and answer.exists() then {
      item.answer first as a then {
        a.value as val ->  tgt.value = val,  tgt.status = 'final' "afa0ccc0";
      } "d40466ff";
    } "c68f5944";
  } "145f1ff6";
}

group emcareobservationemcareb6de16(source src, target tgt) {
  src ->  tgt.identifier = create('Identifier') as CodeID,  CodeID.system = 'http://hl7.org/fhir/namingsystem-identifier-type',  CodeID.use = 'official',  CodeID.value = 'uuid',  CodeID.id = uuid() "id-emcareb6de16";
  src.encounter as encounter -> tgt.encounter = encounter "35bc6b82";
  src.subject as subject ->  tgt.subject = subject,  tgt.meta = create('Meta') as newMeta,  newMeta.profile = 'https://smart.who.int/ccc/StructureDefinition/emcareobservation',  tgt.code = create('CodeableConcept') as concept,  concept.coding = create('Coding') as coding,  coding.system = 'https://smart.who.int/ccc/CodeSystem/emcare-custom-codes',  coding.code = 'EmCare.B6.DE16' "code-emcareb6de16";
  src.item as itemtimestamp where linkId = 'timestamp' then {
    itemtimestamp.answer first as atimestamp then {
      atimestamp.value as val -> tgt.issued = val "5af77f2c";
    } "7f22f29f";
  } "aae7a11d";
  src.subject as subject -> tgt.subject = subject "patient";
  src.item first as itm1 where linkId = 'HeightOrLength' then {
    itm1.item first as item where (linkId = 'EmCare.B6.DE16') and answer.exists() then {
      item.answer first as a then {
        a where a.value = true ->  tgt.status = 'final',  tgt.value = true "final-emcareb6de16";
        a where a.value = false ->  tgt.status = 'cancelled',  tgt.value = false "notfound-emcareb6de16";
      } "bdab9370";
    } "c4642432";
  } "8e8f1cd4";
}

group emcareobservationemcareb6de17(source src, target tgt) {
  src ->  tgt.identifier = create('Identifier') as CodeID,  CodeID.system = 'http://hl7.org/fhir/namingsystem-identifier-type',  CodeID.use = 'official',  CodeID.value = 'uuid',  CodeID.id = uuid() "id-emcareb6de17";
  src.encounter as encounter -> tgt.encounter = encounter "35bc6b82";
  src.subject as subject ->  tgt.subject = subject,  tgt.meta = create('Meta') as newMeta,  newMeta.profile = 'https://smart.who.int/ccc/StructureDefinition/emcareobservation',  tgt.code = create('CodeableConcept') as concept,  concept.coding = create('Coding') as coding,  coding.system = 'https://smart.who.int/ccc/CodeSystem/emcare-custom-codes',  coding.code = 'EmCare.B6.DE17' "code-emcareb6de17";
  src.item as itemtimestamp where linkId = 'timestamp' then {
    itemtimestamp.answer first as atimestamp then {
      atimestamp.value as val -> tgt.issued = val "5af77f2c";
    } "7f22f29f";
  } "aae7a11d";
  src.subject as subject -> tgt.subject = subject "patient";
  src.item first as itm1 where linkId = 'HeightOrLength' then {
    itm1.item first as item where (linkId = 'EmCare.B6.DE17') and answer.exists() then {
      item.answer first as a then {
        a.value as val ->  tgt.value = val,  tgt.status = 'final' "afa0ccc0";
      } "d40466ff";
    } "66a9743a";
  } "b27154a0";
}

group emcareobservationemcareb6de17a(source src, target tgt) {
  src ->  tgt.identifier = create('Identifier') as CodeID,  CodeID.system = 'http://hl7.org/fhir/namingsystem-identifier-type',  CodeID.use = 'official',  CodeID.value = 'uuid',  CodeID.id = uuid() "id-emcareb6de17a";
  src.encounter as encounter -> tgt.encounter = encounter "35bc6b82";
  src.subject as subject ->  tgt.subject = subject,  tgt.meta = create('Meta') as newMeta,  newMeta.profile = 'https://smart.who.int/ccc/StructureDefinition/emcareobservation',  tgt.code = create('CodeableConcept') as concept,  concept.coding = create('Coding') as coding,  coding.system = 'https://smart.who.int/ccc/CodeSystem/emcare-custom-codes',  coding.code = 'EmCare.B6.DE17a' "code-emcareb6de17a";
  src.item as itemtimestamp where linkId = 'timestamp' then {
    itemtimestamp.answer first as atimestamp then {
      atimestamp.value as val -> tgt.issued = val "5af77f2c";
    } "7f22f29f";
  } "aae7a11d";
  src.subject as subject -> tgt.subject = subject "patient";
  src.item first as itm1 where linkId = 'HeightOrLength' then {
    itm1.item first as item where (linkId = 'EmCare.B6.DE17a') and answer.exists() then {
      item.answer first as a then {
        a.value as val then {
          val where val.code = 'true' ->  tgt.status = 'final',  tgt.value = true "8a65aaa5";
        } "26c2c8c7";
      } "721205d5";
    } "a25ca60a";
  } "04002c97";
}

group emcareobservationemcareb6de18(source src, target tgt) {
  src ->  tgt.identifier = create('Identifier') as CodeID,  CodeID.system = 'http://hl7.org/fhir/namingsystem-identifier-type',  CodeID.use = 'official',  CodeID.value = 'uuid',  CodeID.id = uuid() "id-emcareb6de18";
  src.encounter as encounter -> tgt.encounter = encounter "35bc6b82";
  src.subject as subject ->  tgt.subject = subject,  tgt.meta = create('Meta') as newMeta,  newMeta.profile = 'https://smart.who.int/ccc/StructureDefinition/emcareobservation',  tgt.code = create('CodeableConcept') as concept,  concept.coding = create('Coding') as coding,  coding.system = 'https://smart.who.int/ccc/CodeSystem/emcare-custom-codes',  coding.code = 'EmCare.B6.DE18' "code-emcareb6de18";
  src.item as itemtimestamp where linkId = 'timestamp' then {
    itemtimestamp.answer first as atimestamp then {
      atimestamp.value as val -> tgt.issued = val "5af77f2c";
    } "7f22f29f";
  } "aae7a11d";
  src.subject as subject -> tgt.subject = subject "patient";
  src.item first as itm1 where linkId = 'HeightOrLength' then {
    itm1.item first as item where (linkId = 'EmCare.B6.DE18') and answer.exists() then {
      item.answer first as a then {
        a.value as val then {
          val where val.code = 'none' -> tgt.swrapin_entry_createtatus = 'cancelled' "d0a13fda";
          val where val.code != 'none' ->  tgt.value = create('CodeableConcept') as cc,  cc.coding = val,  tgt.status = 'final' "a1050460";
        } "310f4b1f";
      } "6af9bfcc";
    } "a14ebcf7";
  } "72053a9a";
}


```



## Resource Content

```json
{
  "resourceType" : "StructureMap",
  "id" : "emcare.b6.measurements",
  "url" : "https://smart.who.int/ccc/StructureMap/emcare.b6.measurements",
  "version" : "0.1.0",
  "name" : "emcare.b6.measurements",
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
      "name" : "5af679c2",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "item",
        "condition" : "(linkId = 'EmCare.B6.DE01') and answer.exists()"
      }],
      "rule" : [{
        "name" : "a36f7a7c",
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
          "name" : "9adbf767",
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
            "name" : "7b9e1570",
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
              "name" : "emcareobservationemcareb6de01",
              "variable" : ["src", "tgt"]
            }]
          }]
        }]
      }]
    },
    {
      "name" : "1e7dc3b3",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "item",
        "condition" : "(linkId = 'EmCare.B6.DE04') and answer.exists()"
      }],
      "rule" : [{
        "name" : "536a3c54",
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
          "name" : "0e7daada",
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
            "name" : "67f4a10a",
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
              "name" : "emcareobservationemcareb6de04",
              "variable" : ["src", "tgt"]
            }]
          }]
        }]
      }]
    },
    {
      "name" : "f69a4aa0",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "item",
        "condition" : "(linkId = 'EmCare.B6.DE05') and answer.exists()"
      }],
      "rule" : [{
        "name" : "8261a595",
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
          "name" : "b078a223",
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
            "name" : "1b781b40",
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
              "name" : "emcareobservationemcareb6de05",
              "variable" : ["src", "tgt"]
            }]
          }]
        }]
      }]
    },
    {
      "name" : "75778e5d",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "item",
        "condition" : "(linkId = 'EmCare.B6.DE01A') and answer.exists()"
      }],
      "rule" : [{
        "name" : "b254b7a3",
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
          "name" : "ce53c93f",
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
            "name" : "12e03591",
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
              "name" : "emcareobservationemcareb6de01a",
              "variable" : ["src", "tgt"]
            }]
          }]
        }]
      }]
    },
    {
      "name" : "a4bb9383",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "item",
        "condition" : "(linkId = 'EmCare.B6.DE06') and answer.exists()"
      }],
      "rule" : [{
        "name" : "b561f2d8",
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
          "name" : "2efb0b06",
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
            "name" : "12cee51c",
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
              "name" : "emcareobservationemcareb6de06",
              "variable" : ["src", "tgt"]
            }]
          }]
        }]
      }]
    },
    {
      "name" : "b739680e",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "item",
        "condition" : "(linkId = 'EmCare.B6.DE08') and answer.exists()"
      }],
      "rule" : [{
        "name" : "e71738d1",
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
          "name" : "eb449882",
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
            "name" : "6bb35e76",
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
              "name" : "emcareobservationemcareb6de08",
              "variable" : ["src", "tgt"]
            }]
          }]
        }]
      }]
    },
    {
      "name" : "b0d72fdc",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "itm1",
        "condition" : "linkId = 'HeightOrLength'"
      }],
      "rule" : [{
        "name" : "8eeae5c7",
        "source" : [{
          "context" : "itm1",
          "element" : "item",
          "listMode" : "first",
          "variable" : "item",
          "condition" : "(linkId = 'EmCare.B6.DE09') and answer.exists()"
        }],
        "rule" : [{
          "name" : "6e52b729",
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
            "name" : "2f726482",
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
              "name" : "266493b1",
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
                "name" : "emcareobservationemcareb6de09",
                "variable" : ["src", "tgt"]
              }]
            }]
          }]
        }]
      }]
    },
    {
      "name" : "407446d8",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "itm1",
        "condition" : "linkId = 'HeightOrLength'"
      }],
      "rule" : [{
        "name" : "89d9cbf4",
        "source" : [{
          "context" : "itm1",
          "element" : "item",
          "listMode" : "first",
          "variable" : "item",
          "condition" : "(linkId = 'EmCare.B6.DE11') and answer.exists()"
        }],
        "rule" : [{
          "name" : "083c0960",
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
            "name" : "e820b17c",
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
              "name" : "561b6a20",
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
                "name" : "emcareobservationemcareb6de11",
                "variable" : ["src", "tgt"]
              }]
            }]
          }]
        }]
      }]
    },
    {
      "name" : "3eece966",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "itm1",
        "condition" : "linkId = 'HeightOrLength'"
      }],
      "rule" : [{
        "name" : "af843ed1",
        "source" : [{
          "context" : "itm1",
          "element" : "item",
          "listMode" : "first",
          "variable" : "item",
          "condition" : "(linkId = 'EmCare.B6.DE12') and answer.exists()"
        }],
        "rule" : [{
          "name" : "36f4bed7",
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
            "name" : "c5484336",
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
              "name" : "68ca10f0",
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
                "name" : "emcareobservationemcareb6de12",
                "variable" : ["src", "tgt"]
              }]
            }]
          }]
        }]
      }]
    },
    {
      "name" : "f65b099d",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "itm1",
        "condition" : "linkId = 'HeightOrLength'"
      }],
      "rule" : [{
        "name" : "22423885",
        "source" : [{
          "context" : "itm1",
          "element" : "item",
          "listMode" : "first",
          "variable" : "item",
          "condition" : "(linkId = 'EmCare.B6.DE16') and answer.exists()"
        }],
        "rule" : [{
          "name" : "6699c1df",
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
            "name" : "bd26fdf7",
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
              "name" : "e096bb18",
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
                "name" : "emcareobservationemcareb6de16",
                "variable" : ["src", "tgt"]
              }]
            }]
          }]
        }]
      }]
    },
    {
      "name" : "ec872a8f",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "itm1",
        "condition" : "linkId = 'HeightOrLength'"
      }],
      "rule" : [{
        "name" : "69c61b5c",
        "source" : [{
          "context" : "itm1",
          "element" : "item",
          "listMode" : "first",
          "variable" : "item",
          "condition" : "(linkId = 'EmCare.B6.DE17') and answer.exists()"
        }],
        "rule" : [{
          "name" : "5b9abbd1",
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
            "name" : "e7d4b396",
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
              "name" : "ba2a3c82",
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
                "name" : "emcareobservationemcareb6de17",
                "variable" : ["src", "tgt"]
              }]
            }]
          }]
        }]
      }]
    },
    {
      "name" : "40e94db6",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "itm1",
        "condition" : "linkId = 'HeightOrLength'"
      }],
      "rule" : [{
        "name" : "75bc4091",
        "source" : [{
          "context" : "itm1",
          "element" : "item",
          "listMode" : "first",
          "variable" : "item",
          "condition" : "(linkId = 'EmCare.B6.DE17a') and answer.exists()"
        }],
        "rule" : [{
          "name" : "d4830ac3",
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
            "name" : "5622cb01",
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
              "name" : "7bc3b5ea",
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
                "name" : "emcareobservationemcareb6de17a",
                "variable" : ["src", "tgt"]
              }]
            }]
          }]
        }]
      }]
    },
    {
      "name" : "f83a9a0e",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "itm1",
        "condition" : "linkId = 'HeightOrLength'"
      }],
      "rule" : [{
        "name" : "4570d962",
        "source" : [{
          "context" : "itm1",
          "element" : "item",
          "listMode" : "first",
          "variable" : "item",
          "condition" : "(linkId = 'EmCare.B6.DE18') and answer.exists()"
        }],
        "rule" : [{
          "name" : "9e7c1f1c",
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
            "name" : "e8491d3e",
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
              "name" : "307489c1",
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
                "name" : "emcareobservationemcareb6de18",
                "variable" : ["src", "tgt"]
              }]
            }]
          }]
        }]
      }]
    }]
  },
  {
    "name" : "emcareobservationemcareb6de01",
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
      "name" : "id-emcareb6de01",
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
      "name" : "code-emcareb6de01",
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
          "valueString" : "EmCare.B6.DE01"
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
      "name" : "74f627a9",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "item",
        "condition" : "(linkId = 'EmCare.B6.DE01') and answer.exists()"
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
    "name" : "emcareobservationemcareb6de04",
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
      "name" : "id-emcareb6de04",
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
      "name" : "code-emcareb6de04",
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
          "valueString" : "EmCare.B6.DE04"
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
      "name" : "a27d71d0",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "item",
        "condition" : "(linkId = 'EmCare.B6.DE04') and answer.exists()"
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
    "name" : "emcareobservationemcareb6de05",
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
      "name" : "id-emcareb6de05",
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
      "name" : "code-emcareb6de05",
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
          "valueString" : "EmCare.B6.DE05"
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
      "name" : "fe4a3fce",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "item",
        "condition" : "(linkId = 'EmCare.B6.DE05') and answer.exists()"
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
          "name" : "final-emcareb6de05",
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
          "name" : "notfound-emcareb6de05",
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
    "name" : "emcareobservationemcareb6de01a",
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
      "name" : "id-emcareb6de01a",
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
      "name" : "code-emcareb6de01a",
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
          "valueString" : "EmCare.B6.DE01A"
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
      "name" : "a471ce48",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "item",
        "condition" : "(linkId = 'EmCare.B6.DE01A') and answer.exists()"
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
  },
  {
    "name" : "emcareobservationemcareb6de06",
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
      "name" : "id-emcareb6de06",
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
      "name" : "code-emcareb6de06",
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
          "valueString" : "EmCare.B6.DE06"
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
      "name" : "39925fe2",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "item",
        "condition" : "(linkId = 'EmCare.B6.DE06') and answer.exists()"
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
    "name" : "emcareobservationemcareb6de08",
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
      "name" : "id-emcareb6de08",
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
      "name" : "code-emcareb6de08",
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
          "valueString" : "EmCare.B6.DE08"
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
      "name" : "dc896557",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "item",
        "condition" : "(linkId = 'EmCare.B6.DE08') and answer.exists()"
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
    "name" : "emcareobservationemcareb6de09",
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
      "name" : "id-emcareb6de09",
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
      "name" : "code-emcareb6de09",
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
          "valueString" : "EmCare.B6.DE09"
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
      "name" : "a045bbd4",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "itm1",
        "condition" : "linkId = 'HeightOrLength'"
      }],
      "rule" : [{
        "name" : "589bbaf1",
        "source" : [{
          "context" : "itm1",
          "element" : "item",
          "listMode" : "first",
          "variable" : "item",
          "condition" : "(linkId = 'EmCare.B6.DE09') and answer.exists()"
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
    }]
  },
  {
    "name" : "emcareobservationemcareb6de11",
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
      "name" : "id-emcareb6de11",
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
      "name" : "code-emcareb6de11",
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
          "valueString" : "EmCare.B6.DE11"
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
      "name" : "9a6a0b00",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "itm1",
        "condition" : "linkId = 'HeightOrLength'"
      }],
      "rule" : [{
        "name" : "d64ae780",
        "source" : [{
          "context" : "itm1",
          "element" : "item",
          "listMode" : "first",
          "variable" : "item",
          "condition" : "(linkId = 'EmCare.B6.DE11') and answer.exists()"
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
  },
  {
    "name" : "emcareobservationemcareb6de12",
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
      "name" : "id-emcareb6de12",
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
      "name" : "code-emcareb6de12",
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
          "valueString" : "EmCare.B6.DE12"
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
      "name" : "145f1ff6",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "itm1",
        "condition" : "linkId = 'HeightOrLength'"
      }],
      "rule" : [{
        "name" : "c68f5944",
        "source" : [{
          "context" : "itm1",
          "element" : "item",
          "listMode" : "first",
          "variable" : "item",
          "condition" : "(linkId = 'EmCare.B6.DE12') and answer.exists()"
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
    }]
  },
  {
    "name" : "emcareobservationemcareb6de16",
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
      "name" : "id-emcareb6de16",
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
      "name" : "code-emcareb6de16",
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
          "valueString" : "EmCare.B6.DE16"
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
      "name" : "8e8f1cd4",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "itm1",
        "condition" : "linkId = 'HeightOrLength'"
      }],
      "rule" : [{
        "name" : "c4642432",
        "source" : [{
          "context" : "itm1",
          "element" : "item",
          "listMode" : "first",
          "variable" : "item",
          "condition" : "(linkId = 'EmCare.B6.DE16') and answer.exists()"
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
            "name" : "final-emcareb6de16",
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
            "name" : "notfound-emcareb6de16",
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
    "name" : "emcareobservationemcareb6de17",
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
      "name" : "id-emcareb6de17",
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
      "name" : "code-emcareb6de17",
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
          "valueString" : "EmCare.B6.DE17"
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
      "name" : "b27154a0",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "itm1",
        "condition" : "linkId = 'HeightOrLength'"
      }],
      "rule" : [{
        "name" : "66a9743a",
        "source" : [{
          "context" : "itm1",
          "element" : "item",
          "listMode" : "first",
          "variable" : "item",
          "condition" : "(linkId = 'EmCare.B6.DE17') and answer.exists()"
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
    }]
  },
  {
    "name" : "emcareobservationemcareb6de17a",
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
      "name" : "id-emcareb6de17a",
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
      "name" : "code-emcareb6de17a",
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
          "valueString" : "EmCare.B6.DE17a"
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
      "name" : "04002c97",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "itm1",
        "condition" : "linkId = 'HeightOrLength'"
      }],
      "rule" : [{
        "name" : "a25ca60a",
        "source" : [{
          "context" : "itm1",
          "element" : "item",
          "listMode" : "first",
          "variable" : "item",
          "condition" : "(linkId = 'EmCare.B6.DE17a') and answer.exists()"
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
  },
  {
    "name" : "emcareobservationemcareb6de18",
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
      "name" : "id-emcareb6de18",
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
      "name" : "code-emcareb6de18",
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
          "valueString" : "EmCare.B6.DE18"
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
      "name" : "72053a9a",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "itm1",
        "condition" : "linkId = 'HeightOrLength'"
      }],
      "rule" : [{
        "name" : "a14ebcf7",
        "source" : [{
          "context" : "itm1",
          "element" : "item",
          "listMode" : "first",
          "variable" : "item",
          "condition" : "(linkId = 'EmCare.B6.DE18') and answer.exists()"
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
}

```
