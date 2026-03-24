// =============================================================================
// SKL03 (ŠKL plano pasiekimų vertinimas) – Composition, from DSTU1 cid:1
// Document type: 78710-1 Cardiology Progress note
// Migrated: section.content → section.entry
// =============================================================================

Instance: skl03-composition-1
InstanceOf: CompositionLt
Usage: #example
Title: "Composition: ŠKL Progress note (SKL03)"
Description: "ŠKL prevencijos priemonių plano pasiekimų vertinimas. Migrated from DSTU1 SKL03."
* status = #preliminary
* category = $loinc#11369-6 "History of Immunization note"
* type = $loinc#78710-1 "Cardiology Progress note"
* type.text = "ŠKL prevencijos priemonių plano pasiekimų vertinimas"
* date = 2014-10-27T20:40:40+02:00
* title = "ŠKL prevencijos priemonių plano pasiekimų vertinimas"
* subject = Reference(patient-male-example)
* author = Reference(practitioner-example)
* custodian = Reference(organization-example)
* encounter = Reference(Encounter/1000017570)
* section[0].code = $loinc#55752-0 "Clinical information"
* section[0].title = "Clinical information"
* section[0].section[0].code = $loinc#18776-5 "Plan of care note"
* section[0].section[0].title = "Plan of care note"
* section[0].section[0].entry = Reference(skl03-care-plan-3)
* section[0].section[1].code = $loinc#8716-3 "Vital signs note"
* section[0].section[1].title = "Vital signs note"
* section[0].section[1].entry = Reference(skl03-observation-vitals-panel-6)
* section[0].section[2].code = $loinc#26436-6 "Laboratory studies (set)"
* section[0].section[2].title = "Laboratory studies (set)"
* section[0].section[2].entry = Reference(skl03-observation-lab-panel-14)
* section[0].section[3].code = $loinc#48767-8 "Annotation comment [Interpretation] Narrative"
* section[0].section[3].title = "Komentarai"
* section[0].section[3].entry = Reference(skl03-observation-comment-4)
