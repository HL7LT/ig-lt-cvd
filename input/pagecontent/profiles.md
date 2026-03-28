### Profiles

This page lists all StructureDefinition profiles and extensions defined in the Lithuanian CVD Implementation Guide. These profiles support the cardiovascular disease screening and prevention programme — from initial risk assessment and laboratory workup through prevention planning, ECG interpretation, and achievement evaluation.

#### Report and Composition Profiles

| Profile | Description |
|---|---|
| [CvdReportLtCvd](StructureDefinition-cvd-report-lt-cvd.html) | DiagnosticReport anchor for the CVD programme document. Links a CvdComposition with all structured Observation results (SCORE2, risk group, ECG, follow-up). Modelled after the imaging-report pattern. |
| [CvdCompositionLtCvd](StructureDefinition-cvd-composition-lt-cvd.html) | Combined three-section composition for the full CVD prevention programme document (risk assessment + prevention plan + achievement evaluation). Use the document-specific profiles below for individual sections. |
| [CvdRiskAssessmentCompositionLtCvd](StructureDefinition-cvd-risk-assessment-composition-lt-cvd.html) | Composition for the CVD risk assessment document (DSTU1 SKL01 equivalent). Fixed type: `LOINC#83539-7` Cardiology Risk assessment and screening note. |
| [CvdPreventionPlanCompositionLtCvd](StructureDefinition-cvd-prevention-plan-composition-lt-cvd.html) | Composition for the CVD prevention measures plan document (DSTU1 SKL02 equivalent). Fixed type: `LOINC#77442-2` Cardiology Plan of care note. |
| [CvdAchievementCompositionLtCvd](StructureDefinition-cvd-achievement-composition-lt-cvd.html) | Composition for the CVD achievement evaluation document (DSTU1 SKL03 equivalent). Fixed type: `LOINC#78710-1` Cardiology Progress note. |

#### Risk Assessment Profiles

| Profile | Description |
|---|---|
| [CVDRiskAssessmentLtCvd](StructureDefinition-cvd-risk-assessment-lt-cvd.html) | SCORE2 cardiovascular risk score observation. Records the computed percentage risk with component coding for age group and risk category. |
| [RiskGroupObservationLtCvd](StructureDefinition-risk-group-observation-lt-cvd.html) | Programme risk group classification (small-to-medium, large, very large). Drives LDL targets and follow-up interval decisions. |
| [RiskFactorStatusLtCvd](StructureDefinition-risk-factor-status-lt-cvd.html) | Generic risk factor status observation (no / present untreated / present treated) for hypertension, dyslipidemia, diabetes, familial hypercholesterolemia, and other programme-listed risk factors. |
| [CvdChronicConditionLtCvd](StructureDefinition-cvd-chronic-condition-lt-cvd.html) | Accompanying high-risk chronic condition (e.g. heart failure, prior myocardial infarction) that upgrades the patient's programme risk group. |

#### Clinical Measurement Profile

| Profile | Description |
|---|---|
| [EKGLtCvd](StructureDefinition-ekg-lt-cvd.html) | 12-lead electrocardiogram observation with SampledData components. Interpretation sliced to `EkgResultInterpretationVS` (Normal / Abnormal per SNOMED CT). |

#### Prevention Profile

| Profile | Description |
|---|---|
| [CarePlanLtCvd](StructureDefinition-care-plan-lt-cvd.html) | Prevention care plan capturing lifestyle interventions (smoking cessation, diet, physical activity) and structured goals (target LDL, target BP, target BMI, weight-loss ≥5%). Carries the programme risk group via `RiskGroupExtLtCvd`. |

#### Extensions

| Extension | Description |
|---|---|
| [RiskGroupExtLtCvd](StructureDefinition-risk-group-ext-lt-cvd.html) | Attaches the programme CVD risk group classification directly to a CarePlan resource, allowing downstream retrieval without resolving the linked RiskGroupObservation. |

#### Cross-IG Dependencies

The CVD screening pathway draws on observations defined in other Lithuanian FHIR IGs:

- **[Vital Signs IG](https://build.fhir.org/ig/HL7LT/ig-lt-vitalsigns/)** — body height, weight, BMI, waist circumference (with obesity interpretation), blood pressure panel, heart rate
- **[Lifestyle IG](https://build.fhir.org/ig/HL7LT/ig-lt-lifestyle/)** — tobacco use and type, alcohol consumption (AUDIT-C), physical activity, nutrition, metabolic syndrome, family history of CVD and diabetes
- **[Lab IG](https://build.fhir.org/ig/HL7LT/ig-lt-lab/)** — lipidogram panel (total cholesterol, HDL, LDL, non-HDL, triglycerides), glucose, HbA1c, creatinine, eGFR, albumin/creatinine ratio
