# Ccc.b10-14.symptoms.2m.p - WHO FHIR Implementation Guide (IG): Integrated Management of Childhood Illness (IMCI) in emergencies v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Ccc.b10-14.symptoms.2m.p**

## StructureMap: Ccc.b10-14.symptoms.2m.p 

| | |
| :--- | :--- |
| *Official URL*:https://smart.who.int/ccc/StructureMap/Ccc.b10-14.symptoms.2m.p | *Version*:0.1.0 |
| Active as of 2026-04-07 | *Computable Name*:Ccc.b10-14.symptoms.2m.p |

```
map "https://smart.who.int/ccc/StructureMap/Ccc.b10-14.symptoms.2m.p" = "Ccc.b10-14.symptoms.2m.p"


uses "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaireresponse" alias 'questionnaireResponse' as source
uses "http://hl7.org/fhir/StructureDefinition/Bundle" alias 'Bundle' as target
uses "https://smart.who.int/ccc/StructureDefinition/observation" alias 'Observation' as target
uses "https://smart.who.int/ccc/StructureDefinition/Cccobservation" alias 'Ccc Observation' as produced

group bundletrans(source src : questionnaireResponse, target bundle : Bundle) {
  src -> bundle.id = uuid() "id";
  src -> bundle.type = 'batch' "type";
  src.item first as item where (linkId = 'Ccc.B10S1.DE05') and answer.exists() then {
    src -> bundle.entry as entry then {
      src ->  entry.request as request,  request.method = 'POST',  uuid() as uuid,  request.url = append('/Observation/', uuid) "b50ac4c5";
      src -> entry.resource = create('Observation') as tgt then {
        src -> tgt then CccobservationCccb10s1de05(src, tgt) "d130047c";
      } "56a76d73";
    } "79141fc8";
  } "08fbbbd7";
  src.item first as item where (linkId = 'Ccc.B10S1.DE06') and answer.exists() then {
    src -> bundle.entry as entry then {
      src ->  entry.request as request,  request.method = 'POST',  uuid() as uuid,  request.url = append('/Observation/', uuid) "b50ac4c5";
      src -> entry.resource = create('Observation') as tgt then {
        src -> tgt then CccobservationCccb10s1de06(src, tgt) "008a3623";
      } "d784044d";
    } "805abc9e";
  } "446767cc";
  src.item first as item where (linkId = 'Ccc.B10S1.DE01') and answer.exists() then {
    src -> bundle.entry as entry then {
      src ->  entry.request as request,  request.method = 'POST',  uuid() as uuid,  request.url = append('/Observation/', uuid) "b50ac4c5";
      src -> entry.resource = create('Observation') as tgt then {
        src -> tgt then CccobservationCccb10s1de01(src, tgt) "04d8e898";
      } "b2d824f5";
    } "0d7d74bd";
  } "dd9bd984";
  src.item first as item where (linkId = 'Ccc.B10S1.DE02') and answer.exists() then {
    src -> bundle.entry as entry then {
      src ->  entry.request as request,  request.method = 'POST',  uuid() as uuid,  request.url = append('/Observation/', uuid) "b50ac4c5";
      src -> entry.resource = create('Observation') as tgt then {
        src -> tgt then CccobservationCccb10s1de02(src, tgt) "d90e5fb1";
      } "5cae2191";
    } "ab1692fb";
  } "119f6765";
  src.item first as item where (linkId = 'Ccc.B11S1.DE01') and answer.exists() then {
    src -> bundle.entry as entry then {
      src ->  entry.request as request,  request.method = 'POST',  uuid() as uuid,  request.url = append('/Observation/', uuid) "b50ac4c5";
      src -> entry.resource = create('Observation') as tgt then {
        src -> tgt then CccobservationCccb11s1de01(src, tgt) "43d4af59";
      } "bfd970ae";
    } "b8eb69b0";
  } "e1f73648";
  src.item first as item where (linkId = 'Ccc.B11S1.DE02') and answer.exists() then {
    src -> bundle.entry as entry then {
      src ->  entry.request as request,  request.method = 'POST',  uuid() as uuid,  request.url = append('/Observation/', uuid) "b50ac4c5";
      src -> entry.resource = create('Observation') as tgt then {
        src -> tgt then CccobservationCccb11s1de02(src, tgt) "39c1737c";
      } "891a881e";
    } "6e6d1885";
  } "a9e046d7";
  src.item first as item where (linkId = 'Ccc.B11S1.DE05') and answer.exists() then {
    src -> bundle.entry as entry then {
      src ->  entry.request as request,  request.method = 'POST',  uuid() as uuid,  request.url = append('/Observation/', uuid) "b50ac4c5";
      src -> entry.resource = create('Observation') as tgt then {
        src -> tgt then CccobservationCccb11s1de05(src, tgt) "1721269a";
      } "c1e233d8";
    } "c6a3d5c5";
  } "e17a9583";
  src.item first as item where (linkId = 'Ccc.B12S1.DE02') and answer.exists() then {
    src -> bundle.entry as entry then {
      src ->  entry.request as request,  request.method = 'POST',  uuid() as uuid,  request.url = append('/Observation/', uuid) "b50ac4c5";
      src -> entry.resource = create('Observation') as tgt then {
        src -> tgt then CccobservationCccb12s1de02(src, tgt) "df55b281";
      } "0a52cb1c";
    } "1593137e";
  } "744c4bf9";
  src.item first as item where (linkId = 'Ccc.B12S1.DE03') and answer.exists() then {
    src -> bundle.entry as entry then {
      src ->  entry.request as request,  request.method = 'POST',  uuid() as uuid,  request.url = append('/Observation/', uuid) "b50ac4c5";
      src -> entry.resource = create('Observation') as tgt then {
        src -> tgt then CccobservationCccb12s1de03(src, tgt) "fc6edbe7";
      } "5330779a";
    } "c692777e";
  } "8d04eb57";
  src.item first as item where (linkId = 'Ccc.B.G.DE06') and answer.exists() then {
    src -> bundle.entry as entry then {
      src ->  entry.request as request,  request.method = 'POST',  uuid() as uuid,  request.url = append('/Observation/', uuid) "b50ac4c5";
      src -> entry.resource = create('Observation') as tgt then {
        src -> tgt then CccobservationCccbgde06(src, tgt) "ca782de1";
      } "1b87f3fc";
    } "9ac4a378";
  } "f72a0439";
  src.item first as item where (linkId = 'Ccc.B12S1.DE06') and answer.exists() then {
    src -> bundle.entry as entry then {
      src ->  entry.request as request,  request.method = 'POST',  uuid() as uuid,  request.url = append('/Observation/', uuid) "b50ac4c5";
      src -> entry.resource = create('Observation') as tgt then {
        src -> tgt then CccobservationCccb12s1de06(src, tgt) "ce301cb0";
      } "c80f2620";
    } "27eb1328";
  } "e6da0780";
  src.item first as item where (linkId = 'Ccc.B13S1.DE01') and answer.exists() then {
    src -> bundle.entry as entry then {
      src ->  entry.request as request,  request.method = 'POST',  uuid() as uuid,  request.url = append('/Observation/', uuid) "b50ac4c5";
      src -> entry.resource = create('Observation') as tgt then {
        src -> tgt then CccobservationCccb13s1de01(src, tgt) "0a3c13d2";
      } "0ca270e1";
    } "6e77deb0";
  } "b8334cd6";
  src.item first as item where (linkId = 'Ccc.B13S1.DE02') and answer.exists() then {
    src -> bundle.entry as entry then {
      src ->  entry.request as request,  request.method = 'POST',  uuid() as uuid,  request.url = append('/Observation/', uuid) "b50ac4c5";
      src -> entry.resource = create('Observation') as tgt then {
        src -> tgt then CccobservationCccb13s1de02(src, tgt) "cd788051";
      } "2c880586";
    } "50966861";
  } "78170861";
  src.item first as item where (linkId = 'Ccc.B13S1.DE03') and answer.exists() then {
    src -> bundle.entry as entry then {
      src ->  entry.request as request,  request.method = 'POST',  uuid() as uuid,  request.url = append('/Observation/', uuid) "b50ac4c5";
      src -> entry.resource = create('Observation') as tgt then {
        src -> tgt then CccobservationCccb13s1de03(src, tgt) "323bf4ac";
      } "681ae227";
    } "b8f4f3f5";
  } "e5a07dfd";
  src.item first as item where (linkId = 'Ccc.B13S1.DE04') and answer.exists() then {
    src -> bundle.entry as entry then {
      src ->  entry.request as request,  request.method = 'POST',  uuid() as uuid,  request.url = append('/Observation/', uuid) "b50ac4c5";
      src -> entry.resource = create('Observation') as tgt then {
        src -> tgt then CccobservationCccb13s1de04(src, tgt) "28267d58";
      } "4ea18833";
    } "82346f75";
  } "b63e24e4";
  src.item first as item where (linkId = 'Ccc.B14S1.DE03') and answer.exists() then {
    src -> bundle.entry as entry then {
      src ->  entry.request as request,  request.method = 'POST',  uuid() as uuid,  request.url = append('/Observation/', uuid) "b50ac4c5";
      src -> entry.resource = create('Observation') as tgt then {
        src -> tgt then CccobservationCccb14s1de03(src, tgt) "ab7fc76a";
      } "22d8b79e";
    } "991ff5c6";
  } "102c5ae9";
  src.item first as item where (linkId = 'Ccc.B14S1.DE01') and answer.exists() then {
    src -> bundle.entry as entry then {
      src ->  entry.request as request,  request.method = 'POST',  uuid() as uuid,  request.url = append('/Observation/', uuid) "b50ac4c5";
      src -> entry.resource = create('Observation') as tgt then {
        src -> tgt then CccobservationCccb14s1de01(src, tgt) "6baaff63";
      } "f7186bc6";
    } "19883e88";
  } "90d2b417";
  src.item first as item where (linkId = 'Ccc.B14S1.DE02') and answer.exists() then {
    src -> bundle.entry as entry then {
      src ->  entry.request as request,  request.method = 'POST',  uuid() as uuid,  request.url = append('/Observation/', uuid) "b50ac4c5";
      src -> entry.resource = create('Observation') as tgt then {
        src -> tgt then CccobservationCccb14s1de02(src, tgt) "49187687";
      } "0063faef";
    } "7df08969";
  } "6f9d4b85";
}

group CccobservationCccb10s1de05(source src, target tgt) {
  src ->  tgt.identifier = create('Identifier') as CodeID,  CodeID.system = 'http://hl7.org/fhir/namingsystem-identifier-type',  CodeID.use = 'official',  CodeID.value = 'uuid',  CodeID.id = uuid() "id-Cccb10s1de05";
  src.encounter as encounter -> tgt.encounter = encounter "35bc6b82";
  src.subject as subject ->  tgt.subject = subject,  tgt.meta = create('Meta') as newMeta,  newMeta.profile = 'https://smart.who.int/ccc/StructureDefinition/Cccobservation',  tgt.code = create('CodeableConcept') as concept,  concept.coding = create('Coding') as coding,  coding.system = 'https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes',  coding.code = 'Ccc.B10S1.DE05' "code-Cccb10s1de05";
  src.item as itemtimestamp where linkId = 'timestamp' then {
    itemtimestamp.answer first as atimestamp then {
      atimestamp.value as val -> tgt.issued = val "5af77f2c";
    } "7f22f29f";
  } "aae7a11d";
  src.subject as subject -> tgt.subject = subject "patient";
  src.item first as item where (linkId = 'Ccc.B10S1.DE05') and answer.exists() then {
    item.answer first as a then {
      a where a.value = true ->  tgt.status = 'final',  tgt.value = true "final-Cccb10s1de05";
      a where a.value = false ->  tgt.status = 'cancelled',  tgt.value = false "notfound-Cccb10s1de05";
    } "bdab9370";
  } "f75f2b05";
}

group CccobservationCccb10s1de06(source src, target tgt) {
  src ->  tgt.identifier = create('Identifier') as CodeID,  CodeID.system = 'http://hl7.org/fhir/namingsystem-identifier-type',  CodeID.use = 'official',  CodeID.value = 'uuid',  CodeID.id = uuid() "id-Cccb10s1de06";
  src.encounter as encounter -> tgt.encounter = encounter "35bc6b82";
  src.subject as subject ->  tgt.subject = subject,  tgt.meta = create('Meta') as newMeta,  newMeta.profile = 'https://smart.who.int/ccc/StructureDefinition/Cccobservation',  tgt.code = create('CodeableConcept') as concept,  concept.coding = create('Coding') as coding,  coding.system = 'https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes',  coding.code = 'Ccc.B10S1.DE06' "code-Cccb10s1de06";
  src.item as itemtimestamp where linkId = 'timestamp' then {
    itemtimestamp.answer first as atimestamp then {
      atimestamp.value as val -> tgt.issued = val "5af77f2c";
    } "7f22f29f";
  } "aae7a11d";
  src.subject as subject -> tgt.subject = subject "patient";
  src.item first as item where (linkId = 'Ccc.B10S1.DE06') and answer.exists() then {
    item.answer first as a then {
      a.value as val then {
        val where val.code = 'none' -> tgt.swrapin_entry_createtatus = 'cancelled' "d0a13fda";
        val where val.code != 'none' ->  tgt.value = create('CodeableConcept') as cc,  cc.coding = val,  tgt.status = 'final' "a1050460";
      } "310f4b1f";
    } "6af9bfcc";
  } "156b25ae";
}

group CccobservationCccb10s1de01(source src, target tgt) {
  src ->  tgt.identifier = create('Identifier') as CodeID,  CodeID.system = 'http://hl7.org/fhir/namingsystem-identifier-type',  CodeID.use = 'official',  CodeID.value = 'uuid',  CodeID.id = uuid() "id-Cccb10s1de01";
  src.encounter as encounter -> tgt.encounter = encounter "35bc6b82";
  src.subject as subject ->  tgt.subject = subject,  tgt.meta = create('Meta') as newMeta,  newMeta.profile = 'https://smart.who.int/ccc/StructureDefinition/Cccobservation',  tgt.code = create('CodeableConcept') as concept,  concept.coding = create('Coding') as coding,  coding.system = 'https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes',  coding.code = 'Ccc.B10S1.DE01' "code-Cccb10s1de01";
  src.item as itemtimestamp where linkId = 'timestamp' then {
    itemtimestamp.answer first as atimestamp then {
      atimestamp.value as val -> tgt.issued = val "5af77f2c";
    } "7f22f29f";
  } "aae7a11d";
  src.subject as subject -> tgt.subject = subject "patient";
  src.item first as item where (linkId = 'Ccc.B10S1.DE01') and answer.exists() then {
    item.answer first as a then {
      a where a.value = true ->  tgt.status = 'final',  tgt.value = true "final-Cccb10s1de01";
      a where a.value = false ->  tgt.status = 'cancelled',  tgt.value = false "notfound-Cccb10s1de01";
    } "bdab9370";
  } "1b302dc5";
}

group CccobservationCccb10s1de02(source src, target tgt) {
  src ->  tgt.identifier = create('Identifier') as CodeID,  CodeID.system = 'http://hl7.org/fhir/namingsystem-identifier-type',  CodeID.use = 'official',  CodeID.value = 'uuid',  CodeID.id = uuid() "id-Cccb10s1de02";
  src.encounter as encounter -> tgt.encounter = encounter "35bc6b82";
  src.subject as subject ->  tgt.subject = subject,  tgt.meta = create('Meta') as newMeta,  newMeta.profile = 'https://smart.who.int/ccc/StructureDefinition/Cccobservation',  tgt.code = create('CodeableConcept') as concept,  concept.coding = create('Coding') as coding,  coding.system = 'https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes',  coding.code = 'Ccc.B10S1.DE02' "code-Cccb10s1de02";
  src.item as itemtimestamp where linkId = 'timestamp' then {
    itemtimestamp.answer first as atimestamp then {
      atimestamp.value as val -> tgt.issued = val "5af77f2c";
    } "7f22f29f";
  } "aae7a11d";
  src.subject as subject -> tgt.subject = subject "patient";
  src.item first as item where (linkId = 'Ccc.B10S1.DE02') and answer.exists() then {
    item.answer first as a then {
      a.value as val then {
        val where val.code = 'none' -> tgt.swrapin_entry_createtatus = 'cancelled' "d0a13fda";
        val where val.code != 'none' ->  tgt.value = create('CodeableConcept') as cc,  cc.coding = val,  tgt.status = 'final' "a1050460";
      } "310f4b1f";
    } "6af9bfcc";
  } "84c804e5";
}

group CccobservationCccb11s1de01(source src, target tgt) {
  src ->  tgt.identifier = create('Identifier') as CodeID,  CodeID.system = 'http://hl7.org/fhir/namingsystem-identifier-type',  CodeID.use = 'official',  CodeID.value = 'uuid',  CodeID.id = uuid() "id-Cccb11s1de01";
  src.encounter as encounter -> tgt.encounter = encounter "35bc6b82";
  src.subject as subject ->  tgt.subject = subject,  tgt.meta = create('Meta') as newMeta,  newMeta.profile = 'https://smart.who.int/ccc/StructureDefinition/Cccobservation',  tgt.code = create('CodeableConcept') as concept,  concept.coding = create('Coding') as coding,  coding.system = 'https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes',  coding.code = 'Ccc.B11S1.DE01' "code-Cccb11s1de01";
  src.item as itemtimestamp where linkId = 'timestamp' then {
    itemtimestamp.answer first as atimestamp then {
      atimestamp.value as val -> tgt.issued = val "5af77f2c";
    } "7f22f29f";
  } "aae7a11d";
  src.subject as subject -> tgt.subject = subject "patient";
  src.item first as item where (linkId = 'Ccc.B11S1.DE01') and answer.exists() then {
    item.answer first as a then {
      a where a.value = true ->  tgt.status = 'final',  tgt.value = true "final-Cccb11s1de01";
      a where a.value = false ->  tgt.status = 'cancelled',  tgt.value = false "notfound-Cccb11s1de01";
    } "bdab9370";
  } "7b8564b3";
}

group CccobservationCccb11s1de02(source src, target tgt) {
  src ->  tgt.identifier = create('Identifier') as CodeID,  CodeID.system = 'http://hl7.org/fhir/namingsystem-identifier-type',  CodeID.use = 'official',  CodeID.value = 'uuid',  CodeID.id = uuid() "id-Cccb11s1de02";
  src.encounter as encounter -> tgt.encounter = encounter "35bc6b82";
  src.subject as subject ->  tgt.subject = subject,  tgt.meta = create('Meta') as newMeta,  newMeta.profile = 'https://smart.who.int/ccc/StructureDefinition/Cccobservation',  tgt.code = create('CodeableConcept') as concept,  concept.coding = create('Coding') as coding,  coding.system = 'https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes',  coding.code = 'Ccc.B11S1.DE02' "code-Cccb11s1de02";
  src.item as itemtimestamp where linkId = 'timestamp' then {
    itemtimestamp.answer first as atimestamp then {
      atimestamp.value as val -> tgt.issued = val "5af77f2c";
    } "7f22f29f";
  } "aae7a11d";
  src.subject as subject -> tgt.subject = subject "patient";
  src.item first as item where (linkId = 'Ccc.B11S1.DE02') and answer.exists() then {
    item.answer first as a then {
      a.value as val then {
        val where val.code = 'none' -> tgt.swrapin_entry_createtatus = 'cancelled' "d0a13fda";
        val where val.code != 'none' ->  tgt.value = create('CodeableConcept') as cc,  cc.coding = val,  tgt.status = 'final' "a1050460";
      } "310f4b1f";
    } "6af9bfcc";
  } "78040096";
}

group CccobservationCccb11s1de05(source src, target tgt) {
  src ->  tgt.identifier = create('Identifier') as CodeID,  CodeID.system = 'http://hl7.org/fhir/namingsystem-identifier-type',  CodeID.use = 'official',  CodeID.value = 'uuid',  CodeID.id = uuid() "id-Cccb11s1de05";
  src.encounter as encounter -> tgt.encounter = encounter "35bc6b82";
  src.subject as subject ->  tgt.subject = subject,  tgt.meta = create('Meta') as newMeta,  newMeta.profile = 'https://smart.who.int/ccc/StructureDefinition/Cccobservation',  tgt.code = create('CodeableConcept') as concept,  concept.coding = create('Coding') as coding,  coding.system = 'https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes',  coding.code = 'Ccc.B11S1.DE05' "code-Cccb11s1de05";
  src.item as itemtimestamp where linkId = 'timestamp' then {
    itemtimestamp.answer first as atimestamp then {
      atimestamp.value as val -> tgt.issued = val "5af77f2c";
    } "7f22f29f";
  } "aae7a11d";
  src.subject as subject -> tgt.subject = subject "patient";
  src.item first as item where (linkId = 'Ccc.B11S1.DE05') and answer.exists() then {
    item.answer first as a then {
      a where a.value = true ->  tgt.status = 'final',  tgt.value = true "final-Cccb11s1de05";
      a where a.value = false ->  tgt.status = 'cancelled',  tgt.value = false "notfound-Cccb11s1de05";
    } "bdab9370";
  } "999566e5";
}

group CccobservationCccb12s1de02(source src, target tgt) {
  src ->  tgt.identifier = create('Identifier') as CodeID,  CodeID.system = 'http://hl7.org/fhir/namingsystem-identifier-type',  CodeID.use = 'official',  CodeID.value = 'uuid',  CodeID.id = uuid() "id-Cccb12s1de02";
  src.encounter as encounter -> tgt.encounter = encounter "35bc6b82";
  src.subject as subject ->  tgt.subject = subject,  tgt.meta = create('Meta') as newMeta,  newMeta.profile = 'https://smart.who.int/ccc/StructureDefinition/Cccobservation',  tgt.code = create('CodeableConcept') as concept,  concept.coding = create('Coding') as coding,  coding.system = 'https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes',  coding.code = 'Ccc.B12S1.DE02' "code-Cccb12s1de02";
  src.item as itemtimestamp where linkId = 'timestamp' then {
    itemtimestamp.answer first as atimestamp then {
      atimestamp.value as val -> tgt.issued = val "5af77f2c";
    } "7f22f29f";
  } "aae7a11d";
  src.subject as subject -> tgt.subject = subject "patient";
  src.item first as item where (linkId = 'Ccc.B12S1.DE02') and answer.exists() then {
    item.answer first as a then {
      a where a.value = true ->  tgt.status = 'final',  tgt.value = true "final-Cccb12s1de02";
      a where a.value = false ->  tgt.status = 'cancelled',  tgt.value = false "notfound-Cccb12s1de02";
    } "bdab9370";
  } "2980a862";
}

group CccobservationCccb12s1de03(source src, target tgt) {
  src ->  tgt.identifier = create('Identifier') as CodeID,  CodeID.system = 'http://hl7.org/fhir/namingsystem-identifier-type',  CodeID.use = 'official',  CodeID.value = 'uuid',  CodeID.id = uuid() "id-Cccb12s1de03";
  src.encounter as encounter -> tgt.encounter = encounter "35bc6b82";
  src.subject as subject ->  tgt.subject = subject,  tgt.meta = create('Meta') as newMeta,  newMeta.profile = 'https://smart.who.int/ccc/StructureDefinition/Cccobservation',  tgt.code = create('CodeableConcept') as concept,  concept.coding = create('Coding') as coding,  coding.system = 'https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes',  coding.code = 'Ccc.B12S1.DE03' "code-Cccb12s1de03";
  src.item as itemtimestamp where linkId = 'timestamp' then {
    itemtimestamp.answer first as atimestamp then {
      atimestamp.value as val -> tgt.issued = val "5af77f2c";
    } "7f22f29f";
  } "aae7a11d";
  src.subject as subject -> tgt.subject = subject "patient";
  src.item first as item where (linkId = 'Ccc.B12S1.DE03') and answer.exists() then {
    item.answer first as a then {
      a.value as val then {
        val where val.code = 'none' -> tgt.swrapin_entry_createtatus = 'cancelled' "d0a13fda";
        val where val.code != 'none' ->  tgt.value = create('CodeableConcept') as cc,  cc.coding = val,  tgt.status = 'final' "a1050460";
      } "310f4b1f";
    } "6af9bfcc";
  } "0684c220";
}

group CccobservationCccbgde06(source src, target tgt) {
  src ->  tgt.identifier = create('Identifier') as CodeID,  CodeID.system = 'http://hl7.org/fhir/namingsystem-identifier-type',  CodeID.use = 'official',  CodeID.value = 'uuid',  CodeID.id = uuid() "id-Cccbgde06";
  src.encounter as encounter -> tgt.encounter = encounter "35bc6b82";
  src.subject as subject ->  tgt.subject = subject,  tgt.meta = create('Meta') as newMeta,  newMeta.profile = 'https://smart.who.int/ccc/StructureDefinition/Cccobservation',  tgt.code = create('CodeableConcept') as concept,  concept.coding = create('Coding') as coding,  coding.system = 'https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes',  coding.code = 'Ccc.B.G.DE06' "code-Cccbgde06";
  src.item as itemtimestamp where linkId = 'timestamp' then {
    itemtimestamp.answer first as atimestamp then {
      atimestamp.value as val -> tgt.issued = val "5af77f2c";
    } "7f22f29f";
  } "aae7a11d";
  src.subject as subject -> tgt.subject = subject "patient";
  src.item first as item where (linkId = 'Ccc.B.G.DE06') and answer.exists() then {
    item.answer first as a then {
      a where a.value = true ->  tgt.status = 'final',  tgt.value = true "final-Cccbgde06";
      a where a.value = false ->  tgt.status = 'cancelled',  tgt.value = false "notfound-Cccbgde06";
    } "bdab9370";
  } "d670d189";
}

group CccobservationCccb12s1de06(source src, target tgt) {
  src ->  tgt.identifier = create('Identifier') as CodeID,  CodeID.system = 'http://hl7.org/fhir/namingsystem-identifier-type',  CodeID.use = 'official',  CodeID.value = 'uuid',  CodeID.id = uuid() "id-Cccb12s1de06";
  src.encounter as encounter -> tgt.encounter = encounter "35bc6b82";
  src.subject as subject ->  tgt.subject = subject,  tgt.meta = create('Meta') as newMeta,  newMeta.profile = 'https://smart.who.int/ccc/StructureDefinition/Cccobservation',  tgt.code = create('CodeableConcept') as concept,  concept.coding = create('Coding') as coding,  coding.system = 'https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes',  coding.code = 'Ccc.B12S1.DE06' "code-Cccb12s1de06";
  src.item as itemtimestamp where linkId = 'timestamp' then {
    itemtimestamp.answer first as atimestamp then {
      atimestamp.value as val -> tgt.issued = val "5af77f2c";
    } "7f22f29f";
  } "aae7a11d";
  src.subject as subject -> tgt.subject = subject "patient";
  src.item first as item where (linkId = 'Ccc.B12S1.DE06') and answer.exists() then {
    item.answer first as a then {
      a where a.value = true ->  tgt.status = 'final',  tgt.value = true "final-Cccb12s1de06";
      a where a.value = false ->  tgt.status = 'cancelled',  tgt.value = false "notfound-Cccb12s1de06";
    } "bdab9370";
  } "fcb16134";
}

group CccobservationCccb13s1de01(source src, target tgt) {
  src ->  tgt.identifier = create('Identifier') as CodeID,  CodeID.system = 'http://hl7.org/fhir/namingsystem-identifier-type',  CodeID.use = 'official',  CodeID.value = 'uuid',  CodeID.id = uuid() "id-Cccb13s1de01";
  src.encounter as encounter -> tgt.encounter = encounter "35bc6b82";
  src.subject as subject ->  tgt.subject = subject,  tgt.meta = create('Meta') as newMeta,  newMeta.profile = 'https://smart.who.int/ccc/StructureDefinition/Cccobservation',  tgt.code = create('CodeableConcept') as concept,  concept.coding = create('Coding') as coding,  coding.system = 'https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes',  coding.code = 'Ccc.B13S1.DE01' "code-Cccb13s1de01";
  src.item as itemtimestamp where linkId = 'timestamp' then {
    itemtimestamp.answer first as atimestamp then {
      atimestamp.value as val -> tgt.issued = val "5af77f2c";
    } "7f22f29f";
  } "aae7a11d";
  src.subject as subject -> tgt.subject = subject "patient";
  src.item first as item where (linkId = 'Ccc.B13S1.DE01') and answer.exists() then {
    item.answer first as a then {
      a where a.value = true ->  tgt.status = 'final',  tgt.value = true "final-Cccb13s1de01";
      a where a.value = false ->  tgt.status = 'cancelled',  tgt.value = false "notfound-Cccb13s1de01";
    } "bdab9370";
  } "61c82b53";
}

group CccobservationCccb13s1de02(source src, target tgt) {
  src ->  tgt.identifier = create('Identifier') as CodeID,  CodeID.system = 'http://hl7.org/fhir/namingsystem-identifier-type',  CodeID.use = 'official',  CodeID.value = 'uuid',  CodeID.id = uuid() "id-Cccb13s1de02";
  src.encounter as encounter -> tgt.encounter = encounter "35bc6b82";
  src.subject as subject ->  tgt.subject = subject,  tgt.meta = create('Meta') as newMeta,  newMeta.profile = 'https://smart.who.int/ccc/StructureDefinition/Cccobservation',  tgt.code = create('CodeableConcept') as concept,  concept.coding = create('Coding') as coding,  coding.system = 'https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes',  coding.code = 'Ccc.B13S1.DE02' "code-Cccb13s1de02";
  src.item as itemtimestamp where linkId = 'timestamp' then {
    itemtimestamp.answer first as atimestamp then {
      atimestamp.value as val -> tgt.issued = val "5af77f2c";
    } "7f22f29f";
  } "aae7a11d";
  src.subject as subject -> tgt.subject = subject "patient";
  src.item first as item where (linkId = 'Ccc.B13S1.DE02') and answer.exists() then {
    item.answer first as a then {
      a where a.value = true ->  tgt.status = 'final',  tgt.value = true "final-Cccb13s1de02";
      a where a.value = false ->  tgt.status = 'cancelled',  tgt.value = false "notfound-Cccb13s1de02";
    } "bdab9370";
  } "f246fc63";
}

group CccobservationCccb13s1de03(source src, target tgt) {
  src ->  tgt.identifier = create('Identifier') as CodeID,  CodeID.system = 'http://hl7.org/fhir/namingsystem-identifier-type',  CodeID.use = 'official',  CodeID.value = 'uuid',  CodeID.id = uuid() "id-Cccb13s1de03";
  src.encounter as encounter -> tgt.encounter = encounter "35bc6b82";
  src.subject as subject ->  tgt.subject = subject,  tgt.meta = create('Meta') as newMeta,  newMeta.profile = 'https://smart.who.int/ccc/StructureDefinition/Cccobservation',  tgt.code = create('CodeableConcept') as concept,  concept.coding = create('Coding') as coding,  coding.system = 'https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes',  coding.code = 'Ccc.B13S1.DE03' "code-Cccb13s1de03";
  src.item as itemtimestamp where linkId = 'timestamp' then {
    itemtimestamp.answer first as atimestamp then {
      atimestamp.value as val -> tgt.issued = val "5af77f2c";
    } "7f22f29f";
  } "aae7a11d";
  src.subject as subject -> tgt.subject = subject "patient";
  src.item first as item where (linkId = 'Ccc.B13S1.DE03') and answer.exists() then {
    item.answer first as a then {
      a where a.value = true ->  tgt.status = 'final',  tgt.value = true "final-Cccb13s1de03";
      a where a.value = false ->  tgt.status = 'cancelled',  tgt.value = false "notfound-Cccb13s1de03";
    } "bdab9370";
  } "1e1d8c32";
}

group CccobservationCccb13s1de04(source src, target tgt) {
  src ->  tgt.identifier = create('Identifier') as CodeID,  CodeID.system = 'http://hl7.org/fhir/namingsystem-identifier-type',  CodeID.use = 'official',  CodeID.value = 'uuid',  CodeID.id = uuid() "id-Cccb13s1de04";
  src.encounter as encounter -> tgt.encounter = encounter "35bc6b82";
  src.subject as subject ->  tgt.subject = subject,  tgt.meta = create('Meta') as newMeta,  newMeta.profile = 'https://smart.who.int/ccc/StructureDefinition/Cccobservation',  tgt.code = create('CodeableConcept') as concept,  concept.coding = create('Coding') as coding,  coding.system = 'https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes',  coding.code = 'Ccc.B13S1.DE04' "code-Cccb13s1de04";
  src.item as itemtimestamp where linkId = 'timestamp' then {
    itemtimestamp.answer first as atimestamp then {
      atimestamp.value as val -> tgt.issued = val "5af77f2c";
    } "7f22f29f";
  } "aae7a11d";
  src.subject as subject -> tgt.subject = subject "patient";
  src.item first as item where (linkId = 'Ccc.B13S1.DE04') and answer.exists() then {
    item.answer first as a then {
      a.value as val then {
        val where val.code = 'none' -> tgt.swrapin_entry_createtatus = 'cancelled' "d0a13fda";
        val where val.code != 'none' ->  tgt.value = create('CodeableConcept') as cc,  cc.coding = val,  tgt.status = 'final' "a1050460";
      } "310f4b1f";
    } "6af9bfcc";
  } "9fc99c98";
}

group CccobservationCccb14s1de03(source src, target tgt) {
  src ->  tgt.identifier = create('Identifier') as CodeID,  CodeID.system = 'http://hl7.org/fhir/namingsystem-identifier-type',  CodeID.use = 'official',  CodeID.value = 'uuid',  CodeID.id = uuid() "id-Cccb14s1de03";
  src.encounter as encounter -> tgt.encounter = encounter "35bc6b82";
  src.subject as subject ->  tgt.subject = subject,  tgt.meta = create('Meta') as newMeta,  newMeta.profile = 'https://smart.who.int/ccc/StructureDefinition/Cccobservation',  tgt.code = create('CodeableConcept') as concept,  concept.coding = create('Coding') as coding,  coding.system = 'https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes',  coding.code = 'Ccc.B14S1.DE03' "code-Cccb14s1de03";
  src.item as itemtimestamp where linkId = 'timestamp' then {
    itemtimestamp.answer first as atimestamp then {
      atimestamp.value as val -> tgt.issued = val "5af77f2c";
    } "7f22f29f";
  } "aae7a11d";
  src.subject as subject -> tgt.subject = subject "patient";
  src.item first as item where (linkId = 'Ccc.B14S1.DE03') and answer.exists() then {
    item.answer first as a then {
      a where a.value = true ->  tgt.status = 'final',  tgt.value = true "final-Cccb14s1de03";
      a where a.value = false ->  tgt.status = 'cancelled',  tgt.value = false "notfound-Cccb14s1de03";
    } "bdab9370";
  } "bc3a888b";
}

group CccobservationCccb14s1de01(source src, target tgt) {
  src ->  tgt.identifier = create('Identifier') as CodeID,  CodeID.system = 'http://hl7.org/fhir/namingsystem-identifier-type',  CodeID.use = 'official',  CodeID.value = 'uuid',  CodeID.id = uuid() "id-Cccb14s1de01";
  src.encounter as encounter -> tgt.encounter = encounter "35bc6b82";
  src.subject as subject ->  tgt.subject = subject,  tgt.meta = create('Meta') as newMeta,  newMeta.profile = 'https://smart.who.int/ccc/StructureDefinition/Cccobservation',  tgt.code = create('CodeableConcept') as concept,  concept.coding = create('Coding') as coding,  coding.system = 'https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes',  coding.code = 'Ccc.B14S1.DE01' "code-Cccb14s1de01";
  src.item as itemtimestamp where linkId = 'timestamp' then {
    itemtimestamp.answer first as atimestamp then {
      atimestamp.value as val -> tgt.issued = val "5af77f2c";
    } "7f22f29f";
  } "aae7a11d";
  src.subject as subject -> tgt.subject = subject "patient";
  src.item first as item where (linkId = 'Ccc.B14S1.DE01') and answer.exists() then {
    item.answer first as a then {
      a where a.value = true ->  tgt.status = 'final',  tgt.value = true "final-Cccb14s1de01";
      a where a.value = false ->  tgt.status = 'cancelled',  tgt.value = false "notfound-Cccb14s1de01";
    } "bdab9370";
  } "fb67ce2c";
}

group CccobservationCccb14s1de02(source src, target tgt) {
  src ->  tgt.identifier = create('Identifier') as CodeID,  CodeID.system = 'http://hl7.org/fhir/namingsystem-identifier-type',  CodeID.use = 'official',  CodeID.value = 'uuid',  CodeID.id = uuid() "id-Cccb14s1de02";
  src.encounter as encounter -> tgt.encounter = encounter "35bc6b82";
  src.subject as subject ->  tgt.subject = subject,  tgt.meta = create('Meta') as newMeta,  newMeta.profile = 'https://smart.who.int/ccc/StructureDefinition/Cccobservation',  tgt.code = create('CodeableConcept') as concept,  concept.coding = create('Coding') as coding,  coding.system = 'https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes',  coding.code = 'Ccc.B14S1.DE02' "code-Cccb14s1de02";
  src.item as itemtimestamp where linkId = 'timestamp' then {
    itemtimestamp.answer first as atimestamp then {
      atimestamp.value as val -> tgt.issued = val "5af77f2c";
    } "7f22f29f";
  } "aae7a11d";
  src.subject as subject -> tgt.subject = subject "patient";
  src.item first as item where (linkId = 'Ccc.B14S1.DE02') and answer.exists() then {
    item.answer first as a then {
      a where a.value = true ->  tgt.status = 'final',  tgt.value = true "final-Cccb14s1de02";
      a where a.value = false ->  tgt.status = 'cancelled',  tgt.value = false "notfound-Cccb14s1de02";
    } "bdab9370";
  } "9802d7f8";
}


```



## Resource Content

```json
{
  "resourceType" : "StructureMap",
  "id" : "Ccc.b10-14.symptoms.2m.p",
  "url" : "https://smart.who.int/ccc/StructureMap/Ccc.b10-14.symptoms.2m.p",
  "version" : "0.1.0",
  "name" : "Ccc.b10-14.symptoms.2m.p",
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
      "name" : "08fbbbd7",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "item",
        "condition" : "(linkId = 'Ccc.B10S1.DE05') and answer.exists()"
      }],
      "rule" : [{
        "name" : "79141fc8",
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
          "name" : "56a76d73",
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
            "name" : "d130047c",
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
              "name" : "CccobservationCccb10s1de05",
              "variable" : ["src", "tgt"]
            }]
          }]
        }]
      }]
    },
    {
      "name" : "446767cc",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "item",
        "condition" : "(linkId = 'Ccc.B10S1.DE06') and answer.exists()"
      }],
      "rule" : [{
        "name" : "805abc9e",
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
          "name" : "d784044d",
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
            "name" : "008a3623",
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
              "name" : "CccobservationCccb10s1de06",
              "variable" : ["src", "tgt"]
            }]
          }]
        }]
      }]
    },
    {
      "name" : "dd9bd984",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "item",
        "condition" : "(linkId = 'Ccc.B10S1.DE01') and answer.exists()"
      }],
      "rule" : [{
        "name" : "0d7d74bd",
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
          "name" : "b2d824f5",
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
            "name" : "04d8e898",
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
              "name" : "CccobservationCccb10s1de01",
              "variable" : ["src", "tgt"]
            }]
          }]
        }]
      }]
    },
    {
      "name" : "119f6765",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "item",
        "condition" : "(linkId = 'Ccc.B10S1.DE02') and answer.exists()"
      }],
      "rule" : [{
        "name" : "ab1692fb",
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
          "name" : "5cae2191",
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
            "name" : "d90e5fb1",
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
              "name" : "CccobservationCccb10s1de02",
              "variable" : ["src", "tgt"]
            }]
          }]
        }]
      }]
    },
    {
      "name" : "e1f73648",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "item",
        "condition" : "(linkId = 'Ccc.B11S1.DE01') and answer.exists()"
      }],
      "rule" : [{
        "name" : "b8eb69b0",
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
          "name" : "bfd970ae",
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
            "name" : "43d4af59",
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
              "name" : "CccobservationCccb11s1de01",
              "variable" : ["src", "tgt"]
            }]
          }]
        }]
      }]
    },
    {
      "name" : "a9e046d7",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "item",
        "condition" : "(linkId = 'Ccc.B11S1.DE02') and answer.exists()"
      }],
      "rule" : [{
        "name" : "6e6d1885",
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
          "name" : "891a881e",
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
            "name" : "39c1737c",
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
              "name" : "CccobservationCccb11s1de02",
              "variable" : ["src", "tgt"]
            }]
          }]
        }]
      }]
    },
    {
      "name" : "e17a9583",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "item",
        "condition" : "(linkId = 'Ccc.B11S1.DE05') and answer.exists()"
      }],
      "rule" : [{
        "name" : "c6a3d5c5",
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
          "name" : "c1e233d8",
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
            "name" : "1721269a",
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
              "name" : "CccobservationCccb11s1de05",
              "variable" : ["src", "tgt"]
            }]
          }]
        }]
      }]
    },
    {
      "name" : "744c4bf9",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "item",
        "condition" : "(linkId = 'Ccc.B12S1.DE02') and answer.exists()"
      }],
      "rule" : [{
        "name" : "1593137e",
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
          "name" : "0a52cb1c",
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
            "name" : "df55b281",
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
              "name" : "CccobservationCccb12s1de02",
              "variable" : ["src", "tgt"]
            }]
          }]
        }]
      }]
    },
    {
      "name" : "8d04eb57",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "item",
        "condition" : "(linkId = 'Ccc.B12S1.DE03') and answer.exists()"
      }],
      "rule" : [{
        "name" : "c692777e",
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
          "name" : "5330779a",
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
            "name" : "fc6edbe7",
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
              "name" : "CccobservationCccb12s1de03",
              "variable" : ["src", "tgt"]
            }]
          }]
        }]
      }]
    },
    {
      "name" : "f72a0439",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "item",
        "condition" : "(linkId = 'Ccc.B.G.DE06') and answer.exists()"
      }],
      "rule" : [{
        "name" : "9ac4a378",
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
          "name" : "1b87f3fc",
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
            "name" : "ca782de1",
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
              "name" : "CccobservationCccbgde06",
              "variable" : ["src", "tgt"]
            }]
          }]
        }]
      }]
    },
    {
      "name" : "e6da0780",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "item",
        "condition" : "(linkId = 'Ccc.B12S1.DE06') and answer.exists()"
      }],
      "rule" : [{
        "name" : "27eb1328",
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
          "name" : "c80f2620",
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
            "name" : "ce301cb0",
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
              "name" : "CccobservationCccb12s1de06",
              "variable" : ["src", "tgt"]
            }]
          }]
        }]
      }]
    },
    {
      "name" : "b8334cd6",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "item",
        "condition" : "(linkId = 'Ccc.B13S1.DE01') and answer.exists()"
      }],
      "rule" : [{
        "name" : "6e77deb0",
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
          "name" : "0ca270e1",
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
            "name" : "0a3c13d2",
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
              "name" : "CccobservationCccb13s1de01",
              "variable" : ["src", "tgt"]
            }]
          }]
        }]
      }]
    },
    {
      "name" : "78170861",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "item",
        "condition" : "(linkId = 'Ccc.B13S1.DE02') and answer.exists()"
      }],
      "rule" : [{
        "name" : "50966861",
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
          "name" : "2c880586",
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
            "name" : "cd788051",
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
              "name" : "CccobservationCccb13s1de02",
              "variable" : ["src", "tgt"]
            }]
          }]
        }]
      }]
    },
    {
      "name" : "e5a07dfd",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "item",
        "condition" : "(linkId = 'Ccc.B13S1.DE03') and answer.exists()"
      }],
      "rule" : [{
        "name" : "b8f4f3f5",
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
          "name" : "681ae227",
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
            "name" : "323bf4ac",
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
              "name" : "CccobservationCccb13s1de03",
              "variable" : ["src", "tgt"]
            }]
          }]
        }]
      }]
    },
    {
      "name" : "b63e24e4",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "item",
        "condition" : "(linkId = 'Ccc.B13S1.DE04') and answer.exists()"
      }],
      "rule" : [{
        "name" : "82346f75",
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
          "name" : "4ea18833",
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
            "name" : "28267d58",
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
              "name" : "CccobservationCccb13s1de04",
              "variable" : ["src", "tgt"]
            }]
          }]
        }]
      }]
    },
    {
      "name" : "102c5ae9",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "item",
        "condition" : "(linkId = 'Ccc.B14S1.DE03') and answer.exists()"
      }],
      "rule" : [{
        "name" : "991ff5c6",
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
          "name" : "22d8b79e",
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
            "name" : "ab7fc76a",
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
              "name" : "CccobservationCccb14s1de03",
              "variable" : ["src", "tgt"]
            }]
          }]
        }]
      }]
    },
    {
      "name" : "90d2b417",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "item",
        "condition" : "(linkId = 'Ccc.B14S1.DE01') and answer.exists()"
      }],
      "rule" : [{
        "name" : "19883e88",
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
          "name" : "f7186bc6",
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
            "name" : "6baaff63",
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
              "name" : "CccobservationCccb14s1de01",
              "variable" : ["src", "tgt"]
            }]
          }]
        }]
      }]
    },
    {
      "name" : "6f9d4b85",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "item",
        "condition" : "(linkId = 'Ccc.B14S1.DE02') and answer.exists()"
      }],
      "rule" : [{
        "name" : "7df08969",
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
          "name" : "0063faef",
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
            "name" : "49187687",
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
              "name" : "CccobservationCccb14s1de02",
              "variable" : ["src", "tgt"]
            }]
          }]
        }]
      }]
    }]
  },
  {
    "name" : "CccobservationCccb10s1de05",
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
      "name" : "id-Cccb10s1de05",
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
      "name" : "code-Cccb10s1de05",
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
          "valueString" : "Ccc.B10S1.DE05"
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
      "name" : "f75f2b05",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "item",
        "condition" : "(linkId = 'Ccc.B10S1.DE05') and answer.exists()"
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
          "name" : "final-Cccb10s1de05",
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
          "name" : "notfound-Cccb10s1de05",
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
    "name" : "CccobservationCccb10s1de06",
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
      "name" : "id-Cccb10s1de06",
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
      "name" : "code-Cccb10s1de06",
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
          "valueString" : "Ccc.B10S1.DE06"
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
      "name" : "156b25ae",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "item",
        "condition" : "(linkId = 'Ccc.B10S1.DE06') and answer.exists()"
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
    "name" : "CccobservationCccb10s1de01",
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
      "name" : "id-Cccb10s1de01",
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
      "name" : "code-Cccb10s1de01",
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
          "valueString" : "Ccc.B10S1.DE01"
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
      "name" : "1b302dc5",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "item",
        "condition" : "(linkId = 'Ccc.B10S1.DE01') and answer.exists()"
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
          "name" : "final-Cccb10s1de01",
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
          "name" : "notfound-Cccb10s1de01",
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
    "name" : "CccobservationCccb10s1de02",
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
      "name" : "id-Cccb10s1de02",
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
      "name" : "code-Cccb10s1de02",
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
          "valueString" : "Ccc.B10S1.DE02"
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
      "name" : "84c804e5",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "item",
        "condition" : "(linkId = 'Ccc.B10S1.DE02') and answer.exists()"
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
    "name" : "CccobservationCccb11s1de01",
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
      "name" : "id-Cccb11s1de01",
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
      "name" : "code-Cccb11s1de01",
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
          "valueString" : "Ccc.B11S1.DE01"
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
      "name" : "7b8564b3",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "item",
        "condition" : "(linkId = 'Ccc.B11S1.DE01') and answer.exists()"
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
          "name" : "final-Cccb11s1de01",
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
          "name" : "notfound-Cccb11s1de01",
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
    "name" : "CccobservationCccb11s1de02",
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
      "name" : "id-Cccb11s1de02",
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
      "name" : "code-Cccb11s1de02",
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
          "valueString" : "Ccc.B11S1.DE02"
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
      "name" : "78040096",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "item",
        "condition" : "(linkId = 'Ccc.B11S1.DE02') and answer.exists()"
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
    "name" : "CccobservationCccb11s1de05",
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
      "name" : "id-Cccb11s1de05",
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
      "name" : "code-Cccb11s1de05",
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
          "valueString" : "Ccc.B11S1.DE05"
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
      "name" : "999566e5",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "item",
        "condition" : "(linkId = 'Ccc.B11S1.DE05') and answer.exists()"
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
          "name" : "final-Cccb11s1de05",
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
          "name" : "notfound-Cccb11s1de05",
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
    "name" : "CccobservationCccb12s1de02",
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
      "name" : "id-Cccb12s1de02",
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
      "name" : "code-Cccb12s1de02",
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
          "valueString" : "Ccc.B12S1.DE02"
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
      "name" : "2980a862",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "item",
        "condition" : "(linkId = 'Ccc.B12S1.DE02') and answer.exists()"
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
          "name" : "final-Cccb12s1de02",
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
          "name" : "notfound-Cccb12s1de02",
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
    "name" : "CccobservationCccb12s1de03",
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
      "name" : "id-Cccb12s1de03",
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
      "name" : "code-Cccb12s1de03",
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
          "valueString" : "Ccc.B12S1.DE03"
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
      "name" : "0684c220",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "item",
        "condition" : "(linkId = 'Ccc.B12S1.DE03') and answer.exists()"
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
    "name" : "CccobservationCccbgde06",
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
      "name" : "id-Cccbgde06",
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
      "name" : "code-Cccbgde06",
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
          "valueString" : "Ccc.B.G.DE06"
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
      "name" : "d670d189",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "item",
        "condition" : "(linkId = 'Ccc.B.G.DE06') and answer.exists()"
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
          "name" : "final-Cccbgde06",
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
          "name" : "notfound-Cccbgde06",
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
    "name" : "CccobservationCccb12s1de06",
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
      "name" : "id-Cccb12s1de06",
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
      "name" : "code-Cccb12s1de06",
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
          "valueString" : "Ccc.B12S1.DE06"
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
      "name" : "fcb16134",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "item",
        "condition" : "(linkId = 'Ccc.B12S1.DE06') and answer.exists()"
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
          "name" : "final-Cccb12s1de06",
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
          "name" : "notfound-Cccb12s1de06",
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
    "name" : "CccobservationCccb13s1de01",
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
      "name" : "id-Cccb13s1de01",
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
      "name" : "code-Cccb13s1de01",
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
          "valueString" : "Ccc.B13S1.DE01"
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
      "name" : "61c82b53",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "item",
        "condition" : "(linkId = 'Ccc.B13S1.DE01') and answer.exists()"
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
          "name" : "final-Cccb13s1de01",
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
          "name" : "notfound-Cccb13s1de01",
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
    "name" : "CccobservationCccb13s1de02",
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
      "name" : "id-Cccb13s1de02",
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
      "name" : "code-Cccb13s1de02",
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
          "valueString" : "Ccc.B13S1.DE02"
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
      "name" : "f246fc63",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "item",
        "condition" : "(linkId = 'Ccc.B13S1.DE02') and answer.exists()"
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
          "name" : "final-Cccb13s1de02",
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
          "name" : "notfound-Cccb13s1de02",
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
    "name" : "CccobservationCccb13s1de03",
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
      "name" : "id-Cccb13s1de03",
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
      "name" : "code-Cccb13s1de03",
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
          "valueString" : "Ccc.B13S1.DE03"
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
      "name" : "1e1d8c32",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "item",
        "condition" : "(linkId = 'Ccc.B13S1.DE03') and answer.exists()"
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
          "name" : "final-Cccb13s1de03",
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
          "name" : "notfound-Cccb13s1de03",
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
    "name" : "CccobservationCccb13s1de04",
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
      "name" : "id-Cccb13s1de04",
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
      "name" : "code-Cccb13s1de04",
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
          "valueString" : "Ccc.B13S1.DE04"
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
      "name" : "9fc99c98",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "item",
        "condition" : "(linkId = 'Ccc.B13S1.DE04') and answer.exists()"
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
    "name" : "CccobservationCccb14s1de03",
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
      "name" : "id-Cccb14s1de03",
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
      "name" : "code-Cccb14s1de03",
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
          "valueString" : "Ccc.B14S1.DE03"
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
      "name" : "bc3a888b",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "item",
        "condition" : "(linkId = 'Ccc.B14S1.DE03') and answer.exists()"
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
          "name" : "final-Cccb14s1de03",
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
          "name" : "notfound-Cccb14s1de03",
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
    "name" : "CccobservationCccb14s1de01",
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
      "name" : "id-Cccb14s1de01",
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
      "name" : "code-Cccb14s1de01",
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
          "valueString" : "Ccc.B14S1.DE01"
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
      "name" : "fb67ce2c",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "item",
        "condition" : "(linkId = 'Ccc.B14S1.DE01') and answer.exists()"
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
          "name" : "final-Cccb14s1de01",
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
          "name" : "notfound-Cccb14s1de01",
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
    "name" : "CccobservationCccb14s1de02",
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
      "name" : "id-Cccb14s1de02",
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
      "name" : "code-Cccb14s1de02",
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
          "valueString" : "Ccc.B14S1.DE02"
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
      "name" : "9802d7f8",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "item",
        "condition" : "(linkId = 'Ccc.B14S1.DE02') and answer.exists()"
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
          "name" : "final-Cccb14s1de02",
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
          "name" : "notfound-Cccb14s1de02",
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
}

```
