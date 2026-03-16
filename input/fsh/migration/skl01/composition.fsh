// =============================================================================
// SKL01 (ŠKL rizikos vertinimas) – Composition, from DSTU1 cid:1
// Document type: 83539-7 Cardiology Risk assessment and screening note
// Migrated: section.content → section.entry
// =============================================================================

Instance: skl01-composition-1
InstanceOf: CompositionLt
Usage: #example
Title: "Composition: ŠKL Risk Assessment (SKL01)"
Description: "ŠKL rizikos vertinimas. Migrated from DSTU1 SKL01."
* status = #preliminary
* category = $loinc#11369-6 "History of clinical finding"
* type = $loinc#83539-7 "Cardiology Risk assessment and screening note"
* type.text = "ŠKL rizikos vertinimas"
* date = 2014-10-27T20:40:40+02:00
* title = "ŠKL rizikos vertinimas"
* subject = Reference(patient-male-example)
* author = Reference(practitioner-example)
* custodian = Reference(organization-example)
* encounter = Reference(Encounter/1000017570)
* section[0].code = $loinc#55752-0 "Clinical information"
* section[0].title = "Clinical information"
* section[0].section[0].code = $loinc#11535-2 "Hospital discharge diagnosis note"
* section[0].section[0].title = "Hospital discharge diagnosis note"
* section[0].section[0].entry = Reference(skl01-list-diagnoses)
* section[0].section[1].code = $loinc#18605-6 "Medication current Set"
* section[0].section[1].title = "Medication current Set"
* section[0].section[1].section[0].code = $loinc#60590-7 "Medication dispensed brief Document"
* section[0].section[1].section[0].entry = Reference(skl01-list-meds-dispensed)
* section[0].section[1].section[1].code = $loinc#104205-0 "Patient generated medication list"
* section[0].section[1].section[1].entry = Reference(skl01-list-meds-statement)
* section[0].section[2].code = $sct#83539-7 "Cardiology Risk assessment and screening note"
* section[0].section[2].code.text = "ŠKL rizikos veiksniai"
* section[0].section[2].entry = Reference(skl01-list-cvd-risk-factors)
* section[0].section[3].code = $loinc#46467-7 "Risk factors"
* section[0].section[3].code.text = "Rizikos veiksniai"
* section[0].section[3].entry = Reference(skl01-list-concomitant-risk-factors)
* section[0].section[4].code = $loinc#8716-3 "Vital signs note"
* section[0].section[4].title = "Vital signs note"
* section[0].section[4].entry = Reference(skl01-observation-vitals-panel-19)
* section[0].section[5].code = $loinc#26436-6 "Laboratory studies (set)"
* section[0].section[5].title = "Laboratory studies (set)"
* section[0].section[5].entry = Reference(skl01-observation-lab-panel-191)
* section[0].section[6].code = $loinc#51848-0 "Evaluation note"
* section[0].section[6].title = "Evaluation note"
* section[0].section[6].entry = Reference(skl01-observation-evaluation-panel-110)
