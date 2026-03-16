# Task 1: Missing Resources and Coding Differences

Gap analysis between FHIR DSTU1 SKL XMLs (SKL01, SKL02, SKL03) and LT IGs: VitalSigns, Lifestyle, CVD, Lab. No existing IG resources are changed; this document supports migration under `input/fsh/migration/`.

---

## 1. Missing or Non-Aligned Resource Profiles

| Resource / concept | In XML (DSTU1) | In LT IGs | Gap |
|--------------------|----------------|-----------|-----|
| **Composition (ŠKL)** | Composition with type 83539-7 / 77442-2 / 78710-1 and fixed section tree (LOINC 55752-0, 11535-2, 18605-6, 60590-7, 104205-0, 46467-7, 8716-3, 26436-6, 51848-0, 18776-5, 39223-3, 48767-8) | CompositionLt exists (ig-lt-base) but no ŠKL document-type or section constraints | Define a CVD/ŠKL Composition profile or IG-level constraints: type and section.code bound to the three document types and section LOINCs above. |
| **Provenance** | Document submission event, agent, reason (esveikata EventType) | Not profiled (core only) | Optional: LT Provenance profile if author/reason/agent must use LT classifiers. |
| **List** | Diagnoses (11535-2), medications (60590-7, 104205-0), CVD risk factors (83539-7, 46467-7) | Not profiled | List not profiled in any LT IG; keep core or add minimal profile for list codes. |
| **CarePlan** | Goals/activities with ltnhr-careplan extensions (LDL, BP, BMI, smoking cessation, diet, physical activity) | LtScreeningCarePlan in ig-lt-cvd | XML uses `http://esveikata.lt/Profile/ltnhr-careplan#...` extensions. LT profile has no equivalent; map goal/activity structure and codes or add LT extensions. |
| **MedicationStatement** | dose, numberOfDoses (ltnhr-medicationStatement extensions) | LtScreeningMedicationStatement (screening context) | XML uses narrative dose/numberOfDoses; LT profile does not define these. Add extensions or map to dosage text. |
| **Observation (risk factors)** | Many observations with ltnhr-observation#patientConsent, HealthRiskFactor classifier (1–18) | Lifestyle/CVD Observation profiles (smoking, alcohol, nutrition, physical activity, family history, etc.) | Overlap in semantics; XML uses local classifier and consent extension. Create mapping: HealthRiskFactor codes → LT Observation profiles/codes. |
| **Condition** | Referenced for chronic diseases (List 11535-2) | ConditionLt (base); LTScreeningCvdChronicCondition (CVD) | No structural gap; ensure type/code mapping from XML to LT value sets. |

---

## 2. Coding and Terminology Differences

| Area | XML (DSTU1) | LT IGs | Action |
|------|-------------|--------|--------|
| **Document type** | LOINC 83539-7, 77442-2, 78710-1 (Lithuanian title in `text`) | CompositionLt.type not bound to a value set for these | Add ValueSet for ŠKL document types; bind Composition (or ŠKL Composition profile) to it. |
| **Section codes** | LOINC 55752-0, 11535-2, 18605-6, 60590-7, 104205-0, 46467-7, 8716-3, 26436-6, 51848-0, 18776-5, 39223-3, 48767-8 | Not constrained in CompositionLt | Define section code value set(s) and optional section structure in ŠKL Composition profile. |
| **Event type** | `http://esveikata.lt/classifiers/EventType` (e.g. code 2) | Not in LT IGs | Add or reference CodeSystem/ValueSet for EventType. |
| **Confidentiality** | `http://esveikata.lt/classifiers/Confidentiality` (e.g. N) | Not in LT IGs | Add or reference. |
| **Author qualification** | `http://esveikata.lt/classifiers/QualificationCode` (e.g. 221104) | Not in LT IGs | Add or reference; needed for author extension. |
| **Health risk factor** | `http://esveikata.lt/classifiers/HealthRiskFactor` (codes 1–18) | LT uses SNOMED/LOINC in Observation profiles | Create mapping: HealthRiskFactor → SNOMED/LOINC (and to specific LT Observation profile). |
| **BMI interpretation** | `http://esveikata.lt/classifiers/Observation/Interpretation/BMI` | VitalSigns uses standard interpretation | Map local BMI interpretation to v3-ObservationInterpretation or LT value set. |
| **Vital signs** | LOINC 3137-7, 3141-9, 8280-0, 59574-4, 55284-4, 8480-6, 8462-4, 8886-4 (DSTU1 Observation.name) | ig-lt-vitalsigns uses same/similar LOINC | R5 uses Observation.code; ensure LOINC and units match. |
| **Lab** | LOINC 14749-6, 14647-2, 14646-4, 70204-3, 39469-2, 14927-8, 14682-9, 98979-8, 32294-1, etc. | ig-lt-lab: lipidogram, cholesterol, HbA1c, creatinine, EGFR, ACR | Map each XML lab code to LT Observation/DiagnosticReport profile and value set. |
| **Composition extensions** | ltnhr-core#meta, ltnhr-composition#authorDepartment, #authorQualification | CompositionLt has no author department/qualification | Add or reference extensions for author department and author qualification. |

---

## 3. Section LOINC Codes (XML Reference)

| LOINC | Display (XML) | Use in composition |
|-------|----------------|---------------------|
| 55752-0 | Clinical information | Root section |
| 11535-2 | Hospital discharge diagnosis note | Past/current chronic diseases |
| 18605-6 | Medication current Set | Medications |
| 60590-7 | Medication dispensed brief Document | Prescription meds |
| 104205-0 | Patient generated medication list | Non‑prescription meds |
| 83539-7 | Cardiology Risk assessment and screening note | CVD risk factors (SNOMED in XML) |
| 46467-7 | Risk factors | Concomitant risk factors |
| 8716-3 | Vital signs note | Vital signs |
| 26436-6 | Laboratory studies (set) | Laboratory |
| 51848-0 | Evaluation note | Automatic calculations/assessments |
| 18776-5 | Plan of care note | Plan (SKL02, SKL03) |
| 39223-3 | Diagnosis recommendations, description | Other recommendations |
| 48767-8 | Annotation comment [Interpretation] Narrative | Comments (SKL03) |

---

## 4. Document Types (XML)

| LOINC | Title (XML) |
|-------|-------------|
| 83539-7 | ŠKL rizikos vertinimas |
| 77442-2 | ŠKL prevencijos priemonių planas (Cardiology Plan of care note) |
| 78710-1 | ŠKL prevencijos priemonių plano pasiekimų vertinimas (Cardiology Progress note) |

---

## 5. Structural (DSTU1 vs R5) Notes

- **Observation:** DSTU1 `name` → R5 `code`; carry all LOINC/SNOMED in `code`.
- **Provenance:** DSTU1 reason/agent structure differs from R5; convert to R5 Provenance.
- **CarePlan:** DSTU1 goal/activity and ltnhr extensions need R5 equivalents or new LT extensions.

---

## 6. Recommendation

Add a small “SKL / CVD document” module that defines: (1) ValueSets for the three document types and section LOINCs, (2) optional Composition profile constraining type and section.code, (3) CodeSystems/ValueSets for esveikata classifiers or normative references, (4) mapping from HealthRiskFactor and ltnhr extensions to LT Observation/CarePlan/MedicationStatement. All new artifacts can live under `migration/` until promoted.
