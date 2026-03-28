# ESPBI electronic forms as Questionnaires

Lithuanian **CVD prevention and early diagnosis** programme documentation defines two main **electronic forms** for ESPBI: the **patient CVD risk assessment questionnaire** (Form 1) and the **CVD prevention measures plan** including a follow-up **achievement evaluation** block (Form 2).

This IG provides **illustrative FHIR [Questionnaire](https://hl7.org/fhir/questionnaire.html)** definitions and matching **[QuestionnaireResponse](https://hl7.org/fhir/questionnaireresponse.html)** examples so implementers can align form capture with FHIR **without** replacing the structured **Observation** and **CarePlan** profiles used elsewhere in the guide.

The Questionnaires use **groups** (`item.type = #group`) with stable **linkIds** so production systems can extend items to the full national field set. Conditional sub-items use `enableWhen` logic.

---

## Form 1 — CVD risk assessment questionnaire

**FHIR artefacts:**

* [Questionnaire: CVD risk assessment (ESPBI form 1)](Questionnaire-questionnaire-cvd-risk-assessment.html) — canonical `https://hl7.lt/fhir/cvd/Questionnaire/cvd-risk-assessment`
* [QuestionnaireResponse: CVD risk assessment (example)](QuestionnaireResponse-questionnaireresponse-cvd-risk-assessment-example.html)

### Group: Context

| linkId | Label | Type | Required | Maps to |
|--------|-------|------|----------|---------|
| `evaluation-datetime` | Evaluation date and time | dateTime | yes | [CVDRiskAssessmentLtCvd](StructureDefinition-cvd-risk-assessment-lt-cvd.html) |

### Group: Accompanying chronic diseases

| linkId | Label | Type | Required | Maps to |
|--------|-------|------|----------|---------|
| `chronic-condition-summary` | Relevant chronic conditions | text | — | [CvdChronicConditionLtCvd](StructureDefinition-cvd-chronic-condition-lt-cvd.html) |

### Group: Risk factors

| linkId | Label | Type | Required | Maps to |
|--------|-------|------|----------|---------|
| `risk-factor-hypertension` | Arterial hypertension | coding | yes | [RiskFactorStatusLtCvd](StructureDefinition-risk-factor-status-lt-cvd.html) |
| `risk-factor-dyslipidemia` | Dyslipidemia | coding | yes | [RiskFactorStatusLtCvd](StructureDefinition-risk-factor-status-lt-cvd.html) |
| `risk-factor-diabetes` | Diabetes | coding | yes | [RiskFactorStatusLtCvd](StructureDefinition-risk-factor-status-lt-cvd.html) |
| `risk-factor-glucose-tolerance` | Glucose tolerance / fasting glucose disorder | coding | yes | [RiskFactorStatusLtCvd](StructureDefinition-risk-factor-status-lt-cvd.html) |
| `risk-factor-familial-hypercholesterolemia` | Familial hypercholesterolemia | coding | yes | [RiskFactorStatusLtCvd](StructureDefinition-risk-factor-status-lt-cvd.html) |
| `risk-factor-smoking` | Smoking | coding | yes | TobaccoUseLtLifestyle (Lifestyle IG) |
| ↳ `smoking-duration-years` | Smoking duration (years) | decimal | — | TobaccoUseDurationLtLifestyle — shown when *Smokes* |
| ↳ `smoking-type` | Form of smoking | coding (repeats) | — | TobaccoTypeUsedLtLifestyle — shown when *Smokes* |
| `risk-factor-physical-activity` | Physical activity | coding | yes | PhysicalActivityLtLifestyle (Lifestyle IG) |
| `risk-factor-nutrition` | Nutrition | coding | yes | NutritionLtLifestyle (Lifestyle IG) |
| `risk-factor-alcohol` | Alcohol consumption | coding | yes | AlcoholConsumptionLtLifestyle (Lifestyle IG) |
| ↳ `audit-c-score` | AUDIT / AUDIT-C test result | decimal | — | AuditCLtLifestyle — shown when *Alcohol: Yes* |
| `risk-factor-family-cvd` | Family history of early CVD or early cardiac death | coding | yes | FamilyHistoryCvdLtLifestyle (Lifestyle IG) |
| `risk-factor-family-diabetes` | Family history of diabetes | coding | yes | FamilyHistoryDiabetesLtLifestyle (Lifestyle IG) |

Answer options for risk factor items: *No* / *There is, untreated* / *There is, treated* (hypertension, dyslipidemia, diabetes, glucose tolerance); *No* / *There is* (familial hypercholesterolemia); *Did not smoke* / *Smokes* / *Smoked before* (smoking); *Sufficient* / *Insufficient* (physical activity); *Balanced* / *Unbalanced* (nutrition); *No* / *Yes* / *Unknown* (alcohol, family history items).

### Group: Objective condition and investigations

| linkId | Label | Type | Required | Maps to |
|--------|-------|------|----------|---------|
| `height-cm` | Height (cm) | decimal | yes | BodyHeightLtVitalSigns (VitalSigns IG) |
| `weight-kg` | Weight (kg) | decimal | yes | BodyWeightLtVitalSigns (VitalSigns IG) |
| `waist-cm` | Waist circumference (cm) | decimal | yes | WaistCircumferenceLtVitalSigns (VitalSigns IG) |
| `bp-systolic` | Systolic blood pressure (mmHg) | decimal | yes | BloodPressurePanelLtVitalSigns (VitalSigns IG) |
| `bp-diastolic` | Diastolic blood pressure (mmHg) | decimal | yes | BloodPressurePanelLtVitalSigns (VitalSigns IG) |
| `heart-rate` | Heart rate (bpm) | decimal | yes | HeartRateLtVitalSigns (VitalSigns IG) |
| `bmi-calculated` | BMI (kg/m², auto-calculated) | decimal | yes | BmiLtVitalSigns (VitalSigns IG) |
| `abdominal-obesity` | Abdominal obesity (men ≥102 cm, women ≥88 cm) | coding | yes | WaistCircumferenceLtVitalSigns — use `interpretation` for obesity code |
| `obesity-bmi` | Obesity (BMI ≥25) | coding | yes | BmiLtVitalSigns (VitalSigns IG) |

### Group: Lipidogram

| linkId | Label | Type | Required | Maps to |
|--------|-------|------|----------|---------|
| `lipid-tc` | Total cholesterol (mmol/l) | decimal | yes | TotalCholesterolLabLt (Lab IG) |
| `lipid-hdl` | HDL cholesterol (mmol/l) | decimal | yes | CholesterolHdlLabLt (Lab IG) |
| `lipid-non-hdl` | Non-HDL cholesterol (mmol/l) | decimal | yes | CholesterolNonHdlLabLt (Lab IG) |
| `lipid-ldl` | LDL cholesterol (mmol/l) | decimal | yes | CholesterolLdlLabLt (Lab IG) |
| `lipid-tg` | Triglycerides (mmol/l) | decimal | yes | TriglyceridesLabLt (Lab IG) |

### Group: Risk estimate and group

| linkId | Label | Type | Required | Maps to |
|--------|-------|------|----------|---------|
| `score2-percent` | SCORE2 cardiovascular risk (%) | decimal | — | [CVDRiskAssessmentLtCvd](StructureDefinition-cvd-risk-assessment-lt-cvd.html) |
| `metabolic-syndrome` | Metabolic syndrome (≥3 of 5 NCEP ATP III criteria) | coding | yes | MetabolicSyndromeLtLifestyle (Lifestyle IG) |
| `risk-group-cvd` | Risk group for heart and vascular diseases | coding | yes | [RiskGroupObservationLtCvd](StructureDefinition-risk-group-observation-lt-cvd.html) |
| `albumin-creatinine-ratio` | Albumin/creatinine ratio (patients with diabetes) | decimal | — | AcrLabLt (Lab IG) |

### Group: Extended parity — migration mapping

Optional items covering fields present in the DSTU1 migration mapping table but not duplicated in the core groups above. All are `required = true` where the programme mandates the value.

| linkId | Label | Required | Maps to |
|--------|-------|----------|---------|
| `mig-encounter` | Encounter (visit id / context) | — | EncounterLt (Base IG) |
| `mig-practitioner-role` | PractitionerRole (workplace / specialist) | — | PractitionerRoleLt (Base IG) |
| `mig-heart-rate` | Heart rate (bpm) | — | HeartRateLtVitalSigns |
| `mig-bmi` | BMI (kg/m²) | — | BmiLtVitalSigns |
| `mig-glucose-fasting` | Fasting glucose (mmol/l) | yes | GlucoseVenousLabLt (Lab IG) |
| `mig-hba1c` | HbA1c (%) | yes | Hba1cLabLt (Lab IG) |
| `mig-creatinine` | Creatinine | yes | CreatinineTestLabLt (Lab IG) |
| `mig-egfr` | eGFR | yes | EgfrLabLt (Lab IG) |
| `mig-alcohol` | Alcohol consumption (summary) | — | AlcoholConsumptionLtLifestyle |
| `mig-physical-activity` | Physical activity (summary) | — | PhysicalActivityLtLifestyle |
| `mig-nutrition` | Dietary habits / nutrition | — | NutritionLtLifestyle |
| `mig-family-cvd` | Family history of CVD | — | FamilyHistoryCvdLtLifestyle |
| `mig-referral` | Referral (cardiology / service) | — | ServiceRequestLt (Base IG) |
| `mig-follow-up-appointment` | Follow-up visit (appointment) | — | AppointmentLt (Base IG) |
| `mig-achievement-round` | Achievement evaluation (narrative) | — | ObservationLt (Base IG) |
| `mig-chronic-additional` | Additional chronic conditions | — | [CvdChronicConditionLtCvd](StructureDefinition-cvd-chronic-condition-lt-cvd.html) |

---

## Form 2 — Prevention plan and achievement evaluation

**FHIR artefacts:**

* [Questionnaire: CVD prevention plan and achievement (ESPBI form 2)](Questionnaire-questionnaire-cvd-prevention-plan.html) — canonical `https://hl7.lt/fhir/cvd/Questionnaire/cvd-prevention-plan`
* [QuestionnaireResponse: CVD prevention plan and achievement (example)](QuestionnaireResponse-questionnaireresponse-cvd-prevention-plan-example.html)

### Group: Plan

| linkId | Label | Type | Required | Maps to |
|--------|-------|------|----------|---------|
| `plan-created-datetime` | Plan creation date and time | dateTime | yes | [CarePlanLtCvd](StructureDefinition-care-plan-lt-cvd.html) |
| `plan-risk-group` | Risk group for heart and vascular diseases (plan) | coding | yes | [RiskGroupExtLtCvd](StructureDefinition-risk-group-ext-lt-cvd.html) |
| `plan-target-ldl` | Target LDL cholesterol | coding | yes | [CarePlanLtCvd](StructureDefinition-care-plan-lt-cvd.html) — options: <2.6 / <1.8 / <1.4 mmol/l |
| `plan-target-bp` | Target blood pressure: 120–129/<80 mmHg | **display** | — | [CarePlanLtCvd](StructureDefinition-care-plan-lt-cvd.html) |
| `plan-smoking-cessation` | Quitting smoking (interventions) | coding (repeats) | — | [CarePlanLtCvd](StructureDefinition-care-plan-lt-cvd.html) — *Pharmacological* / *Behavior change tools* |

### Group: Lifestyle and weight

| linkId | Label | Type | Required | Maps to |
|--------|-------|------|----------|---------|
| `plan-physical-activity` | Physical activity plan | coding | — | PhysicalActivityLtLifestyle (Lifestyle IG) |
| `plan-target-bmi` | Target BMI (kg/m²) | decimal | yes | BmiLtVitalSigns (VitalSigns IG) |
| `info-healthy-nutrition` | *Healthy nutrition — Mediterranean diet recommended; reduce salt, saturated fats, and added sugar* | **display** | — | — |
| `info-healthy-weight` | *Healthy weight — target BMI < 25 kg/m²; waist men < 94 cm, women < 80 cm* | **display** | — | — |
| `info-regular-medication` | *Regular medication — take all prescribed medications (statins, antihypertensives) regularly and as directed* | **display** | — | — |

### Group: Achievement evaluation

| linkId | Label | Type | Required | Maps to |
|--------|-------|------|----------|---------|
| `achievement-datetime` | Achievement evaluation date and time | dateTime | — | ObservationLt (Base IG) |
| `achievement-ldl-mmol` | Achieved LDL cholesterol (mmol/l) | decimal | — | CholesterolLdlLabLt (Lab IG) |
| `achievement-ldl-target-met` | Has the target LDL been achieved? | boolean | — | [CarePlanLtCvd](StructureDefinition-care-plan-lt-cvd.html) |
| `achievement-bp-systolic` | Current systolic blood pressure (mmHg) | decimal | — | BloodPressurePanelLtVitalSigns |
| `achievement-bp-diastolic` | Current diastolic blood pressure (mmHg) | decimal | — | BloodPressurePanelLtVitalSigns |
| `achievement-bp-target-met` | Has the target BP been achieved? | boolean | — | [CarePlanLtCvd](StructureDefinition-care-plan-lt-cvd.html) |
| `achievement-smoking-quit` | Smoking cessation achieved | boolean | — | TobaccoUseLtLifestyle (Lifestyle IG) |
| `achievement-height-cm` | Height (cm) | decimal | yes | BodyHeightLtVitalSigns (VitalSigns IG) |
| `achievement-weight-kg` | Weight (kg) | decimal | yes | BodyWeightLtVitalSigns (VitalSigns IG) |
| `achievement-bmi` | Achieved BMI (kg/m², auto-calculated) | decimal | yes | BmiLtVitalSigns (VitalSigns IG) |
| `achievement-comments` | Comments from the achievement evaluator | text | — | ObservationLt (Base IG) |

---

## Mapping to profiles (FHIR R5)

The Questionnaires use optional canonical **`item.definition`** (StructureDefinition URI) on each item and separate **[ConceptMap](https://hl7.org/fhir/conceptmap.html)** resources for full cross-IG narrative: each row maps a **linkId** to a **target profile code** with `target.comment` (StructureDefinition URLs, example instance ids, CI Build links).

* Source linkId registry — risk assessment: [CodeSystem cvd-questionnaire-risk-assessment-item](CodeSystem-cvd-questionnaire-risk-assessment-item.html)
* Source linkId registry — prevention plan: [CodeSystem cvd-questionnaire-prevention-plan-item](CodeSystem-cvd-questionnaire-prevention-plan-item.html)
* Target profile registry: [CodeSystem cvd-questionnaire-mapping-target](CodeSystem-cvd-questionnaire-mapping-target.html)
* [ConceptMap: cvd-risk-assessment-questionnaire](ConceptMap-conceptmap-cvd-risk-assessment-questionnaire.html) — canonical `https://hl7.lt/fhir/cvd/ConceptMap/cvd-risk-assessment-questionnaire`
* [ConceptMap: cvd-prevention-plan-questionnaire](ConceptMap-conceptmap-cvd-prevention-plan-questionnaire.html) — canonical `https://hl7.lt/fhir/cvd/ConceptMap/cvd-prevention-plan-questionnaire`

---

## When to use QuestionnaireResponse vs Observations

| Approach | Typical use |
|----------|-------------|
| **Questionnaire / QuestionnaireResponse** | Screen-faithful capture of **form answers**; rapid alignment with ESPBI UI; export of filled forms. |
| **Observation**, **Condition**, **CarePlan** | **Clinical interoperability**, decision support, SCORE2 and risk group semantics, CarePlan goals and activities, longitudinal follow-up. |

In practice, a system might **persist** QuestionnaireResponse for auditing and **derive** Observations and CarePlans for reporting and exchange. The **[CVD report](cvd-report.html)** model (DiagnosticReport + Composition) is **not** required to reference Questionnaire resources; the two approaches can coexist.

---

## Cross-IG examples (CI Build)

| Measurement | Link |
|---|---|
| Blood pressure | [Observation: Blood Pressure](https://build.fhir.org/ig/HL7LT/ig-lt-vitalsigns/Observation-observation-blood-pressure-example.html) |
| Body height | [Observation: Body Height](https://build.fhir.org/ig/HL7LT/ig-lt-vitalsigns/Observation-observation-body-height-example.html) |
| Tobacco use | [Observation: Smoking Status – Current Smoker](https://build.fhir.org/ig/HL7LT/ig-lt-lifestyle/Observation-observation-tobacco-use-current-smoker-example.html) |
| Alcohol consumption | [Observation: Alcohol Consumption – No](https://build.fhir.org/ig/HL7LT/ig-lt-lifestyle/Observation-observation-alcohol-consumption-no-example.html) |
| Physical activity | [Observation: Physical Activity – Below Recommendation](https://build.fhir.org/ig/HL7LT/ig-lt-lifestyle/Observation-observation-physical-activity-below-example.html) |
| Nutrition | [Observation: Nutrition – Balanced](https://build.fhir.org/ig/HL7LT/ig-lt-lifestyle/Observation-observation-nutrition-balanced-example.html) |
| Family history CVD | [Observation: Family History CVD – Positive](https://build.fhir.org/ig/HL7LT/ig-lt-lifestyle/Observation-observation-family-history-cvd-positive-example.html) |

Continuous integration builds: [LT VitalSigns IG](https://build.fhir.org/ig/HL7LT/ig-lt-vitalsigns/) · [LT Lifestyle IG](https://build.fhir.org/ig/HL7LT/ig-lt-lifestyle/) · [LT Lab IG](https://build.fhir.org/ig/HL7LT/ig-lt-lab/)
