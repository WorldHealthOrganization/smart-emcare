library EmCareConcepts

// Code Systems
codesystem "ICD-10": 'http://hl7.org/fhir/sid/icd-10'
codesystem "SNOMED-CT": 'http://snomed.info/sct'
codesystem "LOINC": 'http://loinc.org'
codesystem "RxNorm": 'http://www.nlm.nih.gov/research/umls/rxnorm'
codesystem "CPT": 'http://www.ama-assn.org/go/cpt'
codesystem "HCPCS": 'https://www.cms.gov/Medicare/Coding/HCPCSReleaseCodeSets'
codesystem "CIEL": 'http://hl7.org/fhir/sid/ciel'
codesystem "ICD-11": 'http://hl7.org/fhir/sid/icd-11'
codesystem "ICHI": 'https://mitel.dimi.uniud.it/ichi/#http://id.who.int/ichi'
codesystem "ICF": 'http://hl7.org/fhir/sid/icf-nl'
codesystem "NDC": 'http://hl7.org/fhir/sid/ndc'
codesystem "Extended Codes CodeSystem codes": 'http://fhir.org/guides/who/emc-cds/CodeSystem/emc-custom-codes-codes'

// Value Sets
valueset "Provide an estimated age or estimated date of birth": 'http://fhir.org/guides/who/emc-cds/ValueSet/emcare-a-de12'
valueset "Provide an estimated age or estimated date of birth Choices": 'http://fhir.org/guides/who/emc-cds/ValueSet/emcare-a-de13'
valueset "sex": 'http://fhir.org/guides/who/emc-cds/ValueSet/emcare-a-de16'
valueset "Sex Choices": 'http://fhir.org/guides/who/emc-cds/ValueSet/emcare-a-de17'
valueset "Relationship to Client": 'http://fhir.org/guides/who/emc-cds/ValueSet/emcare-a-de24'
valueset "Primary Caregiver's Relationship to Client Choices": 'http://fhir.org/guides/who/emc-cds/ValueSet/emcare-a-de25'
valueset "MTH": 'http://fhir.org/guides/who/emc-cds/ValueSet/emcare-a-de33'
valueset "FTH": 'http://fhir.org/guides/who/emc-cds/ValueSet/emcare-a-de34'
valueset "Caregiver wants to receive SMS or other messages regarding the child's visits and health status": 'http://fhir.org/guides/who/emc-cds/ValueSet/emcare-a-de38'
valueset "Person accompanying child today's Relationship to Client": 'http://fhir.org/guides/who/emc-cds/ValueSet/emcare-a-de43'
valueset "Type of Visit": 'http://fhir.org/guides/who/emc-cds/ValueSet/emcare-b2-de01'
valueset "Type of Visit Choices": 'http://fhir.org/guides/who/emc-cds/ValueSet/emcare-b2-de02'
valueset "Reason for Consultation": 'http://fhir.org/guides/who/emc-cds/ValueSet/emcare-b3-de01'
valueset "Reason for Consultation Choices": 'http://fhir.org/guides/who/emc-cds/ValueSet/emcare-b3-de02'
valueset "Is the child sick today": 'http://fhir.org/guides/who/emc-cds/ValueSet/emcare-b3-de05'
valueset "Type of Consultation Choices": 'http://fhir.org/guides/who/emc-cds/ValueSet/emcare-b3-de07'

// Codes
