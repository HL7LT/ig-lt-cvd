Instance: observation-diabetes-duration-gt10-example
InstanceOf: ObservationLt
Usage: #example
Title: "Observation: Diabetes Duration > 10 Years (example)"
Description: "Example showing a patient who has had Diabetes Mellitus for more than 10 years."
* status = #final
* category = $observation-category#exam "Exam"
* code = $sct#161445009 "History of diabetes mellitus (situation)"
* subject = Reference(patient-male-example)
* effectiveDateTime = "2025-10-01T09:00:00Z"
* valueCodeableConcept = $sct#373066001 "Yes (qualifier value)"
* note.text = "Patient reports having diabetes for approximately 12 years."
