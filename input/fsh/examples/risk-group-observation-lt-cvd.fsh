Instance: observation-risk-group-high-example
InstanceOf: RiskGroupObservationLtCvd
Usage: #example
Title: "Observation: CVD Risk Group High (example)"
Description: "Example showing a patient assessed as having a 24% cardiovascular disease risk, categorized as High."
* status = #final
* category = $observation-category#exam "Exam"
* code = $sct#827181004 "Risk of cardiovascular disease"
* subject = Reference(patient-male-example)
* effectiveDateTime = "2025-10-01T09:00:00Z"
* valueQuantity.value = 24
* interpretation = $observation-interpretation#H "High"
* note.text = "Patient's cardiovascular disease risk is 24%, categorized as High risk group."
