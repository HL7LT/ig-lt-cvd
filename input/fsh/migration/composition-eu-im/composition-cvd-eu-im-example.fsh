// =============================================================================
// Migration: Composition 1 – Based on EU IM (CompositionLt / CompositionEu)
// Root: input/fsh/migration. Do not replace existing resources.
// =============================================================================
// This instance conforms to CompositionLt (ig-lt-base) and CompositionEu.
// Document type: 83539-7 ŠKL rizikos vertinimas (CVD risk assessment).
// Sections reference existing CVD IG examples where applicable.
// =============================================================================

Instance: composition-cvd-eu-im-example
InstanceOf: CompositionLt
Usage: #example
Title: "Composition: CVD Risk Assessment (EU IM style)"
Description: "Example composition for CVD risk assessment aligned to EU IM (CompositionLt / CompositionEu). For migration review only."

* status = #final
* category = $loinc#11369-6 "History of clinical finding"
* type = $loinc#83539-7 "Cardiology Risk assessment and screening note"
* type.text = "ŠKL rizikos vertinimas"
* date = 2024-10-27T20:40:40+02:00
* title = "ŠKL rizikos vertinimas"
* subject = Reference(patient-male-example)
* author = Reference(practitioner-example)
* custodian = Reference(organization-example)

// Section: Clinical information (root)
* section[0].title = "Clinical information"
* section[0].code = $loinc#55752-0 "Clinical information"
* section[0].entry = Reference(care-plan-cvd-screening-example)

// Section: Plan of care (nested under clinical info or as sibling – one level shown)
* section[1].title = "Plan of care note"
* section[1].code = $loinc#18776-5 "Plan of care note"
* section[1].entry = Reference(care-plan-cvd-screening-example)

// Section: Vital signs (placeholder entry; when promoting, replace with Reference to VitalSigns Observation)
* section[2].title = "Vital signs note"
* section[2].code = $loinc#8716-3 "Vital signs note"
* section[2].entry = Reference(care-plan-cvd-screening-example)
