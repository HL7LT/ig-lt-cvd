// =============================================================================
// SKL01 – Vital signs panel and members (DSTU1 cid:19, 8, 9, 193, 194, 196, 197, 1971, 1981, 199)
// Migrated: name → code, appliesDateTime → effectiveDateTime, related → hasMember
// =============================================================================

Instance: skl01-observation-vitals-panel-19
InstanceOf: ObservationLt
Usage: #example
Title: "Observation: Vital signs panel (SKL01)"
Description: "Vital signs note panel. Migrated from DSTU1 cid:19."
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#8716-3 "Vital signs note"
* effectiveDateTime = 2014-10-22T16:13:54+02:00
* subject = Reference(patient-male-example)
* performer = Reference(practitioner-example)
* hasMember[0] = Reference(skl01-observation-height-8)
* hasMember[1] = Reference(skl01-observation-weight-9)
* hasMember[2] = Reference(skl01-observation-overweight-193)
* hasMember[3] = Reference(skl01-observation-waist-194)
* hasMember[4] = Reference(skl01-observation-bmi-196)
* hasMember[5] = Reference(skl01-observation-bp-panel-197)
* hasMember[6] = Reference(skl01-observation-heart-rate-199)

Instance: skl01-observation-height-8
InstanceOf: ObservationLt
Usage: #example
Title: "Observation: Body height (SKL01)"
Description: "Body height 188 cm. Migrated from DSTU1 cid:8."
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#3137-7 "Body height Measured"
* effectiveDateTime = 2014-10-22T16:13:54+02:00
* valueQuantity = 188 $ucum#cm
* subject = Reference(patient-male-example)
* performer = Reference(practitioner-example)

Instance: skl01-observation-weight-9
InstanceOf: ObservationLt
Usage: #example
Title: "Observation: Body weight (SKL01)"
Description: "Kūno svoris 76 kg. Migrated from DSTU1 cid:9."
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#3141-9 "Body weight Measured"
* code.text = "Kūno svoris"
* effectiveDateTime = 2014-10-22T16:13:54+02:00
* valueQuantity = 76 $ucum#kg
* subject = Reference(patient-male-example)
* performer = Reference(practitioner-example)

Instance: skl01-observation-overweight-193
InstanceOf: ObservationLt
Usage: #example
Title: "Observation: Overweight or obesity (SKL01)"
Description: "Antsvoris arba nutukimas – Yra. Migrated from DSTU1 cid:193."
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $sct#248311001 "Central obesity (disorder)"
* code.text = "Antsvoris arba nutukimas"
* effectiveDateTime = 2012-09-17T16:13:54+02:00
* valueCodeableConcept = $sct#373066001 "Yes"
* subject = Reference(patient-male-example)
* performer = Reference(practitioner-example)

Instance: skl01-observation-waist-194
InstanceOf: ObservationLt
Usage: #example
Title: "Observation: Waist circumference (SKL01)"
Description: "Liemens apimtis 103 cm. Migrated from DSTU1 cid:194."
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#8280-0 "Waist Circumference at umbilicus by Tape measure"
* code.text = "Liemens apimtis"
* effectiveDateTime = 2014-10-22T16:13:54+02:00
* valueQuantity = 103 $ucum#cm
* interpretation = $sct#249533007 "Obese abdomen (finding)"
* subject = Reference(patient-male-example)
* performer = Reference(practitioner-example)

Instance: skl01-observation-bmi-196
InstanceOf: ObservationLt
Usage: #example
Title: "Observation: BMI (SKL01)"
Description: "KMI 26.23 kg/m2. Migrated from DSTU1 cid:196."
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#59574-4 "Body mass index (BMI) [Percentile]"
* effectiveDateTime = 2014-10-22T16:13:54+02:00
* valueQuantity = 26.23 $ucum#kg/m2
* subject = Reference(patient-male-example)
* performer = Reference(practitioner-example)

Instance: skl01-observation-bp-panel-197
InstanceOf: ObservationLt
Usage: #example
Title: "Observation: Blood pressure panel (SKL01)"
Description: "Sistolinis ir diastolinis kraujospūdis. Migrated from DSTU1 cid:197."
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#55284-4 "Blood pressure systolic and diastolic"
* code.text = "Sistolinis ir diastolinis kraujospūdis"
* effectiveDateTime = 2014-10-22T16:13:54+02:00
* subject = Reference(patient-male-example)
* performer = Reference(practitioner-example)
* hasMember[0] = Reference(skl01-observation-systolic-1971)
* hasMember[1] = Reference(skl01-observation-diastolic-1981)

Instance: skl01-observation-systolic-1971
InstanceOf: ObservationLt
Usage: #example
Title: "Observation: Systolic BP (SKL01)"
Description: "Kraujospūdis: sistolinis 107 mm[Hg]. Migrated from DSTU1 cid:1971."
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#8480-6 "Systolic blood pressure"
* code.text = "Kraujospūdis: sistolinis"
* effectiveDateTime = 2014-10-22T16:13:54+02:00
* valueQuantity = 107 $ucum#mm[Hg]
* subject = Reference(patient-male-example)
* performer = Reference(practitioner-example)

Instance: skl01-observation-diastolic-1981
InstanceOf: ObservationLt
Usage: #example
Title: "Observation: Diastolic BP (SKL01)"
Description: "Kraujospūdis: diastolinis 60 mm[Hg]. Migrated from DSTU1 cid:1981."
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#8462-4 "Diastolic blood pressure"
* code.text = "Kraujospūdis: diastolinis"
* effectiveDateTime = 2014-10-22T16:13:54+02:00
* valueQuantity = 60 $ucum#mm[Hg]
* subject = Reference(patient-male-example)
* performer = Reference(practitioner-example)

Instance: skl01-observation-heart-rate-199
InstanceOf: ObservationLt
Usage: #example
Title: "Observation: Heart rate (SKL01)"
Description: "Širdies susitraukimų dažnis 72 bpm. Migrated from DSTU1 cid:199."
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#8886-4 "Heart rate method"
* code.text = "Širdies susitraukimų dažnis"
* effectiveDateTime = 2012-09-17T16:13:54+02:00
* valueQuantity = 72 $ucum#/min
* subject = Reference(patient-male-example)
* performer = Reference(practitioner-example)
