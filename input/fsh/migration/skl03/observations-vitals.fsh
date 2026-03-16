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
Description: "Blood pressure systolic and diastolic. Migrated from DSTU1 cid:8."
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#55284-4 "Blood pressure systolic and diastolic"
* code.text = "Kraujo spaudimas sistolinis / diastolinis"
* effectiveDateTime = 2014-10-27T20:40:40+02:00
* subject = Reference(patient-male-example)
* performer = Reference(practitioner-example)
* hasMember[0] = Reference(skl03-observation-systolic-81)
* hasMember[1] = Reference(skl03-observation-diastolic-82)

Instance: skl03-observation-systolic-81
InstanceOf: ObservationLt
Usage: #example
Title: "Observation: Systolic BP (SKL03)"
Description: "Systolic blood pressure 132 mm[Hg]. Migrated from DSTU1 cid:81."
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#8480-6 "Systolic blood pressure"
* code.text = "Kraujospūdis: sistolinis"
* effectiveDateTime = 2014-10-27T20:40:40+02:00
* valueQuantity = 132 $ucum#mm[Hg]
* subject = Reference(patient-male-example)
* performer = Reference(practitioner-example)

Instance: skl03-observation-diastolic-82
InstanceOf: ObservationLt
Usage: #example
Title: "Observation: Diastolic BP (SKL03)"
Description: "Diastolic blood pressure 84 mm[Hg]. Migrated from DSTU1 cid:82."
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#8462-4 "Diastolic blood pressure"
* code.text = "Kraujospūdis: diastolinis"
* effectiveDateTime = 2014-10-27T20:40:40+02:00
* valueQuantity = 84 $ucum#mm[Hg]
* subject = Reference(patient-male-example)
* performer = Reference(practitioner-example)

Instance: skl03-observation-height-9
InstanceOf: ObservationLt
Usage: #example
Title: "Observation: Body height (SKL03)"
Description: "Body height 176 cm. Migrated from DSTU1 cid:9."
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#3137-7 "Body height measured"
* effectiveDateTime = 2014-10-27T20:40:40+02:00
* valueQuantity = 176 $ucum#cm
* subject = Reference(patient-male-example)
* performer = Reference(practitioner-example)

Instance: skl03-observation-weight-10
InstanceOf: ObservationLt
Usage: #example
Title: "Observation: Body weight (SKL03)"
Description: "Body weight 90 kg. Migrated from DSTU1 cid:10."
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#3141-9 "Body weight measured"
* effectiveDateTime = 2014-10-27T20:40:40+02:00
* valueQuantity = 90 $ucum#kg
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
* subject = Reference(patient-male-example)
* performer = Reference(practitioner-example)

Instance: skl03-observation-weight-first-visit-12
InstanceOf: ObservationLt
Usage: #example
Title: "Observation: Weight at first visit (SKL03)"
Description: "Body weight at first visit 95 kg. Migrated from DSTU1 cid:12."
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#3141-9 "Body weight measured"
* code.text = "Svoris pirminio vizito metu"
* effectiveDateTime = 2014-01-15T10:10:10+02:00
* valueQuantity = 95 $ucum#kg
* subject = Reference(patient-male-example)
* performer = Reference(practitioner-example)
