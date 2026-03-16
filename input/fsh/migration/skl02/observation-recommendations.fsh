// =============================================================================
// SKL02 (ŠKL prevencijos priemonių planas) – Observation "Kitos rekomendacijos", from DSTU1 cid:4
// Migrated: name → code, reliability omitted
// =============================================================================

Instance: skl02-observation-recommendations-4
InstanceOf: ObservationLt
Usage: #example
Title: "Observation: Other recommendations (SKL02)"
Description: "Diagnosis recommendations narrative. Migrated from DSTU1."
* status = #final
* category = $observation-category#exam "Exam"
* effectiveDateTime = 2014-10-27T20:40:40+02:00
* code = $loinc#39223-3 "Diagnosis recommendations, description (narrative) CPHS"
* subject = Reference(patient-male-example)
* performer = Reference(practitioner-example)
* valueString = "Kitos rekomendacijos: ..."
