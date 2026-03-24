Instance: diagnosticreport-cvd-example
InstanceOf: CvdReportLtCvd
Usage: #example
Title: "DiagnosticReport: CVD programme report (example)"
Description: "Example DiagnosticReport anchoring the CVD composition and listing all Observations included in the programme document (assessment and achievement)."
* language = #en
* identifier.system = "http://hospital.lt/sid/cvd-diagnostic-report"
* identifier.value = "cvd-dr-2025-001"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/v2-0074#LAB "Laboratory"
* code = $sct#827181004 "Risk of cardiovascular disease"
* subject = Reference(Patient/patient-male-example)
* effectiveDateTime = "2025-10-01T14:30:00+03:00"
* issued = "2025-10-01T14:35:00+03:00"
* performer = Reference(Practitioner/practitioner-example)
* composition = Reference(Composition/composition-cvd-example)
* result[0] = Reference(Observation/observation-cvd-risk-assessment-example)
* result[+] = Reference(Observation/observation-risk-group-high-example)
* result[+] = Reference(Observation/observation-ekg-normal-example)
* result[+] = Reference(Observation/observation-cvd-followup-ldl-example)
* result[+] = Reference(Observation/observation-cvd-followup-bp-example)
* conclusion = "High cardiovascular risk (SCORE2 24%); ECG normal. Prevention plan in place. Follow-up shows LDL 2.4 mmol/L and BP 126/78 mmHg toward targets."
