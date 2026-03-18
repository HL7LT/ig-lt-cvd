# Composition: EU IM style + cross-IG examples

One **CompositionLt** instance (`composition-cvd-eu-im-example`) aligned to LOINC **83539-7** (ŠKL / CVD risk assessment) and section **55752-0** (Clinical information).

## Contents

Nested sections reference:

| Section | Source package | Examples |
| ------- | -------------- | -------- |
| Encounter + PractitionerRole | **lt.hl7.fhir.base** | `Encounter/encounter-psychiatric-example`, `PractitionerRole/practitioner-role-doctor-vilnius-hospital-example` |
| SCORE2, risk group, ECG, chronic condition | **ig-lt-cvd** | CVD profile examples |
| Typed risk factors | **ig-lt-cvd** | Hypertension, dyslipidemia, diabetes, IGT observations |
| Vital signs | **lt.hl7.fhir.vitalsigns** | BP, HR, weight, height, BMI, waist |
| Laboratory | **lt.hl7.fhir.lab** | Lipids, glucose, HbA1c, creatinine, eGFR |
| Lifestyle + family history | **lt.hl7.fhir.lifestyle** | Tobacco, alcohol, PA, nutrition, family CVD |
| Plan + meds + diabetes duration | **ig-lt-cvd** | CarePlan, MedicationStatement, Observation |

References use explicit types (`Observation/id`, etc.) so the Composition JSON is valid. The IG Publisher must resolve targets from **dependent IGs’ example bundles** (ensure those packages publish the listed instance ids).

## Observation coding differences

See **[observation-codes.md](observation-codes.md)** — Lab LOINCs often use **moles/volume** (mmol/L) where spreadsheets cite **mass/volume**; glucose example is **venous** not fasting plasma; CVD **RiskGroupObservation** shares SNOMED **827181004** with **CVDRiskAssessmentLtCvd**.

## Patient consistency

Composition **subject** is `patient-male-example` (CVD). Many dependency examples use **`patient-example`** (Base). Migration/demo only — clone or re-point subjects for one logical patient.
