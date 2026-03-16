Instance: observation-hypertension-negligible-example
InstanceOf: RiskFactorStatusLtCvd
Usage: #example
Title: "Observation: Hypertension Negligible Risk (example)"
Description: "Example showing a patient with negligible risk for hypertension; treatment not indicated."
* status = #final
* category = $observation-category#exam "Exam"
* code = $sct#38341003 "Hypertensive disorder, systemic arterial (disorder)"
* subject = Reference(patient-male-example)
* effectiveDateTime = "2025-10-01T09:00:00Z"
* component[risk].valueCodeableConcept = $risk-probability#negligible "Negligible likelihood"
* component[treatment].valueCodeableConcept = $sct#183964008 "Treatment not indicated (situation)"
* note.text = "Blood pressure within normal range; risk negligible and no preventive treatment required."

Instance: observation-dyslipidemia-treated-example
InstanceOf: RiskFactorStatusLtCvd
Usage: #example
Title: "Observation: Dyslipidemia Treated (example)"
Description: "Example showing a patient with confirmed dyslipidemia currently under lipid-lowering therapy."
* status = #final
* category = $observation-category#exam "Exam"
* code = $sct#370992007 "Dyslipidemia (disorder)"
* subject = Reference(patient-male-example)
* effectiveDateTime = "2025-10-01T09:00:00Z"
* component[risk].valueCodeableConcept = $risk-probability#certain "Certain"
* component[treatment].valueCodeableConcept = $sct#182992009 "Treatment completed (situation)"
* component[medication].valueCodeableConcept = $sct#182833002 "Medication given (situation)"
* note.text = "Patient diagnosed with dyslipidemia and treated with statins."

Instance: observation-diabetes-untreated-example
InstanceOf: RiskFactorStatusLtCvd
Usage: #example
Title: "Observation: Diabetes Untreated (example)"
Description: "Example showing a patient with confirmed diabetes mellitus but not yet receiving treatment."
* status = #final
* category = $observation-category#exam "Exam"
* code = $sct#73211009 "Diabetes mellitus (disorder)"
* subject = Reference(patient-male-example)
* effectiveDateTime = "2025-10-01T09:00:00Z"
* component[risk].valueCodeableConcept = $risk-probability#certain "Certain"
* component[treatment].valueCodeableConcept = $sct#183964008 "Treatment not indicated (situation)"
* note.text = "Diabetes mellitus confirmed; lifestyle changes recommended, no pharmacological treatment started yet."

Instance: observation-impaired-glucose-tolerance-example
InstanceOf: RiskFactorStatusLtCvd
Usage: #example
Title: "Observation: Impaired Glucose Tolerance (example)"
Description: "Example showing a patient identified with impaired glucose tolerance or impaired fasting glycemia."
* status = #final
* category = $observation-category#exam "Exam"
* code = $sct#390951007 "Impaired fasting glycemia (disorder)"
* subject = Reference(patient-male-example)
* effectiveDateTime = "2025-10-01T09:00:00Z"
* component[risk].valueCodeableConcept = $risk-probability#certain "Certain"
* component[treatment].valueCodeableConcept = $sct#183964008 "Treatment not indicated (situation)"
* note.text = "Patient shows impaired fasting glucose; monitoring recommended, no treatment initiated."
