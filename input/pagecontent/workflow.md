# Cardiovascular disease prevention and assessment workflow

This page describes the **clinical and programme pathway** for Lithuanian **CVD prevention and early diagnosis**, aligned with the national **risk assessment questionnaire** and **prevention measures plan** (including later **achievement evaluation**). It matches the high-level process model used for programme design: primary assessment → investigations → optional specialist review → integrated risk interpretation → prevention plan → longitudinal follow-up.

FHIR resources from **this IG** appear mainly from step 4 onward (risk and plan); earlier steps rely heavily on **LT Base**, **LT VitalSigns**, **LT Lab**, and **LT Lifestyle** for demographics, vitals, labs, and behavioural data.

## 1. Primary care assessment and data collection

The pathway starts with a **primary care CVD assessment visit** (patient present). The general practitioner or nurse collects **cardiovascular history and risk factors**, records **vital signs and anthropometrics** (e.g. blood pressure, heart rate, BMI, waist circumference), and may initiate **risk estimation** using an appropriate model (e.g. SCORE2 / SCORE2-OP). An ECG may be performed when indicated.

* **Context:** Patient, practitioner, organisation, and encounter are typically represented with **LT Base** (and related) profiles.
* **Measurements:** Blood pressure, weight, height, BMI, etc. use **LT VitalSigns** (and general Observation patterns) where profiled there.
* **Central obesity** is assessed as a risk factor based on **waist circumference** (WaistCircumference from LT VitalSigns, thresholds: men >= 102 cm, women >= 88 cm) and recorded via **[RiskFactorStatusLtCvd](StructureDefinition-risk-factor-status-lt-cvd.html)** with SNOMED 248311001 (Central obesity).
* **Lifestyle factors** (smoking, alcohol, activity, diet) often map to **LT Lifestyle** observations when captured in structured form.

This step supplies the **inputs** for formal risk documentation in step 4.

## 2. Diagnostic testing (data acquisition)

Based on the first assessment, **laboratory** tests and **functional or imaging** tests may be performed. These produce **structured results** but are not, by themselves, programme “conclusions”—they feed **interpretation** and risk calculation.

* **Primary care laboratory tests** use **LT Lab** profiles: lipid panel ([TotalCholesterolLabLt](https://build.fhir.org/ig/HL7LT/ig-lt-lab/StructureDefinition-total-cholesterol-lab-lt.html), [CholesterolHdlLabLt](https://build.fhir.org/ig/HL7LT/ig-lt-lab/StructureDefinition-cholesterol-hdl-lab-lt.html), [CholesterolLdlLabLt](https://build.fhir.org/ig/HL7LT/ig-lt-lab/StructureDefinition-cholesterol-ldl-lab-lt.html), [TriglyceridesLabLt](https://build.fhir.org/ig/HL7LT/ig-lt-lab/StructureDefinition-triglycerides-lab-lt.html)), glucose ([GlucoseVenousLabLt](https://build.fhir.org/ig/HL7LT/ig-lt-lab/StructureDefinition-glucose-venous-lab-lt.html)), HbA1c ([HbA1cLabLt](https://build.fhir.org/ig/HL7LT/ig-lt-lab/StructureDefinition-hba1c-lab-lt.html)), creatinine, eGFR, and albumin/creatinine ratio.
* **Cardiologist laboratory tests** (ordered at specialist evaluation) also use **LT Lab** profiles: [ApolipoproteinBLabLt](https://build.fhir.org/ig/HL7LT/ig-lt-lab/StructureDefinition-apolipoprotein-b-lab-lt.html) (Apo B), [LipoproteinALabLt](https://build.fhir.org/ig/HL7LT/ig-lt-lab/StructureDefinition-lipoprotein-a-lab-lt.html) (Lp(a) — mass and molar methods), [PotassiumLabLt](https://build.fhir.org/ig/HL7LT/ig-lt-lab/StructureDefinition-potassium-lab-lt.html) (K+), [ASTLabLt](https://build.fhir.org/ig/HL7LT/ig-lt-lab/StructureDefinition-ast-lab-lt.html) (GOT), [ALTLabLt](https://build.fhir.org/ig/HL7LT/ig-lt-lab/StructureDefinition-alt-lab-lt.html) (GPT), and [HsCRPLabLt](https://build.fhir.org/ig/HL7LT/ig-lt-lab/StructureDefinition-hs-crp-lab-lt.html) (high-sensitivity CRP for CVD risk).
* Results are referenced conceptually when building the **CVD risk assessment** and **risk group** in the next steps.

## 3. Specialist evaluation (if applicable)

If indicated (e.g. high or very high SCORE2 risk), the patient may attend **cardiology** or another specialist. The specialist reviews primary-care data and test results and may order **additional diagnostic tests**, captured by this IG:

* **[EKGLtCvd](StructureDefinition-ekg-lt-cvd.html)** — 12-lead ECG with SampledData waveform and detailed interpretation (normal, abnormal, ST-T changes, atrial fibrillation/flutter, LBBB, supraventricular arrhythmia, extrasystole). Free-text “Other” findings use `Observation.note`.
* **[EchocardiographyLtCvd](StructureDefinition-echocardiography-lt-cvd.html)** — Heart ultrasound capturing ejection fraction (%), EF category (preserved >= 50%, mildly reduced 41-49%, reduced <= 40%), and optional pathology (ICD-10).
* **[ArterialStiffnessLtCvd](StructureDefinition-arterial-stiffness-lt-cvd.html)** — Pulse wave velocity (PWV) carotid-femoral in m/s; normal < 10 m/s.
* **[CarotidUltrasoundLtCvd](StructureDefinition-carotid-ultrasound-lt-cvd.html)** — Carotid artery ultrasound with right/left plaque categories (none, present, < 50%, 50-69%, > 70%) and intima-media thickness (IMT; pathological > 1.5 mm).
* **[AnkleBrachialIndexLtCvd](StructureDefinition-ankle-brachial-index-lt-cvd.html)** — ABI for diabetic patients and smokers; right/left values with PAD severity (normal > 0.9, mild/moderate 0.41-0.90, severe <= 0.40).
* **[CoronaryCalciumScoreLtCvd](StructureDefinition-coronary-calcium-score-lt-cvd.html)** — Agatston score with 6-level interpretation (0 through > 1000). Ordered when medication need is unclear or statins are not tolerated.

This IG does not define a dedicated “referral” profile; **ServiceRequest** / **Encounter** patterns from Base or EU packages may apply. Outputs feed **step 4**.

## 4. Clinical interpretation and risk stratification

Available data are integrated into a coherent **CVD assessment** for the programme:

* **[CVDRiskAssessmentLtCvd](StructureDefinition-cvd-risk-assessment-lt-cvd.html)** — structured **SCORE2-style** cardiovascular risk (percentage) and **qualitative risk degree** (bound value set).
* **[RiskGroupObservationLtCvd](StructureDefinition-risk-group-observation-lt-cvd.html)** — **programme risk group** for heart and vessel diseases (e.g. for recall and reporting), consistent with national criteria where automation or manual confirmation applies.
* **[CvdChronicConditionLtCvd](StructureDefinition-cvd-chronic-condition-lt-cvd.html)** — **accompanying chronic diseases** relevant to CVD risk from the programme list.
* **[RiskFactorStatusLtCvd](StructureDefinition-risk-factor-status-lt-cvd.html)** — **risk factors** (including total count where used).
* **[EKGLtCvd](StructureDefinition-ekg-lt-cvd.html)** — **ECG** when captured as part of this assessment context (supports detailed findings: ST-T changes, arrhythmias, conduction disorders).
* **Cardiovascular diagnostics** (when performed at specialist evaluation): [EchocardiographyLtCvd](StructureDefinition-echocardiography-lt-cvd.html), [ArterialStiffnessLtCvd](StructureDefinition-arterial-stiffness-lt-cvd.html), [CarotidUltrasoundLtCvd](StructureDefinition-carotid-ultrasound-lt-cvd.html), [AnkleBrachialIndexLtCvd](StructureDefinition-ankle-brachial-index-lt-cvd.html), [CoronaryCalciumScoreLtCvd](StructureDefinition-coronary-calcium-score-lt-cvd.html).

Together, these correspond to the **questionnaire** sections for chronic diseases, risk factors, objective findings, ECG, and risk group, plus the numeric risk estimate.

## 5. Prevention and management planning

For patients assigned to an eligible **risk group**, a **CVD prevention measures plan** is created: lifestyle counselling (nutrition, physical activity, smoking cessation, healthy weight), **target LDL cholesterol** and **blood pressure**, and documentation of **regular use of prescribed medications** (antilipid, antihypertensive, etc.) as required by the programme forms.

* **[CarePlanLtCvd](StructureDefinition-care-plan-lt-cvd.html)** carries the structured plan. **[RiskGroupExtLtCvd](StructureDefinition-risk-group-ext-lt-cvd.html)** can repeat or align **risk group** on the plan when needed.
* Lifestyle extensions referenced from the plan may align with **LT Lifestyle** (e.g. physical activity, dietary notes).
* **MedicationStatement** resources (often base or lifestyle screening context) can represent **current medications** linked to the patient.

Example instances in this IG illustrate [care plans](CarePlan-care-plan-cvd-screening-example.html) and related observations.

## 6. Follow-up and achievement evaluation

CVD prevention is **longitudinal**. At follow-up visits (possibly at another institution or with another clinician), **achievement evaluation** is recorded: e.g. achieved LDL, current blood pressure, whether targets were met, smoking status, BMI, and evaluator comments.

* New **Observations** (vitals, labs) and updated **CarePlan** or **Goal**-related documentation represent this phase; the **same profile set** applies to **new instances over time**, not a separate “achievement” resource type.
* Programme indicators (e.g. participation in healthy lifestyle training) may appear as additional observations or questionnaire fields as national forms specify.

## Programme document bundle (CVD report + composition)

For a **single exchangeable record** that mirrors **pathology** and **imaging** reporting patterns in other Lithuanian IGs, this guide defines **[CvdReportLtCvd](StructureDefinition-cvd-report-lt-cvd.html)** and **[CvdCompositionLtCvd](StructureDefinition-cvd-composition-lt-cvd.html)**. The **DiagnosticReport** lists **Observation** results (SCORE2, risk group, EKG, follow-up LDL and BP); the **Composition** groups **assessment**, **prevention plan** (e.g. **CarePlan**), and **achievement evaluation** with **section narratives** and **entry** references. See **[CVD programme report](cvd-report.html)** for the full pattern and **[example instances](DiagnosticReport-diagnosticreport-cvd-example.html)**.

**Illustrative examples** on the FHIR CI build for **vitals** and **lifestyle** data that feed assessment include: [blood pressure](https://build.fhir.org/ig/HL7LT/ig-lt-vitalsigns/Observation-observation-blood-pressure-example.html), [body height](https://build.fhir.org/ig/HL7LT/ig-lt-vitalsigns/Observation-observation-body-height-example.html), [tobacco use](https://build.fhir.org/ig/HL7LT/ig-lt-lifestyle/Observation-observation-tobacco-use-current-smoker-example.html), and [alcohol consumption](https://build.fhir.org/ig/HL7LT/ig-lt-lifestyle/Observation-observation-alcohol-consumption-no-example.html) (LT VitalSigns and LT Lifestyle).

## ESPBI electronic forms (Questionnaire)

The national **risk assessment** and **prevention / achievement** forms can be represented as **[Questionnaire](https://hl7.org/fhir/questionnaire.html)** / **[QuestionnaireResponse](https://hl7.org/fhir/questionnaireresponse.html)** — independent of the **CvdReport** bundle. Illustrative definitions and examples are on **[Questionnaires](questionnaires.html)**.

## Overview diagram

```mermaid
flowchart LR
  step1["Primary Care Assessment"]
  step2["Diagnostic Testing"]
  step3["Specialist Evaluation"]
  step4["Risk Stratification"]
  step5["Prevention Plan"]
  step6["Follow-Up"]
  step1 --> step2
  step2 --> step3
  step3 --> step4
  step1 --> step4
  step4 --> step5
  step5 --> step6
  step6 --> step4
```

The loop from **FollowUp** back to **RiskStratification** reflects **reassessment** and plan updates over time.

This workflow supports **standardised exchange** of questionnaire, plan, and follow-up data while keeping a clear separation between **raw measurements** (vitals, labs), **programme interpretation** (risk score, risk group), and **care planning** (this IG’s focus in steps 4–6).

## DSTU1 to R5 migration notes

The legacy ESPBI system uses three DSTU1 Atom feed documents (SKL01, SKL02, SKL03). This section documents structural changes for migration to FHIR R5.

### Document types

| DSTU1 Form | LOINC Code | R5 Profile |
|---|---|---|
| SKL01 — Risk Assessment Questionnaire | `83539-7` | [CvdRiskAssessmentCompositionLtCvd](StructureDefinition-cvd-risk-assessment-composition-lt-cvd.html) |
| SKL02 — Prevention Plan | `77442-2` | [CvdPreventionPlanCompositionLtCvd](StructureDefinition-cvd-prevention-plan-composition-lt-cvd.html) |
| SKL03 — Achievement Evaluation | `78710-1` | [CvdAchievementCompositionLtCvd](StructureDefinition-cvd-achievement-composition-lt-cvd.html) |

The combined [CvdCompositionLtCvd](StructureDefinition-cvd-composition-lt-cvd.html) (LOINC `51848-0`) can be used when all three sections are bundled into a single document.

### Risk factor structure changes

In DSTU1, each risk factor (hypertension, dyslipidemia, etc.) is represented as a **pair of Observations**:
1. A main Observation using `method.coding` to identify the risk factor type (e.g., SNOMED `38341003` for hypertension) and `valueCodeableConcept` from `risk-probability` (certain/negligible) to indicate presence
2. A related treatment status Observation (shared across risk factors via `<related>`) using SNOMED `1156601009` with treatment status as value

In R5, each risk factor maps to a single [RiskFactorStatusLtCvd](StructureDefinition-risk-factor-status-lt-cvd.html) Observation with **components**:
- `code` identifies the risk factor type (replaces DSTU1 `method`)
- `component[risk]` carries the risk probability (replaces DSTU1 `valueCodeableConcept`)
- `component[treatment]` carries treatment status (replaces DSTU1 related Observation)
- `component[medication]` optionally identifies specific medication

The DSTU1 pattern of sharing one treatment Observation across multiple risk factors is replaced by independent component values per risk factor.

### Lifestyle risk factors

DSTU1 encodes smoking, physical activity, nutrition, alcohol, and family history as generic risk factor Observations (code `80943009`) differentiated by `method.coding` (esveikata classifier). In R5, these map to **dedicated profiles** from the **LT Lifestyle IG** (e.g., TobaccoUseLtLifestyle, PhysicalActivityLtLifestyle, NutritionLtLifestyle).

