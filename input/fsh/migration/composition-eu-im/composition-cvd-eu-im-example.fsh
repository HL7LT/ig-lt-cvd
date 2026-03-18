// =============================================================================
// Migration: Composition – EU IM style + analogue IG examples (mapping.md)
// Depends on: lt.hl7.fhir.base, vitalsigns, lab, lifestyle (see sushi-config).
// Subject/author/custodian: CVD local examples. Many section.entry refs use
// dependency examples (often subject = patient-example); valid for migration
// wiring only—align patients if you need a single clinical record.
// =============================================================================

Instance: composition-cvd-eu-im-example
InstanceOf: CompositionLt
Usage: #example
Title: "Composition: CVD Risk Assessment (EU IM style, cross-IG examples)"
Description: "CVD questionnaire/plan narrative composition: local CVD profiles plus Base, VitalSigns, Lab, Lifestyle analogue examples per mapping.md."

* status = #final
* category = $loinc#11369-6 "History of clinical finding"
* type = $loinc#83539-7 "Cardiology Risk assessment and screening note"
* type.text = "ŠKL rizikos vertinimas"
* date = 2024-10-27T20:40:40+02:00
* title = "ŠKL rizikos vertinimas"
* subject = Reference(patient-male-example)
* author = Reference(practitioner-example)
* custodian = Reference(organization-example)

// ----- Root: Clinical information -----
* section[0].title = "Clinical information"
* section[0].code = $loinc#55752-0 "Clinical information"

// Visit context (ig-lt-base)
* section[0].section[0].title = "Encounter and practitioner workplace (Base)"
* section[0].section[0].entry[0] = Reference(Encounter/encounter-psychiatric-example)
* section[0].section[0].entry[+] = Reference(PractitionerRole/practitioner-role-doctor-vilnius-hospital-example)

// CVD programme core (ig-lt-cvd)
* section[0].section[1].title = "CVD risk assessment and programme stratification (CVD IG)"
* section[0].section[1].entry[0] = Reference(observation-cvd-risk-assessment-example)
* section[0].section[1].entry[+] = Reference(observation-risk-group-high-example)
* section[0].section[1].entry[+] = Reference(observation-ekg-normal-example)
* section[0].section[1].entry[+] = Reference(condition-cvd-heart-failure-example)

// Typed risk factors (CVD IG)
* section[0].section[2].title = "Risk factor observations (CVD IG)"
* section[0].section[2].entry[0] = Reference(observation-hypertension-negligible-example)
* section[0].section[2].entry[+] = Reference(observation-dyslipidemia-treated-example)
* section[0].section[2].entry[+] = Reference(observation-diabetes-untreated-example)
* section[0].section[2].entry[+] = Reference(observation-impaired-glucose-tolerance-example)

// Vital signs (ig-lt-vitalsigns)
* section[0].section[3].title = "Vital signs (VitalSigns IG)"
* section[0].section[3].code = $loinc#8716-3 "Vital signs note"
* section[0].section[3].entry[0] = Reference(Observation/observation-blood-pressure-example)
* section[0].section[3].entry[+] = Reference(Observation/observation-heart-rate-example)
* section[0].section[3].entry[+] = Reference(Observation/observation-body-weight-example)
* section[0].section[3].entry[+] = Reference(Observation/observation-body-height-example)
* section[0].section[3].entry[+] = Reference(Observation/observation-bmi-example)
* section[0].section[3].entry[+] = Reference(Observation/observation-waist-circumference-example)

// Laboratory (ig-lt-lab)
* section[0].section[4].title = "Laboratory studies (Lab IG)"
* section[0].section[4].code = $loinc#26436-6 "Laboratory studies (set)"
* section[0].section[4].entry[0] = Reference(Observation/observation-total-cholesterol-example)
* section[0].section[4].entry[+] = Reference(Observation/observation-cholesterol-hdl-example)
* section[0].section[4].entry[+] = Reference(Observation/observation-cholesterol-ldl-example)
* section[0].section[4].entry[+] = Reference(Observation/observation-triglycerides-example)
* section[0].section[4].entry[+] = Reference(Observation/observation-glucose-venous-example)
* section[0].section[4].entry[+] = Reference(Observation/observation-hba1c-example)
* section[0].section[4].entry[+] = Reference(Observation/observation-creatinine-test-example)
* section[0].section[4].entry[+] = Reference(Observation/observation-egfr-example)

// Lifestyle and family history (ig-lt-lifestyle)
* section[0].section[5].title = "Lifestyle and family history (Lifestyle IG)"
* section[0].section[5].entry[0] = Reference(Observation/observation-tobacco-use-current-smoker-example)
* section[0].section[5].entry[+] = Reference(Observation/observation-alcohol-consumption-no-example)
* section[0].section[5].entry[+] = Reference(Observation/observation-physical-activity-below-example)
* section[0].section[5].entry[+] = Reference(Observation/observation-nutrition-balanced-example)
* section[0].section[5].entry[+] = Reference(Observation/observation-family-history-cvd-positive-example)

// Plan, medications, diabetes duration (CVD IG)
* section[0].section[6].title = "Prevention plan and medications (CVD IG)"
* section[0].section[6].entry[0] = Reference(care-plan-cvd-screening-example)
* section[0].section[6].entry[+] = Reference(medication-statement-screening-example)
* section[0].section[6].entry[+] = Reference(observation-diabetes-duration-gt10-example)

// Top-level plan of care note (duplicate pointer for narrative templates)
* section[1].title = "Plan of care note"
* section[1].code = $loinc#18776-5 "Plan of care note"
* section[1].entry = Reference(care-plan-cvd-screening-example)
