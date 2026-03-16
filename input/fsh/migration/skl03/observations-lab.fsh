// =============================================================================
// SKL03 – Laboratory panel and LDL observation (DSTU1 cid:14, cid:7)
// Migrated: name → code, appliesDateTime → effectiveDateTime, related → hasMember
// =============================================================================

Instance: skl03-observation-lab-panel-14
InstanceOf: ObservationLt
Usage: #example
Title: "Observation: Laboratory studies panel (SKL03)"
Description: "Laboratory studies set with LDL result. Migrated from DSTU1 cid:14."
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#26436-6 "Laboratory studies (set)"
* code.text = "Laboratoriniai tyrimai"
* effectiveDateTime = 2014-10-27T20:40:40+02:00
* subject = Reference(patient-male-example)
* performer = Reference(practitioner-example)
* hasMember = Reference(skl03-observation-ldl-7)

Instance: skl03-observation-ldl-7
InstanceOf: ObservationLt
Usage: #example
Title: "Observation: LDL cholesterol (SKL03)"
Description: "LDL cholesterol 1.7 mmol/L. Migrated from DSTU1 cid:7 (medicinosnk.lt code 39469-2)."
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#39469-2 "Cholesterol in LDL [Moles/volume] in Serum or Plasma by calculation"
* code.text = "MTL cholesterolis"
* effectiveDateTime = 2014-10-27T20:40:40+02:00
* valueQuantity = 1.7 $ucum#mmol/L
* subject = Reference(patient-male-example)
* performer = Reference(practitioner-example)
