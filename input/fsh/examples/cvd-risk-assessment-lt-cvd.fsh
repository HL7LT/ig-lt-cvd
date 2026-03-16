Instance: observation-cvd-risk-assessment-example
InstanceOf: CVDRiskAssessmentLtCvd
Usage: #example
Title: "Observation: SCORE2 Cardiovascular Disease Risk Assessment (example)"
Description: "Example of SCORE2 risk assessment showing 24% estimated risk (high)."
* status = #final
* category = $observation-category#exam "Exam"
* code = $sct#827181004 "Risk of cardiovascular disease"
* subject = Reference(patient-male-example)
* effectiveDateTime = "2025-10-01T09:00:00Z"
* valueQuantity.value = 24
* valueQuantity.unit = "%"
* valueQuantity.system = $ucum
* valueQuantity.code = #%
* component[cvdRiskDegree].valueCodeableConcept = $sct#24484000 "Severe"
* note.text = "According to SCORE2 table: 24% risk corresponds to high cardiovascular risk (orange zone)."
