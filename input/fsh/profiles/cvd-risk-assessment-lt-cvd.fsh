Profile: CVDRiskAssessmentLtCvd
Parent: ObservationLt
Id: cvd-risk-assessment-lt-cvd
Title: "SCORE2. General Assessment of Cardiovascular Disease Risk"
Description: "SCORE2 (Systematic Coronary Risk Estimation) cardiovascular disease risk assessment estimate."
* ^url = $cvd-risk-assessment-lt-cvd-url
* ^status = #draft
* ^language = #en
* ^version = "1.0.0"
* ^date = "2025-10-31"
* ^publisher = "HL7 Lithuania"
* category = $observation-category#exam "Exam"
* code = $sct#827181004 "Risk of cardiovascular disease"
* subject 1..
* subject only Reference(PatientLt)
* effective[x] 1..
* effective[x] only dateTime
* value[x] only Quantity
* valueQuantity 1..1
* valueQuantity.unit = "%"
* valueQuantity.system = $ucum
* valueQuantity.code = #%
* valueQuantity ^short = "SCORE2 cardiovascular disease risk estimate (percentage)"
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains cvdRiskDegree 1..1
* component[cvdRiskDegree] ^short = "Qualitative SCORE2 risk category"
* component[cvdRiskDegree].code = $sct#11371331009 "Systematic Coronary Risk Evaluation 2 score"
* component[cvdRiskDegree].value[x] only CodeableConcept
* component[cvdRiskDegree].valueCodeableConcept from CVDRiskDegreeLtCvd (required)
