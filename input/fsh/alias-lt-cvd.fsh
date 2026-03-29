// Canonical URLs for ig-lt-cvd (https://hl7.lt/fhir/cvd)
// Profiles and extensions: StructureDefinition
// Terminology: https://tx.hl7.lt/fhir/ (no -lt-cvd in path)

Alias: $cvd-composition-lt-cvd-url = https://hl7.lt/fhir/cvd/StructureDefinition/cvd-composition-lt-cvd
Alias: $cvd-risk-assessment-composition-lt-cvd-url = https://hl7.lt/fhir/cvd/StructureDefinition/cvd-risk-assessment-composition-lt-cvd
Alias: $cvd-prevention-plan-composition-lt-cvd-url = https://hl7.lt/fhir/cvd/StructureDefinition/cvd-prevention-plan-composition-lt-cvd
Alias: $cvd-achievement-composition-lt-cvd-url = https://hl7.lt/fhir/cvd/StructureDefinition/cvd-achievement-composition-lt-cvd
Alias: $cvd-report-lt-cvd-url = https://hl7.lt/fhir/cvd/StructureDefinition/cvd-report-lt-cvd
Alias: $cvd-risk-assessment-lt-cvd-url = https://hl7.lt/fhir/cvd/StructureDefinition/cvd-risk-assessment-lt-cvd
Alias: $care-plan-lt-cvd-url = https://hl7.lt/fhir/cvd/StructureDefinition/care-plan-lt-cvd
Alias: $family-member-history-lt-cvd-url = https://hl7.lt/fhir/cvd/StructureDefinition/family-member-history-lt-cvd
Alias: $cvd-chronic-condition-lt-cvd-url = https://hl7.lt/fhir/cvd/StructureDefinition/cvd-chronic-condition-lt-cvd
Alias: $risk-group-observation-lt-cvd-url = https://hl7.lt/fhir/cvd/StructureDefinition/risk-group-observation-lt-cvd
Alias: $risk-factor-status-lt-cvd-url = https://hl7.lt/fhir/cvd/StructureDefinition/risk-factor-status-lt-cvd
Alias: $diabetes-duration-status-lt-cvd-url = https://hl7.lt/fhir/cvd/StructureDefinition/diabetes-duration-status-lt-cvd
Alias: $ekg-lt-cvd-url = https://hl7.lt/fhir/cvd/StructureDefinition/ekg-lt-cvd
Alias: $medication-statement-lt-cvd-url = https://hl7.lt/fhir/cvd/StructureDefinition/medication-statement-lt-cvd
// Alias: $number-of-steps-lt-cvd-url = https://hl7.lt/fhir/cvd/StructureDefinition/number-of-steps-lt-cvd
Alias: $device-physical-activity-lt-cvd-url = https://hl7.lt/fhir/cvd/StructureDefinition/device-physical-activity-lt-cvd

// Extensions
Alias: $risk-group-ext-lt-cvd-url = https://hl7.lt/fhir/cvd/StructureDefinition/risk-group-ext-lt-cvd

// Terminology (tx.hl7.lt, no -lt-cvd in path per guide)
Alias: $risk-group-lt-cvd-url = https://tx.hl7.lt/fhir/CodeSystem/risk-group
Alias: $cvd-risk-degree-lt-cvd-url = https://tx.hl7.lt/fhir/ValueSet/cvd-risk-degree
Alias: $cvd-high-risk-condition-lt-cvd-url = https://tx.hl7.lt/fhir/ValueSet/cvd-high-risk-condition
Alias: $cvd-risk-group-lt-cvd-url = https://tx.hl7.lt/fhir/ValueSet/cvd-risk-group
Alias: $risk-factor-type-lt-cvd-url = https://tx.hl7.lt/fhir/ValueSet/risk-factor-type
Alias: $cvd-composition-code-vs-url = https://tx.hl7.lt/fhir/ValueSet/vd-composition-code

// Illustrative codes for Questionnaire answer options (not a published CodeSystem resource in this IG)
Alias: $cvd-questionnaire-options-cs = https://hl7.lt/fhir/cvd/CodeSystem/cvd-questionnaire-options

// Questionnaire linkId CodeSystems and ConceptMap targets (cross-IG mapping)
Alias: $cvd-questionnaire-risk-assessment-item-cs-url = https://hl7.lt/fhir/cvd/CodeSystem/cvd-questionnaire-risk-assessment-item
Alias: $cvd-questionnaire-prevention-plan-item-cs-url = https://hl7.lt/fhir/cvd/CodeSystem/cvd-questionnaire-prevention-plan-item
Alias: $cvd-questionnaire-mapping-target-cs-url = https://hl7.lt/fhir/cvd/CodeSystem/cvd-questionnaire-mapping-target
Alias: $conceptmap-cvd-risk-assessment-questionnaire-url = https://hl7.lt/fhir/cvd/ConceptMap/cvd-risk-assessment-questionnaire
Alias: $conceptmap-cvd-prevention-plan-questionnaire-url = https://hl7.lt/fhir/cvd/ConceptMap/cvd-prevention-plan-questionnaire

// FHIR R5 ConceptMap target relationship (http://hl7.org/fhir/concept-map-relationship)
Alias: $cm-rel = http://hl7.org/fhir/concept-map-relationship

// CVD-specific terminology not defined in other IGs
Alias: $ekg-result-interpretation-vs-url = https://tx.hl7.lt/fhir/ValueSet/ekg-result-interpretation
Alias: $family-member-history-screening-lt-lifestyle-url = https://tx.hl7.lt/fhir/ValueSet/family-member-history-screening
