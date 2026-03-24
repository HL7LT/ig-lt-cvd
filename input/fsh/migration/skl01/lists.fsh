// =============================================================================
// SKL01 – Lists (DSTU1 cid:2, cid:3disp, cid:3stmt, cid:18cvd, cid:18espbi)
// List structure unchanged; entry.item references migrated/placeholder resources
// =============================================================================

Instance: skl01-list-diagnoses
InstanceOf: List
Usage: #example
Title: "List: Past and current chronic diseases (SKL01)"
Description: "Hospital discharge diagnosis note list. Migrated from DSTU1 cid:2."
* code = $loinc#11535-2 "Hospital discharge diagnosis note"
* mode = #working
* status = #current
* subject = Reference(patient-male-example)
* entry[0].item = Reference(Condition/351)

Instance: skl01-list-meds-dispensed
InstanceOf: List
Usage: #example
Title: "List: Medication dispensed (SKL01)"
Description: "Prescription medications list. Migrated from DSTU1 cid:3disp."
* code = $loinc#60590-7 "Medication dispensed.brief Document"
* mode = #working
* status = #current
* subject = Reference(patient-male-example)
* entry[0].item = Reference(MedicationDispense/1000043)

Instance: skl01-list-meds-statement
InstanceOf: List
Usage: #example
Title: "List: Patient medication list (SKL01)"
Description: "Non-prescription medications. Migrated from DSTU1 cid:3stmt."
* code = $loinc#104205-0 "Patient generated medication list [Identifier] Episode Pharmacy"
* mode = #working
* status = #current
* subject = Reference(patient-male-example)
* entry[0].item = Reference(skl01-medication-statement-32)

Instance: skl01-list-cvd-risk-factors
InstanceOf: List
Usage: #example
Title: "List: CVD risk factors (SKL01)"
Description: "ŠKL rizikos veiksniai. Migrated from DSTU1 cid:18cvd."
* code = $sct#83539-7 "Cardiology Risk assessment and screening note"
* code.text = "ŠKL rizikos veiksniai"
* mode = #working
* status = #current
* subject = Reference(patient-male-example)
* entry[0].item = Reference(skl01-observation-hypertension-181)
* entry[1].item = Reference(skl01-observation-dyslipidemia-182)
* entry[2].item = Reference(skl01-observation-diabetes-183)
* entry[3].item = Reference(skl01-observation-igt-185)

Instance: skl01-list-concomitant-risk-factors
InstanceOf: List
Usage: #example
Title: "List: Concomitant risk factors (SKL01)"
Description: "Rizikos veiksniai. Migrated from DSTU1 cid:18espbi."
* code = $loinc#46467-7 "Risk factors"
* code.text = "Rizikos veiksniai"
* mode = #working
* status = #current
* subject = Reference(patient-male-example)
* entry[0].item = Reference(skl01-observation-smoking-186)
* entry[1].item = Reference(skl01-observation-physical-activity-187)
* entry[2].item = Reference(skl01-observation-diet-188)
* entry[3].item = Reference(skl01-observation-alcohol-189)
