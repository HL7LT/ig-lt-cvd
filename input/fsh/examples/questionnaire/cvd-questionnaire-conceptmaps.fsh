// ConceptMaps: Questionnaire linkId → programme / cross-IG profiles (narrative in target.comment).
// R5: use target.relationship from http://hl7.org/fhir/concept-map-relationship (e.g. related-to), not R4 equivalence.
// FSH: InstanceOf ConceptMap (SUSHI does not yet support ConceptMap: keyword).

Instance: conceptmap-cvd-risk-assessment-questionnaire
InstanceOf: ConceptMap
Usage: #definition
Title: "CVD risk assessment Questionnaire item → profile mapping"
Description: "Maps ESPBI form 1 Questionnaire linkIds to Lithuanian FHIR profiles and related IGs. Human-readable narrative is in each target.comment; Questionnaire.item.definition repeats canonical StructureDefinition URIs where applicable. Source: linkId codes; target: profile identifiers (CodeSystem cvd-questionnaire-mapping-target)."
* url = $conceptmap-cvd-risk-assessment-questionnaire-url
* version = "0.1.0"
* name = "CvdRiskAssessmentQuestionnaireItemMap"
* title = "CVD risk assessment questionnaire item to profile mapping"
* status = #draft
* experimental = true
* date = "2025-10-01"
* publisher = "HL7 Lithuania"
* jurisdiction = urn:iso:std:iso:3166#LT
* group.source = $cvd-questionnaire-risk-assessment-item-cs-url
* group.target = $cvd-questionnaire-mapping-target-cs-url

* group.element[0].code = #grp-context
* group.element[0].display = "Context group"
* group.element[0].target[0].code = #observation-lt
* group.element[0].target[0].display = "ObservationLt (LT Base)"
* group.element[0].target[0].relationship = $cm-rel#related-to
* group.element[0].target[0].comment = "Section header. Registrar, institution, and workstation context typically use LT Base Patient, Practitioner, Organization, and PractitionerRole (not itemised in the illustrative Questionnaire). LT Base IG: https://hl7.lt/fhir/base/ImplementationGuide/lt.hl7.fhir.base"

* group.element[1].code = #evaluation-datetime
* group.element[1].target[0].code = #cvd-risk-assessment-lt-cvd
* group.element[1].target[0].relationship = $cm-rel#related-to
* group.element[1].target[0].comment = "Aligns with Observation.effectiveDateTime on CVDRiskAssessmentLtCvd. StructureDefinition: https://hl7.lt/fhir/cvd/StructureDefinition/cvd-risk-assessment-lt-cvd. Example: observation-cvd-risk-assessment-example. CVD IG: https://hl7.lt/fhir/cvd/ImplementationGuide/lt.hl7.fhir.cvd"

* group.element[2].code = #grp-chronic
* group.element[2].target[0].code = #cvd-chronic-condition-lt-cvd
* group.element[2].target[0].relationship = $cm-rel#related-to
* group.element[2].target[0].comment = "Section header for accompanying chronic diseases; child items use CvdChronicConditionLtCvd."

* group.element[3].code = #chronic-condition-summary
* group.element[3].target[0].code = #cvd-chronic-condition-lt-cvd
* group.element[3].target[0].relationship = $cm-rel#related-to
* group.element[3].target[0].comment = "Map programme text to Condition with CvdChronicConditionLtCvd (ICD-10). StructureDefinition: https://hl7.lt/fhir/cvd/StructureDefinition/cvd-chronic-condition-lt-cvd. Example: condition-cvd-heart-failure-example."

* group.element[4].code = #grp-risk-factors
* group.element[4].target[0].code = #risk-factor-status-lt-cvd
* group.element[4].target[0].relationship = $cm-rel#related-to
* group.element[4].target[0].comment = "Section header for programme risk-factor items (RiskFactorStatusLtCvd)."

* group.element[5].code = #risk-factor-hypertension
* group.element[5].target[0].code = #risk-factor-status-lt-cvd
* group.element[5].target[0].relationship = $cm-rel#related-to
* group.element[5].target[0].comment = "RiskFactorStatusLtCvd. Example: observation-hypertension-negligible-example. StructureDefinition: https://hl7.lt/fhir/cvd/StructureDefinition/risk-factor-status-lt-cvd"

* group.element[6].code = #risk-factor-dyslipidemia
* group.element[6].target[0].code = #risk-factor-status-lt-cvd
* group.element[6].target[0].relationship = $cm-rel#related-to
* group.element[6].target[0].comment = "RiskFactorStatusLtCvd. Example: observation-dyslipidemia-treated-example."

* group.element[7].code = #risk-factor-diabetes
* group.element[7].target[0].code = #risk-factor-status-lt-cvd
* group.element[7].target[0].relationship = $cm-rel#related-to
* group.element[7].target[0].comment = "RiskFactorStatusLtCvd. Example: observation-diabetes-untreated-example."

* group.element[8].code = #risk-factor-smoking
* group.element[8].target[0].code = #tobacco-use-lt-lifestyle
* group.element[8].target[0].relationship = $cm-rel#related-to
* group.element[8].target[0].comment = "TobaccoUseLtLifestyle (LT Lifestyle). StructureDefinition: https://hl7.lt/fhir/lifestyle/StructureDefinition/tobacco-use-lt-lifestyle. CI example: https://build.fhir.org/ig/HL7LT/ig-lt-lifestyle/Observation-observation-tobacco-use-current-smoker-example.html"

* group.element[9].code = #grp-objective
* group.element[9].target[0].code = #body-height
* group.element[9].target[0].relationship = $cm-rel#related-to
* group.element[9].target[0].comment = "Section header for anthropometrics and blood pressure (LT Vital Signs IG). See child items for BodyHeight, BodyWeight, WaistCircumference, BloodPressurePanel. Vital Signs IG: https://hl7.lt/fhir/vitalsigns/ImplementationGuide/lt.hl7.fhir.vitalsigns"

* group.element[10].code = #height-cm
* group.element[10].target[0].code = #body-height
* group.element[10].target[0].relationship = $cm-rel#related-to
* group.element[10].target[0].comment = "BodyHeight. StructureDefinition: https://hl7.lt/fhir/vitalsigns/StructureDefinition/body-height. CI: https://build.fhir.org/ig/HL7LT/ig-lt-vitalsigns/Observation-observation-body-height-example.html"

* group.element[11].code = #weight-kg
* group.element[11].target[0].code = #body-weight
* group.element[11].target[0].relationship = $cm-rel#related-to
* group.element[11].target[0].comment = "BodyWeight. StructureDefinition: https://hl7.lt/fhir/vitalsigns/StructureDefinition/body-weight. CI: https://build.fhir.org/ig/HL7LT/ig-lt-vitalsigns/Observation-observation-body-weight-example.html"

* group.element[12].code = #waist-cm
* group.element[12].target[0].code = #waist-circumference
* group.element[12].target[0].relationship = $cm-rel#related-to
* group.element[12].target[0].comment = "WaistCircumference. StructureDefinition: https://hl7.lt/fhir/vitalsigns/StructureDefinition/waist-circumference. CI: https://build.fhir.org/ig/HL7LT/ig-lt-vitalsigns/Observation-observation-waist-circumference-example.html"

* group.element[13].code = #bp-systolic
* group.element[13].target[0].code = #blood-pressure-panel
* group.element[13].target[0].relationship = $cm-rel#related-to
* group.element[13].target[0].comment = "BloodPressurePanel (systolic component). StructureDefinition: https://hl7.lt/fhir/vitalsigns/StructureDefinition/blood-pressure-panel. CI: https://build.fhir.org/ig/HL7LT/ig-lt-vitalsigns/Observation-observation-blood-pressure-example.html"

* group.element[14].code = #bp-diastolic
* group.element[14].target[0].code = #blood-pressure-panel
* group.element[14].target[0].relationship = $cm-rel#related-to
* group.element[14].target[0].comment = "BloodPressurePanel (diastolic component); same Observation as systolic."

* group.element[15].code = #grp-lipidogram
* group.element[15].target[0].code = #lipidogram-lab-lt
* group.element[15].target[0].relationship = $cm-rel#related-to
* group.element[15].target[0].comment = "Lipid panel section. Composite lab example: observation-lipidogram-example. Lab IG: https://hl7.lt/fhir/lab/ImplementationGuide/lt.hl7.fhir.lab. CI: https://build.fhir.org/ig/HL7LT/ig-lt-lab/Observation-observation-lipidogram-example.html"

* group.element[16].code = #lipid-tc
* group.element[16].target[0].code = #total-cholesterol-lab-lt
* group.element[16].target[0].relationship = $cm-rel#related-to
* group.element[16].target[0].comment = "TotalCholesterolLabLt. StructureDefinition: https://hl7.lt/fhir/lab/StructureDefinition/total-cholesterol-lab-lt. Same CI lipidogram example as other lipid items."

* group.element[17].code = #lipid-hdl
* group.element[17].target[0].code = #cholesterol-hdl-lab-lt
* group.element[17].target[0].relationship = $cm-rel#related-to
* group.element[17].target[0].comment = "CholesterolHdlLabLt. StructureDefinition: https://hl7.lt/fhir/lab/StructureDefinition/cholesterol-hdl-lab-lt."

* group.element[18].code = #lipid-ldl
* group.element[18].target[0].code = #cholesterol-ldl-lab-lt
* group.element[18].target[0].relationship = $cm-rel#related-to
* group.element[18].target[0].comment = "CholesterolLdlLabLt. StructureDefinition: https://hl7.lt/fhir/lab/StructureDefinition/cholesterol-ldl-lab-lt."

* group.element[19].code = #lipid-tg
* group.element[19].target[0].code = #triglycerides-lab-lt
* group.element[19].target[0].relationship = $cm-rel#related-to
* group.element[19].target[0].comment = "TriglyceridesLabLt. StructureDefinition: https://hl7.lt/fhir/lab/StructureDefinition/triglycerides-lab-lt."

* group.element[20].code = #grp-risk-estimate
* group.element[20].target[0].code = #cvd-risk-assessment-lt-cvd
* group.element[20].target[0].relationship = $cm-rel#related-to
* group.element[20].target[0].comment = "Section for SCORE2 and programme risk group (CVD IG)."

* group.element[21].code = #score2-percent
* group.element[21].target[0].code = #cvd-risk-assessment-lt-cvd
* group.element[21].target[0].relationship = $cm-rel#related-to
* group.element[21].target[0].comment = "SCORE2 as valueQuantity (%). CVDRiskAssessmentLtCvd. Example: observation-cvd-risk-assessment-example."

* group.element[22].code = #risk-group-cvd
* group.element[22].target[0].code = #risk-group-observation-lt-cvd
* group.element[22].target[0].relationship = $cm-rel#related-to
* group.element[22].target[0].comment = "RiskGroupObservationLtCvd. StructureDefinition: https://hl7.lt/fhir/cvd/StructureDefinition/risk-group-observation-lt-cvd. Example: observation-risk-group-high-example."

* group.element[23].code = #grp-migration-md-parity
* group.element[23].target[0].code = #observation-lt
* group.element[23].target[0].relationship = $cm-rel#related-to
* group.element[23].target[0].comment = "Section for input/fsh/migration/mapping.md parity: concepts listed as missing in sibling IGs or as extended investigations. Rows 3–12,16–17 (BP, vitals, lipids, smoking) are covered by sibling items above."

* group.element[24].code = #mig-encounter
* group.element[24].target[0].code = #encounter-lt
* group.element[24].target[0].relationship = $cm-rel#related-to
* group.element[24].target[0].comment = "mapping.md row 1 — Encounter. StructureDefinition: https://hl7.lt/fhir/base/StructureDefinition/encounter-lt. Base example: encounter-psychiatric-example."

* group.element[25].code = #mig-practitioner-role
* group.element[25].target[0].code = #practitioner-role-lt
* group.element[25].target[0].relationship = $cm-rel#related-to
* group.element[25].target[0].comment = "mapping.md row 2 — PractitionerRole. StructureDefinition: https://hl7.lt/fhir/base/StructureDefinition/practitioner-role-lt. Example: practitioner-role-doctor-vilnius-hospital-example."

* group.element[26].code = #mig-heart-rate
* group.element[26].target[0].code = #heart-rate
* group.element[26].target[0].relationship = $cm-rel#related-to
* group.element[26].target[0].comment = "mapping.md row 4 — Heart rate. Vital Signs heart-rate profile. CI: https://build.fhir.org/ig/HL7LT/ig-lt-vitalsigns/"

* group.element[27].code = #mig-bmi
* group.element[27].target[0].code = #bmi
* group.element[27].target[0].relationship = $cm-rel#related-to
* group.element[27].target[0].comment = "mapping.md row 7 — BMI. StructureDefinition: https://hl7.lt/fhir/vitalsigns/StructureDefinition/bmi"

* group.element[28].code = #mig-glucose-fasting
* group.element[28].target[0].code = #glucose-venous-lab-lt
* group.element[28].target[0].relationship = $cm-rel#related-to
* group.element[28].target[0].comment = "mapping.md row 13 — Fasting glucose. Lab: glucose-venous-lab-lt."

* group.element[29].code = #mig-hba1c
* group.element[29].target[0].code = #hba1c-lab-lt
* group.element[29].target[0].relationship = $cm-rel#related-to
* group.element[29].target[0].comment = "mapping.md row 14 — HbA1c. Lab: hba1c-lab-lt."

* group.element[30].code = #mig-creatinine
* group.element[30].target[0].code = #creatinine-test-lab-lt
* group.element[30].target[0].relationship = $cm-rel#related-to
* group.element[30].target[0].comment = "mapping.md row 15 — Creatinine. Lab: creatinine-test-lab-lt."

* group.element[31].code = #mig-egfr
* group.element[31].target[0].code = #egfr-lab-lt
* group.element[31].target[0].relationship = $cm-rel#related-to
* group.element[31].target[0].comment = "mapping.md row 15 — eGFR. Lab: egfr-lab-lt."

* group.element[32].code = #mig-alcohol
* group.element[32].target[0].code = #alcohol-consumption-lt-lifestyle
* group.element[32].target[0].relationship = $cm-rel#related-to
* group.element[32].target[0].comment = "mapping.md row 18 — Alcohol. Lifestyle: alcohol-consumption-lt-lifestyle."

* group.element[33].code = #mig-physical-activity
* group.element[33].target[0].code = #physical-activity-lt-lifestyle
* group.element[33].target[0].relationship = $cm-rel#related-to
* group.element[33].target[0].comment = "mapping.md row 19 — Physical activity. Lifestyle: physical-activity-lt-lifestyle."

* group.element[34].code = #mig-nutrition
* group.element[34].target[0].code = #nutrition-lt-lifestyle
* group.element[34].target[0].relationship = $cm-rel#related-to
* group.element[34].target[0].comment = "mapping.md row 20 — Dietary habits. Lifestyle: nutrition-lt-lifestyle."

* group.element[35].code = #mig-family-cvd
* group.element[35].target[0].code = #family-history-cvd-lt-lifestyle
* group.element[35].target[0].relationship = $cm-rel#related-to
* group.element[35].target[0].comment = "mapping.md row 21 — Family CVD history. Lifestyle: family-history-cvd-lt-lifestyle."

* group.element[36].code = #mig-referral
* group.element[36].target[0].code = #service-request-lt
* group.element[36].target[0].relationship = $cm-rel#related-to
* group.element[36].target[0].comment = "mapping.md row 22 — Referral. Base ServiceRequestLt (no example in IGs; profile only)."

* group.element[37].code = #mig-follow-up-appointment
* group.element[37].target[0].code = #appointment-lt
* group.element[37].target[0].relationship = $cm-rel#related-to
* group.element[37].target[0].comment = "mapping.md row 23 — Follow-up visit. Base AppointmentLt (no example in IGs; profile only)."

* group.element[38].code = #mig-achievement-round
* group.element[38].target[0].code = #observation-lt
* group.element[38].target[0].relationship = $cm-rel#related-to
* group.element[38].target[0].comment = "mapping.md row 24 — Achievement evaluation at second timepoint; use prevention Questionnaire achievement group or repeat vitals/labs/lifestyle Observations."

* group.element[39].code = #mig-chronic-additional
* group.element[39].target[0].code = #cvd-chronic-condition-lt-cvd
* group.element[39].target[0].relationship = $cm-rel#related-to
* group.element[39].target[0].comment = "mapping.md row 25 — Additional chronic conditions (depression, COPD, AF, …). CvdChronicConditionLtCvd."

* group.element[40].code = #grp-ig-example-parity
* group.element[40].target[0].code = #observation-lt
* group.element[40].target[0].relationship = $cm-rel#related-to
* group.element[40].target[0].comment = "Section for migration already-covered table: context notes and EKG/medication/diabetes duration."

* group.element[41].code = #ac-patient-context
* group.element[41].target[0].code = #patient-lt
* group.element[41].target[0].relationship = $cm-rel#related-to
* group.element[41].target[0].comment = "Maps to PatientLt; QuestionnaireResponse.subject typically carries the Patient. Example: patient-male-example."

* group.element[42].code = #ac-practitioner-context
* group.element[42].target[0].code = #practitioner-lt
* group.element[42].target[0].relationship = $cm-rel#related-to
* group.element[42].target[0].comment = "Maps to PractitionerLt; QuestionnaireResponse.author. Example: practitioner-example."

* group.element[43].code = #ac-organization-context
* group.element[43].target[0].code = #organization-lt
* group.element[43].target[0].relationship = $cm-rel#related-to
* group.element[43].target[0].comment = "Maps to OrganizationLt; use context in CarePlan/Encounter. Example: organization-example."

* group.element[44].code = #ac-ekg-summary
* group.element[44].target[0].code = #ekg-lt-cvd
* group.element[44].target[0].relationship = $cm-rel#related-to
* group.element[44].target[0].comment = "mapping.md already covered — ECG. EKGLtCvd. Example: observation-ekg-normal-example."

* group.element[45].code = #ac-medication-context
* group.element[45].target[0].code = #medication-statement-lt-cvd
* group.element[45].target[0].relationship = $cm-rel#related-to
* group.element[45].target[0].comment = "MedicationStatementLtCvd. Example: medication-statement-screening-example."

* group.element[46].code = #ac-diabetes-duration
* group.element[46].target[0].code = #diabetes-duration-status-lt-cvd
* group.element[46].target[0].relationship = $cm-rel#related-to
* group.element[46].target[0].comment = "DiabetesDurationStatusLtCvd. Example: observation-diabetes-duration-gt10-example."

Instance: conceptmap-cvd-prevention-plan-questionnaire
InstanceOf: ConceptMap
Usage: #definition
Title: "CVD prevention plan Questionnaire item → profile mapping"
Description: "Maps ESPBI form 2 Questionnaire linkIds to Lithuanian FHIR profiles and related IGs. Human-readable narrative is in each target.comment. Source: linkId codes; target: profile identifiers (CodeSystem cvd-questionnaire-mapping-target)."
* url = $conceptmap-cvd-prevention-plan-questionnaire-url
* version = "0.1.0"
* name = "CvdPreventionPlanQuestionnaireItemMap"
* title = "CVD prevention plan questionnaire item to profile mapping"
* status = #draft
* experimental = true
* date = "2025-10-01"
* publisher = "HL7 Lithuania"
* jurisdiction = urn:iso:std:iso:3166#LT
* group.source = $cvd-questionnaire-prevention-plan-item-cs-url
* group.target = $cvd-questionnaire-mapping-target-cs-url

* group.element[0].code = #grp-plan-header
* group.element[0].target[0].code = #care-plan-lt-cvd
* group.element[0].target[0].relationship = $cm-rel#related-to
* group.element[0].target[0].comment = "Section header for plan metadata, risk group, LDL target, and smoking cessation (CarePlanLtCvd). Example: care-plan-cvd-screening-example. CVD IG: https://hl7.lt/fhir/cvd/ImplementationGuide/lt.hl7.fhir.cvd"

* group.element[1].code = #plan-created-datetime
* group.element[1].target[0].code = #care-plan-lt-cvd
* group.element[1].target[0].relationship = $cm-rel#related-to
* group.element[1].target[0].comment = "CarePlan.created / period on CarePlanLtCvd. StructureDefinition: https://hl7.lt/fhir/cvd/StructureDefinition/care-plan-lt-cvd. Example: care-plan-cvd-screening-example."

* group.element[2].code = #plan-risk-group
* group.element[2].target[0].code = #risk-group-ext-lt-cvd
* group.element[2].target[0].relationship = $cm-rel#related-to
* group.element[2].target[0].comment = "Risk group on the plan: RiskGroupExtLtCvd on CarePlan and/or persisted RiskGroupObservationLtCvd. Extension: https://hl7.lt/fhir/cvd/StructureDefinition/risk-group-ext-lt-cvd. Example observation: observation-risk-group-high-example."

* group.element[3].code = #plan-target-ldl
* group.element[3].target[0].code = #care-plan-lt-cvd
* group.element[3].target[0].relationship = $cm-rel#related-to
* group.element[3].target[0].comment = "Target LDL as CarePlan.goal (e.g. LOINC 18262-6) on CarePlanLtCvd; compare to CholesterolLdlLabLt at follow-up. Lab profile: https://hl7.lt/fhir/lab/StructureDefinition/cholesterol-ldl-lab-lt"

* group.element[4].code = #plan-smoking-cessation
* group.element[4].target[0].code = #care-plan-lt-cvd
* group.element[4].target[0].relationship = $cm-rel#related-to
* group.element[4].target[0].comment = "CarePlan.activity for cessation interventions; related behaviour may appear as TobaccoUseLtLifestyle. Lifestyle: https://hl7.lt/fhir/lifestyle/StructureDefinition/tobacco-use-lt-lifestyle"

* group.element[5].code = #grp-plan-lifestyle
* group.element[5].target[0].code = #physical-activity-lt-lifestyle
* group.element[5].target[0].relationship = $cm-rel#related-to
* group.element[5].target[0].comment = "Section header for lifestyle and weight (physical activity, target BMI)."

* group.element[6].code = #plan-physical-activity
* group.element[6].target[0].code = #physical-activity-lt-lifestyle
* group.element[6].target[0].relationship = $cm-rel#related-to
* group.element[6].target[0].comment = "PhysicalActivityLtLifestyle. StructureDefinition: https://hl7.lt/fhir/lifestyle/StructureDefinition/physical-activity-lt-lifestyle. CI: https://build.fhir.org/ig/HL7LT/ig-lt-lifestyle/Observation-observation-physical-activity-below-example.html"

* group.element[7].code = #plan-target-bmi
* group.element[7].target[0].code = #bmi
* group.element[7].target[0].relationship = $cm-rel#related-to
* group.element[7].target[0].comment = "Target BMI as goal on CarePlan; measured BMI uses vitalsigns BMI profile. StructureDefinition: https://hl7.lt/fhir/vitalsigns/StructureDefinition/bmi"

* group.element[8].code = #grp-achievement
* group.element[8].target[0].code = #observation-lt
* group.element[8].target[0].relationship = $cm-rel#related-to
* group.element[8].target[0].comment = "Achievement evaluation section; aligns with follow-up Observations in this IG (e.g. observation-cvd-followup-*). CVD IG examples bundle with CvdReportLtCvd / CvdCompositionLtCvd as appropriate."

* group.element[9].code = #achievement-datetime
* group.element[9].target[0].code = #observation-lt
* group.element[9].target[0].relationship = $cm-rel#related-to
* group.element[9].target[0].comment = "Effective time on follow-up Observations or encounter context. Base profile: https://hl7.lt/fhir/base/StructureDefinition/observation-lt. LT Base IG: https://hl7.lt/fhir/base/ImplementationGuide/lt.hl7.fhir.base"

* group.element[10].code = #achievement-ldl-mmol
* group.element[10].target[0].code = #cholesterol-ldl-lab-lt
* group.element[10].target[0].relationship = $cm-rel#related-to
* group.element[10].target[0].comment = "Achieved LDL: CholesterolLdlLabLt. CI lipidogram: https://build.fhir.org/ig/HL7LT/ig-lt-lab/Observation-observation-lipidogram-example.html"

* group.element[11].code = #achievement-ldl-target-met
* group.element[11].target[0].code = #care-plan-lt-cvd
* group.element[11].target[0].relationship = $cm-rel#related-to
* group.element[11].target[0].comment = "Interpret against CarePlan LDL goals and latest CholesterolLdlLabLt Observation."

* group.element[12].code = #achievement-bp-systolic
* group.element[12].target[0].code = #blood-pressure-panel
* group.element[12].target[0].relationship = $cm-rel#related-to
* group.element[12].target[0].comment = "BloodPressurePanel systolic component. CI: https://build.fhir.org/ig/HL7LT/ig-lt-vitalsigns/Observation-observation-blood-pressure-example.html"

* group.element[13].code = #achievement-bp-diastolic
* group.element[13].target[0].code = #blood-pressure-panel
* group.element[13].target[0].relationship = $cm-rel#related-to
* group.element[13].target[0].comment = "BloodPressurePanel diastolic component; same Observation as systolic."

* group.element[14].code = #achievement-bp-target-met
* group.element[14].target[0].code = #care-plan-lt-cvd
* group.element[14].target[0].relationship = $cm-rel#related-to
* group.element[14].target[0].comment = "Interpret against CarePlan BP goals and BloodPressurePanel Observations."

* group.element[15].code = #achievement-comments
* group.element[15].target[0].code = #observation-lt
* group.element[15].target[0].relationship = $cm-rel#related-to
* group.element[15].target[0].comment = "Free-text comments; may appear as note on ObservationLt or related resource. StructureDefinition: https://hl7.lt/fhir/base/StructureDefinition/observation-lt"

* group.element[16].code = #achievement-smoking-quit
* group.element[16].target[0].code = #tobacco-use-lt-lifestyle
* group.element[16].target[0].relationship = $cm-rel#related-to
* group.element[16].target[0].comment = "mapping.md row 24 — Smoking cessation at achievement; TobaccoUseLtLifestyle vs plan smoking cessation items."
