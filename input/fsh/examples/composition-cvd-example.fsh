Instance: composition-cvd-example
InstanceOf: CvdCompositionLtCvd
Usage: #example
Title: "Composition: CVD programme document (example)"
Description: "Synoptic CVD prevention document with assessment (risk and findings), prevention plan (CarePlan), and achievement evaluation (follow-up observations)."
* language = #en
* identifier.system = "http://hospital.lt/sid/cvd-composition"
* identifier.value = "cvd-comp-2025-001"
* status = #final
* type = $loinc#51848-0 "Evaluation + Plan note"
* category = $loinc#11488-4 "Consult note"
* subject = Reference(Patient/patient-male-example)
* date = "2025-10-01T14:30:00+03:00"
* author = Reference(Practitioner/practitioner-example)
* title = "Cardiovascular disease risk assessment and prevention plan"
* attester.mode = http://hl7.org/fhir/composition-attestation-mode#legal "Legal"
* attester.time = "2025-10-01T14:30:00+03:00"
* attester.party = Reference(Organization/organization-example)
* custodian = Reference(Organization/organization-example)
* text.status = #generated
* text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><p><strong>CVD programme document (example).</strong> Three sections: assessment (risk, conditions, ECG), prevention plan (CarePlan), achievement follow-up (LDL and BP).</p></div>"""

// Assessment — PDF tables 10.5–10.9
* section[assessment].title = "Risk assessment and objective findings"
* section[assessment].text.status = #generated
* section[assessment].text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><p>Accompanying chronic condition, SCORE2 estimate, programme risk group classification, and ECG interpretation.</p></div>"""
* section[assessment].entry[0] = Reference(Condition/condition-cvd-heart-failure-example)
* section[assessment].entry[+] = Reference(Observation/observation-cvd-risk-assessment-example)
* section[assessment].entry[+] = Reference(Observation/observation-risk-group-high-example)
* section[assessment].entry[+] = Reference(Observation/observation-ekg-normal-example)

// Prevention plan — PDF table 10.10
* section[preventionPlan].title = "Prevention measures plan"
* section[preventionPlan].text.status = #generated
* section[preventionPlan].text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><p>Lifestyle, lipid and blood pressure targets, and medication areas as structured in the CarePlan.</p></div>"""
* section[preventionPlan].entry[0] = Reference(CarePlan/care-plan-cvd-screening-example)

// Achievement evaluation — follow-up
* section[achievementEvaluation].title = "Achievement evaluation"
* section[achievementEvaluation].text.status = #generated
* section[achievementEvaluation].text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><p>Follow-up LDL and blood pressure compared to programme targets. Structured measurements are referenced from the <strong>DiagnosticReport.result</strong> list (see linked report example) to satisfy FHIR <code>dgr-1</code> when both Composition and DiagnosticReport are present.</p></div>"""
// Achievement Observations are listed on DiagnosticReport.result only (not duplicated here) to avoid validator FHIRPath issues on dgr-1 with multi-valued references.
