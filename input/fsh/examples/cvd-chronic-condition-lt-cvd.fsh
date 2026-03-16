Instance: condition-cvd-heart-failure-example
InstanceOf: CvdChronicConditionLtCvd
Usage: #example
Title: "Condition: CVD Heart Failure (example)"
Description: "Example instance showing a patient with a high-risk condition of heart failure."
* code = $icd-10#I50 "Heart failure"
* subject = Reference(patient-male-example)
* onsetDateTime = "2025-10-01T09:00:00Z"
