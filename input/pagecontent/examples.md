### Examples

This page lists all example instances in the Lithuanian CVD Implementation Guide, grouped by category. See the [Questionnaires](questionnaires.html) page for questionnaire and response examples, and the [CVD Report](cvd-report.html) page for the DiagnosticReport + Composition pattern.

#### Report and Composition Examples

| Instance | Profile | Description |
|---|---|---|
| [diagnosticreport-cvd-example](DiagnosticReport-diagnosticreport-cvd-example.html) | CvdReportLtCvd | CVD programme DiagnosticReport anchoring the composition and listing risk assessment, risk group, ECG, and follow-up observations. |
| [composition-cvd-example](Composition-composition-cvd-example.html) | CvdCompositionLtCvd | Full three-section CVD programme composition: assessment, prevention plan, and achievement evaluation. |

#### SCORE2 and Risk Group Examples

| Instance | Profile | Description |
|---|---|---|
| [observation-cvd-risk-assessment-example](Observation-observation-cvd-risk-assessment-example.html) | CVDRiskAssessmentLtCvd | SCORE2 cardiovascular risk score of 24% (high-risk age group). |
| [observation-risk-group-high-example](Observation-observation-risk-group-high-example.html) | RiskGroupObservationLtCvd | Programme risk group classification: large (high) risk. |

#### Risk Factor Examples

| Instance | Profile | Description |
|---|---|---|
| [observation-hypertension-negligible-example](Observation-observation-hypertension-negligible-example.html) | RiskFactorStatusLtCvd | Arterial hypertension: present, treated. |
| [observation-dyslipidemia-treated-example](Observation-observation-dyslipidemia-treated-example.html) | RiskFactorStatusLtCvd | Dyslipidemia: present, treated. |
| [observation-diabetes-untreated-example](Observation-observation-diabetes-untreated-example.html) | RiskFactorStatusLtCvd | Diabetes: present, untreated. |
| [observation-impaired-glucose-tolerance-example](Observation-observation-impaired-glucose-tolerance-example.html) | RiskFactorStatusLtCvd | Glucose tolerance disorder: present. |
| [observation-diabetes-duration-gt10-example](Observation-observation-diabetes-duration-gt10-example.html) | RiskFactorStatusLtCvd | Diabetes duration greater than 10 years. |

#### Chronic Condition Example

| Instance | Profile | Description |
|---|---|---|
| [condition-cvd-heart-failure-example](Condition-condition-cvd-heart-failure-example.html) | CvdChronicConditionLtCvd | Accompanying chronic condition: heart failure (ICD-10 I50). |

#### ECG Example

| Instance | Profile | Description |
|---|---|---|
| [observation-ekg-normal-example](Observation-observation-ekg-normal-example.html) | EKGLtCvd | Normal 12-lead ECG with SampledData component and Normal interpretation (SNOMED CT `164854000`). |

#### Care Plan and Goal Examples

| Instance | Profile | Description |
|---|---|---|
| [care-plan-cvd-screening-example](CarePlan-care-plan-cvd-screening-example.html) | CarePlanLtCvd | CVD prevention care plan with risk group extension, LDL/BP/BMI contained goals, and lifestyle activities. |
| [example-cvd-screening-plan-external](CarePlan-example-cvd-screening-plan-external.html) | CarePlan | Alternative CVD plan using external (non-contained) Goal references. |
| [example-goal-ldl](Goal-example-goal-ldl.html) | Goal | Target LDL cholesterol goal: <1.8 mmol/l (very large risk group). |
| [example-goal-bp](Goal-example-goal-bp.html) | Goal | Target blood pressure goal: 120–129/<80 mmHg. |
| [example-goal-bmi](Goal-example-goal-bmi.html) | Goal | Target BMI goal: <25 kg/m². |

#### Achievement Follow-up Observation Examples

| Instance | Profile | Description |
|---|---|---|
| [observation-cvd-followup-ldl-example](Observation-observation-cvd-followup-ldl-example.html) | ObservationLt | Follow-up LDL cholesterol measurement at achievement evaluation. |
| [observation-cvd-followup-bp-example](Observation-observation-cvd-followup-bp-example.html) | ObservationLt | Follow-up blood pressure measurement at achievement evaluation. |

#### Medication Example

| Instance | Profile | Description |
|---|---|---|
| [medication-statement-screening-example](MedicationStatement-medication-statement-screening-example.html) | MedicationStatementLtCvd | Current statin therapy recorded at time of CVD risk assessment. |

#### Base Context Examples

| Instance | Profile | Description |
|---|---|---|
| [patient-male-example](Patient-patient-male-example.html) | PatientLt | Male patient used across all CVD examples. |
| [practitioner-example](Practitioner-practitioner-example.html) | PractitionerLt | GP practitioner performing the CVD screening. |
| [organization-example](Organization-organization-example.html) | OrganizationLt | Healthcare organisation (primary care setting). |

#### DSTU1 Migration Examples

The `migration/` folder contains instances migrated from legacy DSTU1 ESPBI documents (SKL01/02/03). These examples demonstrate the DSTU1→R5 mapping and are typed against the document-specific composition profiles:

| Instance | Profile | DSTU1 document |
|---|---|---|
| [skl01-composition-1](Composition-skl01-composition-1.html) | CvdRiskAssessmentCompositionLtCvd | SKL01 — ŠKL rizikos vertinimas |
| [skl02-composition-1](Composition-skl02-composition-1.html) | CvdPreventionPlanCompositionLtCvd | SKL02 — ŠKL prevencijos priemonių planas |
| [skl03-composition-1](Composition-skl03-composition-1.html) | CvdAchievementCompositionLtCvd | SKL03 — ŠKL plano pasiekimų vertinimas |

#### Cross-IG Example References

The CVD pathway collects measurements modelled in other Lithuanian FHIR IGs:

**Vital Signs IG** ([https://build.fhir.org/ig/HL7LT/ig-lt-vitalsigns/](https://build.fhir.org/ig/HL7LT/ig-lt-vitalsigns/)):

| Example | Description |
|---|---|
| [observation-blood-pressure-example](https://build.fhir.org/ig/HL7LT/ig-lt-vitalsigns/Observation-observation-blood-pressure-example.html) | Blood pressure panel (systolic + diastolic). |
| [observation-body-height-example](https://build.fhir.org/ig/HL7LT/ig-lt-vitalsigns/Observation-observation-body-height-example.html) | Body height measurement. |
| [observation-body-weight-example](https://build.fhir.org/ig/HL7LT/ig-lt-vitalsigns/Observation-observation-body-weight-example.html) | Body weight measurement. |
| [observation-bmi-example](https://build.fhir.org/ig/HL7LT/ig-lt-vitalsigns/Observation-observation-bmi-example.html) | BMI calculation. |
| [observation-waist-circumference-example](https://build.fhir.org/ig/HL7LT/ig-lt-vitalsigns/Observation-observation-waist-circumference-example.html) | Waist circumference with obesity interpretation. |

**Lifestyle IG** ([https://build.fhir.org/ig/HL7LT/ig-lt-lifestyle/](https://build.fhir.org/ig/HL7LT/ig-lt-lifestyle/)):

| Example | Description |
|---|---|
| [observation-tobacco-use-current-smoker-example](https://build.fhir.org/ig/HL7LT/ig-lt-lifestyle/Observation-observation-tobacco-use-current-smoker-example.html) | Tobacco use status (current smoker). |
| [observation-alcohol-consumption-no-example](https://build.fhir.org/ig/HL7LT/ig-lt-lifestyle/Observation-observation-alcohol-consumption-no-example.html) | Alcohol consumption (no use). |
| [observation-physical-activity-below-example](https://build.fhir.org/ig/HL7LT/ig-lt-lifestyle/Observation-observation-physical-activity-below-example.html) | Insufficient physical activity. |
| [observation-family-history-cvd-positive-example](https://build.fhir.org/ig/HL7LT/ig-lt-lifestyle/Observation-observation-family-history-cvd-positive-example.html) | Family history of cardiovascular disease. |
