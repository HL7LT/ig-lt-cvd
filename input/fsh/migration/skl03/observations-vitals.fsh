// =============================================================================
// SKL03 – Vital signs panel and members (DSTU1 cid:6, 8, 81, 82, 9, 10, 11, 12)
// Migrated: name → code, appliesDateTime → effectiveDateTime, related → hasMember
// =============================================================================

Instance: skl03-observation-vitals-panel-6
InstanceOf: ObservationLt
Usage: #example
Title: "Observation: Vital signs panel (SKL03)"
Description: "Vital signs note panel with members. Migrated from DSTU1 cid:6."
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#8716-3 "Vital signs note"
* code.text = "Gyvybiniai rodikliai"
* effectiveDateTime = 2014-10-27T20:40:40+02:00
* subject = Reference(patient-male-example)
* performer = Reference(practitioner-example)
* hasMember[0] = Reference(skl03-observation-bp-panel-8)
* hasMember[1] = Reference(skl03-observation-height-9)
* hasMember[2] = Reference(skl03-observation-weight-10)
* hasMember[3] = Reference(skl03-observation-bmi-11)
* hasMember[4] = Reference(skl03-observation-weight-first-visit-12)

Instance: skl03-observation-bp-panel-8
InstanceOf: ObservationLt
Usage: #example
Title: "Observation: Blood pressure panel (SKL03)"
Description: "Blood pressure systolic and diastolic. Migrated from DSTU1 cid:8, with the systolic and diastolic readings from cid:81 and cid:82 folded in as components."
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
// 85354-9 is the code the core bp profile requires; the migrated 55284-4 is kept
// alongside it so the original coding is still on the record.
* code.coding[0] = $loinc#85354-9 "Blood pressure panel with all children optional"
* code.coding[1] = $loinc#55284-4 "Blood pressure systolic and diastolic"
* code.text = "Kraujo spaudimas sistolinis / diastolinis"
* effectiveDateTime = 2014-10-27T20:40:40+02:00
* subject = Reference(patient-male-example)
* performer = Reference(practitioner-example)
* component[0].code = $loinc#8480-6 "Systolic blood pressure"
* component[0].valueQuantity = 132 $ucum#mm[Hg]
* component[0].valueQuantity.unit = "mm[Hg]"
* component[1].code = $loinc#8462-4 "Diastolic blood pressure"
* component[1].valueQuantity = 84 $ucum#mm[Hg]
* component[1].valueQuantity.unit = "mm[Hg]"

Instance: skl03-observation-height-9
InstanceOf: ObservationLt
Usage: #example
Title: "Observation: Body height (SKL03)"
Description: "Body height 176 cm. Migrated from DSTU1 cid:9."
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code.coding[0] = $loinc#3137-7 "Body height measured"
* code.coding[1] = $loinc#8302-2 "Body height"  // required by the core vital-signs profile; the legacy code above is kept
* effectiveDateTime = 2014-10-27T20:40:40+02:00
* valueQuantity = 176 $ucum#cm
* valueQuantity.unit = "cm"
* subject = Reference(patient-male-example)
* performer = Reference(practitioner-example)

Instance: skl03-observation-weight-10
InstanceOf: ObservationLt
Usage: #example
Title: "Observation: Body weight (SKL03)"
Description: "Body weight 90 kg. Migrated from DSTU1 cid:10."
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code.coding[0] = $loinc#3141-9 "Body weight measured"
* code.coding[1] = $loinc#29463-7 "Body weight"  // required by the core vital-signs profile; the legacy code above is kept
* effectiveDateTime = 2014-10-27T20:40:40+02:00
* valueQuantity = 90 $ucum#kg
* valueQuantity.unit = "kg"
* subject = Reference(patient-male-example)
* performer = Reference(practitioner-example)

Instance: skl03-observation-bmi-11
InstanceOf: ObservationLt
Usage: #example
Title: "Observation: BMI (SKL03)"
Description: "Body mass index 29.1 kg/m2. Migrated from DSTU1 cid:11."
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#59574-4 "Body mass index (BMI) [Percentile]"
* effectiveDateTime = 2014-10-27T20:40:40+02:00
* valueQuantity = 29.1 $ucum#kg/m2
* valueQuantity.unit = "kg/m2"
* subject = Reference(patient-male-example)
* performer = Reference(practitioner-example)

Instance: skl03-observation-weight-first-visit-12
InstanceOf: ObservationLt
Usage: #example
Title: "Observation: Weight at first visit (SKL03)"
Description: "Body weight at first visit 95 kg. Migrated from DSTU1 cid:12."
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code.coding[0] = $loinc#3141-9 "Body weight measured"
* code.coding[1] = $loinc#29463-7 "Body weight"  // required by the core vital-signs profile; the legacy code above is kept
* code.text = "Svoris pirminio vizito metu"
* effectiveDateTime = 2014-01-15T10:10:10+02:00
* valueQuantity = 95 $ucum#kg
* valueQuantity.unit = "kg"
* subject = Reference(patient-male-example)
* performer = Reference(practitioner-example)
