# Ccc.b23.classification.m - WHO FHIR Implementation Guide (IG): Integrated Management of Childhood Illness (IMCI) in emergencies v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Ccc.b23.classification.m**

## StructureMap: Ccc.b23.classification.m 

| | |
| :--- | :--- |
| *Official URL*:https://smart.who.int/ccc/StructureMap/Ccc.b23.classification.m | *Version*:0.1.0 |
| Active as of 2026-04-07 | *Computable Name*:Ccc.b23.classification.m |

```
map "https://smart.who.int/ccc/StructureMap/Ccc.b23.classification.m" = "Ccc.b23.classification.m"


uses "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaireresponse" alias 'questionnaireResponse' as source
uses "http://hl7.org/fhir/StructureDefinition/Bundle" alias 'Bundle' as target
uses "https://smart.who.int/ccc/StructureDefinition/condition" alias 'Condition' as target
uses "https://smart.who.int/ccc/StructureDefinition/Ccccondition" alias 'Ccc Condition' as produced

group bundletrans(source src : questionnaireResponse, target bundle : Bundle) {
  src -> bundle.id = uuid() "id";
  src -> bundle.type = 'batch' "type";
  src.item first as item where (linkId = 'Ccc.B23.DE83') and answer.exists() then {
    src -> bundle.entry as entry then {
      src ->  entry.request as request,  request.method = 'POST',  uuid() as uuid,  request.url = append('/Condition/', uuid) "9805d737";
      src -> entry.resource = create('Condition') as tgt then {
        src.item first as item where (linkId = 'Ccc.B23.DE83') and answer.exists() then {
          item then CccconditionCccb23de83(src, item, tgt) "178343d7";
        } "a8097d41";
      } "ad9073a1";
    } "83bc4493";
  } "09b682e0";
  src.item first as item where (linkId = 'Ccc.B23.DE06') and answer.exists() then {
    src -> bundle.entry as entry then {
      src ->  entry.request as request,  request.method = 'POST',  uuid() as uuid,  request.url = append('/Condition/', uuid) "9805d737";
      src -> entry.resource = create('Condition') as tgt then {
        src.item first as item where (linkId = 'Ccc.B23.DE06') and answer.exists() then {
          item then CccconditionCccb23de06(src, item, tgt) "9c759e88";
        } "060d6b0f";
      } "6909c9cb";
    } "80a2a642";
  } "93603109";
  src.item first as item where (linkId = 'Ccc.B23.DE85') and answer.exists() then {
    src -> bundle.entry as entry then {
      src ->  entry.request as request,  request.method = 'POST',  uuid() as uuid,  request.url = append('/Condition/', uuid) "9805d737";
      src -> entry.resource = create('Condition') as tgt then {
        src.item first as item where (linkId = 'Ccc.B23.DE85') and answer.exists() then {
          item then CccconditionCccb23de85(src, item, tgt) "935222a8";
        } "d50b3ee7";
      } "b5ace6e4";
    } "6e6a68c3";
  } "a87e641b";
  src.item first as item where (linkId = 'Ccc.B23.DE86') and answer.exists() then {
    src -> bundle.entry as entry then {
      src ->  entry.request as request,  request.method = 'POST',  uuid() as uuid,  request.url = append('/Condition/', uuid) "9805d737";
      src -> entry.resource = create('Condition') as tgt then {
        src.item first as item where (linkId = 'Ccc.B23.DE86') and answer.exists() then {
          item then CccconditionCccb23de86(src, item, tgt) "7b5655d0";
        } "a02dff61";
      } "f6d60d42";
    } "e66f46ee";
  } "67b6f016";
  src.item first as item where (linkId = 'Ccc.B23.DE106') and answer.exists() then {
    src -> bundle.entry as entry then {
      src ->  entry.request as request,  request.method = 'POST',  uuid() as uuid,  request.url = append('/Condition/', uuid) "9805d737";
      src -> entry.resource = create('Condition') as tgt then {
        src.item first as item where (linkId = 'Ccc.B23.DE106') and answer.exists() then {
          item then CccconditionCccb23de106(src, item, tgt) "1385c52a";
        } "f5b0e691";
      } "cffa49c6";
    } "f8df0e47";
  } "a8b97e3f";
  src.item first as item where (linkId = 'Ccc.B23.DE87') and answer.exists() then {
    src -> bundle.entry as entry then {
      src ->  entry.request as request,  request.method = 'POST',  uuid() as uuid,  request.url = append('/Condition/', uuid) "9805d737";
      src -> entry.resource = create('Condition') as tgt then {
        src.item first as item where (linkId = 'Ccc.B23.DE87') and answer.exists() then {
          item then CccconditionCccb23de87(src, item, tgt) "ba174f0b";
        } "30f36551";
      } "7e51b325";
    } "efdd0e20";
  } "2521504d";
  src.item first as item where (linkId = 'Ccc.B23.DE88') and answer.exists() then {
    src -> bundle.entry as entry then {
      src ->  entry.request as request,  request.method = 'POST',  uuid() as uuid,  request.url = append('/Condition/', uuid) "9805d737";
      src -> entry.resource = create('Condition') as tgt then {
        src.item first as item where (linkId = 'Ccc.B23.DE88') and answer.exists() then {
          item then CccconditionCccb23de88(src, item, tgt) "f570c42d";
        } "f0521ba0";
      } "999ae6b0";
    } "0077703f";
  } "3efea57e";
  src.item first as item where (linkId = 'Ccc.B23.DE89') and answer.exists() then {
    src -> bundle.entry as entry then {
      src ->  entry.request as request,  request.method = 'POST',  uuid() as uuid,  request.url = append('/Condition/', uuid) "9805d737";
      src -> entry.resource = create('Condition') as tgt then {
        src.item first as item where (linkId = 'Ccc.B23.DE89') and answer.exists() then {
          item then CccconditionCccb23de89(src, item, tgt) "226a96b3";
        } "72e06a74";
      } "d6e439e9";
    } "09b39961";
  } "cc634914";
  src.item first as item where (linkId = 'Ccc.B23.DE13') and answer.exists() then {
    src -> bundle.entry as entry then {
      src ->  entry.request as request,  request.method = 'POST',  uuid() as uuid,  request.url = append('/Condition/', uuid) "9805d737";
      src -> entry.resource = create('Condition') as tgt then {
        src.item first as item where (linkId = 'Ccc.B23.DE13') and answer.exists() then {
          item then CccconditionCccb23de13(src, item, tgt) "66186a0c";
        } "a1450efb";
      } "076ff820";
    } "08bcb577";
  } "feb0d657";
  src.item first as item where (linkId = 'Ccc.B23.DE14') and answer.exists() then {
    src -> bundle.entry as entry then {
      src ->  entry.request as request,  request.method = 'POST',  uuid() as uuid,  request.url = append('/Condition/', uuid) "9805d737";
      src -> entry.resource = create('Condition') as tgt then {
        src.item first as item where (linkId = 'Ccc.B23.DE14') and answer.exists() then {
          item then CccconditionCccb23de14(src, item, tgt) "2dcb0090";
        } "88d1e8c7";
      } "3ef7f05b";
    } "90e804b6";
  } "d819a392";
  src.item first as item where (linkId = 'Ccc.B23.DE15') and answer.exists() then {
    src -> bundle.entry as entry then {
      src ->  entry.request as request,  request.method = 'POST',  uuid() as uuid,  request.url = append('/Condition/', uuid) "9805d737";
      src -> entry.resource = create('Condition') as tgt then {
        src.item first as item where (linkId = 'Ccc.B23.DE15') and answer.exists() then {
          item then CccconditionCccb23de15(src, item, tgt) "fe470a2a";
        } "21fccbde";
      } "2eb659f8";
    } "79ef4ab2";
  } "e3b54720";
  src.item first as item where (linkId = 'Ccc.B23.DE94') and answer.exists() then {
    src -> bundle.entry as entry then {
      src ->  entry.request as request,  request.method = 'POST',  uuid() as uuid,  request.url = append('/Condition/', uuid) "9805d737";
      src -> entry.resource = create('Condition') as tgt then {
        src.item first as item where (linkId = 'Ccc.B23.DE94') and answer.exists() then {
          item then CccconditionCccb23de94(src, item, tgt) "4bfe2573";
        } "a323ced7";
      } "4238505f";
    } "cb434a7e";
  } "974a1d36";
  src.item first as item where (linkId = 'Ccc.B23.DE98') and answer.exists() then {
    src -> bundle.entry as entry then {
      src ->  entry.request as request,  request.method = 'POST',  uuid() as uuid,  request.url = append('/Condition/', uuid) "9805d737";
      src -> entry.resource = create('Condition') as tgt then {
        src.item first as item where (linkId = 'Ccc.B23.DE98') and answer.exists() then {
          item then CccconditionCccb23de98(src, item, tgt) "ec699e2c";
        } "19da18a9";
      } "b82b0c05";
    } "67075fc4";
  } "51f9d108";
  src where src.item.where(linkId = 'collector').answer.where(value.code = 'Ccc.B23.DE83') then {
    src.item first as item where (linkId = 'collector') and answer.exists() then {
      src -> bundle.entry as entry then {
        src ->  entry.request as request,  request.method = 'POST',  uuid() as uuid,  request.url = append('/Condition/', uuid) "9805d737";
        src -> entry.resource = create('Condition') as tgt then {
          src then CccconditioncollectorCccb23de83(src, item, tgt) "a49f2674";
        } "5a82b6a2";
      } "d2d9497c";
    } "c5fd054e";
  } "0a3b92c9";
  src where src.item.where(linkId = 'collector').answer.where(value.code = 'Ccc.B23.DE06') then {
    src.item first as item where (linkId = 'collector') and answer.exists() then {
      src -> bundle.entry as entry then {
        src ->  entry.request as request,  request.method = 'POST',  uuid() as uuid,  request.url = append('/Condition/', uuid) "9805d737";
        src -> entry.resource = create('Condition') as tgt then {
          src then CccconditioncollectorCccb23de06(src, item, tgt) "ab6f052f";
        } "e87439ac";
      } "37d42e73";
    } "7708b4b0";
  } "ca7b518e";
  src where src.item.where(linkId = 'collector').answer.where(value.code = 'Ccc.B23.DE85') then {
    src.item first as item where (linkId = 'collector') and answer.exists() then {
      src -> bundle.entry as entry then {
        src ->  entry.request as request,  request.method = 'POST',  uuid() as uuid,  request.url = append('/Condition/', uuid) "9805d737";
        src -> entry.resource = create('Condition') as tgt then {
          src then CccconditioncollectorCccb23de85(src, item, tgt) "34be21c7";
        } "dd73e267";
      } "17b29f54";
    } "7a81127f";
  } "3bb7e65c";
  src where src.item.where(linkId = 'collector').answer.where(value.code = 'Ccc.B23.DE86') then {
    src.item first as item where (linkId = 'collector') and answer.exists() then {
      src -> bundle.entry as entry then {
        src ->  entry.request as request,  request.method = 'POST',  uuid() as uuid,  request.url = append('/Condition/', uuid) "9805d737";
        src -> entry.resource = create('Condition') as tgt then {
          src then CccconditioncollectorCccb23de86(src, item, tgt) "85e79f33";
        } "b37e1f00";
      } "5ebec517";
    } "742af28b";
  } "125b7e31";
  src where src.item.where(linkId = 'collector').answer.where(value.code = 'Ccc.B23.DE106') then {
    src.item first as item where (linkId = 'collector') and answer.exists() then {
      src -> bundle.entry as entry then {
        src ->  entry.request as request,  request.method = 'POST',  uuid() as uuid,  request.url = append('/Condition/', uuid) "9805d737";
        src -> entry.resource = create('Condition') as tgt then {
          src then CccconditioncollectorCccb23de106(src, item, tgt) "5f3c80c3";
        } "8a9ab3d6";
      } "b3badac5";
    } "8aec9c45";
  } "332b8a91";
  src where src.item.where(linkId = 'collector').answer.where(value.code = 'Ccc.B23.DE87') then {
    src.item first as item where (linkId = 'collector') and answer.exists() then {
      src -> bundle.entry as entry then {
        src ->  entry.request as request,  request.method = 'POST',  uuid() as uuid,  request.url = append('/Condition/', uuid) "9805d737";
        src -> entry.resource = create('Condition') as tgt then {
          src then CccconditioncollectorCccb23de87(src, item, tgt) "69dafef9";
        } "7d2dd85f";
      } "3814725e";
    } "98d3b1f5";
  } "4afba6d2";
  src where src.item.where(linkId = 'collector').answer.where(value.code = 'Ccc.B23.DE88') then {
    src.item first as item where (linkId = 'collector') and answer.exists() then {
      src -> bundle.entry as entry then {
        src ->  entry.request as request,  request.method = 'POST',  uuid() as uuid,  request.url = append('/Condition/', uuid) "9805d737";
        src -> entry.resource = create('Condition') as tgt then {
          src then CccconditioncollectorCccb23de88(src, item, tgt) "b8d9f845";
        } "65150a1a";
      } "43b46f0d";
    } "c4a03e24";
  } "4ed6008e";
  src where src.item.where(linkId = 'collector').answer.where(value.code = 'Ccc.B23.DE89') then {
    src.item first as item where (linkId = 'collector') and answer.exists() then {
      src -> bundle.entry as entry then {
        src ->  entry.request as request,  request.method = 'POST',  uuid() as uuid,  request.url = append('/Condition/', uuid) "9805d737";
        src -> entry.resource = create('Condition') as tgt then {
          src then CccconditioncollectorCccb23de89(src, item, tgt) "e0b2a7ea";
        } "5f78e785";
      } "4b1fc155";
    } "ad230210";
  } "fd95ca9c";
  src where src.item.where(linkId = 'collector').answer.where(value.code = 'Ccc.B23.DE13') then {
    src.item first as item where (linkId = 'collector') and answer.exists() then {
      src -> bundle.entry as entry then {
        src ->  entry.request as request,  request.method = 'POST',  uuid() as uuid,  request.url = append('/Condition/', uuid) "9805d737";
        src -> entry.resource = create('Condition') as tgt then {
          src then CccconditioncollectorCccb23de13(src, item, tgt) "ca1c2344";
        } "e291ac38";
      } "a3790ce2";
    } "df1da7ee";
  } "db30808b";
  src where src.item.where(linkId = 'collector').answer.where(value.code = 'Ccc.B23.DE14') then {
    src.item first as item where (linkId = 'collector') and answer.exists() then {
      src -> bundle.entry as entry then {
        src ->  entry.request as request,  request.method = 'POST',  uuid() as uuid,  request.url = append('/Condition/', uuid) "9805d737";
        src -> entry.resource = create('Condition') as tgt then {
          src then CccconditioncollectorCccb23de14(src, item, tgt) "d2d217d7";
        } "71ec8c01";
      } "eec21165";
    } "4bec0867";
  } "b6cebe17";
  src where src.item.where(linkId = 'collector').answer.where(value.code = 'Ccc.B23.DE15') then {
    src.item first as item where (linkId = 'collector') and answer.exists() then {
      src -> bundle.entry as entry then {
        src ->  entry.request as request,  request.method = 'POST',  uuid() as uuid,  request.url = append('/Condition/', uuid) "9805d737";
        src -> entry.resource = create('Condition') as tgt then {
          src then CccconditioncollectorCccb23de15(src, item, tgt) "d06cdfa3";
        } "78497d5c";
      } "5f0e524b";
    } "84c7d9e0";
  } "5fb77efc";
  src where src.item.where(linkId = 'collector').answer.where(value.code = 'Ccc.B23.DE94') then {
    src.item first as item where (linkId = 'collector') and answer.exists() then {
      src -> bundle.entry as entry then {
        src ->  entry.request as request,  request.method = 'POST',  uuid() as uuid,  request.url = append('/Condition/', uuid) "9805d737";
        src -> entry.resource = create('Condition') as tgt then {
          src then CccconditioncollectorCccb23de94(src, item, tgt) "fd905dcf";
        } "887a5cf4";
      } "e9cd9662";
    } "d351f4bc";
  } "1277893a";
  src where src.item.where(linkId = 'collector').answer.where(value.code = 'Ccc.B23.DE98') then {
    src.item first as item where (linkId = 'collector') and answer.exists() then {
      src -> bundle.entry as entry then {
        src ->  entry.request as request,  request.method = 'POST',  uuid() as uuid,  request.url = append('/Condition/', uuid) "9805d737";
        src -> entry.resource = create('Condition') as tgt then {
          src then CccconditioncollectorCccb23de98(src, item, tgt) "50233ad8";
        } "3c87eb32";
      } "ac7c8731";
    } "18115b63";
  } "a8b5fbe8";
  src where src.item.where(linkId = 'collector').answer.where(value.code = 'collector') then {
    src.item first as item where (linkId = 'collector') and answer.exists() then {
      src -> bundle.entry as entry then {
        src ->  entry.request as request,  request.method = 'POST',  uuid() as uuid,  request.url = append('/Condition/', uuid) "9805d737";
        src -> entry.resource = create('Condition') as tgt then {
          src then Cccconditioncollectorcollector(src, item, tgt) "dee30196";
        } "dbad65ac";
      } "652cfd04";
    } "63e7ab00";
  } "d596b39a";
}

group CccconditionCccb23de83(source src, source item, target tgt) {
  item.answer first as a then {
    src.subject as sub -> tgt.subject = sub "23252e10";
    src.encounter as en -> tgt.encounter = en "553aae7e";
    src.item as itemtimestamp where linkId = 'timestamp' then {
      itemtimestamp.answer first as atimestamp then {
        atimestamp.value as val -> tgt.recordedDate = val "ea256bb4";
      } "46018ce4";
    } "cce2a9b1";
    src -> tgt.code = create('CodeableConcept') as cs then {
      src ->  tgt.code = create('CodeableConcept') as cs,  cs.coding = create('Coding') as ccs,  ccs.code = 'Ccc.B23.DE83',  ccs.system = 'https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes' "8e761921";
    } "a10c1e7b";
  } "13fd46f9";
  item.answer where value.code = 'agree' then {
    src ->  tgt.clinicalStatus = create('CodeableConcept') as cs,  cs.coding = create('Coding') as ccs,  ccs.code = 'active',  ccs.system = 'http://terminology.hl7.org/CodeSystem/condition-clinical' "05de813c";
    src ->  tgt.verificationStatus = create('CodeableConcept') as cs,  cs.coding = create('Coding') as ccs,  ccs.code = 'confirmed',  ccs.system = 'http://terminology.hl7.org/CodeSystem/condition-ver-status' "eb81c749";
  } "a8956d4e";
  item.answer where value.code = 'disagree' then {
    src ->  tgt.clinicalStatus = create('CodeableConcept') as cs,  cs.coding = create('Coding') as ccs,  ccs.code = 'inactive',  ccs.system = 'http://terminology.hl7.org/CodeSystem/condition-clinical' "d058c96f";
    src ->  tgt.verificationStatus = create('CodeableConcept') as cs,  cs.coding = create('Coding') as ccs,  ccs.code = 'refuted',  ccs.system = 'http://terminology.hl7.org/CodeSystem/condition-ver-status' "e74cae6e";
  } "2219f1ae";
}

group CccconditionCccb23de06(source src, source item, target tgt) {
  item.answer first as a then {
    src.subject as sub -> tgt.subject = sub "23252e10";
    src.encounter as en -> tgt.encounter = en "553aae7e";
    src.item as itemtimestamp where linkId = 'timestamp' then {
      itemtimestamp.answer first as atimestamp then {
        atimestamp.value as val -> tgt.recordedDate = val "ea256bb4";
      } "46018ce4";
    } "cce2a9b1";
    src -> tgt.code = create('CodeableConcept') as cs then {
      src ->  tgt.code = create('CodeableConcept') as cs,  cs.coding = create('Coding') as ccs,  ccs.code = 'Ccc.B23.DE06',  ccs.system = 'https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes' "dd0fd01c";
    } "8ef845b0";
  } "558d6c0d";
  item.answer where value.code = 'agree' then {
    src ->  tgt.clinicalStatus = create('CodeableConcept') as cs,  cs.coding = create('Coding') as ccs,  ccs.code = 'active',  ccs.system = 'http://terminology.hl7.org/CodeSystem/condition-clinical' "05de813c";
    src ->  tgt.verificationStatus = create('CodeableConcept') as cs,  cs.coding = create('Coding') as ccs,  ccs.code = 'confirmed',  ccs.system = 'http://terminology.hl7.org/CodeSystem/condition-ver-status' "eb81c749";
  } "a8956d4e";
  item.answer where value.code = 'disagree' then {
    src ->  tgt.clinicalStatus = create('CodeableConcept') as cs,  cs.coding = create('Coding') as ccs,  ccs.code = 'inactive',  ccs.system = 'http://terminology.hl7.org/CodeSystem/condition-clinical' "d058c96f";
    src ->  tgt.verificationStatus = create('CodeableConcept') as cs,  cs.coding = create('Coding') as ccs,  ccs.code = 'refuted',  ccs.system = 'http://terminology.hl7.org/CodeSystem/condition-ver-status' "e74cae6e";
  } "2219f1ae";
}

group CccconditionCccb23de85(source src, source item, target tgt) {
  item.answer first as a then {
    src.subject as sub -> tgt.subject = sub "23252e10";
    src.encounter as en -> tgt.encounter = en "553aae7e";
    src.item as itemtimestamp where linkId = 'timestamp' then {
      itemtimestamp.answer first as atimestamp then {
        atimestamp.value as val -> tgt.recordedDate = val "ea256bb4";
      } "46018ce4";
    } "cce2a9b1";
    src -> tgt.code = create('CodeableConcept') as cs then {
      src ->  tgt.code = create('CodeableConcept') as cs,  cs.coding = create('Coding') as ccs,  ccs.code = 'Ccc.B23.DE85',  ccs.system = 'https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes' "edf923c3";
    } "a2ce3a97";
  } "6f3a3752";
  item.answer where value.code = 'agree' then {
    src ->  tgt.clinicalStatus = create('CodeableConcept') as cs,  cs.coding = create('Coding') as ccs,  ccs.code = 'active',  ccs.system = 'http://terminology.hl7.org/CodeSystem/condition-clinical' "05de813c";
    src ->  tgt.verificationStatus = create('CodeableConcept') as cs,  cs.coding = create('Coding') as ccs,  ccs.code = 'confirmed',  ccs.system = 'http://terminology.hl7.org/CodeSystem/condition-ver-status' "eb81c749";
  } "a8956d4e";
  item.answer where value.code = 'disagree' then {
    src ->  tgt.clinicalStatus = create('CodeableConcept') as cs,  cs.coding = create('Coding') as ccs,  ccs.code = 'inactive',  ccs.system = 'http://terminology.hl7.org/CodeSystem/condition-clinical' "d058c96f";
    src ->  tgt.verificationStatus = create('CodeableConcept') as cs,  cs.coding = create('Coding') as ccs,  ccs.code = 'refuted',  ccs.system = 'http://terminology.hl7.org/CodeSystem/condition-ver-status' "e74cae6e";
  } "2219f1ae";
}

group CccconditionCccb23de86(source src, source item, target tgt) {
  item.answer first as a then {
    src.subject as sub -> tgt.subject = sub "23252e10";
    src.encounter as en -> tgt.encounter = en "553aae7e";
    src.item as itemtimestamp where linkId = 'timestamp' then {
      itemtimestamp.answer first as atimestamp then {
        atimestamp.value as val -> tgt.recordedDate = val "ea256bb4";
      } "46018ce4";
    } "cce2a9b1";
    src -> tgt.code = create('CodeableConcept') as cs then {
      src ->  tgt.code = create('CodeableConcept') as cs,  cs.coding = create('Coding') as ccs,  ccs.code = 'Ccc.B23.DE86',  ccs.system = 'https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes' "342850aa";
    } "9338b358";
  } "fc719a3c";
  item.answer where value.code = 'agree' then {
    src ->  tgt.clinicalStatus = create('CodeableConcept') as cs,  cs.coding = create('Coding') as ccs,  ccs.code = 'active',  ccs.system = 'http://terminology.hl7.org/CodeSystem/condition-clinical' "05de813c";
    src ->  tgt.verificationStatus = create('CodeableConcept') as cs,  cs.coding = create('Coding') as ccs,  ccs.code = 'confirmed',  ccs.system = 'http://terminology.hl7.org/CodeSystem/condition-ver-status' "eb81c749";
  } "a8956d4e";
  item.answer where value.code = 'disagree' then {
    src ->  tgt.clinicalStatus = create('CodeableConcept') as cs,  cs.coding = create('Coding') as ccs,  ccs.code = 'inactive',  ccs.system = 'http://terminology.hl7.org/CodeSystem/condition-clinical' "d058c96f";
    src ->  tgt.verificationStatus = create('CodeableConcept') as cs,  cs.coding = create('Coding') as ccs,  ccs.code = 'refuted',  ccs.system = 'http://terminology.hl7.org/CodeSystem/condition-ver-status' "e74cae6e";
  } "2219f1ae";
}

group CccconditionCccb23de106(source src, source item, target tgt) {
  item.answer first as a then {
    src.subject as sub -> tgt.subject = sub "23252e10";
    src.encounter as en -> tgt.encounter = en "553aae7e";
    src.item as itemtimestamp where linkId = 'timestamp' then {
      itemtimestamp.answer first as atimestamp then {
        atimestamp.value as val -> tgt.recordedDate = val "ea256bb4";
      } "46018ce4";
    } "cce2a9b1";
    src -> tgt.code = create('CodeableConcept') as cs then {
      src ->  tgt.code = create('CodeableConcept') as cs,  cs.coding = create('Coding') as ccs,  ccs.code = 'Ccc.B23.DE106',  ccs.system = 'https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes' "70f0a4fa";
    } "d8d6d130";
  } "671ed411";
  item.answer where value.code = 'agree' then {
    src ->  tgt.clinicalStatus = create('CodeableConcept') as cs,  cs.coding = create('Coding') as ccs,  ccs.code = 'active',  ccs.system = 'http://terminology.hl7.org/CodeSystem/condition-clinical' "05de813c";
    src ->  tgt.verificationStatus = create('CodeableConcept') as cs,  cs.coding = create('Coding') as ccs,  ccs.code = 'confirmed',  ccs.system = 'http://terminology.hl7.org/CodeSystem/condition-ver-status' "eb81c749";
  } "a8956d4e";
  item.answer where value.code = 'disagree' then {
    src ->  tgt.clinicalStatus = create('CodeableConcept') as cs,  cs.coding = create('Coding') as ccs,  ccs.code = 'inactive',  ccs.system = 'http://terminology.hl7.org/CodeSystem/condition-clinical' "d058c96f";
    src ->  tgt.verificationStatus = create('CodeableConcept') as cs,  cs.coding = create('Coding') as ccs,  ccs.code = 'refuted',  ccs.system = 'http://terminology.hl7.org/CodeSystem/condition-ver-status' "e74cae6e";
  } "2219f1ae";
}

group CccconditionCccb23de87(source src, source item, target tgt) {
  item.answer first as a then {
    src.subject as sub -> tgt.subject = sub "23252e10";
    src.encounter as en -> tgt.encounter = en "553aae7e";
    src.item as itemtimestamp where linkId = 'timestamp' then {
      itemtimestamp.answer first as atimestamp then {
        atimestamp.value as val -> tgt.recordedDate = val "ea256bb4";
      } "46018ce4";
    } "cce2a9b1";
    src -> tgt.code = create('CodeableConcept') as cs then {
      src ->  tgt.code = create('CodeableConcept') as cs,  cs.coding = create('Coding') as ccs,  ccs.code = 'Ccc.B23.DE87',  ccs.system = 'https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes' "01f1ca5f";
    } "62727c30";
  } "9ff74c9e";
  item.answer where value.code = 'agree' then {
    src ->  tgt.clinicalStatus = create('CodeableConcept') as cs,  cs.coding = create('Coding') as ccs,  ccs.code = 'active',  ccs.system = 'http://terminology.hl7.org/CodeSystem/condition-clinical' "05de813c";
    src ->  tgt.verificationStatus = create('CodeableConcept') as cs,  cs.coding = create('Coding') as ccs,  ccs.code = 'confirmed',  ccs.system = 'http://terminology.hl7.org/CodeSystem/condition-ver-status' "eb81c749";
  } "a8956d4e";
  item.answer where value.code = 'disagree' then {
    src ->  tgt.clinicalStatus = create('CodeableConcept') as cs,  cs.coding = create('Coding') as ccs,  ccs.code = 'inactive',  ccs.system = 'http://terminology.hl7.org/CodeSystem/condition-clinical' "d058c96f";
    src ->  tgt.verificationStatus = create('CodeableConcept') as cs,  cs.coding = create('Coding') as ccs,  ccs.code = 'refuted',  ccs.system = 'http://terminology.hl7.org/CodeSystem/condition-ver-status' "e74cae6e";
  } "2219f1ae";
}

group CccconditionCccb23de88(source src, source item, target tgt) {
  item.answer first as a then {
    src.subject as sub -> tgt.subject = sub "23252e10";
    src.encounter as en -> tgt.encounter = en "553aae7e";
    src.item as itemtimestamp where linkId = 'timestamp' then {
      itemtimestamp.answer first as atimestamp then {
        atimestamp.value as val -> tgt.recordedDate = val "ea256bb4";
      } "46018ce4";
    } "cce2a9b1";
    src -> tgt.code = create('CodeableConcept') as cs then {
      src ->  tgt.code = create('CodeableConcept') as cs,  cs.coding = create('Coding') as ccs,  ccs.code = 'Ccc.B23.DE88',  ccs.system = 'https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes' "2803d2d8";
    } "360a74b4";
  } "36ea706b";
  item.answer where value.code = 'agree' then {
    src ->  tgt.clinicalStatus = create('CodeableConcept') as cs,  cs.coding = create('Coding') as ccs,  ccs.code = 'active',  ccs.system = 'http://terminology.hl7.org/CodeSystem/condition-clinical' "05de813c";
    src ->  tgt.verificationStatus = create('CodeableConcept') as cs,  cs.coding = create('Coding') as ccs,  ccs.code = 'confirmed',  ccs.system = 'http://terminology.hl7.org/CodeSystem/condition-ver-status' "eb81c749";
  } "a8956d4e";
  item.answer where value.code = 'disagree' then {
    src ->  tgt.clinicalStatus = create('CodeableConcept') as cs,  cs.coding = create('Coding') as ccs,  ccs.code = 'inactive',  ccs.system = 'http://terminology.hl7.org/CodeSystem/condition-clinical' "d058c96f";
    src ->  tgt.verificationStatus = create('CodeableConcept') as cs,  cs.coding = create('Coding') as ccs,  ccs.code = 'refuted',  ccs.system = 'http://terminology.hl7.org/CodeSystem/condition-ver-status' "e74cae6e";
  } "2219f1ae";
}

group CccconditionCccb23de89(source src, source item, target tgt) {
  item.answer first as a then {
    src.subject as sub -> tgt.subject = sub "23252e10";
    src.encounter as en -> tgt.encounter = en "553aae7e";
    src.item as itemtimestamp where linkId = 'timestamp' then {
      itemtimestamp.answer first as atimestamp then {
        atimestamp.value as val -> tgt.recordedDate = val "ea256bb4";
      } "46018ce4";
    } "cce2a9b1";
    src -> tgt.code = create('CodeableConcept') as cs then {
      src ->  tgt.code = create('CodeableConcept') as cs,  cs.coding = create('Coding') as ccs,  ccs.code = 'Ccc.B23.DE89',  ccs.system = 'https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes' "d0ba1006";
    } "10f03284";
  } "0d943b47";
  item.answer where value.code = 'agree' then {
    src ->  tgt.clinicalStatus = create('CodeableConcept') as cs,  cs.coding = create('Coding') as ccs,  ccs.code = 'active',  ccs.system = 'http://terminology.hl7.org/CodeSystem/condition-clinical' "05de813c";
    src ->  tgt.verificationStatus = create('CodeableConcept') as cs,  cs.coding = create('Coding') as ccs,  ccs.code = 'confirmed',  ccs.system = 'http://terminology.hl7.org/CodeSystem/condition-ver-status' "eb81c749";
  } "a8956d4e";
  item.answer where value.code = 'disagree' then {
    src ->  tgt.clinicalStatus = create('CodeableConcept') as cs,  cs.coding = create('Coding') as ccs,  ccs.code = 'inactive',  ccs.system = 'http://terminology.hl7.org/CodeSystem/condition-clinical' "d058c96f";
    src ->  tgt.verificationStatus = create('CodeableConcept') as cs,  cs.coding = create('Coding') as ccs,  ccs.code = 'refuted',  ccs.system = 'http://terminology.hl7.org/CodeSystem/condition-ver-status' "e74cae6e";
  } "2219f1ae";
}

group CccconditionCccb23de13(source src, source item, target tgt) {
  item.answer first as a then {
    src.subject as sub -> tgt.subject = sub "23252e10";
    src.encounter as en -> tgt.encounter = en "553aae7e";
    src.item as itemtimestamp where linkId = 'timestamp' then {
      itemtimestamp.answer first as atimestamp then {
        atimestamp.value as val -> tgt.recordedDate = val "ea256bb4";
      } "46018ce4";
    } "cce2a9b1";
    src -> tgt.code = create('CodeableConcept') as cs then {
      src ->  tgt.code = create('CodeableConcept') as cs,  cs.coding = create('Coding') as ccs,  ccs.code = 'Ccc.B23.DE13',  ccs.system = 'https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes' "0b87b4e7";
    } "6cc1c549";
  } "dc54929c";
  item.answer where value.code = 'agree' then {
    src ->  tgt.clinicalStatus = create('CodeableConcept') as cs,  cs.coding = create('Coding') as ccs,  ccs.code = 'active',  ccs.system = 'http://terminology.hl7.org/CodeSystem/condition-clinical' "05de813c";
    src ->  tgt.verificationStatus = create('CodeableConcept') as cs,  cs.coding = create('Coding') as ccs,  ccs.code = 'confirmed',  ccs.system = 'http://terminology.hl7.org/CodeSystem/condition-ver-status' "eb81c749";
  } "a8956d4e";
  item.answer where value.code = 'disagree' then {
    src ->  tgt.clinicalStatus = create('CodeableConcept') as cs,  cs.coding = create('Coding') as ccs,  ccs.code = 'inactive',  ccs.system = 'http://terminology.hl7.org/CodeSystem/condition-clinical' "d058c96f";
    src ->  tgt.verificationStatus = create('CodeableConcept') as cs,  cs.coding = create('Coding') as ccs,  ccs.code = 'refuted',  ccs.system = 'http://terminology.hl7.org/CodeSystem/condition-ver-status' "e74cae6e";
  } "2219f1ae";
}

group CccconditionCccb23de14(source src, source item, target tgt) {
  item.answer first as a then {
    src.subject as sub -> tgt.subject = sub "23252e10";
    src.encounter as en -> tgt.encounter = en "553aae7e";
    src.item as itemtimestamp where linkId = 'timestamp' then {
      itemtimestamp.answer first as atimestamp then {
        atimestamp.value as val -> tgt.recordedDate = val "ea256bb4";
      } "46018ce4";
    } "cce2a9b1";
    src -> tgt.code = create('CodeableConcept') as cs then {
      src ->  tgt.code = create('CodeableConcept') as cs,  cs.coding = create('Coding') as ccs,  ccs.code = 'Ccc.B23.DE14',  ccs.system = 'https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes' "c77e81e6";
    } "a3de578a";
  } "d565e84e";
  item.answer where value.code = 'agree' then {
    src ->  tgt.clinicalStatus = create('CodeableConcept') as cs,  cs.coding = create('Coding') as ccs,  ccs.code = 'active',  ccs.system = 'http://terminology.hl7.org/CodeSystem/condition-clinical' "05de813c";
    src ->  tgt.verificationStatus = create('CodeableConcept') as cs,  cs.coding = create('Coding') as ccs,  ccs.code = 'confirmed',  ccs.system = 'http://terminology.hl7.org/CodeSystem/condition-ver-status' "eb81c749";
  } "a8956d4e";
  item.answer where value.code = 'disagree' then {
    src ->  tgt.clinicalStatus = create('CodeableConcept') as cs,  cs.coding = create('Coding') as ccs,  ccs.code = 'inactive',  ccs.system = 'http://terminology.hl7.org/CodeSystem/condition-clinical' "d058c96f";
    src ->  tgt.verificationStatus = create('CodeableConcept') as cs,  cs.coding = create('Coding') as ccs,  ccs.code = 'refuted',  ccs.system = 'http://terminology.hl7.org/CodeSystem/condition-ver-status' "e74cae6e";
  } "2219f1ae";
}

group CccconditionCccb23de15(source src, source item, target tgt) {
  item.answer first as a then {
    src.subject as sub -> tgt.subject = sub "23252e10";
    src.encounter as en -> tgt.encounter = en "553aae7e";
    src.item as itemtimestamp where linkId = 'timestamp' then {
      itemtimestamp.answer first as atimestamp then {
        atimestamp.value as val -> tgt.recordedDate = val "ea256bb4";
      } "46018ce4";
    } "cce2a9b1";
    src -> tgt.code = create('CodeableConcept') as cs then {
      src ->  tgt.code = create('CodeableConcept') as cs,  cs.coding = create('Coding') as ccs,  ccs.code = 'Ccc.B23.DE15',  ccs.system = 'https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes' "16e4a2c3";
    } "088a39f1";
  } "b194144a";
  item.answer where value.code = 'agree' then {
    src ->  tgt.clinicalStatus = create('CodeableConcept') as cs,  cs.coding = create('Coding') as ccs,  ccs.code = 'active',  ccs.system = 'http://terminology.hl7.org/CodeSystem/condition-clinical' "05de813c";
    src ->  tgt.verificationStatus = create('CodeableConcept') as cs,  cs.coding = create('Coding') as ccs,  ccs.code = 'confirmed',  ccs.system = 'http://terminology.hl7.org/CodeSystem/condition-ver-status' "eb81c749";
  } "a8956d4e";
  item.answer where value.code = 'disagree' then {
    src ->  tgt.clinicalStatus = create('CodeableConcept') as cs,  cs.coding = create('Coding') as ccs,  ccs.code = 'inactive',  ccs.system = 'http://terminology.hl7.org/CodeSystem/condition-clinical' "d058c96f";
    src ->  tgt.verificationStatus = create('CodeableConcept') as cs,  cs.coding = create('Coding') as ccs,  ccs.code = 'refuted',  ccs.system = 'http://terminology.hl7.org/CodeSystem/condition-ver-status' "e74cae6e";
  } "2219f1ae";
}

group CccconditionCccb23de94(source src, source item, target tgt) {
  item.answer first as a then {
    src.subject as sub -> tgt.subject = sub "23252e10";
    src.encounter as en -> tgt.encounter = en "553aae7e";
    src.item as itemtimestamp where linkId = 'timestamp' then {
      itemtimestamp.answer first as atimestamp then {
        atimestamp.value as val -> tgt.recordedDate = val "ea256bb4";
      } "46018ce4";
    } "cce2a9b1";
    src -> tgt.code = create('CodeableConcept') as cs then {
      src ->  tgt.code = create('CodeableConcept') as cs,  cs.coding = create('Coding') as ccs,  ccs.code = 'Ccc.B23.DE94',  ccs.system = 'https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes' "61234ed0";
    } "ba5673dd";
  } "b957f076";
  item.answer where value.code = 'agree' then {
    src ->  tgt.clinicalStatus = create('CodeableConcept') as cs,  cs.coding = create('Coding') as ccs,  ccs.code = 'active',  ccs.system = 'http://terminology.hl7.org/CodeSystem/condition-clinical' "05de813c";
    src ->  tgt.verificationStatus = create('CodeableConcept') as cs,  cs.coding = create('Coding') as ccs,  ccs.code = 'confirmed',  ccs.system = 'http://terminology.hl7.org/CodeSystem/condition-ver-status' "eb81c749";
  } "a8956d4e";
  item.answer where value.code = 'disagree' then {
    src ->  tgt.clinicalStatus = create('CodeableConcept') as cs,  cs.coding = create('Coding') as ccs,  ccs.code = 'inactive',  ccs.system = 'http://terminology.hl7.org/CodeSystem/condition-clinical' "d058c96f";
    src ->  tgt.verificationStatus = create('CodeableConcept') as cs,  cs.coding = create('Coding') as ccs,  ccs.code = 'refuted',  ccs.system = 'http://terminology.hl7.org/CodeSystem/condition-ver-status' "e74cae6e";
  } "2219f1ae";
}

group CccconditionCccb23de98(source src, source item, target tgt) {
  item.answer first as a then {
    src.subject as sub -> tgt.subject = sub "23252e10";
    src.encounter as en -> tgt.encounter = en "553aae7e";
    src.item as itemtimestamp where linkId = 'timestamp' then {
      itemtimestamp.answer first as atimestamp then {
        atimestamp.value as val -> tgt.recordedDate = val "ea256bb4";
      } "46018ce4";
    } "cce2a9b1";
    src -> tgt.code = create('CodeableConcept') as cs then {
      src ->  tgt.code = create('CodeableConcept') as cs,  cs.coding = create('Coding') as ccs,  ccs.code = 'Ccc.B23.DE98',  ccs.system = 'https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes' "11d6b9d2";
    } "cbe98666";
  } "98163aba";
  item.answer where value.code = 'agree' then {
    src ->  tgt.clinicalStatus = create('CodeableConcept') as cs,  cs.coding = create('Coding') as ccs,  ccs.code = 'active',  ccs.system = 'http://terminology.hl7.org/CodeSystem/condition-clinical' "05de813c";
    src ->  tgt.verificationStatus = create('CodeableConcept') as cs,  cs.coding = create('Coding') as ccs,  ccs.code = 'confirmed',  ccs.system = 'http://terminology.hl7.org/CodeSystem/condition-ver-status' "eb81c749";
  } "a8956d4e";
  item.answer where value.code = 'disagree' then {
    src ->  tgt.clinicalStatus = create('CodeableConcept') as cs,  cs.coding = create('Coding') as ccs,  ccs.code = 'inactive',  ccs.system = 'http://terminology.hl7.org/CodeSystem/condition-clinical' "d058c96f";
    src ->  tgt.verificationStatus = create('CodeableConcept') as cs,  cs.coding = create('Coding') as ccs,  ccs.code = 'refuted',  ccs.system = 'http://terminology.hl7.org/CodeSystem/condition-ver-status' "e74cae6e";
  } "2219f1ae";
}

group CccconditioncollectorCccb23de83(source src, source item, target tgt) {
  item.answer first as a then {
    src.subject as sub -> tgt.subject = sub "23252e10";
    src.encounter as en -> tgt.encounter = en "553aae7e";
    src.item as itemtimestamp where linkId = 'timestamp' then {
      itemtimestamp.answer first as atimestamp then {
        atimestamp.value as val -> tgt.recordedDate = val "ea256bb4";
      } "46018ce4";
    } "cce2a9b1";
    src -> tgt.code = create('CodeableConcept') as cs then {
      src ->  tgt.code = create('CodeableConcept') as cs,  cs.coding = create('Coding') as ccs,  ccs.code = 'Ccc.B23.DE83',  ccs.system = 'https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes' "8e761921";
    } "a10c1e7b";
    a ->  tgt.clinicalStatus = create('CodeableConcept') as cs,  cs.coding = create('Coding') as ccs,  ccs.code = 'active',  ccs.system = 'http://terminology.hl7.org/CodeSystem/condition-clinical' "b7901585";
    a ->  tgt.verificationStatus = create('CodeableConcept') as cs,  cs.coding = create('Coding') as ccs,  ccs.code = 'unconfirmed',  ccs.system = 'http://terminology.hl7.org/CodeSystem/condition-ver-status' "3e544e1e";
  } "64537b70";
}

group CccconditioncollectorCccb23de06(source src, source item, target tgt) {
  item.answer first as a then {
    src.subject as sub -> tgt.subject = sub "23252e10";
    src.encounter as en -> tgt.encounter = en "553aae7e";
    src.item as itemtimestamp where linkId = 'timestamp' then {
      itemtimestamp.answer first as atimestamp then {
        atimestamp.value as val -> tgt.recordedDate = val "ea256bb4";
      } "46018ce4";
    } "cce2a9b1";
    src -> tgt.code = create('CodeableConcept') as cs then {
      src ->  tgt.code = create('CodeableConcept') as cs,  cs.coding = create('Coding') as ccs,  ccs.code = 'Ccc.B23.DE06',  ccs.system = 'https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes' "dd0fd01c";
    } "8ef845b0";
    a ->  tgt.clinicalStatus = create('CodeableConcept') as cs,  cs.coding = create('Coding') as ccs,  ccs.code = 'active',  ccs.system = 'http://terminology.hl7.org/CodeSystem/condition-clinical' "b7901585";
    a ->  tgt.verificationStatus = create('CodeableConcept') as cs,  cs.coding = create('Coding') as ccs,  ccs.code = 'unconfirmed',  ccs.system = 'http://terminology.hl7.org/CodeSystem/condition-ver-status' "3e544e1e";
  } "8ede6446";
}

group CccconditioncollectorCccb23de85(source src, source item, target tgt) {
  item.answer first as a then {
    src.subject as sub -> tgt.subject = sub "23252e10";
    src.encounter as en -> tgt.encounter = en "553aae7e";
    src.item as itemtimestamp where linkId = 'timestamp' then {
      itemtimestamp.answer first as atimestamp then {
        atimestamp.value as val -> tgt.recordedDate = val "ea256bb4";
      } "46018ce4";
    } "cce2a9b1";
    src -> tgt.code = create('CodeableConcept') as cs then {
      src ->  tgt.code = create('CodeableConcept') as cs,  cs.coding = create('Coding') as ccs,  ccs.code = 'Ccc.B23.DE85',  ccs.system = 'https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes' "edf923c3";
    } "a2ce3a97";
    a ->  tgt.clinicalStatus = create('CodeableConcept') as cs,  cs.coding = create('Coding') as ccs,  ccs.code = 'active',  ccs.system = 'http://terminology.hl7.org/CodeSystem/condition-clinical' "b7901585";
    a ->  tgt.verificationStatus = create('CodeableConcept') as cs,  cs.coding = create('Coding') as ccs,  ccs.code = 'unconfirmed',  ccs.system = 'http://terminology.hl7.org/CodeSystem/condition-ver-status' "3e544e1e";
  } "7ab58b18";
}

group CccconditioncollectorCccb23de86(source src, source item, target tgt) {
  item.answer first as a then {
    src.subject as sub -> tgt.subject = sub "23252e10";
    src.encounter as en -> tgt.encounter = en "553aae7e";
    src.item as itemtimestamp where linkId = 'timestamp' then {
      itemtimestamp.answer first as atimestamp then {
        atimestamp.value as val -> tgt.recordedDate = val "ea256bb4";
      } "46018ce4";
    } "cce2a9b1";
    src -> tgt.code = create('CodeableConcept') as cs then {
      src ->  tgt.code = create('CodeableConcept') as cs,  cs.coding = create('Coding') as ccs,  ccs.code = 'Ccc.B23.DE86',  ccs.system = 'https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes' "342850aa";
    } "9338b358";
    a ->  tgt.clinicalStatus = create('CodeableConcept') as cs,  cs.coding = create('Coding') as ccs,  ccs.code = 'active',  ccs.system = 'http://terminology.hl7.org/CodeSystem/condition-clinical' "b7901585";
    a ->  tgt.verificationStatus = create('CodeableConcept') as cs,  cs.coding = create('Coding') as ccs,  ccs.code = 'unconfirmed',  ccs.system = 'http://terminology.hl7.org/CodeSystem/condition-ver-status' "3e544e1e";
  } "c7e15e0e";
}

group CccconditioncollectorCccb23de106(source src, source item, target tgt) {
  item.answer first as a then {
    src.subject as sub -> tgt.subject = sub "23252e10";
    src.encounter as en -> tgt.encounter = en "553aae7e";
    src.item as itemtimestamp where linkId = 'timestamp' then {
      itemtimestamp.answer first as atimestamp then {
        atimestamp.value as val -> tgt.recordedDate = val "ea256bb4";
      } "46018ce4";
    } "cce2a9b1";
    src -> tgt.code = create('CodeableConcept') as cs then {
      src ->  tgt.code = create('CodeableConcept') as cs,  cs.coding = create('Coding') as ccs,  ccs.code = 'Ccc.B23.DE106',  ccs.system = 'https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes' "70f0a4fa";
    } "d8d6d130";
    a ->  tgt.clinicalStatus = create('CodeableConcept') as cs,  cs.coding = create('Coding') as ccs,  ccs.code = 'active',  ccs.system = 'http://terminology.hl7.org/CodeSystem/condition-clinical' "b7901585";
    a ->  tgt.verificationStatus = create('CodeableConcept') as cs,  cs.coding = create('Coding') as ccs,  ccs.code = 'unconfirmed',  ccs.system = 'http://terminology.hl7.org/CodeSystem/condition-ver-status' "3e544e1e";
  } "c5746d18";
}

group CccconditioncollectorCccb23de87(source src, source item, target tgt) {
  item.answer first as a then {
    src.subject as sub -> tgt.subject = sub "23252e10";
    src.encounter as en -> tgt.encounter = en "553aae7e";
    src.item as itemtimestamp where linkId = 'timestamp' then {
      itemtimestamp.answer first as atimestamp then {
        atimestamp.value as val -> tgt.recordedDate = val "ea256bb4";
      } "46018ce4";
    } "cce2a9b1";
    src -> tgt.code = create('CodeableConcept') as cs then {
      src ->  tgt.code = create('CodeableConcept') as cs,  cs.coding = create('Coding') as ccs,  ccs.code = 'Ccc.B23.DE87',  ccs.system = 'https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes' "01f1ca5f";
    } "62727c30";
    a ->  tgt.clinicalStatus = create('CodeableConcept') as cs,  cs.coding = create('Coding') as ccs,  ccs.code = 'active',  ccs.system = 'http://terminology.hl7.org/CodeSystem/condition-clinical' "b7901585";
    a ->  tgt.verificationStatus = create('CodeableConcept') as cs,  cs.coding = create('Coding') as ccs,  ccs.code = 'unconfirmed',  ccs.system = 'http://terminology.hl7.org/CodeSystem/condition-ver-status' "3e544e1e";
  } "8dee988b";
}

group CccconditioncollectorCccb23de88(source src, source item, target tgt) {
  item.answer first as a then {
    src.subject as sub -> tgt.subject = sub "23252e10";
    src.encounter as en -> tgt.encounter = en "553aae7e";
    src.item as itemtimestamp where linkId = 'timestamp' then {
      itemtimestamp.answer first as atimestamp then {
        atimestamp.value as val -> tgt.recordedDate = val "ea256bb4";
      } "46018ce4";
    } "cce2a9b1";
    src -> tgt.code = create('CodeableConcept') as cs then {
      src ->  tgt.code = create('CodeableConcept') as cs,  cs.coding = create('Coding') as ccs,  ccs.code = 'Ccc.B23.DE88',  ccs.system = 'https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes' "2803d2d8";
    } "360a74b4";
    a ->  tgt.clinicalStatus = create('CodeableConcept') as cs,  cs.coding = create('Coding') as ccs,  ccs.code = 'active',  ccs.system = 'http://terminology.hl7.org/CodeSystem/condition-clinical' "b7901585";
    a ->  tgt.verificationStatus = create('CodeableConcept') as cs,  cs.coding = create('Coding') as ccs,  ccs.code = 'unconfirmed',  ccs.system = 'http://terminology.hl7.org/CodeSystem/condition-ver-status' "3e544e1e";
  } "e6ded7f8";
}

group CccconditioncollectorCccb23de89(source src, source item, target tgt) {
  item.answer first as a then {
    src.subject as sub -> tgt.subject = sub "23252e10";
    src.encounter as en -> tgt.encounter = en "553aae7e";
    src.item as itemtimestamp where linkId = 'timestamp' then {
      itemtimestamp.answer first as atimestamp then {
        atimestamp.value as val -> tgt.recordedDate = val "ea256bb4";
      } "46018ce4";
    } "cce2a9b1";
    src -> tgt.code = create('CodeableConcept') as cs then {
      src ->  tgt.code = create('CodeableConcept') as cs,  cs.coding = create('Coding') as ccs,  ccs.code = 'Ccc.B23.DE89',  ccs.system = 'https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes' "d0ba1006";
    } "10f03284";
    a ->  tgt.clinicalStatus = create('CodeableConcept') as cs,  cs.coding = create('Coding') as ccs,  ccs.code = 'active',  ccs.system = 'http://terminology.hl7.org/CodeSystem/condition-clinical' "b7901585";
    a ->  tgt.verificationStatus = create('CodeableConcept') as cs,  cs.coding = create('Coding') as ccs,  ccs.code = 'unconfirmed',  ccs.system = 'http://terminology.hl7.org/CodeSystem/condition-ver-status' "3e544e1e";
  } "38f340fb";
}

group CccconditioncollectorCccb23de13(source src, source item, target tgt) {
  item.answer first as a then {
    src.subject as sub -> tgt.subject = sub "23252e10";
    src.encounter as en -> tgt.encounter = en "553aae7e";
    src.item as itemtimestamp where linkId = 'timestamp' then {
      itemtimestamp.answer first as atimestamp then {
        atimestamp.value as val -> tgt.recordedDate = val "ea256bb4";
      } "46018ce4";
    } "cce2a9b1";
    src -> tgt.code = create('CodeableConcept') as cs then {
      src ->  tgt.code = create('CodeableConcept') as cs,  cs.coding = create('Coding') as ccs,  ccs.code = 'Ccc.B23.DE13',  ccs.system = 'https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes' "0b87b4e7";
    } "6cc1c549";
    a ->  tgt.clinicalStatus = create('CodeableConcept') as cs,  cs.coding = create('Coding') as ccs,  ccs.code = 'active',  ccs.system = 'http://terminology.hl7.org/CodeSystem/condition-clinical' "b7901585";
    a ->  tgt.verificationStatus = create('CodeableConcept') as cs,  cs.coding = create('Coding') as ccs,  ccs.code = 'unconfirmed',  ccs.system = 'http://terminology.hl7.org/CodeSystem/condition-ver-status' "3e544e1e";
  } "39e0fe5e";
}

group CccconditioncollectorCccb23de14(source src, source item, target tgt) {
  item.answer first as a then {
    src.subject as sub -> tgt.subject = sub "23252e10";
    src.encounter as en -> tgt.encounter = en "553aae7e";
    src.item as itemtimestamp where linkId = 'timestamp' then {
      itemtimestamp.answer first as atimestamp then {
        atimestamp.value as val -> tgt.recordedDate = val "ea256bb4";
      } "46018ce4";
    } "cce2a9b1";
    src -> tgt.code = create('CodeableConcept') as cs then {
      src ->  tgt.code = create('CodeableConcept') as cs,  cs.coding = create('Coding') as ccs,  ccs.code = 'Ccc.B23.DE14',  ccs.system = 'https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes' "c77e81e6";
    } "a3de578a";
    a ->  tgt.clinicalStatus = create('CodeableConcept') as cs,  cs.coding = create('Coding') as ccs,  ccs.code = 'active',  ccs.system = 'http://terminology.hl7.org/CodeSystem/condition-clinical' "b7901585";
    a ->  tgt.verificationStatus = create('CodeableConcept') as cs,  cs.coding = create('Coding') as ccs,  ccs.code = 'unconfirmed',  ccs.system = 'http://terminology.hl7.org/CodeSystem/condition-ver-status' "3e544e1e";
  } "da0791a5";
}

group CccconditioncollectorCccb23de15(source src, source item, target tgt) {
  item.answer first as a then {
    src.subject as sub -> tgt.subject = sub "23252e10";
    src.encounter as en -> tgt.encounter = en "553aae7e";
    src.item as itemtimestamp where linkId = 'timestamp' then {
      itemtimestamp.answer first as atimestamp then {
        atimestamp.value as val -> tgt.recordedDate = val "ea256bb4";
      } "46018ce4";
    } "cce2a9b1";
    src -> tgt.code = create('CodeableConcept') as cs then {
      src ->  tgt.code = create('CodeableConcept') as cs,  cs.coding = create('Coding') as ccs,  ccs.code = 'Ccc.B23.DE15',  ccs.system = 'https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes' "16e4a2c3";
    } "088a39f1";
    a ->  tgt.clinicalStatus = create('CodeableConcept') as cs,  cs.coding = create('Coding') as ccs,  ccs.code = 'active',  ccs.system = 'http://terminology.hl7.org/CodeSystem/condition-clinical' "b7901585";
    a ->  tgt.verificationStatus = create('CodeableConcept') as cs,  cs.coding = create('Coding') as ccs,  ccs.code = 'unconfirmed',  ccs.system = 'http://terminology.hl7.org/CodeSystem/condition-ver-status' "3e544e1e";
  } "b16e2ac9";
}

group CccconditioncollectorCccb23de94(source src, source item, target tgt) {
  item.answer first as a then {
    src.subject as sub -> tgt.subject = sub "23252e10";
    src.encounter as en -> tgt.encounter = en "553aae7e";
    src.item as itemtimestamp where linkId = 'timestamp' then {
      itemtimestamp.answer first as atimestamp then {
        atimestamp.value as val -> tgt.recordedDate = val "ea256bb4";
      } "46018ce4";
    } "cce2a9b1";
    src -> tgt.code = create('CodeableConcept') as cs then {
      src ->  tgt.code = create('CodeableConcept') as cs,  cs.coding = create('Coding') as ccs,  ccs.code = 'Ccc.B23.DE94',  ccs.system = 'https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes' "61234ed0";
    } "ba5673dd";
    a ->  tgt.clinicalStatus = create('CodeableConcept') as cs,  cs.coding = create('Coding') as ccs,  ccs.code = 'active',  ccs.system = 'http://terminology.hl7.org/CodeSystem/condition-clinical' "b7901585";
    a ->  tgt.verificationStatus = create('CodeableConcept') as cs,  cs.coding = create('Coding') as ccs,  ccs.code = 'unconfirmed',  ccs.system = 'http://terminology.hl7.org/CodeSystem/condition-ver-status' "3e544e1e";
  } "82182761";
}

group CccconditioncollectorCccb23de98(source src, source item, target tgt) {
  item.answer first as a then {
    src.subject as sub -> tgt.subject = sub "23252e10";
    src.encounter as en -> tgt.encounter = en "553aae7e";
    src.item as itemtimestamp where linkId = 'timestamp' then {
      itemtimestamp.answer first as atimestamp then {
        atimestamp.value as val -> tgt.recordedDate = val "ea256bb4";
      } "46018ce4";
    } "cce2a9b1";
    src -> tgt.code = create('CodeableConcept') as cs then {
      src ->  tgt.code = create('CodeableConcept') as cs,  cs.coding = create('Coding') as ccs,  ccs.code = 'Ccc.B23.DE98',  ccs.system = 'https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes' "11d6b9d2";
    } "cbe98666";
    a ->  tgt.clinicalStatus = create('CodeableConcept') as cs,  cs.coding = create('Coding') as ccs,  ccs.code = 'active',  ccs.system = 'http://terminology.hl7.org/CodeSystem/condition-clinical' "b7901585";
    a ->  tgt.verificationStatus = create('CodeableConcept') as cs,  cs.coding = create('Coding') as ccs,  ccs.code = 'unconfirmed',  ccs.system = 'http://terminology.hl7.org/CodeSystem/condition-ver-status' "3e544e1e";
  } "869e7605";
}

group Cccconditioncollectorcollector(source src, source item, target tgt) {
  item.answer first as a then {
    src.subject as sub -> tgt.subject = sub "23252e10";
    src.encounter as en -> tgt.encounter = en "553aae7e";
    src.item as itemtimestamp where linkId = 'timestamp' then {
      itemtimestamp.answer first as atimestamp then {
        atimestamp.value as val -> tgt.recordedDate = val "ea256bb4";
      } "46018ce4";
    } "cce2a9b1";
    src -> tgt.code = create('CodeableConcept') as cs then {
      src ->  tgt.code = create('CodeableConcept') as cs,  cs.coding = create('Coding') as ccs,  ccs.code = 'collector',  ccs.system = 'https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes' "ab5440b5";
    } "6fc817a4";
    a ->  tgt.clinicalStatus = create('CodeableConcept') as cs,  cs.coding = create('Coding') as ccs,  ccs.code = 'active',  ccs.system = 'http://terminology.hl7.org/CodeSystem/condition-clinical' "b7901585";
    a ->  tgt.verificationStatus = create('CodeableConcept') as cs,  cs.coding = create('Coding') as ccs,  ccs.code = 'unconfirmed',  ccs.system = 'http://terminology.hl7.org/CodeSystem/condition-ver-status' "3e544e1e";
  } "d8e38123";
}


```



## Resource Content

```json
{
  "resourceType" : "StructureMap",
  "id" : "Ccc.b23.classification.m",
  "url" : "https://smart.who.int/ccc/StructureMap/Ccc.b23.classification.m",
  "version" : "0.1.0",
  "name" : "Ccc.b23.classification.m",
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
    "url" : "https://smart.who.int/ccc/StructureDefinition/condition",
    "mode" : "target",
    "alias" : "'Condition'"
  },
  {
    "url" : "https://smart.who.int/ccc/StructureDefinition/Ccccondition",
    "mode" : "produced",
    "alias" : "'Ccc Condition'"
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
      "name" : "09b682e0",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "item",
        "condition" : "(linkId = 'Ccc.B23.DE83') and answer.exists()"
      }],
      "rule" : [{
        "name" : "83bc4493",
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
          "name" : "9805d737",
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
              "valueString" : "/Condition/"
            },
            {
              "valueId" : "uuid"
            }]
          }]
        },
        {
          "name" : "ad9073a1",
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
              "valueString" : "Condition"
            }]
          }],
          "rule" : [{
            "name" : "a8097d41",
            "source" : [{
              "context" : "src",
              "element" : "item",
              "listMode" : "first",
              "variable" : "item",
              "condition" : "(linkId = 'Ccc.B23.DE83') and answer.exists()"
            }],
            "rule" : [{
              "name" : "178343d7",
              "source" : [{
                "context" : "item"
              }],
              "dependent" : [{
                "name" : "CccconditionCccb23de83",
                "variable" : ["src", "item", "tgt"]
              }]
            }]
          }]
        }]
      }]
    },
    {
      "name" : "93603109",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "item",
        "condition" : "(linkId = 'Ccc.B23.DE06') and answer.exists()"
      }],
      "rule" : [{
        "name" : "80a2a642",
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
          "name" : "9805d737",
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
              "valueString" : "/Condition/"
            },
            {
              "valueId" : "uuid"
            }]
          }]
        },
        {
          "name" : "6909c9cb",
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
              "valueString" : "Condition"
            }]
          }],
          "rule" : [{
            "name" : "060d6b0f",
            "source" : [{
              "context" : "src",
              "element" : "item",
              "listMode" : "first",
              "variable" : "item",
              "condition" : "(linkId = 'Ccc.B23.DE06') and answer.exists()"
            }],
            "rule" : [{
              "name" : "9c759e88",
              "source" : [{
                "context" : "item"
              }],
              "dependent" : [{
                "name" : "CccconditionCccb23de06",
                "variable" : ["src", "item", "tgt"]
              }]
            }]
          }]
        }]
      }]
    },
    {
      "name" : "a87e641b",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "item",
        "condition" : "(linkId = 'Ccc.B23.DE85') and answer.exists()"
      }],
      "rule" : [{
        "name" : "6e6a68c3",
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
          "name" : "9805d737",
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
              "valueString" : "/Condition/"
            },
            {
              "valueId" : "uuid"
            }]
          }]
        },
        {
          "name" : "b5ace6e4",
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
              "valueString" : "Condition"
            }]
          }],
          "rule" : [{
            "name" : "d50b3ee7",
            "source" : [{
              "context" : "src",
              "element" : "item",
              "listMode" : "first",
              "variable" : "item",
              "condition" : "(linkId = 'Ccc.B23.DE85') and answer.exists()"
            }],
            "rule" : [{
              "name" : "935222a8",
              "source" : [{
                "context" : "item"
              }],
              "dependent" : [{
                "name" : "CccconditionCccb23de85",
                "variable" : ["src", "item", "tgt"]
              }]
            }]
          }]
        }]
      }]
    },
    {
      "name" : "67b6f016",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "item",
        "condition" : "(linkId = 'Ccc.B23.DE86') and answer.exists()"
      }],
      "rule" : [{
        "name" : "e66f46ee",
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
          "name" : "9805d737",
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
              "valueString" : "/Condition/"
            },
            {
              "valueId" : "uuid"
            }]
          }]
        },
        {
          "name" : "f6d60d42",
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
              "valueString" : "Condition"
            }]
          }],
          "rule" : [{
            "name" : "a02dff61",
            "source" : [{
              "context" : "src",
              "element" : "item",
              "listMode" : "first",
              "variable" : "item",
              "condition" : "(linkId = 'Ccc.B23.DE86') and answer.exists()"
            }],
            "rule" : [{
              "name" : "7b5655d0",
              "source" : [{
                "context" : "item"
              }],
              "dependent" : [{
                "name" : "CccconditionCccb23de86",
                "variable" : ["src", "item", "tgt"]
              }]
            }]
          }]
        }]
      }]
    },
    {
      "name" : "a8b97e3f",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "item",
        "condition" : "(linkId = 'Ccc.B23.DE106') and answer.exists()"
      }],
      "rule" : [{
        "name" : "f8df0e47",
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
          "name" : "9805d737",
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
              "valueString" : "/Condition/"
            },
            {
              "valueId" : "uuid"
            }]
          }]
        },
        {
          "name" : "cffa49c6",
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
              "valueString" : "Condition"
            }]
          }],
          "rule" : [{
            "name" : "f5b0e691",
            "source" : [{
              "context" : "src",
              "element" : "item",
              "listMode" : "first",
              "variable" : "item",
              "condition" : "(linkId = 'Ccc.B23.DE106') and answer.exists()"
            }],
            "rule" : [{
              "name" : "1385c52a",
              "source" : [{
                "context" : "item"
              }],
              "dependent" : [{
                "name" : "CccconditionCccb23de106",
                "variable" : ["src", "item", "tgt"]
              }]
            }]
          }]
        }]
      }]
    },
    {
      "name" : "2521504d",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "item",
        "condition" : "(linkId = 'Ccc.B23.DE87') and answer.exists()"
      }],
      "rule" : [{
        "name" : "efdd0e20",
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
          "name" : "9805d737",
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
              "valueString" : "/Condition/"
            },
            {
              "valueId" : "uuid"
            }]
          }]
        },
        {
          "name" : "7e51b325",
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
              "valueString" : "Condition"
            }]
          }],
          "rule" : [{
            "name" : "30f36551",
            "source" : [{
              "context" : "src",
              "element" : "item",
              "listMode" : "first",
              "variable" : "item",
              "condition" : "(linkId = 'Ccc.B23.DE87') and answer.exists()"
            }],
            "rule" : [{
              "name" : "ba174f0b",
              "source" : [{
                "context" : "item"
              }],
              "dependent" : [{
                "name" : "CccconditionCccb23de87",
                "variable" : ["src", "item", "tgt"]
              }]
            }]
          }]
        }]
      }]
    },
    {
      "name" : "3efea57e",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "item",
        "condition" : "(linkId = 'Ccc.B23.DE88') and answer.exists()"
      }],
      "rule" : [{
        "name" : "0077703f",
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
          "name" : "9805d737",
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
              "valueString" : "/Condition/"
            },
            {
              "valueId" : "uuid"
            }]
          }]
        },
        {
          "name" : "999ae6b0",
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
              "valueString" : "Condition"
            }]
          }],
          "rule" : [{
            "name" : "f0521ba0",
            "source" : [{
              "context" : "src",
              "element" : "item",
              "listMode" : "first",
              "variable" : "item",
              "condition" : "(linkId = 'Ccc.B23.DE88') and answer.exists()"
            }],
            "rule" : [{
              "name" : "f570c42d",
              "source" : [{
                "context" : "item"
              }],
              "dependent" : [{
                "name" : "CccconditionCccb23de88",
                "variable" : ["src", "item", "tgt"]
              }]
            }]
          }]
        }]
      }]
    },
    {
      "name" : "cc634914",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "item",
        "condition" : "(linkId = 'Ccc.B23.DE89') and answer.exists()"
      }],
      "rule" : [{
        "name" : "09b39961",
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
          "name" : "9805d737",
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
              "valueString" : "/Condition/"
            },
            {
              "valueId" : "uuid"
            }]
          }]
        },
        {
          "name" : "d6e439e9",
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
              "valueString" : "Condition"
            }]
          }],
          "rule" : [{
            "name" : "72e06a74",
            "source" : [{
              "context" : "src",
              "element" : "item",
              "listMode" : "first",
              "variable" : "item",
              "condition" : "(linkId = 'Ccc.B23.DE89') and answer.exists()"
            }],
            "rule" : [{
              "name" : "226a96b3",
              "source" : [{
                "context" : "item"
              }],
              "dependent" : [{
                "name" : "CccconditionCccb23de89",
                "variable" : ["src", "item", "tgt"]
              }]
            }]
          }]
        }]
      }]
    },
    {
      "name" : "feb0d657",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "item",
        "condition" : "(linkId = 'Ccc.B23.DE13') and answer.exists()"
      }],
      "rule" : [{
        "name" : "08bcb577",
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
          "name" : "9805d737",
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
              "valueString" : "/Condition/"
            },
            {
              "valueId" : "uuid"
            }]
          }]
        },
        {
          "name" : "076ff820",
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
              "valueString" : "Condition"
            }]
          }],
          "rule" : [{
            "name" : "a1450efb",
            "source" : [{
              "context" : "src",
              "element" : "item",
              "listMode" : "first",
              "variable" : "item",
              "condition" : "(linkId = 'Ccc.B23.DE13') and answer.exists()"
            }],
            "rule" : [{
              "name" : "66186a0c",
              "source" : [{
                "context" : "item"
              }],
              "dependent" : [{
                "name" : "CccconditionCccb23de13",
                "variable" : ["src", "item", "tgt"]
              }]
            }]
          }]
        }]
      }]
    },
    {
      "name" : "d819a392",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "item",
        "condition" : "(linkId = 'Ccc.B23.DE14') and answer.exists()"
      }],
      "rule" : [{
        "name" : "90e804b6",
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
          "name" : "9805d737",
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
              "valueString" : "/Condition/"
            },
            {
              "valueId" : "uuid"
            }]
          }]
        },
        {
          "name" : "3ef7f05b",
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
              "valueString" : "Condition"
            }]
          }],
          "rule" : [{
            "name" : "88d1e8c7",
            "source" : [{
              "context" : "src",
              "element" : "item",
              "listMode" : "first",
              "variable" : "item",
              "condition" : "(linkId = 'Ccc.B23.DE14') and answer.exists()"
            }],
            "rule" : [{
              "name" : "2dcb0090",
              "source" : [{
                "context" : "item"
              }],
              "dependent" : [{
                "name" : "CccconditionCccb23de14",
                "variable" : ["src", "item", "tgt"]
              }]
            }]
          }]
        }]
      }]
    },
    {
      "name" : "e3b54720",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "item",
        "condition" : "(linkId = 'Ccc.B23.DE15') and answer.exists()"
      }],
      "rule" : [{
        "name" : "79ef4ab2",
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
          "name" : "9805d737",
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
              "valueString" : "/Condition/"
            },
            {
              "valueId" : "uuid"
            }]
          }]
        },
        {
          "name" : "2eb659f8",
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
              "valueString" : "Condition"
            }]
          }],
          "rule" : [{
            "name" : "21fccbde",
            "source" : [{
              "context" : "src",
              "element" : "item",
              "listMode" : "first",
              "variable" : "item",
              "condition" : "(linkId = 'Ccc.B23.DE15') and answer.exists()"
            }],
            "rule" : [{
              "name" : "fe470a2a",
              "source" : [{
                "context" : "item"
              }],
              "dependent" : [{
                "name" : "CccconditionCccb23de15",
                "variable" : ["src", "item", "tgt"]
              }]
            }]
          }]
        }]
      }]
    },
    {
      "name" : "974a1d36",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "item",
        "condition" : "(linkId = 'Ccc.B23.DE94') and answer.exists()"
      }],
      "rule" : [{
        "name" : "cb434a7e",
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
          "name" : "9805d737",
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
              "valueString" : "/Condition/"
            },
            {
              "valueId" : "uuid"
            }]
          }]
        },
        {
          "name" : "4238505f",
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
              "valueString" : "Condition"
            }]
          }],
          "rule" : [{
            "name" : "a323ced7",
            "source" : [{
              "context" : "src",
              "element" : "item",
              "listMode" : "first",
              "variable" : "item",
              "condition" : "(linkId = 'Ccc.B23.DE94') and answer.exists()"
            }],
            "rule" : [{
              "name" : "4bfe2573",
              "source" : [{
                "context" : "item"
              }],
              "dependent" : [{
                "name" : "CccconditionCccb23de94",
                "variable" : ["src", "item", "tgt"]
              }]
            }]
          }]
        }]
      }]
    },
    {
      "name" : "51f9d108",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "listMode" : "first",
        "variable" : "item",
        "condition" : "(linkId = 'Ccc.B23.DE98') and answer.exists()"
      }],
      "rule" : [{
        "name" : "67075fc4",
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
          "name" : "9805d737",
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
              "valueString" : "/Condition/"
            },
            {
              "valueId" : "uuid"
            }]
          }]
        },
        {
          "name" : "b82b0c05",
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
              "valueString" : "Condition"
            }]
          }],
          "rule" : [{
            "name" : "19da18a9",
            "source" : [{
              "context" : "src",
              "element" : "item",
              "listMode" : "first",
              "variable" : "item",
              "condition" : "(linkId = 'Ccc.B23.DE98') and answer.exists()"
            }],
            "rule" : [{
              "name" : "ec699e2c",
              "source" : [{
                "context" : "item"
              }],
              "dependent" : [{
                "name" : "CccconditionCccb23de98",
                "variable" : ["src", "item", "tgt"]
              }]
            }]
          }]
        }]
      }]
    },
    {
      "name" : "0a3b92c9",
      "source" : [{
        "context" : "src",
        "condition" : "src.item.where(linkId = 'collector').answer.where(value.code = 'Ccc.B23.DE83')"
      }],
      "rule" : [{
        "name" : "c5fd054e",
        "source" : [{
          "context" : "src",
          "element" : "item",
          "listMode" : "first",
          "variable" : "item",
          "condition" : "(linkId = 'collector') and answer.exists()"
        }],
        "rule" : [{
          "name" : "d2d9497c",
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
            "name" : "9805d737",
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
                "valueString" : "/Condition/"
              },
              {
                "valueId" : "uuid"
              }]
            }]
          },
          {
            "name" : "5a82b6a2",
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
                "valueString" : "Condition"
              }]
            }],
            "rule" : [{
              "name" : "a49f2674",
              "source" : [{
                "context" : "src"
              }],
              "dependent" : [{
                "name" : "CccconditioncollectorCccb23de83",
                "variable" : ["src", "item", "tgt"]
              }]
            }]
          }]
        }]
      }]
    },
    {
      "name" : "ca7b518e",
      "source" : [{
        "context" : "src",
        "condition" : "src.item.where(linkId = 'collector').answer.where(value.code = 'Ccc.B23.DE06')"
      }],
      "rule" : [{
        "name" : "7708b4b0",
        "source" : [{
          "context" : "src",
          "element" : "item",
          "listMode" : "first",
          "variable" : "item",
          "condition" : "(linkId = 'collector') and answer.exists()"
        }],
        "rule" : [{
          "name" : "37d42e73",
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
            "name" : "9805d737",
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
                "valueString" : "/Condition/"
              },
              {
                "valueId" : "uuid"
              }]
            }]
          },
          {
            "name" : "e87439ac",
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
                "valueString" : "Condition"
              }]
            }],
            "rule" : [{
              "name" : "ab6f052f",
              "source" : [{
                "context" : "src"
              }],
              "dependent" : [{
                "name" : "CccconditioncollectorCccb23de06",
                "variable" : ["src", "item", "tgt"]
              }]
            }]
          }]
        }]
      }]
    },
    {
      "name" : "3bb7e65c",
      "source" : [{
        "context" : "src",
        "condition" : "src.item.where(linkId = 'collector').answer.where(value.code = 'Ccc.B23.DE85')"
      }],
      "rule" : [{
        "name" : "7a81127f",
        "source" : [{
          "context" : "src",
          "element" : "item",
          "listMode" : "first",
          "variable" : "item",
          "condition" : "(linkId = 'collector') and answer.exists()"
        }],
        "rule" : [{
          "name" : "17b29f54",
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
            "name" : "9805d737",
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
                "valueString" : "/Condition/"
              },
              {
                "valueId" : "uuid"
              }]
            }]
          },
          {
            "name" : "dd73e267",
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
                "valueString" : "Condition"
              }]
            }],
            "rule" : [{
              "name" : "34be21c7",
              "source" : [{
                "context" : "src"
              }],
              "dependent" : [{
                "name" : "CccconditioncollectorCccb23de85",
                "variable" : ["src", "item", "tgt"]
              }]
            }]
          }]
        }]
      }]
    },
    {
      "name" : "125b7e31",
      "source" : [{
        "context" : "src",
        "condition" : "src.item.where(linkId = 'collector').answer.where(value.code = 'Ccc.B23.DE86')"
      }],
      "rule" : [{
        "name" : "742af28b",
        "source" : [{
          "context" : "src",
          "element" : "item",
          "listMode" : "first",
          "variable" : "item",
          "condition" : "(linkId = 'collector') and answer.exists()"
        }],
        "rule" : [{
          "name" : "5ebec517",
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
            "name" : "9805d737",
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
                "valueString" : "/Condition/"
              },
              {
                "valueId" : "uuid"
              }]
            }]
          },
          {
            "name" : "b37e1f00",
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
                "valueString" : "Condition"
              }]
            }],
            "rule" : [{
              "name" : "85e79f33",
              "source" : [{
                "context" : "src"
              }],
              "dependent" : [{
                "name" : "CccconditioncollectorCccb23de86",
                "variable" : ["src", "item", "tgt"]
              }]
            }]
          }]
        }]
      }]
    },
    {
      "name" : "332b8a91",
      "source" : [{
        "context" : "src",
        "condition" : "src.item.where(linkId = 'collector').answer.where(value.code = 'Ccc.B23.DE106')"
      }],
      "rule" : [{
        "name" : "8aec9c45",
        "source" : [{
          "context" : "src",
          "element" : "item",
          "listMode" : "first",
          "variable" : "item",
          "condition" : "(linkId = 'collector') and answer.exists()"
        }],
        "rule" : [{
          "name" : "b3badac5",
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
            "name" : "9805d737",
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
                "valueString" : "/Condition/"
              },
              {
                "valueId" : "uuid"
              }]
            }]
          },
          {
            "name" : "8a9ab3d6",
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
                "valueString" : "Condition"
              }]
            }],
            "rule" : [{
              "name" : "5f3c80c3",
              "source" : [{
                "context" : "src"
              }],
              "dependent" : [{
                "name" : "CccconditioncollectorCccb23de106",
                "variable" : ["src", "item", "tgt"]
              }]
            }]
          }]
        }]
      }]
    },
    {
      "name" : "4afba6d2",
      "source" : [{
        "context" : "src",
        "condition" : "src.item.where(linkId = 'collector').answer.where(value.code = 'Ccc.B23.DE87')"
      }],
      "rule" : [{
        "name" : "98d3b1f5",
        "source" : [{
          "context" : "src",
          "element" : "item",
          "listMode" : "first",
          "variable" : "item",
          "condition" : "(linkId = 'collector') and answer.exists()"
        }],
        "rule" : [{
          "name" : "3814725e",
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
            "name" : "9805d737",
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
                "valueString" : "/Condition/"
              },
              {
                "valueId" : "uuid"
              }]
            }]
          },
          {
            "name" : "7d2dd85f",
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
                "valueString" : "Condition"
              }]
            }],
            "rule" : [{
              "name" : "69dafef9",
              "source" : [{
                "context" : "src"
              }],
              "dependent" : [{
                "name" : "CccconditioncollectorCccb23de87",
                "variable" : ["src", "item", "tgt"]
              }]
            }]
          }]
        }]
      }]
    },
    {
      "name" : "4ed6008e",
      "source" : [{
        "context" : "src",
        "condition" : "src.item.where(linkId = 'collector').answer.where(value.code = 'Ccc.B23.DE88')"
      }],
      "rule" : [{
        "name" : "c4a03e24",
        "source" : [{
          "context" : "src",
          "element" : "item",
          "listMode" : "first",
          "variable" : "item",
          "condition" : "(linkId = 'collector') and answer.exists()"
        }],
        "rule" : [{
          "name" : "43b46f0d",
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
            "name" : "9805d737",
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
                "valueString" : "/Condition/"
              },
              {
                "valueId" : "uuid"
              }]
            }]
          },
          {
            "name" : "65150a1a",
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
                "valueString" : "Condition"
              }]
            }],
            "rule" : [{
              "name" : "b8d9f845",
              "source" : [{
                "context" : "src"
              }],
              "dependent" : [{
                "name" : "CccconditioncollectorCccb23de88",
                "variable" : ["src", "item", "tgt"]
              }]
            }]
          }]
        }]
      }]
    },
    {
      "name" : "fd95ca9c",
      "source" : [{
        "context" : "src",
        "condition" : "src.item.where(linkId = 'collector').answer.where(value.code = 'Ccc.B23.DE89')"
      }],
      "rule" : [{
        "name" : "ad230210",
        "source" : [{
          "context" : "src",
          "element" : "item",
          "listMode" : "first",
          "variable" : "item",
          "condition" : "(linkId = 'collector') and answer.exists()"
        }],
        "rule" : [{
          "name" : "4b1fc155",
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
            "name" : "9805d737",
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
                "valueString" : "/Condition/"
              },
              {
                "valueId" : "uuid"
              }]
            }]
          },
          {
            "name" : "5f78e785",
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
                "valueString" : "Condition"
              }]
            }],
            "rule" : [{
              "name" : "e0b2a7ea",
              "source" : [{
                "context" : "src"
              }],
              "dependent" : [{
                "name" : "CccconditioncollectorCccb23de89",
                "variable" : ["src", "item", "tgt"]
              }]
            }]
          }]
        }]
      }]
    },
    {
      "name" : "db30808b",
      "source" : [{
        "context" : "src",
        "condition" : "src.item.where(linkId = 'collector').answer.where(value.code = 'Ccc.B23.DE13')"
      }],
      "rule" : [{
        "name" : "df1da7ee",
        "source" : [{
          "context" : "src",
          "element" : "item",
          "listMode" : "first",
          "variable" : "item",
          "condition" : "(linkId = 'collector') and answer.exists()"
        }],
        "rule" : [{
          "name" : "a3790ce2",
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
            "name" : "9805d737",
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
                "valueString" : "/Condition/"
              },
              {
                "valueId" : "uuid"
              }]
            }]
          },
          {
            "name" : "e291ac38",
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
                "valueString" : "Condition"
              }]
            }],
            "rule" : [{
              "name" : "ca1c2344",
              "source" : [{
                "context" : "src"
              }],
              "dependent" : [{
                "name" : "CccconditioncollectorCccb23de13",
                "variable" : ["src", "item", "tgt"]
              }]
            }]
          }]
        }]
      }]
    },
    {
      "name" : "b6cebe17",
      "source" : [{
        "context" : "src",
        "condition" : "src.item.where(linkId = 'collector').answer.where(value.code = 'Ccc.B23.DE14')"
      }],
      "rule" : [{
        "name" : "4bec0867",
        "source" : [{
          "context" : "src",
          "element" : "item",
          "listMode" : "first",
          "variable" : "item",
          "condition" : "(linkId = 'collector') and answer.exists()"
        }],
        "rule" : [{
          "name" : "eec21165",
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
            "name" : "9805d737",
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
                "valueString" : "/Condition/"
              },
              {
                "valueId" : "uuid"
              }]
            }]
          },
          {
            "name" : "71ec8c01",
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
                "valueString" : "Condition"
              }]
            }],
            "rule" : [{
              "name" : "d2d217d7",
              "source" : [{
                "context" : "src"
              }],
              "dependent" : [{
                "name" : "CccconditioncollectorCccb23de14",
                "variable" : ["src", "item", "tgt"]
              }]
            }]
          }]
        }]
      }]
    },
    {
      "name" : "5fb77efc",
      "source" : [{
        "context" : "src",
        "condition" : "src.item.where(linkId = 'collector').answer.where(value.code = 'Ccc.B23.DE15')"
      }],
      "rule" : [{
        "name" : "84c7d9e0",
        "source" : [{
          "context" : "src",
          "element" : "item",
          "listMode" : "first",
          "variable" : "item",
          "condition" : "(linkId = 'collector') and answer.exists()"
        }],
        "rule" : [{
          "name" : "5f0e524b",
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
            "name" : "9805d737",
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
                "valueString" : "/Condition/"
              },
              {
                "valueId" : "uuid"
              }]
            }]
          },
          {
            "name" : "78497d5c",
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
                "valueString" : "Condition"
              }]
            }],
            "rule" : [{
              "name" : "d06cdfa3",
              "source" : [{
                "context" : "src"
              }],
              "dependent" : [{
                "name" : "CccconditioncollectorCccb23de15",
                "variable" : ["src", "item", "tgt"]
              }]
            }]
          }]
        }]
      }]
    },
    {
      "name" : "1277893a",
      "source" : [{
        "context" : "src",
        "condition" : "src.item.where(linkId = 'collector').answer.where(value.code = 'Ccc.B23.DE94')"
      }],
      "rule" : [{
        "name" : "d351f4bc",
        "source" : [{
          "context" : "src",
          "element" : "item",
          "listMode" : "first",
          "variable" : "item",
          "condition" : "(linkId = 'collector') and answer.exists()"
        }],
        "rule" : [{
          "name" : "e9cd9662",
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
            "name" : "9805d737",
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
                "valueString" : "/Condition/"
              },
              {
                "valueId" : "uuid"
              }]
            }]
          },
          {
            "name" : "887a5cf4",
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
                "valueString" : "Condition"
              }]
            }],
            "rule" : [{
              "name" : "fd905dcf",
              "source" : [{
                "context" : "src"
              }],
              "dependent" : [{
                "name" : "CccconditioncollectorCccb23de94",
                "variable" : ["src", "item", "tgt"]
              }]
            }]
          }]
        }]
      }]
    },
    {
      "name" : "a8b5fbe8",
      "source" : [{
        "context" : "src",
        "condition" : "src.item.where(linkId = 'collector').answer.where(value.code = 'Ccc.B23.DE98')"
      }],
      "rule" : [{
        "name" : "18115b63",
        "source" : [{
          "context" : "src",
          "element" : "item",
          "listMode" : "first",
          "variable" : "item",
          "condition" : "(linkId = 'collector') and answer.exists()"
        }],
        "rule" : [{
          "name" : "ac7c8731",
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
            "name" : "9805d737",
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
                "valueString" : "/Condition/"
              },
              {
                "valueId" : "uuid"
              }]
            }]
          },
          {
            "name" : "3c87eb32",
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
                "valueString" : "Condition"
              }]
            }],
            "rule" : [{
              "name" : "50233ad8",
              "source" : [{
                "context" : "src"
              }],
              "dependent" : [{
                "name" : "CccconditioncollectorCccb23de98",
                "variable" : ["src", "item", "tgt"]
              }]
            }]
          }]
        }]
      }]
    },
    {
      "name" : "d596b39a",
      "source" : [{
        "context" : "src",
        "condition" : "src.item.where(linkId = 'collector').answer.where(value.code = 'collector')"
      }],
      "rule" : [{
        "name" : "63e7ab00",
        "source" : [{
          "context" : "src",
          "element" : "item",
          "listMode" : "first",
          "variable" : "item",
          "condition" : "(linkId = 'collector') and answer.exists()"
        }],
        "rule" : [{
          "name" : "652cfd04",
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
            "name" : "9805d737",
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
                "valueString" : "/Condition/"
              },
              {
                "valueId" : "uuid"
              }]
            }]
          },
          {
            "name" : "dbad65ac",
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
                "valueString" : "Condition"
              }]
            }],
            "rule" : [{
              "name" : "dee30196",
              "source" : [{
                "context" : "src"
              }],
              "dependent" : [{
                "name" : "Cccconditioncollectorcollector",
                "variable" : ["src", "item", "tgt"]
              }]
            }]
          }]
        }]
      }]
    }]
  },
  {
    "name" : "CccconditionCccb23de83",
    "typeMode" : "none",
    "input" : [{
      "name" : "src",
      "mode" : "source"
    },
    {
      "name" : "item",
      "mode" : "source"
    },
    {
      "name" : "tgt",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "13fd46f9",
      "source" : [{
        "context" : "item",
        "element" : "answer",
        "listMode" : "first",
        "variable" : "a"
      }],
      "rule" : [{
        "name" : "23252e10",
        "source" : [{
          "context" : "src",
          "element" : "subject",
          "variable" : "sub"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "subject",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "sub"
          }]
        }]
      },
      {
        "name" : "553aae7e",
        "source" : [{
          "context" : "src",
          "element" : "encounter",
          "variable" : "en"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "encounter",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "en"
          }]
        }]
      },
      {
        "name" : "cce2a9b1",
        "source" : [{
          "context" : "src",
          "element" : "item",
          "variable" : "itemtimestamp",
          "condition" : "linkId = 'timestamp'"
        }],
        "rule" : [{
          "name" : "46018ce4",
          "source" : [{
            "context" : "itemtimestamp",
            "element" : "answer",
            "listMode" : "first",
            "variable" : "atimestamp"
          }],
          "rule" : [{
            "name" : "ea256bb4",
            "source" : [{
              "context" : "atimestamp",
              "element" : "value",
              "variable" : "val"
            }],
            "target" : [{
              "context" : "tgt",
              "contextType" : "variable",
              "element" : "recordedDate",
              "transform" : "copy",
              "parameter" : [{
                "valueId" : "val"
              }]
            }]
          }]
        }]
      },
      {
        "name" : "a10c1e7b",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "code",
          "variable" : "cs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        }],
        "rule" : [{
          "name" : "8e761921",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "tgt",
            "contextType" : "variable",
            "element" : "code",
            "variable" : "cs",
            "transform" : "create",
            "parameter" : [{
              "valueString" : "CodeableConcept"
            }]
          },
          {
            "context" : "cs",
            "contextType" : "variable",
            "element" : "coding",
            "variable" : "ccs",
            "transform" : "create",
            "parameter" : [{
              "valueString" : "Coding"
            }]
          },
          {
            "context" : "ccs",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "Ccc.B23.DE83"
            }]
          },
          {
            "context" : "ccs",
            "contextType" : "variable",
            "element" : "system",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes"
            }]
          }]
        }]
      }]
    },
    {
      "name" : "a8956d4e",
      "source" : [{
        "context" : "item",
        "element" : "answer",
        "condition" : "value.code = 'agree'"
      }],
      "rule" : [{
        "name" : "05de813c",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "clinicalStatus",
          "variable" : "cs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        },
        {
          "context" : "cs",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "ccs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Coding"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "active"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "system",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "http://terminology.hl7.org/CodeSystem/condition-clinical"
          }]
        }]
      },
      {
        "name" : "eb81c749",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "verificationStatus",
          "variable" : "cs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        },
        {
          "context" : "cs",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "ccs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Coding"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "confirmed"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "system",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "http://terminology.hl7.org/CodeSystem/condition-ver-status"
          }]
        }]
      }]
    },
    {
      "name" : "2219f1ae",
      "source" : [{
        "context" : "item",
        "element" : "answer",
        "condition" : "value.code = 'disagree'"
      }],
      "rule" : [{
        "name" : "d058c96f",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "clinicalStatus",
          "variable" : "cs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        },
        {
          "context" : "cs",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "ccs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Coding"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "inactive"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "system",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "http://terminology.hl7.org/CodeSystem/condition-clinical"
          }]
        }]
      },
      {
        "name" : "e74cae6e",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "verificationStatus",
          "variable" : "cs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        },
        {
          "context" : "cs",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "ccs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Coding"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "refuted"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "system",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "http://terminology.hl7.org/CodeSystem/condition-ver-status"
          }]
        }]
      }]
    }]
  },
  {
    "name" : "CccconditionCccb23de06",
    "typeMode" : "none",
    "input" : [{
      "name" : "src",
      "mode" : "source"
    },
    {
      "name" : "item",
      "mode" : "source"
    },
    {
      "name" : "tgt",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "558d6c0d",
      "source" : [{
        "context" : "item",
        "element" : "answer",
        "listMode" : "first",
        "variable" : "a"
      }],
      "rule" : [{
        "name" : "23252e10",
        "source" : [{
          "context" : "src",
          "element" : "subject",
          "variable" : "sub"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "subject",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "sub"
          }]
        }]
      },
      {
        "name" : "553aae7e",
        "source" : [{
          "context" : "src",
          "element" : "encounter",
          "variable" : "en"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "encounter",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "en"
          }]
        }]
      },
      {
        "name" : "cce2a9b1",
        "source" : [{
          "context" : "src",
          "element" : "item",
          "variable" : "itemtimestamp",
          "condition" : "linkId = 'timestamp'"
        }],
        "rule" : [{
          "name" : "46018ce4",
          "source" : [{
            "context" : "itemtimestamp",
            "element" : "answer",
            "listMode" : "first",
            "variable" : "atimestamp"
          }],
          "rule" : [{
            "name" : "ea256bb4",
            "source" : [{
              "context" : "atimestamp",
              "element" : "value",
              "variable" : "val"
            }],
            "target" : [{
              "context" : "tgt",
              "contextType" : "variable",
              "element" : "recordedDate",
              "transform" : "copy",
              "parameter" : [{
                "valueId" : "val"
              }]
            }]
          }]
        }]
      },
      {
        "name" : "8ef845b0",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "code",
          "variable" : "cs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        }],
        "rule" : [{
          "name" : "dd0fd01c",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "tgt",
            "contextType" : "variable",
            "element" : "code",
            "variable" : "cs",
            "transform" : "create",
            "parameter" : [{
              "valueString" : "CodeableConcept"
            }]
          },
          {
            "context" : "cs",
            "contextType" : "variable",
            "element" : "coding",
            "variable" : "ccs",
            "transform" : "create",
            "parameter" : [{
              "valueString" : "Coding"
            }]
          },
          {
            "context" : "ccs",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "Ccc.B23.DE06"
            }]
          },
          {
            "context" : "ccs",
            "contextType" : "variable",
            "element" : "system",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes"
            }]
          }]
        }]
      }]
    },
    {
      "name" : "a8956d4e",
      "source" : [{
        "context" : "item",
        "element" : "answer",
        "condition" : "value.code = 'agree'"
      }],
      "rule" : [{
        "name" : "05de813c",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "clinicalStatus",
          "variable" : "cs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        },
        {
          "context" : "cs",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "ccs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Coding"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "active"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "system",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "http://terminology.hl7.org/CodeSystem/condition-clinical"
          }]
        }]
      },
      {
        "name" : "eb81c749",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "verificationStatus",
          "variable" : "cs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        },
        {
          "context" : "cs",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "ccs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Coding"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "confirmed"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "system",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "http://terminology.hl7.org/CodeSystem/condition-ver-status"
          }]
        }]
      }]
    },
    {
      "name" : "2219f1ae",
      "source" : [{
        "context" : "item",
        "element" : "answer",
        "condition" : "value.code = 'disagree'"
      }],
      "rule" : [{
        "name" : "d058c96f",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "clinicalStatus",
          "variable" : "cs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        },
        {
          "context" : "cs",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "ccs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Coding"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "inactive"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "system",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "http://terminology.hl7.org/CodeSystem/condition-clinical"
          }]
        }]
      },
      {
        "name" : "e74cae6e",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "verificationStatus",
          "variable" : "cs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        },
        {
          "context" : "cs",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "ccs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Coding"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "refuted"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "system",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "http://terminology.hl7.org/CodeSystem/condition-ver-status"
          }]
        }]
      }]
    }]
  },
  {
    "name" : "CccconditionCccb23de85",
    "typeMode" : "none",
    "input" : [{
      "name" : "src",
      "mode" : "source"
    },
    {
      "name" : "item",
      "mode" : "source"
    },
    {
      "name" : "tgt",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "6f3a3752",
      "source" : [{
        "context" : "item",
        "element" : "answer",
        "listMode" : "first",
        "variable" : "a"
      }],
      "rule" : [{
        "name" : "23252e10",
        "source" : [{
          "context" : "src",
          "element" : "subject",
          "variable" : "sub"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "subject",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "sub"
          }]
        }]
      },
      {
        "name" : "553aae7e",
        "source" : [{
          "context" : "src",
          "element" : "encounter",
          "variable" : "en"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "encounter",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "en"
          }]
        }]
      },
      {
        "name" : "cce2a9b1",
        "source" : [{
          "context" : "src",
          "element" : "item",
          "variable" : "itemtimestamp",
          "condition" : "linkId = 'timestamp'"
        }],
        "rule" : [{
          "name" : "46018ce4",
          "source" : [{
            "context" : "itemtimestamp",
            "element" : "answer",
            "listMode" : "first",
            "variable" : "atimestamp"
          }],
          "rule" : [{
            "name" : "ea256bb4",
            "source" : [{
              "context" : "atimestamp",
              "element" : "value",
              "variable" : "val"
            }],
            "target" : [{
              "context" : "tgt",
              "contextType" : "variable",
              "element" : "recordedDate",
              "transform" : "copy",
              "parameter" : [{
                "valueId" : "val"
              }]
            }]
          }]
        }]
      },
      {
        "name" : "a2ce3a97",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "code",
          "variable" : "cs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        }],
        "rule" : [{
          "name" : "edf923c3",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "tgt",
            "contextType" : "variable",
            "element" : "code",
            "variable" : "cs",
            "transform" : "create",
            "parameter" : [{
              "valueString" : "CodeableConcept"
            }]
          },
          {
            "context" : "cs",
            "contextType" : "variable",
            "element" : "coding",
            "variable" : "ccs",
            "transform" : "create",
            "parameter" : [{
              "valueString" : "Coding"
            }]
          },
          {
            "context" : "ccs",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "Ccc.B23.DE85"
            }]
          },
          {
            "context" : "ccs",
            "contextType" : "variable",
            "element" : "system",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes"
            }]
          }]
        }]
      }]
    },
    {
      "name" : "a8956d4e",
      "source" : [{
        "context" : "item",
        "element" : "answer",
        "condition" : "value.code = 'agree'"
      }],
      "rule" : [{
        "name" : "05de813c",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "clinicalStatus",
          "variable" : "cs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        },
        {
          "context" : "cs",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "ccs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Coding"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "active"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "system",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "http://terminology.hl7.org/CodeSystem/condition-clinical"
          }]
        }]
      },
      {
        "name" : "eb81c749",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "verificationStatus",
          "variable" : "cs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        },
        {
          "context" : "cs",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "ccs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Coding"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "confirmed"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "system",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "http://terminology.hl7.org/CodeSystem/condition-ver-status"
          }]
        }]
      }]
    },
    {
      "name" : "2219f1ae",
      "source" : [{
        "context" : "item",
        "element" : "answer",
        "condition" : "value.code = 'disagree'"
      }],
      "rule" : [{
        "name" : "d058c96f",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "clinicalStatus",
          "variable" : "cs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        },
        {
          "context" : "cs",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "ccs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Coding"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "inactive"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "system",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "http://terminology.hl7.org/CodeSystem/condition-clinical"
          }]
        }]
      },
      {
        "name" : "e74cae6e",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "verificationStatus",
          "variable" : "cs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        },
        {
          "context" : "cs",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "ccs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Coding"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "refuted"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "system",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "http://terminology.hl7.org/CodeSystem/condition-ver-status"
          }]
        }]
      }]
    }]
  },
  {
    "name" : "CccconditionCccb23de86",
    "typeMode" : "none",
    "input" : [{
      "name" : "src",
      "mode" : "source"
    },
    {
      "name" : "item",
      "mode" : "source"
    },
    {
      "name" : "tgt",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "fc719a3c",
      "source" : [{
        "context" : "item",
        "element" : "answer",
        "listMode" : "first",
        "variable" : "a"
      }],
      "rule" : [{
        "name" : "23252e10",
        "source" : [{
          "context" : "src",
          "element" : "subject",
          "variable" : "sub"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "subject",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "sub"
          }]
        }]
      },
      {
        "name" : "553aae7e",
        "source" : [{
          "context" : "src",
          "element" : "encounter",
          "variable" : "en"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "encounter",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "en"
          }]
        }]
      },
      {
        "name" : "cce2a9b1",
        "source" : [{
          "context" : "src",
          "element" : "item",
          "variable" : "itemtimestamp",
          "condition" : "linkId = 'timestamp'"
        }],
        "rule" : [{
          "name" : "46018ce4",
          "source" : [{
            "context" : "itemtimestamp",
            "element" : "answer",
            "listMode" : "first",
            "variable" : "atimestamp"
          }],
          "rule" : [{
            "name" : "ea256bb4",
            "source" : [{
              "context" : "atimestamp",
              "element" : "value",
              "variable" : "val"
            }],
            "target" : [{
              "context" : "tgt",
              "contextType" : "variable",
              "element" : "recordedDate",
              "transform" : "copy",
              "parameter" : [{
                "valueId" : "val"
              }]
            }]
          }]
        }]
      },
      {
        "name" : "9338b358",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "code",
          "variable" : "cs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        }],
        "rule" : [{
          "name" : "342850aa",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "tgt",
            "contextType" : "variable",
            "element" : "code",
            "variable" : "cs",
            "transform" : "create",
            "parameter" : [{
              "valueString" : "CodeableConcept"
            }]
          },
          {
            "context" : "cs",
            "contextType" : "variable",
            "element" : "coding",
            "variable" : "ccs",
            "transform" : "create",
            "parameter" : [{
              "valueString" : "Coding"
            }]
          },
          {
            "context" : "ccs",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "Ccc.B23.DE86"
            }]
          },
          {
            "context" : "ccs",
            "contextType" : "variable",
            "element" : "system",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes"
            }]
          }]
        }]
      }]
    },
    {
      "name" : "a8956d4e",
      "source" : [{
        "context" : "item",
        "element" : "answer",
        "condition" : "value.code = 'agree'"
      }],
      "rule" : [{
        "name" : "05de813c",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "clinicalStatus",
          "variable" : "cs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        },
        {
          "context" : "cs",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "ccs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Coding"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "active"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "system",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "http://terminology.hl7.org/CodeSystem/condition-clinical"
          }]
        }]
      },
      {
        "name" : "eb81c749",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "verificationStatus",
          "variable" : "cs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        },
        {
          "context" : "cs",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "ccs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Coding"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "confirmed"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "system",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "http://terminology.hl7.org/CodeSystem/condition-ver-status"
          }]
        }]
      }]
    },
    {
      "name" : "2219f1ae",
      "source" : [{
        "context" : "item",
        "element" : "answer",
        "condition" : "value.code = 'disagree'"
      }],
      "rule" : [{
        "name" : "d058c96f",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "clinicalStatus",
          "variable" : "cs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        },
        {
          "context" : "cs",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "ccs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Coding"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "inactive"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "system",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "http://terminology.hl7.org/CodeSystem/condition-clinical"
          }]
        }]
      },
      {
        "name" : "e74cae6e",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "verificationStatus",
          "variable" : "cs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        },
        {
          "context" : "cs",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "ccs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Coding"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "refuted"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "system",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "http://terminology.hl7.org/CodeSystem/condition-ver-status"
          }]
        }]
      }]
    }]
  },
  {
    "name" : "CccconditionCccb23de106",
    "typeMode" : "none",
    "input" : [{
      "name" : "src",
      "mode" : "source"
    },
    {
      "name" : "item",
      "mode" : "source"
    },
    {
      "name" : "tgt",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "671ed411",
      "source" : [{
        "context" : "item",
        "element" : "answer",
        "listMode" : "first",
        "variable" : "a"
      }],
      "rule" : [{
        "name" : "23252e10",
        "source" : [{
          "context" : "src",
          "element" : "subject",
          "variable" : "sub"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "subject",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "sub"
          }]
        }]
      },
      {
        "name" : "553aae7e",
        "source" : [{
          "context" : "src",
          "element" : "encounter",
          "variable" : "en"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "encounter",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "en"
          }]
        }]
      },
      {
        "name" : "cce2a9b1",
        "source" : [{
          "context" : "src",
          "element" : "item",
          "variable" : "itemtimestamp",
          "condition" : "linkId = 'timestamp'"
        }],
        "rule" : [{
          "name" : "46018ce4",
          "source" : [{
            "context" : "itemtimestamp",
            "element" : "answer",
            "listMode" : "first",
            "variable" : "atimestamp"
          }],
          "rule" : [{
            "name" : "ea256bb4",
            "source" : [{
              "context" : "atimestamp",
              "element" : "value",
              "variable" : "val"
            }],
            "target" : [{
              "context" : "tgt",
              "contextType" : "variable",
              "element" : "recordedDate",
              "transform" : "copy",
              "parameter" : [{
                "valueId" : "val"
              }]
            }]
          }]
        }]
      },
      {
        "name" : "d8d6d130",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "code",
          "variable" : "cs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        }],
        "rule" : [{
          "name" : "70f0a4fa",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "tgt",
            "contextType" : "variable",
            "element" : "code",
            "variable" : "cs",
            "transform" : "create",
            "parameter" : [{
              "valueString" : "CodeableConcept"
            }]
          },
          {
            "context" : "cs",
            "contextType" : "variable",
            "element" : "coding",
            "variable" : "ccs",
            "transform" : "create",
            "parameter" : [{
              "valueString" : "Coding"
            }]
          },
          {
            "context" : "ccs",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "Ccc.B23.DE106"
            }]
          },
          {
            "context" : "ccs",
            "contextType" : "variable",
            "element" : "system",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes"
            }]
          }]
        }]
      }]
    },
    {
      "name" : "a8956d4e",
      "source" : [{
        "context" : "item",
        "element" : "answer",
        "condition" : "value.code = 'agree'"
      }],
      "rule" : [{
        "name" : "05de813c",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "clinicalStatus",
          "variable" : "cs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        },
        {
          "context" : "cs",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "ccs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Coding"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "active"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "system",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "http://terminology.hl7.org/CodeSystem/condition-clinical"
          }]
        }]
      },
      {
        "name" : "eb81c749",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "verificationStatus",
          "variable" : "cs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        },
        {
          "context" : "cs",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "ccs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Coding"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "confirmed"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "system",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "http://terminology.hl7.org/CodeSystem/condition-ver-status"
          }]
        }]
      }]
    },
    {
      "name" : "2219f1ae",
      "source" : [{
        "context" : "item",
        "element" : "answer",
        "condition" : "value.code = 'disagree'"
      }],
      "rule" : [{
        "name" : "d058c96f",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "clinicalStatus",
          "variable" : "cs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        },
        {
          "context" : "cs",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "ccs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Coding"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "inactive"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "system",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "http://terminology.hl7.org/CodeSystem/condition-clinical"
          }]
        }]
      },
      {
        "name" : "e74cae6e",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "verificationStatus",
          "variable" : "cs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        },
        {
          "context" : "cs",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "ccs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Coding"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "refuted"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "system",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "http://terminology.hl7.org/CodeSystem/condition-ver-status"
          }]
        }]
      }]
    }]
  },
  {
    "name" : "CccconditionCccb23de87",
    "typeMode" : "none",
    "input" : [{
      "name" : "src",
      "mode" : "source"
    },
    {
      "name" : "item",
      "mode" : "source"
    },
    {
      "name" : "tgt",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "9ff74c9e",
      "source" : [{
        "context" : "item",
        "element" : "answer",
        "listMode" : "first",
        "variable" : "a"
      }],
      "rule" : [{
        "name" : "23252e10",
        "source" : [{
          "context" : "src",
          "element" : "subject",
          "variable" : "sub"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "subject",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "sub"
          }]
        }]
      },
      {
        "name" : "553aae7e",
        "source" : [{
          "context" : "src",
          "element" : "encounter",
          "variable" : "en"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "encounter",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "en"
          }]
        }]
      },
      {
        "name" : "cce2a9b1",
        "source" : [{
          "context" : "src",
          "element" : "item",
          "variable" : "itemtimestamp",
          "condition" : "linkId = 'timestamp'"
        }],
        "rule" : [{
          "name" : "46018ce4",
          "source" : [{
            "context" : "itemtimestamp",
            "element" : "answer",
            "listMode" : "first",
            "variable" : "atimestamp"
          }],
          "rule" : [{
            "name" : "ea256bb4",
            "source" : [{
              "context" : "atimestamp",
              "element" : "value",
              "variable" : "val"
            }],
            "target" : [{
              "context" : "tgt",
              "contextType" : "variable",
              "element" : "recordedDate",
              "transform" : "copy",
              "parameter" : [{
                "valueId" : "val"
              }]
            }]
          }]
        }]
      },
      {
        "name" : "62727c30",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "code",
          "variable" : "cs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        }],
        "rule" : [{
          "name" : "01f1ca5f",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "tgt",
            "contextType" : "variable",
            "element" : "code",
            "variable" : "cs",
            "transform" : "create",
            "parameter" : [{
              "valueString" : "CodeableConcept"
            }]
          },
          {
            "context" : "cs",
            "contextType" : "variable",
            "element" : "coding",
            "variable" : "ccs",
            "transform" : "create",
            "parameter" : [{
              "valueString" : "Coding"
            }]
          },
          {
            "context" : "ccs",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "Ccc.B23.DE87"
            }]
          },
          {
            "context" : "ccs",
            "contextType" : "variable",
            "element" : "system",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes"
            }]
          }]
        }]
      }]
    },
    {
      "name" : "a8956d4e",
      "source" : [{
        "context" : "item",
        "element" : "answer",
        "condition" : "value.code = 'agree'"
      }],
      "rule" : [{
        "name" : "05de813c",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "clinicalStatus",
          "variable" : "cs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        },
        {
          "context" : "cs",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "ccs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Coding"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "active"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "system",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "http://terminology.hl7.org/CodeSystem/condition-clinical"
          }]
        }]
      },
      {
        "name" : "eb81c749",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "verificationStatus",
          "variable" : "cs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        },
        {
          "context" : "cs",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "ccs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Coding"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "confirmed"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "system",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "http://terminology.hl7.org/CodeSystem/condition-ver-status"
          }]
        }]
      }]
    },
    {
      "name" : "2219f1ae",
      "source" : [{
        "context" : "item",
        "element" : "answer",
        "condition" : "value.code = 'disagree'"
      }],
      "rule" : [{
        "name" : "d058c96f",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "clinicalStatus",
          "variable" : "cs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        },
        {
          "context" : "cs",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "ccs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Coding"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "inactive"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "system",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "http://terminology.hl7.org/CodeSystem/condition-clinical"
          }]
        }]
      },
      {
        "name" : "e74cae6e",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "verificationStatus",
          "variable" : "cs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        },
        {
          "context" : "cs",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "ccs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Coding"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "refuted"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "system",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "http://terminology.hl7.org/CodeSystem/condition-ver-status"
          }]
        }]
      }]
    }]
  },
  {
    "name" : "CccconditionCccb23de88",
    "typeMode" : "none",
    "input" : [{
      "name" : "src",
      "mode" : "source"
    },
    {
      "name" : "item",
      "mode" : "source"
    },
    {
      "name" : "tgt",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "36ea706b",
      "source" : [{
        "context" : "item",
        "element" : "answer",
        "listMode" : "first",
        "variable" : "a"
      }],
      "rule" : [{
        "name" : "23252e10",
        "source" : [{
          "context" : "src",
          "element" : "subject",
          "variable" : "sub"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "subject",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "sub"
          }]
        }]
      },
      {
        "name" : "553aae7e",
        "source" : [{
          "context" : "src",
          "element" : "encounter",
          "variable" : "en"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "encounter",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "en"
          }]
        }]
      },
      {
        "name" : "cce2a9b1",
        "source" : [{
          "context" : "src",
          "element" : "item",
          "variable" : "itemtimestamp",
          "condition" : "linkId = 'timestamp'"
        }],
        "rule" : [{
          "name" : "46018ce4",
          "source" : [{
            "context" : "itemtimestamp",
            "element" : "answer",
            "listMode" : "first",
            "variable" : "atimestamp"
          }],
          "rule" : [{
            "name" : "ea256bb4",
            "source" : [{
              "context" : "atimestamp",
              "element" : "value",
              "variable" : "val"
            }],
            "target" : [{
              "context" : "tgt",
              "contextType" : "variable",
              "element" : "recordedDate",
              "transform" : "copy",
              "parameter" : [{
                "valueId" : "val"
              }]
            }]
          }]
        }]
      },
      {
        "name" : "360a74b4",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "code",
          "variable" : "cs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        }],
        "rule" : [{
          "name" : "2803d2d8",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "tgt",
            "contextType" : "variable",
            "element" : "code",
            "variable" : "cs",
            "transform" : "create",
            "parameter" : [{
              "valueString" : "CodeableConcept"
            }]
          },
          {
            "context" : "cs",
            "contextType" : "variable",
            "element" : "coding",
            "variable" : "ccs",
            "transform" : "create",
            "parameter" : [{
              "valueString" : "Coding"
            }]
          },
          {
            "context" : "ccs",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "Ccc.B23.DE88"
            }]
          },
          {
            "context" : "ccs",
            "contextType" : "variable",
            "element" : "system",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes"
            }]
          }]
        }]
      }]
    },
    {
      "name" : "a8956d4e",
      "source" : [{
        "context" : "item",
        "element" : "answer",
        "condition" : "value.code = 'agree'"
      }],
      "rule" : [{
        "name" : "05de813c",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "clinicalStatus",
          "variable" : "cs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        },
        {
          "context" : "cs",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "ccs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Coding"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "active"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "system",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "http://terminology.hl7.org/CodeSystem/condition-clinical"
          }]
        }]
      },
      {
        "name" : "eb81c749",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "verificationStatus",
          "variable" : "cs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        },
        {
          "context" : "cs",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "ccs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Coding"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "confirmed"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "system",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "http://terminology.hl7.org/CodeSystem/condition-ver-status"
          }]
        }]
      }]
    },
    {
      "name" : "2219f1ae",
      "source" : [{
        "context" : "item",
        "element" : "answer",
        "condition" : "value.code = 'disagree'"
      }],
      "rule" : [{
        "name" : "d058c96f",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "clinicalStatus",
          "variable" : "cs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        },
        {
          "context" : "cs",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "ccs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Coding"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "inactive"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "system",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "http://terminology.hl7.org/CodeSystem/condition-clinical"
          }]
        }]
      },
      {
        "name" : "e74cae6e",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "verificationStatus",
          "variable" : "cs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        },
        {
          "context" : "cs",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "ccs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Coding"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "refuted"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "system",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "http://terminology.hl7.org/CodeSystem/condition-ver-status"
          }]
        }]
      }]
    }]
  },
  {
    "name" : "CccconditionCccb23de89",
    "typeMode" : "none",
    "input" : [{
      "name" : "src",
      "mode" : "source"
    },
    {
      "name" : "item",
      "mode" : "source"
    },
    {
      "name" : "tgt",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "0d943b47",
      "source" : [{
        "context" : "item",
        "element" : "answer",
        "listMode" : "first",
        "variable" : "a"
      }],
      "rule" : [{
        "name" : "23252e10",
        "source" : [{
          "context" : "src",
          "element" : "subject",
          "variable" : "sub"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "subject",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "sub"
          }]
        }]
      },
      {
        "name" : "553aae7e",
        "source" : [{
          "context" : "src",
          "element" : "encounter",
          "variable" : "en"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "encounter",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "en"
          }]
        }]
      },
      {
        "name" : "cce2a9b1",
        "source" : [{
          "context" : "src",
          "element" : "item",
          "variable" : "itemtimestamp",
          "condition" : "linkId = 'timestamp'"
        }],
        "rule" : [{
          "name" : "46018ce4",
          "source" : [{
            "context" : "itemtimestamp",
            "element" : "answer",
            "listMode" : "first",
            "variable" : "atimestamp"
          }],
          "rule" : [{
            "name" : "ea256bb4",
            "source" : [{
              "context" : "atimestamp",
              "element" : "value",
              "variable" : "val"
            }],
            "target" : [{
              "context" : "tgt",
              "contextType" : "variable",
              "element" : "recordedDate",
              "transform" : "copy",
              "parameter" : [{
                "valueId" : "val"
              }]
            }]
          }]
        }]
      },
      {
        "name" : "10f03284",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "code",
          "variable" : "cs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        }],
        "rule" : [{
          "name" : "d0ba1006",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "tgt",
            "contextType" : "variable",
            "element" : "code",
            "variable" : "cs",
            "transform" : "create",
            "parameter" : [{
              "valueString" : "CodeableConcept"
            }]
          },
          {
            "context" : "cs",
            "contextType" : "variable",
            "element" : "coding",
            "variable" : "ccs",
            "transform" : "create",
            "parameter" : [{
              "valueString" : "Coding"
            }]
          },
          {
            "context" : "ccs",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "Ccc.B23.DE89"
            }]
          },
          {
            "context" : "ccs",
            "contextType" : "variable",
            "element" : "system",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes"
            }]
          }]
        }]
      }]
    },
    {
      "name" : "a8956d4e",
      "source" : [{
        "context" : "item",
        "element" : "answer",
        "condition" : "value.code = 'agree'"
      }],
      "rule" : [{
        "name" : "05de813c",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "clinicalStatus",
          "variable" : "cs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        },
        {
          "context" : "cs",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "ccs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Coding"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "active"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "system",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "http://terminology.hl7.org/CodeSystem/condition-clinical"
          }]
        }]
      },
      {
        "name" : "eb81c749",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "verificationStatus",
          "variable" : "cs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        },
        {
          "context" : "cs",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "ccs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Coding"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "confirmed"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "system",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "http://terminology.hl7.org/CodeSystem/condition-ver-status"
          }]
        }]
      }]
    },
    {
      "name" : "2219f1ae",
      "source" : [{
        "context" : "item",
        "element" : "answer",
        "condition" : "value.code = 'disagree'"
      }],
      "rule" : [{
        "name" : "d058c96f",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "clinicalStatus",
          "variable" : "cs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        },
        {
          "context" : "cs",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "ccs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Coding"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "inactive"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "system",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "http://terminology.hl7.org/CodeSystem/condition-clinical"
          }]
        }]
      },
      {
        "name" : "e74cae6e",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "verificationStatus",
          "variable" : "cs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        },
        {
          "context" : "cs",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "ccs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Coding"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "refuted"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "system",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "http://terminology.hl7.org/CodeSystem/condition-ver-status"
          }]
        }]
      }]
    }]
  },
  {
    "name" : "CccconditionCccb23de13",
    "typeMode" : "none",
    "input" : [{
      "name" : "src",
      "mode" : "source"
    },
    {
      "name" : "item",
      "mode" : "source"
    },
    {
      "name" : "tgt",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "dc54929c",
      "source" : [{
        "context" : "item",
        "element" : "answer",
        "listMode" : "first",
        "variable" : "a"
      }],
      "rule" : [{
        "name" : "23252e10",
        "source" : [{
          "context" : "src",
          "element" : "subject",
          "variable" : "sub"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "subject",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "sub"
          }]
        }]
      },
      {
        "name" : "553aae7e",
        "source" : [{
          "context" : "src",
          "element" : "encounter",
          "variable" : "en"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "encounter",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "en"
          }]
        }]
      },
      {
        "name" : "cce2a9b1",
        "source" : [{
          "context" : "src",
          "element" : "item",
          "variable" : "itemtimestamp",
          "condition" : "linkId = 'timestamp'"
        }],
        "rule" : [{
          "name" : "46018ce4",
          "source" : [{
            "context" : "itemtimestamp",
            "element" : "answer",
            "listMode" : "first",
            "variable" : "atimestamp"
          }],
          "rule" : [{
            "name" : "ea256bb4",
            "source" : [{
              "context" : "atimestamp",
              "element" : "value",
              "variable" : "val"
            }],
            "target" : [{
              "context" : "tgt",
              "contextType" : "variable",
              "element" : "recordedDate",
              "transform" : "copy",
              "parameter" : [{
                "valueId" : "val"
              }]
            }]
          }]
        }]
      },
      {
        "name" : "6cc1c549",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "code",
          "variable" : "cs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        }],
        "rule" : [{
          "name" : "0b87b4e7",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "tgt",
            "contextType" : "variable",
            "element" : "code",
            "variable" : "cs",
            "transform" : "create",
            "parameter" : [{
              "valueString" : "CodeableConcept"
            }]
          },
          {
            "context" : "cs",
            "contextType" : "variable",
            "element" : "coding",
            "variable" : "ccs",
            "transform" : "create",
            "parameter" : [{
              "valueString" : "Coding"
            }]
          },
          {
            "context" : "ccs",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "Ccc.B23.DE13"
            }]
          },
          {
            "context" : "ccs",
            "contextType" : "variable",
            "element" : "system",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes"
            }]
          }]
        }]
      }]
    },
    {
      "name" : "a8956d4e",
      "source" : [{
        "context" : "item",
        "element" : "answer",
        "condition" : "value.code = 'agree'"
      }],
      "rule" : [{
        "name" : "05de813c",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "clinicalStatus",
          "variable" : "cs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        },
        {
          "context" : "cs",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "ccs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Coding"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "active"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "system",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "http://terminology.hl7.org/CodeSystem/condition-clinical"
          }]
        }]
      },
      {
        "name" : "eb81c749",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "verificationStatus",
          "variable" : "cs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        },
        {
          "context" : "cs",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "ccs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Coding"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "confirmed"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "system",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "http://terminology.hl7.org/CodeSystem/condition-ver-status"
          }]
        }]
      }]
    },
    {
      "name" : "2219f1ae",
      "source" : [{
        "context" : "item",
        "element" : "answer",
        "condition" : "value.code = 'disagree'"
      }],
      "rule" : [{
        "name" : "d058c96f",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "clinicalStatus",
          "variable" : "cs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        },
        {
          "context" : "cs",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "ccs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Coding"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "inactive"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "system",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "http://terminology.hl7.org/CodeSystem/condition-clinical"
          }]
        }]
      },
      {
        "name" : "e74cae6e",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "verificationStatus",
          "variable" : "cs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        },
        {
          "context" : "cs",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "ccs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Coding"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "refuted"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "system",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "http://terminology.hl7.org/CodeSystem/condition-ver-status"
          }]
        }]
      }]
    }]
  },
  {
    "name" : "CccconditionCccb23de14",
    "typeMode" : "none",
    "input" : [{
      "name" : "src",
      "mode" : "source"
    },
    {
      "name" : "item",
      "mode" : "source"
    },
    {
      "name" : "tgt",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "d565e84e",
      "source" : [{
        "context" : "item",
        "element" : "answer",
        "listMode" : "first",
        "variable" : "a"
      }],
      "rule" : [{
        "name" : "23252e10",
        "source" : [{
          "context" : "src",
          "element" : "subject",
          "variable" : "sub"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "subject",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "sub"
          }]
        }]
      },
      {
        "name" : "553aae7e",
        "source" : [{
          "context" : "src",
          "element" : "encounter",
          "variable" : "en"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "encounter",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "en"
          }]
        }]
      },
      {
        "name" : "cce2a9b1",
        "source" : [{
          "context" : "src",
          "element" : "item",
          "variable" : "itemtimestamp",
          "condition" : "linkId = 'timestamp'"
        }],
        "rule" : [{
          "name" : "46018ce4",
          "source" : [{
            "context" : "itemtimestamp",
            "element" : "answer",
            "listMode" : "first",
            "variable" : "atimestamp"
          }],
          "rule" : [{
            "name" : "ea256bb4",
            "source" : [{
              "context" : "atimestamp",
              "element" : "value",
              "variable" : "val"
            }],
            "target" : [{
              "context" : "tgt",
              "contextType" : "variable",
              "element" : "recordedDate",
              "transform" : "copy",
              "parameter" : [{
                "valueId" : "val"
              }]
            }]
          }]
        }]
      },
      {
        "name" : "a3de578a",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "code",
          "variable" : "cs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        }],
        "rule" : [{
          "name" : "c77e81e6",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "tgt",
            "contextType" : "variable",
            "element" : "code",
            "variable" : "cs",
            "transform" : "create",
            "parameter" : [{
              "valueString" : "CodeableConcept"
            }]
          },
          {
            "context" : "cs",
            "contextType" : "variable",
            "element" : "coding",
            "variable" : "ccs",
            "transform" : "create",
            "parameter" : [{
              "valueString" : "Coding"
            }]
          },
          {
            "context" : "ccs",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "Ccc.B23.DE14"
            }]
          },
          {
            "context" : "ccs",
            "contextType" : "variable",
            "element" : "system",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes"
            }]
          }]
        }]
      }]
    },
    {
      "name" : "a8956d4e",
      "source" : [{
        "context" : "item",
        "element" : "answer",
        "condition" : "value.code = 'agree'"
      }],
      "rule" : [{
        "name" : "05de813c",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "clinicalStatus",
          "variable" : "cs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        },
        {
          "context" : "cs",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "ccs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Coding"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "active"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "system",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "http://terminology.hl7.org/CodeSystem/condition-clinical"
          }]
        }]
      },
      {
        "name" : "eb81c749",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "verificationStatus",
          "variable" : "cs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        },
        {
          "context" : "cs",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "ccs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Coding"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "confirmed"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "system",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "http://terminology.hl7.org/CodeSystem/condition-ver-status"
          }]
        }]
      }]
    },
    {
      "name" : "2219f1ae",
      "source" : [{
        "context" : "item",
        "element" : "answer",
        "condition" : "value.code = 'disagree'"
      }],
      "rule" : [{
        "name" : "d058c96f",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "clinicalStatus",
          "variable" : "cs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        },
        {
          "context" : "cs",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "ccs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Coding"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "inactive"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "system",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "http://terminology.hl7.org/CodeSystem/condition-clinical"
          }]
        }]
      },
      {
        "name" : "e74cae6e",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "verificationStatus",
          "variable" : "cs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        },
        {
          "context" : "cs",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "ccs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Coding"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "refuted"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "system",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "http://terminology.hl7.org/CodeSystem/condition-ver-status"
          }]
        }]
      }]
    }]
  },
  {
    "name" : "CccconditionCccb23de15",
    "typeMode" : "none",
    "input" : [{
      "name" : "src",
      "mode" : "source"
    },
    {
      "name" : "item",
      "mode" : "source"
    },
    {
      "name" : "tgt",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "b194144a",
      "source" : [{
        "context" : "item",
        "element" : "answer",
        "listMode" : "first",
        "variable" : "a"
      }],
      "rule" : [{
        "name" : "23252e10",
        "source" : [{
          "context" : "src",
          "element" : "subject",
          "variable" : "sub"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "subject",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "sub"
          }]
        }]
      },
      {
        "name" : "553aae7e",
        "source" : [{
          "context" : "src",
          "element" : "encounter",
          "variable" : "en"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "encounter",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "en"
          }]
        }]
      },
      {
        "name" : "cce2a9b1",
        "source" : [{
          "context" : "src",
          "element" : "item",
          "variable" : "itemtimestamp",
          "condition" : "linkId = 'timestamp'"
        }],
        "rule" : [{
          "name" : "46018ce4",
          "source" : [{
            "context" : "itemtimestamp",
            "element" : "answer",
            "listMode" : "first",
            "variable" : "atimestamp"
          }],
          "rule" : [{
            "name" : "ea256bb4",
            "source" : [{
              "context" : "atimestamp",
              "element" : "value",
              "variable" : "val"
            }],
            "target" : [{
              "context" : "tgt",
              "contextType" : "variable",
              "element" : "recordedDate",
              "transform" : "copy",
              "parameter" : [{
                "valueId" : "val"
              }]
            }]
          }]
        }]
      },
      {
        "name" : "088a39f1",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "code",
          "variable" : "cs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        }],
        "rule" : [{
          "name" : "16e4a2c3",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "tgt",
            "contextType" : "variable",
            "element" : "code",
            "variable" : "cs",
            "transform" : "create",
            "parameter" : [{
              "valueString" : "CodeableConcept"
            }]
          },
          {
            "context" : "cs",
            "contextType" : "variable",
            "element" : "coding",
            "variable" : "ccs",
            "transform" : "create",
            "parameter" : [{
              "valueString" : "Coding"
            }]
          },
          {
            "context" : "ccs",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "Ccc.B23.DE15"
            }]
          },
          {
            "context" : "ccs",
            "contextType" : "variable",
            "element" : "system",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes"
            }]
          }]
        }]
      }]
    },
    {
      "name" : "a8956d4e",
      "source" : [{
        "context" : "item",
        "element" : "answer",
        "condition" : "value.code = 'agree'"
      }],
      "rule" : [{
        "name" : "05de813c",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "clinicalStatus",
          "variable" : "cs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        },
        {
          "context" : "cs",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "ccs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Coding"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "active"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "system",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "http://terminology.hl7.org/CodeSystem/condition-clinical"
          }]
        }]
      },
      {
        "name" : "eb81c749",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "verificationStatus",
          "variable" : "cs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        },
        {
          "context" : "cs",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "ccs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Coding"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "confirmed"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "system",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "http://terminology.hl7.org/CodeSystem/condition-ver-status"
          }]
        }]
      }]
    },
    {
      "name" : "2219f1ae",
      "source" : [{
        "context" : "item",
        "element" : "answer",
        "condition" : "value.code = 'disagree'"
      }],
      "rule" : [{
        "name" : "d058c96f",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "clinicalStatus",
          "variable" : "cs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        },
        {
          "context" : "cs",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "ccs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Coding"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "inactive"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "system",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "http://terminology.hl7.org/CodeSystem/condition-clinical"
          }]
        }]
      },
      {
        "name" : "e74cae6e",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "verificationStatus",
          "variable" : "cs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        },
        {
          "context" : "cs",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "ccs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Coding"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "refuted"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "system",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "http://terminology.hl7.org/CodeSystem/condition-ver-status"
          }]
        }]
      }]
    }]
  },
  {
    "name" : "CccconditionCccb23de94",
    "typeMode" : "none",
    "input" : [{
      "name" : "src",
      "mode" : "source"
    },
    {
      "name" : "item",
      "mode" : "source"
    },
    {
      "name" : "tgt",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "b957f076",
      "source" : [{
        "context" : "item",
        "element" : "answer",
        "listMode" : "first",
        "variable" : "a"
      }],
      "rule" : [{
        "name" : "23252e10",
        "source" : [{
          "context" : "src",
          "element" : "subject",
          "variable" : "sub"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "subject",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "sub"
          }]
        }]
      },
      {
        "name" : "553aae7e",
        "source" : [{
          "context" : "src",
          "element" : "encounter",
          "variable" : "en"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "encounter",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "en"
          }]
        }]
      },
      {
        "name" : "cce2a9b1",
        "source" : [{
          "context" : "src",
          "element" : "item",
          "variable" : "itemtimestamp",
          "condition" : "linkId = 'timestamp'"
        }],
        "rule" : [{
          "name" : "46018ce4",
          "source" : [{
            "context" : "itemtimestamp",
            "element" : "answer",
            "listMode" : "first",
            "variable" : "atimestamp"
          }],
          "rule" : [{
            "name" : "ea256bb4",
            "source" : [{
              "context" : "atimestamp",
              "element" : "value",
              "variable" : "val"
            }],
            "target" : [{
              "context" : "tgt",
              "contextType" : "variable",
              "element" : "recordedDate",
              "transform" : "copy",
              "parameter" : [{
                "valueId" : "val"
              }]
            }]
          }]
        }]
      },
      {
        "name" : "ba5673dd",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "code",
          "variable" : "cs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        }],
        "rule" : [{
          "name" : "61234ed0",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "tgt",
            "contextType" : "variable",
            "element" : "code",
            "variable" : "cs",
            "transform" : "create",
            "parameter" : [{
              "valueString" : "CodeableConcept"
            }]
          },
          {
            "context" : "cs",
            "contextType" : "variable",
            "element" : "coding",
            "variable" : "ccs",
            "transform" : "create",
            "parameter" : [{
              "valueString" : "Coding"
            }]
          },
          {
            "context" : "ccs",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "Ccc.B23.DE94"
            }]
          },
          {
            "context" : "ccs",
            "contextType" : "variable",
            "element" : "system",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes"
            }]
          }]
        }]
      }]
    },
    {
      "name" : "a8956d4e",
      "source" : [{
        "context" : "item",
        "element" : "answer",
        "condition" : "value.code = 'agree'"
      }],
      "rule" : [{
        "name" : "05de813c",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "clinicalStatus",
          "variable" : "cs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        },
        {
          "context" : "cs",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "ccs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Coding"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "active"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "system",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "http://terminology.hl7.org/CodeSystem/condition-clinical"
          }]
        }]
      },
      {
        "name" : "eb81c749",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "verificationStatus",
          "variable" : "cs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        },
        {
          "context" : "cs",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "ccs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Coding"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "confirmed"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "system",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "http://terminology.hl7.org/CodeSystem/condition-ver-status"
          }]
        }]
      }]
    },
    {
      "name" : "2219f1ae",
      "source" : [{
        "context" : "item",
        "element" : "answer",
        "condition" : "value.code = 'disagree'"
      }],
      "rule" : [{
        "name" : "d058c96f",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "clinicalStatus",
          "variable" : "cs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        },
        {
          "context" : "cs",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "ccs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Coding"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "inactive"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "system",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "http://terminology.hl7.org/CodeSystem/condition-clinical"
          }]
        }]
      },
      {
        "name" : "e74cae6e",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "verificationStatus",
          "variable" : "cs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        },
        {
          "context" : "cs",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "ccs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Coding"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "refuted"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "system",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "http://terminology.hl7.org/CodeSystem/condition-ver-status"
          }]
        }]
      }]
    }]
  },
  {
    "name" : "CccconditionCccb23de98",
    "typeMode" : "none",
    "input" : [{
      "name" : "src",
      "mode" : "source"
    },
    {
      "name" : "item",
      "mode" : "source"
    },
    {
      "name" : "tgt",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "98163aba",
      "source" : [{
        "context" : "item",
        "element" : "answer",
        "listMode" : "first",
        "variable" : "a"
      }],
      "rule" : [{
        "name" : "23252e10",
        "source" : [{
          "context" : "src",
          "element" : "subject",
          "variable" : "sub"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "subject",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "sub"
          }]
        }]
      },
      {
        "name" : "553aae7e",
        "source" : [{
          "context" : "src",
          "element" : "encounter",
          "variable" : "en"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "encounter",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "en"
          }]
        }]
      },
      {
        "name" : "cce2a9b1",
        "source" : [{
          "context" : "src",
          "element" : "item",
          "variable" : "itemtimestamp",
          "condition" : "linkId = 'timestamp'"
        }],
        "rule" : [{
          "name" : "46018ce4",
          "source" : [{
            "context" : "itemtimestamp",
            "element" : "answer",
            "listMode" : "first",
            "variable" : "atimestamp"
          }],
          "rule" : [{
            "name" : "ea256bb4",
            "source" : [{
              "context" : "atimestamp",
              "element" : "value",
              "variable" : "val"
            }],
            "target" : [{
              "context" : "tgt",
              "contextType" : "variable",
              "element" : "recordedDate",
              "transform" : "copy",
              "parameter" : [{
                "valueId" : "val"
              }]
            }]
          }]
        }]
      },
      {
        "name" : "cbe98666",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "code",
          "variable" : "cs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        }],
        "rule" : [{
          "name" : "11d6b9d2",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "tgt",
            "contextType" : "variable",
            "element" : "code",
            "variable" : "cs",
            "transform" : "create",
            "parameter" : [{
              "valueString" : "CodeableConcept"
            }]
          },
          {
            "context" : "cs",
            "contextType" : "variable",
            "element" : "coding",
            "variable" : "ccs",
            "transform" : "create",
            "parameter" : [{
              "valueString" : "Coding"
            }]
          },
          {
            "context" : "ccs",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "Ccc.B23.DE98"
            }]
          },
          {
            "context" : "ccs",
            "contextType" : "variable",
            "element" : "system",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes"
            }]
          }]
        }]
      }]
    },
    {
      "name" : "a8956d4e",
      "source" : [{
        "context" : "item",
        "element" : "answer",
        "condition" : "value.code = 'agree'"
      }],
      "rule" : [{
        "name" : "05de813c",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "clinicalStatus",
          "variable" : "cs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        },
        {
          "context" : "cs",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "ccs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Coding"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "active"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "system",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "http://terminology.hl7.org/CodeSystem/condition-clinical"
          }]
        }]
      },
      {
        "name" : "eb81c749",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "verificationStatus",
          "variable" : "cs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        },
        {
          "context" : "cs",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "ccs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Coding"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "confirmed"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "system",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "http://terminology.hl7.org/CodeSystem/condition-ver-status"
          }]
        }]
      }]
    },
    {
      "name" : "2219f1ae",
      "source" : [{
        "context" : "item",
        "element" : "answer",
        "condition" : "value.code = 'disagree'"
      }],
      "rule" : [{
        "name" : "d058c96f",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "clinicalStatus",
          "variable" : "cs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        },
        {
          "context" : "cs",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "ccs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Coding"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "inactive"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "system",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "http://terminology.hl7.org/CodeSystem/condition-clinical"
          }]
        }]
      },
      {
        "name" : "e74cae6e",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "verificationStatus",
          "variable" : "cs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        },
        {
          "context" : "cs",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "ccs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Coding"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "refuted"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "system",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "http://terminology.hl7.org/CodeSystem/condition-ver-status"
          }]
        }]
      }]
    }]
  },
  {
    "name" : "CccconditioncollectorCccb23de83",
    "typeMode" : "none",
    "input" : [{
      "name" : "src",
      "mode" : "source"
    },
    {
      "name" : "item",
      "mode" : "source"
    },
    {
      "name" : "tgt",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "64537b70",
      "source" : [{
        "context" : "item",
        "element" : "answer",
        "listMode" : "first",
        "variable" : "a"
      }],
      "rule" : [{
        "name" : "23252e10",
        "source" : [{
          "context" : "src",
          "element" : "subject",
          "variable" : "sub"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "subject",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "sub"
          }]
        }]
      },
      {
        "name" : "553aae7e",
        "source" : [{
          "context" : "src",
          "element" : "encounter",
          "variable" : "en"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "encounter",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "en"
          }]
        }]
      },
      {
        "name" : "cce2a9b1",
        "source" : [{
          "context" : "src",
          "element" : "item",
          "variable" : "itemtimestamp",
          "condition" : "linkId = 'timestamp'"
        }],
        "rule" : [{
          "name" : "46018ce4",
          "source" : [{
            "context" : "itemtimestamp",
            "element" : "answer",
            "listMode" : "first",
            "variable" : "atimestamp"
          }],
          "rule" : [{
            "name" : "ea256bb4",
            "source" : [{
              "context" : "atimestamp",
              "element" : "value",
              "variable" : "val"
            }],
            "target" : [{
              "context" : "tgt",
              "contextType" : "variable",
              "element" : "recordedDate",
              "transform" : "copy",
              "parameter" : [{
                "valueId" : "val"
              }]
            }]
          }]
        }]
      },
      {
        "name" : "a10c1e7b",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "code",
          "variable" : "cs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        }],
        "rule" : [{
          "name" : "8e761921",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "tgt",
            "contextType" : "variable",
            "element" : "code",
            "variable" : "cs",
            "transform" : "create",
            "parameter" : [{
              "valueString" : "CodeableConcept"
            }]
          },
          {
            "context" : "cs",
            "contextType" : "variable",
            "element" : "coding",
            "variable" : "ccs",
            "transform" : "create",
            "parameter" : [{
              "valueString" : "Coding"
            }]
          },
          {
            "context" : "ccs",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "Ccc.B23.DE83"
            }]
          },
          {
            "context" : "ccs",
            "contextType" : "variable",
            "element" : "system",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes"
            }]
          }]
        }]
      },
      {
        "name" : "b7901585",
        "source" : [{
          "context" : "a"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "clinicalStatus",
          "variable" : "cs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        },
        {
          "context" : "cs",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "ccs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Coding"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "active"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "system",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "http://terminology.hl7.org/CodeSystem/condition-clinical"
          }]
        }]
      },
      {
        "name" : "3e544e1e",
        "source" : [{
          "context" : "a"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "verificationStatus",
          "variable" : "cs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        },
        {
          "context" : "cs",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "ccs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Coding"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "unconfirmed"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "system",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "http://terminology.hl7.org/CodeSystem/condition-ver-status"
          }]
        }]
      }]
    }]
  },
  {
    "name" : "CccconditioncollectorCccb23de06",
    "typeMode" : "none",
    "input" : [{
      "name" : "src",
      "mode" : "source"
    },
    {
      "name" : "item",
      "mode" : "source"
    },
    {
      "name" : "tgt",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "8ede6446",
      "source" : [{
        "context" : "item",
        "element" : "answer",
        "listMode" : "first",
        "variable" : "a"
      }],
      "rule" : [{
        "name" : "23252e10",
        "source" : [{
          "context" : "src",
          "element" : "subject",
          "variable" : "sub"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "subject",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "sub"
          }]
        }]
      },
      {
        "name" : "553aae7e",
        "source" : [{
          "context" : "src",
          "element" : "encounter",
          "variable" : "en"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "encounter",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "en"
          }]
        }]
      },
      {
        "name" : "cce2a9b1",
        "source" : [{
          "context" : "src",
          "element" : "item",
          "variable" : "itemtimestamp",
          "condition" : "linkId = 'timestamp'"
        }],
        "rule" : [{
          "name" : "46018ce4",
          "source" : [{
            "context" : "itemtimestamp",
            "element" : "answer",
            "listMode" : "first",
            "variable" : "atimestamp"
          }],
          "rule" : [{
            "name" : "ea256bb4",
            "source" : [{
              "context" : "atimestamp",
              "element" : "value",
              "variable" : "val"
            }],
            "target" : [{
              "context" : "tgt",
              "contextType" : "variable",
              "element" : "recordedDate",
              "transform" : "copy",
              "parameter" : [{
                "valueId" : "val"
              }]
            }]
          }]
        }]
      },
      {
        "name" : "8ef845b0",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "code",
          "variable" : "cs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        }],
        "rule" : [{
          "name" : "dd0fd01c",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "tgt",
            "contextType" : "variable",
            "element" : "code",
            "variable" : "cs",
            "transform" : "create",
            "parameter" : [{
              "valueString" : "CodeableConcept"
            }]
          },
          {
            "context" : "cs",
            "contextType" : "variable",
            "element" : "coding",
            "variable" : "ccs",
            "transform" : "create",
            "parameter" : [{
              "valueString" : "Coding"
            }]
          },
          {
            "context" : "ccs",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "Ccc.B23.DE06"
            }]
          },
          {
            "context" : "ccs",
            "contextType" : "variable",
            "element" : "system",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes"
            }]
          }]
        }]
      },
      {
        "name" : "b7901585",
        "source" : [{
          "context" : "a"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "clinicalStatus",
          "variable" : "cs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        },
        {
          "context" : "cs",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "ccs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Coding"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "active"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "system",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "http://terminology.hl7.org/CodeSystem/condition-clinical"
          }]
        }]
      },
      {
        "name" : "3e544e1e",
        "source" : [{
          "context" : "a"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "verificationStatus",
          "variable" : "cs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        },
        {
          "context" : "cs",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "ccs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Coding"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "unconfirmed"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "system",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "http://terminology.hl7.org/CodeSystem/condition-ver-status"
          }]
        }]
      }]
    }]
  },
  {
    "name" : "CccconditioncollectorCccb23de85",
    "typeMode" : "none",
    "input" : [{
      "name" : "src",
      "mode" : "source"
    },
    {
      "name" : "item",
      "mode" : "source"
    },
    {
      "name" : "tgt",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "7ab58b18",
      "source" : [{
        "context" : "item",
        "element" : "answer",
        "listMode" : "first",
        "variable" : "a"
      }],
      "rule" : [{
        "name" : "23252e10",
        "source" : [{
          "context" : "src",
          "element" : "subject",
          "variable" : "sub"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "subject",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "sub"
          }]
        }]
      },
      {
        "name" : "553aae7e",
        "source" : [{
          "context" : "src",
          "element" : "encounter",
          "variable" : "en"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "encounter",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "en"
          }]
        }]
      },
      {
        "name" : "cce2a9b1",
        "source" : [{
          "context" : "src",
          "element" : "item",
          "variable" : "itemtimestamp",
          "condition" : "linkId = 'timestamp'"
        }],
        "rule" : [{
          "name" : "46018ce4",
          "source" : [{
            "context" : "itemtimestamp",
            "element" : "answer",
            "listMode" : "first",
            "variable" : "atimestamp"
          }],
          "rule" : [{
            "name" : "ea256bb4",
            "source" : [{
              "context" : "atimestamp",
              "element" : "value",
              "variable" : "val"
            }],
            "target" : [{
              "context" : "tgt",
              "contextType" : "variable",
              "element" : "recordedDate",
              "transform" : "copy",
              "parameter" : [{
                "valueId" : "val"
              }]
            }]
          }]
        }]
      },
      {
        "name" : "a2ce3a97",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "code",
          "variable" : "cs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        }],
        "rule" : [{
          "name" : "edf923c3",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "tgt",
            "contextType" : "variable",
            "element" : "code",
            "variable" : "cs",
            "transform" : "create",
            "parameter" : [{
              "valueString" : "CodeableConcept"
            }]
          },
          {
            "context" : "cs",
            "contextType" : "variable",
            "element" : "coding",
            "variable" : "ccs",
            "transform" : "create",
            "parameter" : [{
              "valueString" : "Coding"
            }]
          },
          {
            "context" : "ccs",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "Ccc.B23.DE85"
            }]
          },
          {
            "context" : "ccs",
            "contextType" : "variable",
            "element" : "system",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes"
            }]
          }]
        }]
      },
      {
        "name" : "b7901585",
        "source" : [{
          "context" : "a"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "clinicalStatus",
          "variable" : "cs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        },
        {
          "context" : "cs",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "ccs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Coding"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "active"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "system",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "http://terminology.hl7.org/CodeSystem/condition-clinical"
          }]
        }]
      },
      {
        "name" : "3e544e1e",
        "source" : [{
          "context" : "a"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "verificationStatus",
          "variable" : "cs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        },
        {
          "context" : "cs",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "ccs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Coding"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "unconfirmed"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "system",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "http://terminology.hl7.org/CodeSystem/condition-ver-status"
          }]
        }]
      }]
    }]
  },
  {
    "name" : "CccconditioncollectorCccb23de86",
    "typeMode" : "none",
    "input" : [{
      "name" : "src",
      "mode" : "source"
    },
    {
      "name" : "item",
      "mode" : "source"
    },
    {
      "name" : "tgt",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "c7e15e0e",
      "source" : [{
        "context" : "item",
        "element" : "answer",
        "listMode" : "first",
        "variable" : "a"
      }],
      "rule" : [{
        "name" : "23252e10",
        "source" : [{
          "context" : "src",
          "element" : "subject",
          "variable" : "sub"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "subject",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "sub"
          }]
        }]
      },
      {
        "name" : "553aae7e",
        "source" : [{
          "context" : "src",
          "element" : "encounter",
          "variable" : "en"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "encounter",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "en"
          }]
        }]
      },
      {
        "name" : "cce2a9b1",
        "source" : [{
          "context" : "src",
          "element" : "item",
          "variable" : "itemtimestamp",
          "condition" : "linkId = 'timestamp'"
        }],
        "rule" : [{
          "name" : "46018ce4",
          "source" : [{
            "context" : "itemtimestamp",
            "element" : "answer",
            "listMode" : "first",
            "variable" : "atimestamp"
          }],
          "rule" : [{
            "name" : "ea256bb4",
            "source" : [{
              "context" : "atimestamp",
              "element" : "value",
              "variable" : "val"
            }],
            "target" : [{
              "context" : "tgt",
              "contextType" : "variable",
              "element" : "recordedDate",
              "transform" : "copy",
              "parameter" : [{
                "valueId" : "val"
              }]
            }]
          }]
        }]
      },
      {
        "name" : "9338b358",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "code",
          "variable" : "cs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        }],
        "rule" : [{
          "name" : "342850aa",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "tgt",
            "contextType" : "variable",
            "element" : "code",
            "variable" : "cs",
            "transform" : "create",
            "parameter" : [{
              "valueString" : "CodeableConcept"
            }]
          },
          {
            "context" : "cs",
            "contextType" : "variable",
            "element" : "coding",
            "variable" : "ccs",
            "transform" : "create",
            "parameter" : [{
              "valueString" : "Coding"
            }]
          },
          {
            "context" : "ccs",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "Ccc.B23.DE86"
            }]
          },
          {
            "context" : "ccs",
            "contextType" : "variable",
            "element" : "system",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes"
            }]
          }]
        }]
      },
      {
        "name" : "b7901585",
        "source" : [{
          "context" : "a"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "clinicalStatus",
          "variable" : "cs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        },
        {
          "context" : "cs",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "ccs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Coding"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "active"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "system",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "http://terminology.hl7.org/CodeSystem/condition-clinical"
          }]
        }]
      },
      {
        "name" : "3e544e1e",
        "source" : [{
          "context" : "a"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "verificationStatus",
          "variable" : "cs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        },
        {
          "context" : "cs",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "ccs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Coding"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "unconfirmed"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "system",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "http://terminology.hl7.org/CodeSystem/condition-ver-status"
          }]
        }]
      }]
    }]
  },
  {
    "name" : "CccconditioncollectorCccb23de106",
    "typeMode" : "none",
    "input" : [{
      "name" : "src",
      "mode" : "source"
    },
    {
      "name" : "item",
      "mode" : "source"
    },
    {
      "name" : "tgt",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "c5746d18",
      "source" : [{
        "context" : "item",
        "element" : "answer",
        "listMode" : "first",
        "variable" : "a"
      }],
      "rule" : [{
        "name" : "23252e10",
        "source" : [{
          "context" : "src",
          "element" : "subject",
          "variable" : "sub"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "subject",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "sub"
          }]
        }]
      },
      {
        "name" : "553aae7e",
        "source" : [{
          "context" : "src",
          "element" : "encounter",
          "variable" : "en"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "encounter",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "en"
          }]
        }]
      },
      {
        "name" : "cce2a9b1",
        "source" : [{
          "context" : "src",
          "element" : "item",
          "variable" : "itemtimestamp",
          "condition" : "linkId = 'timestamp'"
        }],
        "rule" : [{
          "name" : "46018ce4",
          "source" : [{
            "context" : "itemtimestamp",
            "element" : "answer",
            "listMode" : "first",
            "variable" : "atimestamp"
          }],
          "rule" : [{
            "name" : "ea256bb4",
            "source" : [{
              "context" : "atimestamp",
              "element" : "value",
              "variable" : "val"
            }],
            "target" : [{
              "context" : "tgt",
              "contextType" : "variable",
              "element" : "recordedDate",
              "transform" : "copy",
              "parameter" : [{
                "valueId" : "val"
              }]
            }]
          }]
        }]
      },
      {
        "name" : "d8d6d130",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "code",
          "variable" : "cs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        }],
        "rule" : [{
          "name" : "70f0a4fa",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "tgt",
            "contextType" : "variable",
            "element" : "code",
            "variable" : "cs",
            "transform" : "create",
            "parameter" : [{
              "valueString" : "CodeableConcept"
            }]
          },
          {
            "context" : "cs",
            "contextType" : "variable",
            "element" : "coding",
            "variable" : "ccs",
            "transform" : "create",
            "parameter" : [{
              "valueString" : "Coding"
            }]
          },
          {
            "context" : "ccs",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "Ccc.B23.DE106"
            }]
          },
          {
            "context" : "ccs",
            "contextType" : "variable",
            "element" : "system",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes"
            }]
          }]
        }]
      },
      {
        "name" : "b7901585",
        "source" : [{
          "context" : "a"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "clinicalStatus",
          "variable" : "cs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        },
        {
          "context" : "cs",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "ccs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Coding"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "active"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "system",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "http://terminology.hl7.org/CodeSystem/condition-clinical"
          }]
        }]
      },
      {
        "name" : "3e544e1e",
        "source" : [{
          "context" : "a"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "verificationStatus",
          "variable" : "cs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        },
        {
          "context" : "cs",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "ccs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Coding"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "unconfirmed"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "system",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "http://terminology.hl7.org/CodeSystem/condition-ver-status"
          }]
        }]
      }]
    }]
  },
  {
    "name" : "CccconditioncollectorCccb23de87",
    "typeMode" : "none",
    "input" : [{
      "name" : "src",
      "mode" : "source"
    },
    {
      "name" : "item",
      "mode" : "source"
    },
    {
      "name" : "tgt",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "8dee988b",
      "source" : [{
        "context" : "item",
        "element" : "answer",
        "listMode" : "first",
        "variable" : "a"
      }],
      "rule" : [{
        "name" : "23252e10",
        "source" : [{
          "context" : "src",
          "element" : "subject",
          "variable" : "sub"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "subject",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "sub"
          }]
        }]
      },
      {
        "name" : "553aae7e",
        "source" : [{
          "context" : "src",
          "element" : "encounter",
          "variable" : "en"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "encounter",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "en"
          }]
        }]
      },
      {
        "name" : "cce2a9b1",
        "source" : [{
          "context" : "src",
          "element" : "item",
          "variable" : "itemtimestamp",
          "condition" : "linkId = 'timestamp'"
        }],
        "rule" : [{
          "name" : "46018ce4",
          "source" : [{
            "context" : "itemtimestamp",
            "element" : "answer",
            "listMode" : "first",
            "variable" : "atimestamp"
          }],
          "rule" : [{
            "name" : "ea256bb4",
            "source" : [{
              "context" : "atimestamp",
              "element" : "value",
              "variable" : "val"
            }],
            "target" : [{
              "context" : "tgt",
              "contextType" : "variable",
              "element" : "recordedDate",
              "transform" : "copy",
              "parameter" : [{
                "valueId" : "val"
              }]
            }]
          }]
        }]
      },
      {
        "name" : "62727c30",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "code",
          "variable" : "cs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        }],
        "rule" : [{
          "name" : "01f1ca5f",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "tgt",
            "contextType" : "variable",
            "element" : "code",
            "variable" : "cs",
            "transform" : "create",
            "parameter" : [{
              "valueString" : "CodeableConcept"
            }]
          },
          {
            "context" : "cs",
            "contextType" : "variable",
            "element" : "coding",
            "variable" : "ccs",
            "transform" : "create",
            "parameter" : [{
              "valueString" : "Coding"
            }]
          },
          {
            "context" : "ccs",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "Ccc.B23.DE87"
            }]
          },
          {
            "context" : "ccs",
            "contextType" : "variable",
            "element" : "system",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes"
            }]
          }]
        }]
      },
      {
        "name" : "b7901585",
        "source" : [{
          "context" : "a"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "clinicalStatus",
          "variable" : "cs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        },
        {
          "context" : "cs",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "ccs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Coding"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "active"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "system",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "http://terminology.hl7.org/CodeSystem/condition-clinical"
          }]
        }]
      },
      {
        "name" : "3e544e1e",
        "source" : [{
          "context" : "a"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "verificationStatus",
          "variable" : "cs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        },
        {
          "context" : "cs",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "ccs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Coding"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "unconfirmed"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "system",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "http://terminology.hl7.org/CodeSystem/condition-ver-status"
          }]
        }]
      }]
    }]
  },
  {
    "name" : "CccconditioncollectorCccb23de88",
    "typeMode" : "none",
    "input" : [{
      "name" : "src",
      "mode" : "source"
    },
    {
      "name" : "item",
      "mode" : "source"
    },
    {
      "name" : "tgt",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "e6ded7f8",
      "source" : [{
        "context" : "item",
        "element" : "answer",
        "listMode" : "first",
        "variable" : "a"
      }],
      "rule" : [{
        "name" : "23252e10",
        "source" : [{
          "context" : "src",
          "element" : "subject",
          "variable" : "sub"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "subject",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "sub"
          }]
        }]
      },
      {
        "name" : "553aae7e",
        "source" : [{
          "context" : "src",
          "element" : "encounter",
          "variable" : "en"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "encounter",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "en"
          }]
        }]
      },
      {
        "name" : "cce2a9b1",
        "source" : [{
          "context" : "src",
          "element" : "item",
          "variable" : "itemtimestamp",
          "condition" : "linkId = 'timestamp'"
        }],
        "rule" : [{
          "name" : "46018ce4",
          "source" : [{
            "context" : "itemtimestamp",
            "element" : "answer",
            "listMode" : "first",
            "variable" : "atimestamp"
          }],
          "rule" : [{
            "name" : "ea256bb4",
            "source" : [{
              "context" : "atimestamp",
              "element" : "value",
              "variable" : "val"
            }],
            "target" : [{
              "context" : "tgt",
              "contextType" : "variable",
              "element" : "recordedDate",
              "transform" : "copy",
              "parameter" : [{
                "valueId" : "val"
              }]
            }]
          }]
        }]
      },
      {
        "name" : "360a74b4",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "code",
          "variable" : "cs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        }],
        "rule" : [{
          "name" : "2803d2d8",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "tgt",
            "contextType" : "variable",
            "element" : "code",
            "variable" : "cs",
            "transform" : "create",
            "parameter" : [{
              "valueString" : "CodeableConcept"
            }]
          },
          {
            "context" : "cs",
            "contextType" : "variable",
            "element" : "coding",
            "variable" : "ccs",
            "transform" : "create",
            "parameter" : [{
              "valueString" : "Coding"
            }]
          },
          {
            "context" : "ccs",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "Ccc.B23.DE88"
            }]
          },
          {
            "context" : "ccs",
            "contextType" : "variable",
            "element" : "system",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes"
            }]
          }]
        }]
      },
      {
        "name" : "b7901585",
        "source" : [{
          "context" : "a"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "clinicalStatus",
          "variable" : "cs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        },
        {
          "context" : "cs",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "ccs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Coding"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "active"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "system",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "http://terminology.hl7.org/CodeSystem/condition-clinical"
          }]
        }]
      },
      {
        "name" : "3e544e1e",
        "source" : [{
          "context" : "a"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "verificationStatus",
          "variable" : "cs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        },
        {
          "context" : "cs",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "ccs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Coding"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "unconfirmed"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "system",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "http://terminology.hl7.org/CodeSystem/condition-ver-status"
          }]
        }]
      }]
    }]
  },
  {
    "name" : "CccconditioncollectorCccb23de89",
    "typeMode" : "none",
    "input" : [{
      "name" : "src",
      "mode" : "source"
    },
    {
      "name" : "item",
      "mode" : "source"
    },
    {
      "name" : "tgt",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "38f340fb",
      "source" : [{
        "context" : "item",
        "element" : "answer",
        "listMode" : "first",
        "variable" : "a"
      }],
      "rule" : [{
        "name" : "23252e10",
        "source" : [{
          "context" : "src",
          "element" : "subject",
          "variable" : "sub"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "subject",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "sub"
          }]
        }]
      },
      {
        "name" : "553aae7e",
        "source" : [{
          "context" : "src",
          "element" : "encounter",
          "variable" : "en"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "encounter",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "en"
          }]
        }]
      },
      {
        "name" : "cce2a9b1",
        "source" : [{
          "context" : "src",
          "element" : "item",
          "variable" : "itemtimestamp",
          "condition" : "linkId = 'timestamp'"
        }],
        "rule" : [{
          "name" : "46018ce4",
          "source" : [{
            "context" : "itemtimestamp",
            "element" : "answer",
            "listMode" : "first",
            "variable" : "atimestamp"
          }],
          "rule" : [{
            "name" : "ea256bb4",
            "source" : [{
              "context" : "atimestamp",
              "element" : "value",
              "variable" : "val"
            }],
            "target" : [{
              "context" : "tgt",
              "contextType" : "variable",
              "element" : "recordedDate",
              "transform" : "copy",
              "parameter" : [{
                "valueId" : "val"
              }]
            }]
          }]
        }]
      },
      {
        "name" : "10f03284",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "code",
          "variable" : "cs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        }],
        "rule" : [{
          "name" : "d0ba1006",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "tgt",
            "contextType" : "variable",
            "element" : "code",
            "variable" : "cs",
            "transform" : "create",
            "parameter" : [{
              "valueString" : "CodeableConcept"
            }]
          },
          {
            "context" : "cs",
            "contextType" : "variable",
            "element" : "coding",
            "variable" : "ccs",
            "transform" : "create",
            "parameter" : [{
              "valueString" : "Coding"
            }]
          },
          {
            "context" : "ccs",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "Ccc.B23.DE89"
            }]
          },
          {
            "context" : "ccs",
            "contextType" : "variable",
            "element" : "system",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes"
            }]
          }]
        }]
      },
      {
        "name" : "b7901585",
        "source" : [{
          "context" : "a"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "clinicalStatus",
          "variable" : "cs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        },
        {
          "context" : "cs",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "ccs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Coding"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "active"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "system",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "http://terminology.hl7.org/CodeSystem/condition-clinical"
          }]
        }]
      },
      {
        "name" : "3e544e1e",
        "source" : [{
          "context" : "a"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "verificationStatus",
          "variable" : "cs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        },
        {
          "context" : "cs",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "ccs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Coding"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "unconfirmed"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "system",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "http://terminology.hl7.org/CodeSystem/condition-ver-status"
          }]
        }]
      }]
    }]
  },
  {
    "name" : "CccconditioncollectorCccb23de13",
    "typeMode" : "none",
    "input" : [{
      "name" : "src",
      "mode" : "source"
    },
    {
      "name" : "item",
      "mode" : "source"
    },
    {
      "name" : "tgt",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "39e0fe5e",
      "source" : [{
        "context" : "item",
        "element" : "answer",
        "listMode" : "first",
        "variable" : "a"
      }],
      "rule" : [{
        "name" : "23252e10",
        "source" : [{
          "context" : "src",
          "element" : "subject",
          "variable" : "sub"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "subject",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "sub"
          }]
        }]
      },
      {
        "name" : "553aae7e",
        "source" : [{
          "context" : "src",
          "element" : "encounter",
          "variable" : "en"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "encounter",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "en"
          }]
        }]
      },
      {
        "name" : "cce2a9b1",
        "source" : [{
          "context" : "src",
          "element" : "item",
          "variable" : "itemtimestamp",
          "condition" : "linkId = 'timestamp'"
        }],
        "rule" : [{
          "name" : "46018ce4",
          "source" : [{
            "context" : "itemtimestamp",
            "element" : "answer",
            "listMode" : "first",
            "variable" : "atimestamp"
          }],
          "rule" : [{
            "name" : "ea256bb4",
            "source" : [{
              "context" : "atimestamp",
              "element" : "value",
              "variable" : "val"
            }],
            "target" : [{
              "context" : "tgt",
              "contextType" : "variable",
              "element" : "recordedDate",
              "transform" : "copy",
              "parameter" : [{
                "valueId" : "val"
              }]
            }]
          }]
        }]
      },
      {
        "name" : "6cc1c549",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "code",
          "variable" : "cs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        }],
        "rule" : [{
          "name" : "0b87b4e7",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "tgt",
            "contextType" : "variable",
            "element" : "code",
            "variable" : "cs",
            "transform" : "create",
            "parameter" : [{
              "valueString" : "CodeableConcept"
            }]
          },
          {
            "context" : "cs",
            "contextType" : "variable",
            "element" : "coding",
            "variable" : "ccs",
            "transform" : "create",
            "parameter" : [{
              "valueString" : "Coding"
            }]
          },
          {
            "context" : "ccs",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "Ccc.B23.DE13"
            }]
          },
          {
            "context" : "ccs",
            "contextType" : "variable",
            "element" : "system",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes"
            }]
          }]
        }]
      },
      {
        "name" : "b7901585",
        "source" : [{
          "context" : "a"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "clinicalStatus",
          "variable" : "cs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        },
        {
          "context" : "cs",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "ccs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Coding"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "active"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "system",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "http://terminology.hl7.org/CodeSystem/condition-clinical"
          }]
        }]
      },
      {
        "name" : "3e544e1e",
        "source" : [{
          "context" : "a"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "verificationStatus",
          "variable" : "cs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        },
        {
          "context" : "cs",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "ccs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Coding"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "unconfirmed"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "system",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "http://terminology.hl7.org/CodeSystem/condition-ver-status"
          }]
        }]
      }]
    }]
  },
  {
    "name" : "CccconditioncollectorCccb23de14",
    "typeMode" : "none",
    "input" : [{
      "name" : "src",
      "mode" : "source"
    },
    {
      "name" : "item",
      "mode" : "source"
    },
    {
      "name" : "tgt",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "da0791a5",
      "source" : [{
        "context" : "item",
        "element" : "answer",
        "listMode" : "first",
        "variable" : "a"
      }],
      "rule" : [{
        "name" : "23252e10",
        "source" : [{
          "context" : "src",
          "element" : "subject",
          "variable" : "sub"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "subject",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "sub"
          }]
        }]
      },
      {
        "name" : "553aae7e",
        "source" : [{
          "context" : "src",
          "element" : "encounter",
          "variable" : "en"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "encounter",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "en"
          }]
        }]
      },
      {
        "name" : "cce2a9b1",
        "source" : [{
          "context" : "src",
          "element" : "item",
          "variable" : "itemtimestamp",
          "condition" : "linkId = 'timestamp'"
        }],
        "rule" : [{
          "name" : "46018ce4",
          "source" : [{
            "context" : "itemtimestamp",
            "element" : "answer",
            "listMode" : "first",
            "variable" : "atimestamp"
          }],
          "rule" : [{
            "name" : "ea256bb4",
            "source" : [{
              "context" : "atimestamp",
              "element" : "value",
              "variable" : "val"
            }],
            "target" : [{
              "context" : "tgt",
              "contextType" : "variable",
              "element" : "recordedDate",
              "transform" : "copy",
              "parameter" : [{
                "valueId" : "val"
              }]
            }]
          }]
        }]
      },
      {
        "name" : "a3de578a",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "code",
          "variable" : "cs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        }],
        "rule" : [{
          "name" : "c77e81e6",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "tgt",
            "contextType" : "variable",
            "element" : "code",
            "variable" : "cs",
            "transform" : "create",
            "parameter" : [{
              "valueString" : "CodeableConcept"
            }]
          },
          {
            "context" : "cs",
            "contextType" : "variable",
            "element" : "coding",
            "variable" : "ccs",
            "transform" : "create",
            "parameter" : [{
              "valueString" : "Coding"
            }]
          },
          {
            "context" : "ccs",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "Ccc.B23.DE14"
            }]
          },
          {
            "context" : "ccs",
            "contextType" : "variable",
            "element" : "system",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes"
            }]
          }]
        }]
      },
      {
        "name" : "b7901585",
        "source" : [{
          "context" : "a"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "clinicalStatus",
          "variable" : "cs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        },
        {
          "context" : "cs",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "ccs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Coding"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "active"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "system",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "http://terminology.hl7.org/CodeSystem/condition-clinical"
          }]
        }]
      },
      {
        "name" : "3e544e1e",
        "source" : [{
          "context" : "a"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "verificationStatus",
          "variable" : "cs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        },
        {
          "context" : "cs",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "ccs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Coding"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "unconfirmed"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "system",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "http://terminology.hl7.org/CodeSystem/condition-ver-status"
          }]
        }]
      }]
    }]
  },
  {
    "name" : "CccconditioncollectorCccb23de15",
    "typeMode" : "none",
    "input" : [{
      "name" : "src",
      "mode" : "source"
    },
    {
      "name" : "item",
      "mode" : "source"
    },
    {
      "name" : "tgt",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "b16e2ac9",
      "source" : [{
        "context" : "item",
        "element" : "answer",
        "listMode" : "first",
        "variable" : "a"
      }],
      "rule" : [{
        "name" : "23252e10",
        "source" : [{
          "context" : "src",
          "element" : "subject",
          "variable" : "sub"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "subject",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "sub"
          }]
        }]
      },
      {
        "name" : "553aae7e",
        "source" : [{
          "context" : "src",
          "element" : "encounter",
          "variable" : "en"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "encounter",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "en"
          }]
        }]
      },
      {
        "name" : "cce2a9b1",
        "source" : [{
          "context" : "src",
          "element" : "item",
          "variable" : "itemtimestamp",
          "condition" : "linkId = 'timestamp'"
        }],
        "rule" : [{
          "name" : "46018ce4",
          "source" : [{
            "context" : "itemtimestamp",
            "element" : "answer",
            "listMode" : "first",
            "variable" : "atimestamp"
          }],
          "rule" : [{
            "name" : "ea256bb4",
            "source" : [{
              "context" : "atimestamp",
              "element" : "value",
              "variable" : "val"
            }],
            "target" : [{
              "context" : "tgt",
              "contextType" : "variable",
              "element" : "recordedDate",
              "transform" : "copy",
              "parameter" : [{
                "valueId" : "val"
              }]
            }]
          }]
        }]
      },
      {
        "name" : "088a39f1",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "code",
          "variable" : "cs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        }],
        "rule" : [{
          "name" : "16e4a2c3",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "tgt",
            "contextType" : "variable",
            "element" : "code",
            "variable" : "cs",
            "transform" : "create",
            "parameter" : [{
              "valueString" : "CodeableConcept"
            }]
          },
          {
            "context" : "cs",
            "contextType" : "variable",
            "element" : "coding",
            "variable" : "ccs",
            "transform" : "create",
            "parameter" : [{
              "valueString" : "Coding"
            }]
          },
          {
            "context" : "ccs",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "Ccc.B23.DE15"
            }]
          },
          {
            "context" : "ccs",
            "contextType" : "variable",
            "element" : "system",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes"
            }]
          }]
        }]
      },
      {
        "name" : "b7901585",
        "source" : [{
          "context" : "a"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "clinicalStatus",
          "variable" : "cs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        },
        {
          "context" : "cs",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "ccs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Coding"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "active"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "system",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "http://terminology.hl7.org/CodeSystem/condition-clinical"
          }]
        }]
      },
      {
        "name" : "3e544e1e",
        "source" : [{
          "context" : "a"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "verificationStatus",
          "variable" : "cs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        },
        {
          "context" : "cs",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "ccs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Coding"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "unconfirmed"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "system",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "http://terminology.hl7.org/CodeSystem/condition-ver-status"
          }]
        }]
      }]
    }]
  },
  {
    "name" : "CccconditioncollectorCccb23de94",
    "typeMode" : "none",
    "input" : [{
      "name" : "src",
      "mode" : "source"
    },
    {
      "name" : "item",
      "mode" : "source"
    },
    {
      "name" : "tgt",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "82182761",
      "source" : [{
        "context" : "item",
        "element" : "answer",
        "listMode" : "first",
        "variable" : "a"
      }],
      "rule" : [{
        "name" : "23252e10",
        "source" : [{
          "context" : "src",
          "element" : "subject",
          "variable" : "sub"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "subject",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "sub"
          }]
        }]
      },
      {
        "name" : "553aae7e",
        "source" : [{
          "context" : "src",
          "element" : "encounter",
          "variable" : "en"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "encounter",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "en"
          }]
        }]
      },
      {
        "name" : "cce2a9b1",
        "source" : [{
          "context" : "src",
          "element" : "item",
          "variable" : "itemtimestamp",
          "condition" : "linkId = 'timestamp'"
        }],
        "rule" : [{
          "name" : "46018ce4",
          "source" : [{
            "context" : "itemtimestamp",
            "element" : "answer",
            "listMode" : "first",
            "variable" : "atimestamp"
          }],
          "rule" : [{
            "name" : "ea256bb4",
            "source" : [{
              "context" : "atimestamp",
              "element" : "value",
              "variable" : "val"
            }],
            "target" : [{
              "context" : "tgt",
              "contextType" : "variable",
              "element" : "recordedDate",
              "transform" : "copy",
              "parameter" : [{
                "valueId" : "val"
              }]
            }]
          }]
        }]
      },
      {
        "name" : "ba5673dd",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "code",
          "variable" : "cs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        }],
        "rule" : [{
          "name" : "61234ed0",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "tgt",
            "contextType" : "variable",
            "element" : "code",
            "variable" : "cs",
            "transform" : "create",
            "parameter" : [{
              "valueString" : "CodeableConcept"
            }]
          },
          {
            "context" : "cs",
            "contextType" : "variable",
            "element" : "coding",
            "variable" : "ccs",
            "transform" : "create",
            "parameter" : [{
              "valueString" : "Coding"
            }]
          },
          {
            "context" : "ccs",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "Ccc.B23.DE94"
            }]
          },
          {
            "context" : "ccs",
            "contextType" : "variable",
            "element" : "system",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes"
            }]
          }]
        }]
      },
      {
        "name" : "b7901585",
        "source" : [{
          "context" : "a"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "clinicalStatus",
          "variable" : "cs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        },
        {
          "context" : "cs",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "ccs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Coding"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "active"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "system",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "http://terminology.hl7.org/CodeSystem/condition-clinical"
          }]
        }]
      },
      {
        "name" : "3e544e1e",
        "source" : [{
          "context" : "a"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "verificationStatus",
          "variable" : "cs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        },
        {
          "context" : "cs",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "ccs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Coding"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "unconfirmed"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "system",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "http://terminology.hl7.org/CodeSystem/condition-ver-status"
          }]
        }]
      }]
    }]
  },
  {
    "name" : "CccconditioncollectorCccb23de98",
    "typeMode" : "none",
    "input" : [{
      "name" : "src",
      "mode" : "source"
    },
    {
      "name" : "item",
      "mode" : "source"
    },
    {
      "name" : "tgt",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "869e7605",
      "source" : [{
        "context" : "item",
        "element" : "answer",
        "listMode" : "first",
        "variable" : "a"
      }],
      "rule" : [{
        "name" : "23252e10",
        "source" : [{
          "context" : "src",
          "element" : "subject",
          "variable" : "sub"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "subject",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "sub"
          }]
        }]
      },
      {
        "name" : "553aae7e",
        "source" : [{
          "context" : "src",
          "element" : "encounter",
          "variable" : "en"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "encounter",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "en"
          }]
        }]
      },
      {
        "name" : "cce2a9b1",
        "source" : [{
          "context" : "src",
          "element" : "item",
          "variable" : "itemtimestamp",
          "condition" : "linkId = 'timestamp'"
        }],
        "rule" : [{
          "name" : "46018ce4",
          "source" : [{
            "context" : "itemtimestamp",
            "element" : "answer",
            "listMode" : "first",
            "variable" : "atimestamp"
          }],
          "rule" : [{
            "name" : "ea256bb4",
            "source" : [{
              "context" : "atimestamp",
              "element" : "value",
              "variable" : "val"
            }],
            "target" : [{
              "context" : "tgt",
              "contextType" : "variable",
              "element" : "recordedDate",
              "transform" : "copy",
              "parameter" : [{
                "valueId" : "val"
              }]
            }]
          }]
        }]
      },
      {
        "name" : "cbe98666",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "code",
          "variable" : "cs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        }],
        "rule" : [{
          "name" : "11d6b9d2",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "tgt",
            "contextType" : "variable",
            "element" : "code",
            "variable" : "cs",
            "transform" : "create",
            "parameter" : [{
              "valueString" : "CodeableConcept"
            }]
          },
          {
            "context" : "cs",
            "contextType" : "variable",
            "element" : "coding",
            "variable" : "ccs",
            "transform" : "create",
            "parameter" : [{
              "valueString" : "Coding"
            }]
          },
          {
            "context" : "ccs",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "Ccc.B23.DE98"
            }]
          },
          {
            "context" : "ccs",
            "contextType" : "variable",
            "element" : "system",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes"
            }]
          }]
        }]
      },
      {
        "name" : "b7901585",
        "source" : [{
          "context" : "a"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "clinicalStatus",
          "variable" : "cs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        },
        {
          "context" : "cs",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "ccs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Coding"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "active"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "system",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "http://terminology.hl7.org/CodeSystem/condition-clinical"
          }]
        }]
      },
      {
        "name" : "3e544e1e",
        "source" : [{
          "context" : "a"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "verificationStatus",
          "variable" : "cs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        },
        {
          "context" : "cs",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "ccs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Coding"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "unconfirmed"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "system",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "http://terminology.hl7.org/CodeSystem/condition-ver-status"
          }]
        }]
      }]
    }]
  },
  {
    "name" : "Cccconditioncollectorcollector",
    "typeMode" : "none",
    "input" : [{
      "name" : "src",
      "mode" : "source"
    },
    {
      "name" : "item",
      "mode" : "source"
    },
    {
      "name" : "tgt",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "d8e38123",
      "source" : [{
        "context" : "item",
        "element" : "answer",
        "listMode" : "first",
        "variable" : "a"
      }],
      "rule" : [{
        "name" : "23252e10",
        "source" : [{
          "context" : "src",
          "element" : "subject",
          "variable" : "sub"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "subject",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "sub"
          }]
        }]
      },
      {
        "name" : "553aae7e",
        "source" : [{
          "context" : "src",
          "element" : "encounter",
          "variable" : "en"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "encounter",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "en"
          }]
        }]
      },
      {
        "name" : "cce2a9b1",
        "source" : [{
          "context" : "src",
          "element" : "item",
          "variable" : "itemtimestamp",
          "condition" : "linkId = 'timestamp'"
        }],
        "rule" : [{
          "name" : "46018ce4",
          "source" : [{
            "context" : "itemtimestamp",
            "element" : "answer",
            "listMode" : "first",
            "variable" : "atimestamp"
          }],
          "rule" : [{
            "name" : "ea256bb4",
            "source" : [{
              "context" : "atimestamp",
              "element" : "value",
              "variable" : "val"
            }],
            "target" : [{
              "context" : "tgt",
              "contextType" : "variable",
              "element" : "recordedDate",
              "transform" : "copy",
              "parameter" : [{
                "valueId" : "val"
              }]
            }]
          }]
        }]
      },
      {
        "name" : "6fc817a4",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "code",
          "variable" : "cs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        }],
        "rule" : [{
          "name" : "ab5440b5",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "tgt",
            "contextType" : "variable",
            "element" : "code",
            "variable" : "cs",
            "transform" : "create",
            "parameter" : [{
              "valueString" : "CodeableConcept"
            }]
          },
          {
            "context" : "cs",
            "contextType" : "variable",
            "element" : "coding",
            "variable" : "ccs",
            "transform" : "create",
            "parameter" : [{
              "valueString" : "Coding"
            }]
          },
          {
            "context" : "ccs",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "collector"
            }]
          },
          {
            "context" : "ccs",
            "contextType" : "variable",
            "element" : "system",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "https://smart.who.int/ccc/CodeSystem/Ccc-custom-codes"
            }]
          }]
        }]
      },
      {
        "name" : "b7901585",
        "source" : [{
          "context" : "a"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "clinicalStatus",
          "variable" : "cs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        },
        {
          "context" : "cs",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "ccs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Coding"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "active"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "system",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "http://terminology.hl7.org/CodeSystem/condition-clinical"
          }]
        }]
      },
      {
        "name" : "3e544e1e",
        "source" : [{
          "context" : "a"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "verificationStatus",
          "variable" : "cs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        },
        {
          "context" : "cs",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "ccs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Coding"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "unconfirmed"
          }]
        },
        {
          "context" : "ccs",
          "contextType" : "variable",
          "element" : "system",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "http://terminology.hl7.org/CodeSystem/condition-ver-status"
          }]
        }]
      }]
    }]
  }]
}

```
