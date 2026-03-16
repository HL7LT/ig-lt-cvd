// =============================================================================
// SKL03 – Annotation comment (DSTU1 cid:4)
// Migrated: name → code, reliability omitted
// =============================================================================

Instance: skl03-observation-comment-4
InstanceOf: ObservationLt
Usage: #example
Title: "Observation: Comment (SKL03)"
Description: "Annotation comment. Migrated from DSTU1 cid:4."
* status = #final
* category = $observation-category#exam "Exam"
* code = $loinc#48767-8 "Annotation comment [Interpretation] Narrative"
* effectiveDateTime = 2014-10-27T20:40:40+02:00
* valueString = "Pacientas laikosi rekomendacijų iš dalies, tęsiama stebėsena."
* subject = Reference(patient-male-example)
* performer = Reference(practitioner-example)
