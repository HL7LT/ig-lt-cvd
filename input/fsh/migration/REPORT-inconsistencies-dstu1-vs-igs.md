# Inconsistencies: SKL FHIR DSTU1 vs Current LT IGs

This report documents structural, terminology, extension, and profile-coverage differences between the Cardio Screening Report (ŠKL) FHIR DSTU1 XMLs (SKL01, SKL02, SKL03) and the current Lithuanian IGs (ig-lt-base, ig-lt-lifestyle, ig-lt-cvd). It supports migration of DSTU1 instances to R5 and alignment with LT profiles.

---

## 1. Structural (DSTU1 → R5)

| DSTU1 element | R5 / current | Notes |
|---------------|--------------|--------|
| `Observation.name` | `Observation.code` | All LOINC/SNOMED from `name` move to `code`. |
| `Observation.appliesDateTime` | `Observation.effectiveDateTime` | Renamed in R4. |
| `Observation.reliability` | *(removed)* | Dropped in R4; omit in migrated instances. |
| `Observation.related` (child observations) | `Observation.hasMember` or `Observation.component` | Panels: use `hasMember` for references to other Observation resources, or `component` for inline components. |
| `Composition.section.content` | `Composition.section.entry` | Single `content` reference → `entry` array. |
| `CarePlan.patient` | `CarePlan.subject` | Renamed. |
| `CarePlan.modified` | `CarePlan.meta.lastUpdated` or `CarePlan.period` | No direct equivalent; use meta or period as appropriate. |
| `CarePlan.participant.member` | `CarePlan.contributor` (R5) | Structure changed; map to contributor where applicable. |
| `CarePlan.goal` (inline with extensions) | `CarePlan.goal` (reference or inline) | R5 allows Goal reference or inline; ltnhr-careplan extensions have no LT profile equivalent—keep as narrative/description or future extensions. |
| `CarePlan.activity.simple` | `CarePlan.activity.plannedActivityDetail` or reference | DSTU1 “simple” activity → R5 activity detail or reference. |
| `Provenance.agent.reference` | `Provenance.agent.who` | Reference to Practitioner/Organization etc. |
| `Provenance.reason` (CodeableConcept) | `Provenance.reason` (CodeableConcept) | Unchanged; bind to LT EventType when available. |
| List `entry.item` | List `entry.item` | Structure largely unchanged. |

---

## 2. Terminology / coding

### 2.1 Document type

| LOINC | Title (DSTU1) | Current LT IG |
|-------|----------------|---------------|
| 83539-7 | ŠKL rizikos vertinimas (Cardiology Risk assessment and screening note) | CompositionLt.type not bound to a value set for these codes. |
| 77442-2 | ŠKL prevencijos priemonių planas (Cardiology Plan of care note) | Same. |
| 78710-1 | ŠKL prevencijos priemonių plano pasiekimų vertinimas (Cardiology Progress note) | Same. |

**Recommendation:** Define a ValueSet for ŠKL document types (83539-7, 77442-2, 78710-1) and bind Composition (or a ŠKL-specific Composition profile) to it.

### 2.2 Section codes

Section codes used in the XML:

| LOINC | Display | Use in composition |
|-------|---------|---------------------|
| 55752-0 | Clinical information | Root section |
| 11535-2 | Hospital discharge diagnosis note | Past/current chronic diseases |
| 18605-6 | Medication current Set | Medications |
| 60590-7 | Medication dispensed brief Document | Prescription meds subsection |
| 104205-0 | Patient generated medication list | Non‑prescription meds subsection |
| 83539-7 | Cardiology Risk assessment and screening note | CVD risk factors (also used as list code in XML) |
| 46467-7 | Risk factors | Concomitant risk factors |
| 8716-3 | Vital signs note | Vital signs |
| 26436-6 | Laboratory studies (set) | Laboratory |
| 51848-0 | Evaluation note | Automatic calculations/assessments |
| 18776-5 | Plan of care note | Plan (SKL02, SKL03) |
| 39223-3 | Diagnosis recommendations, description (narrative) CPHS | Other recommendations |
| 48767-8 | Annotation comment [Interpretation] Narrative | Comments (SKL03) |

**Current state:** CompositionLt does not constrain section codes. **Recommendation:** Define section code value set(s) and optionally a ŠKL Composition profile that constrains `section.code`.

### 2.3 esveikata.lt classifiers

| Classifier | Example (XML) | In LT IGs |
|------------|---------------|-----------|
| EventType | `http://esveikata.lt/classifiers/EventType` code "2" (Ambulatorinės gydymo paslaugos suteikimas) | Not defined. |
| Confidentiality | `http://esveikata.lt/classifiers/Confidentiality` code "N" | Not defined. |
| QualificationCode | `http://esveikata.lt/classifiers/QualificationCode` code "221104" (Medicinos gydytojas) | Not defined. |

**Recommendation:** Add or reference CodeSystem/ValueSet for these classifiers, or map to standard FHIR/HL7 terminology (e.g. v3-Confidentiality, qualification codes) and document mapping.

### 2.4 Risk factors

- **DSTU1 / XML:** Risk factor observations use SNOMED (e.g. 171224000 “Risk factors present at heart disease screening”), method for condition (e.g. 38341003 Hypertensive disorder), and sometimes `http://esveikata.lt/classifiers/HealthRiskFactor` (codes 1–18).
- **LT IGs:** RiskFactorStatusLtCvd, RiskFactorTypeLtCvd use SNOMED/LOINC and component slices (risk, treatment, medication).

**Gap:** HealthRiskFactor (1–18) and some DSTU1 code combinations have no direct binding in LT profiles. **Recommendation:** Publish mapping HealthRiskFactor → SNOMED/LOINC and to RiskFactorTypeLtCvd / RiskFactorStatusLtCvd where applicable.

### 2.5 Vital signs

| LOINC | Display | ig-lt-vitalsigns / LT IGs |
|-------|---------|----------------------------|
| 3137-7 | Body height measured | Aligned (body-height profile). |
| 3141-9 | Body weight measured | Aligned (body-weight). |
| 55284-4 | Blood pressure systolic and diastolic | Aligned (blood pressure panel). |
| 8480-6 | Systolic blood pressure | Aligned. |
| 8462-4 | Diastolic blood pressure | Aligned. |
| 59574-4 | Body mass index (BMI) [Percentile] | Note: LOINC title “[Percentile]” vs common kg/m² usage; ig-lt-vitalsigns uses BMI. |

Migration uses ObservationLt only (ig-lt-cvd does not depend on ig-lt-vitalsigns/ig-lt-lab).

### 2.6 Laboratory

| Code / system | Use in XML | LT IGs |
|---------------|------------|--------|
| LOINC 39469-2 | LDL cholesterol (Serum/Plasma by calculation) | ig-lt-lab has cholesterol/LDL profiles; not a dependency of ig-lt-cvd. |
| LOINC 26436-6 | Laboratory studies (set) | Panel code; not constrained in ig-lt-cvd. |
| `https://www.medicinosnk.lt/CodeSystem/lt-lab-test-results` 39469-2 | MTL cholesterolis (LDL) with Lithuanian display | Local CodeSystem; not in current LT IG. |

**Recommendation:** Document use of LOINC 39469-2 vs medicinosnk.lt CodeSystem; align with ig-lt-lab cholesterol profiles when that IG is used.

---

## 3. Extensions (ltnhr – not in current LT profiles)

### 3.1 ltnhr-careplan

| Extension | Purpose | LT profile |
|-----------|---------|------------|
| LDLCholesterol | Goal: LDL observation type (LOINC 39469-2) | CarePlanLtCvd has no equivalent. |
| targetLDLCholesterol | Target quantity (e.g. &lt; 1.8 mmol/L) | Same. |
| bloodPressureSystolic / targetBloodPressureSystolic | Systolic BP goal (range) | Same. |
| bloodPressureDiastolic / targetBloodPressureDiastolic | Diastolic BP goal | Same. |
| BMI / targetBMI | BMI goal | Same. |
| smokingCessationMethod | Smoking cessation (SNOMED e.g. 713700008, 711028002) | Same. |
| physicalActivitySelection | Physical activity (SNOMED or “Kita”) | Same. |
| loseWeight / targetBMIPercentage | Weight loss goal (e.g. ≥ 5%) | Same. |

**Recommendation:** Add LT CarePlan goal extensions for CVD targets (LDL, BP, BMI, smoking cessation, physical activity, weight loss) or map to narrative/description and referenced Goal resources.

### 3.2 ltnhr-composition

| Extension | Purpose | LT profile |
|-----------|---------|------------|
| authorDepartment | Organization reference (department) | CompositionLt has no equivalent. |
| authorQualification | QualificationCode (e.g. 221104 Medicinos gydytojas) | Same. |

**Recommendation:** Add or reference extensions for author department and author qualification on Composition.

### 3.3 ltnhr-observation

| Extension | Purpose | LT profile |
|-----------|---------|------------|
| patientConsent | Boolean (e.g. for sensitive risk factor) | Not in ObservationLt / RiskFactorStatusLtCvd. |

**Recommendation:** Consider adding consent extension to relevant Observation profiles if required by policy.

### 3.4 ltnhr-medicationStatement

| Extension | Purpose | LT profile |
|-----------|---------|------------|
| dose | Narrative dose (e.g. "22ml per dieną") | MedicationStatementLtCvd uses dosage; narrative can go in dosage.text. |
| numberOfDoses | Narrative (e.g. "4 kartai") | Same. |

**Recommendation:** Map to `dosage.text` or add structured dose/numberOfDoses extensions if needed.

---

## 4. Profile coverage (migration instances)

| Resource type | DSTU1 usage | LT profile used for instance | Gap |
|---------------|-------------|------------------------------|-----|
| Composition | ŠKL document types, section tree | CompositionLt | No binding for document type or section codes; ltnhr-composition extensions not in profile. |
| Provenance | Document submission, agent, reason | Core Provenance | No LT Provenance profile; EventType not in IGs. |
| List | Diagnoses, medications, risk factor lists | Core List | List not profiled in any LT IG. |
| CarePlan | Goals/activities with ltnhr-careplan extensions | CarePlanLtCvd | Goal/activity extensions not in profile; map to description/narrative. |
| Observation (risk factor) | Hypertension, diabetes, dyslipidemia, smoking, etc. | RiskFactorStatusLtCvd or ObservationLt | Some DSTU1 codes/structures need mapping to component slices. |
| Observation (vitals, lab, narrative) | BP, height, weight, BMI, LDL, recommendations, comments | ObservationLt | No dependency on ig-lt-vitalsigns/ig-lt-lab; use base ObservationLt. |
| MedicationStatement | Dose/numberOfDoses extensions | MedicationStatementLtCvd | Narrative dose in dosage.text. |
| Condition | Referenced from List (diagnoses) | ConditionLt / CvdChronicConditionLtCvd | No structural gap; ensure code/type mapping. |

---

## 5. Summary

- **Structural:** Apply DSTU1→R5 renames and removals (name→code, appliesDateTime→effective, reliability removed, section.content→entry, CarePlan.patient→subject, Provenance.agent.reference→who).
- **Terminology:** Add or bind ValueSets for ŠKL document types and section codes; add or map esveikata classifiers (EventType, Confidentiality, QualificationCode); document HealthRiskFactor and lab code mapping.
- **Extensions:** ltnhr-careplan, ltnhr-composition, ltnhr-observation, ltnhr-medicationStatement are not in current LT profiles; add LT equivalents or map to narrative/standard elements.
- **Profiles:** Migration uses CompositionLt, CarePlanLtCvd, ObservationLt, RiskFactorStatusLtCvd, MedicationStatementLtCvd, and core List/Provenance; gaps documented above for future IG updates.
