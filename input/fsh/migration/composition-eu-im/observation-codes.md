# Observation coding: CVD IG vs mapping / Excel vs analogue IGs

Use this when harmonising CVD questionnaire data with **Lab**, **Lifestyle**, and **VitalSigns** examples referenced from `composition-cvd-eu-im-example`.

## Same clinical meaning, different LOINC (Lab vs common Excel / doc references)

| Concept | Often cited (e.g. entities spreadsheet) | **ig-lt-lab** example uses |
| ------- | ---------------------------------------- | --------------------------- |
| Total cholesterol | LOINC **2093-3** (Mass/volume) | **14647-2** — Cholesterol [Moles/volume] in Serum or Plasma |
| LDL | **13457-7** (Mass/volume) | **39469-2** — LDL [Moles/volume] by **calculation** (Friedewald) |
| HDL | **2085-9** (Mass/volume) | **14646-4** — HDL [Moles/volume] |
| Triglycerides | **2571-8** | Lab example `observation-triglycerides-example` — confirm LOINC on instance |
| Glucose (fasting serum) | **1558-6** | Lab uses **41652-9** — Glucose [Mass/volume] in **Venous blood** (not fasting plasma) |
| HbA1c | **4548-4** | **4548-4** — matches lab example |

Moles/volume (mmol/L) vs mass/volume (mg/dL) are **different observable codes**; pick one scale per interoperability agreement.

## CVD IG internal: duplicate SNOMED on two Observation types

| Instance profile | `Observation.code` |
| ---------------- | ------------------- |
| **CVDRiskAssessmentLtCvd** | SNOMED **827181004** “Risk of cardiovascular disease” |
| **RiskGroupObservationLtCvd** | Same **827181004** |

Same code, different profiles (value vs interpretation/risk group). Consumers must use **profile/meta** to distinguish SCORE2 % + component vs programme bucket.

## ECG

**EKGLtCvd** uses **IEEE 11073 / MDC** codes (`MDC_ECG_ELEC_POTL`, etc.), not LOINC ECG panels—differs from a purely LOINC-based model.

## Lifestyle IG (examples in composition)

| Topic | Primary coding on example |
| ----- | ------------------------- |
| Tobacco | LOINC **72166-2** + SNOMED **229819007** |
| Alcohol | SNOMED **897148007** |
| Physical activity | SNOMED **68130003** |
| Nutrition | SNOMED **384759009** |
| Family history CVD | SNOMED **266894000** (Observation-profiled “family history”) |

## Vital signs

**Blood pressure:** LOINC **85354-9** panel + **8480-6** / **8462-4** components (Base and VitalSigns examples align on these LOINCs).

## Patient reference inconsistency

Dependency examples often use **`patient-example`** (Base); CVD composition **subject** is **`patient-male-example`**. Links are valid for structure; for a single patient record, replace subject on cloned instances or use one patient id everywhere.
