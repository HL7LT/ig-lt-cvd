// =============================================================================
// SKL01 – Evaluation panel and members (DSTU1 cid:110, 1102, 1103, 1104)
// Migrated: name → code, appliesDateTime → effectiveDateTime, related → hasMember
// =============================================================================

Instance: skl01-observation-evaluation-panel-110
InstanceOf: ObservationLt
Usage: #example
Title: "Observation: Evaluation note panel (SKL01)"
Description: "Automatiniai skaičiavimai/vertinimai. Migrated from DSTU1 cid:110."
* status = #final
* category = $observation-category#exam "Exam"
* code = $loinc#51848-0 "Evaluation note"
* effectiveDateTime = 2014-10-22T16:13:54+02:00
* subject = Reference(patient-male-example)
* performer = Reference(practitioner-example)
* hasMember[0] = Reference(skl01-observation-metabolic-syndrome-1102)
* hasMember[1] = Reference(skl01-observation-score2-1103)
* hasMember[2] = Reference(skl01-observation-risk-group-1104)

Instance: skl01-observation-metabolic-syndrome-1102
InstanceOf: ObservationLt
Usage: #example
Title: "Observation: Metabolic syndrome (SKL01)"
Description: "Metabolinis sindromas – No. Migrated from DSTU1 cid:1102."
* status = #final
* category = $observation-category#exam "Exam"
* code = $sct#237602007 "Metabolic syndrome X"
* effectiveDateTime = 2014-10-22T16:13:54+02:00
* valueCodeableConcept = $sct#373067005 "No"
* subject = Reference(patient-male-example)
* performer = Reference(practitioner-example)

Instance: skl01-observation-score2-1103
InstanceOf: ObservationLt
Usage: #example
Title: "Observation: SCORE2 (SKL01)"
Description: "Bendras ŠKL rizikos vertinimas 20%. Migrated from DSTU1 cid:1103."
* status = #final
* category = $observation-category#exam "Exam"
* code = $sct#1371331009 "Systematic Coronary Risk Evaluation 2 score (observable entity)"
* effectiveDateTime = 2014-10-22T16:13:54+02:00
* valueQuantity = 20 $ucum#%
* subject = Reference(patient-male-example)
* performer = Reference(practitioner-example)

Instance: skl01-observation-risk-group-1104
InstanceOf: ObservationLt
Usage: #example
Title: "Observation: CVD risk group (SKL01)"
Description: "Širdies ir kraujagyslių ligų rizikos grupė – High. Migrated from DSTU1 cid:1104."
* status = #final
* category = $observation-category#exam "Exam"
* code = $sct#827181004 "Risk of cardiovascular disease (observable entity)"
* effectiveDateTime = 2014-10-22T16:13:54+02:00
* valueCodeableConcept = $sct#75540009 "High (qualifier value)"
* subject = Reference(patient-male-example)
* performer = Reference(practitioner-example)
