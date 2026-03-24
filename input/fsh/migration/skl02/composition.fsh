// =============================================================================
// SKL02 (ŠKL prevencijos priemonių planas) – Composition, from DSTU1 cid:1
// Document type: 77442-2 Cardiology Plan of care note
// Migrated: section.content → section.entry
// =============================================================================

Instance: skl02-composition-1
InstanceOf: CompositionLt
Usage: #example
Title: "Composition: ŠKL Plan of care (SKL02)"
Description: "ŠKL prevencijos priemonių planas. Migrated from DSTU1 SKL02."
* status = #preliminary
* category = $loinc#11369-6 "History of Immunization note"
* type = $loinc#77442-2 "Cardiology Plan of care note"
* type.text = "ŠKL prevencijos priemonių planas"
* date = 2014-10-27T20:40:40+02:00
* title = "ŠKL prevencijos priemonių planas"
* subject = Reference(patient-male-example)
* author = Reference(practitioner-example)
* custodian = Reference(organization-example)
* encounter = Reference(Encounter/1000017570)
* section[0].code = $loinc#55752-0 "Clinical information"
* section[0].title = "Clinical information"
* section[0].section[0].code = $loinc#18776-5 "Plan of care note"
* section[0].section[0].title = "Plan of care note"
* section[0].section[0].entry = Reference(skl02-care-plan-3)
* section[0].section[1].code = $loinc#39223-3 "Diagnosis recommendations, description (narrative) CPHS"
* section[0].section[1].title = "Kitos rekomendacijos"
* section[0].section[1].entry = Reference(skl02-observation-recommendations-4)
