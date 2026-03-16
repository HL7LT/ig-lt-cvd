// =============================================================================
// SKL01 – Laboratory panel and selected members (DSTU1 cid:191, 1910, 1912, 1915)
// Migrated: name → code, appliesDateTime → effectiveDateTime, related → hasMember
// =============================================================================

Instance: skl01-observation-lab-panel-191
InstanceOf: ObservationLt
Usage: #example
Title: "Observation: Laboratory studies panel (SKL01)"
Description: "Laboratoriniai tyrimai. Migrated from DSTU1 cid:191."
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#26436-6 "Laboratory studies (set)"
* code.text = "Laboratoriniai tyrimai"
* effectiveDateTime = 2014-10-22T16:13:54+02:00
* subject = Reference(patient-male-example)
* performer = Reference(practitioner-example)
* hasMember[0] = Reference(skl01-observation-glucose-1910)
* hasMember[1] = Reference(skl01-observation-total-cholesterol-1912)
* hasMember[2] = Reference(skl01-observation-ldl-1915)

Instance: skl01-observation-glucose-1910
InstanceOf: ObservationLt
Usage: #example
Title: "Observation: Venous glucose (SKL01)"
Description: "Gliukozė veniniame kraujyje 15 mmol/L. Migrated from DSTU1 cid:1910."
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#14749-6 "Glucose [Moles/volume] in Serum or Plasma"
* code.text = "Gliukozė veniniame kraujyje"
* effectiveDateTime = 2014-10-22T16:13:54+02:00
* valueQuantity = 15 $ucum#mmol/L
* subject = Reference(patient-male-example)
* performer = Reference(practitioner-example)

Instance: skl01-observation-total-cholesterol-1912
InstanceOf: ObservationLt
Usage: #example
Title: "Observation: Total cholesterol (SKL01)"
Description: "Bendras cholesterolis. Migrated from DSTU1 cid:1912."
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#14647-2 "Cholesterol [Moles/volume] in Serum or Plasma"
* code.text = "Bendras cholesterolis"
* effectiveDateTime = 2014-10-22T16:13:54+02:00
* valueQuantity = 5.4 $ucum#mmol/L
* subject = Reference(patient-male-example)
* performer = Reference(practitioner-example)

Instance: skl01-observation-ldl-1915
InstanceOf: ObservationLt
Usage: #example
Title: "Observation: LDL cholesterol (SKL01)"
Description: "MTL cholesterolis 2.8 mmol/L. Migrated from DSTU1 cid:1915."
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#39469-2 "Cholesterol in LDL [Moles/volume] in Serum or Plasma by calculation"
* code.text = "MTL cholesterolis"
* effectiveDateTime = 2014-10-22T16:13:54+02:00
* valueQuantity = 2.8 $ucum#mmol/L
* subject = Reference(patient-male-example)
* performer = Reference(practitioner-example)
