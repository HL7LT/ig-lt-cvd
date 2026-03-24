Instance: observation-cvd-followup-ldl-example
InstanceOf: ObservationLt
Usage: #example
Title: "Observation: Follow-up LDL cholesterol (example)"
Description: "Example follow-up LDL measurement for achievement evaluation (CVD prevention programme)."
* status = #final
* category = $observation-category#exam "Exam"
* code = $loinc#13457-7 "Cholesterol in LDL [Mass/volume] in Serum or Plasma"
* subject = Reference(patient-male-example)
* effectiveDateTime = "2026-01-15T10:00:00Z"
* valueQuantity.value = 2.4
* valueQuantity.unit = "mmol/L"
* valueQuantity.system = $ucum
* valueQuantity.code = #mmol/L
* note.text = "Follow-up LDL for achievement evaluation against programme target."

Instance: observation-cvd-followup-bp-example
InstanceOf: ObservationLt
Usage: #example
Title: "Observation: Follow-up blood pressure (example)"
Description: "Example follow-up systolic/diastolic blood pressure for achievement evaluation."
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#85354-9 "Blood pressure panel with all children optional"
* subject = Reference(patient-male-example)
* effectiveDateTime = "2026-01-15T10:05:00Z"
* component[0].code = $loinc#8480-6 "Systolic blood pressure"
* component[0].valueQuantity.value = 126
* component[0].valueQuantity.unit = "mm[Hg]"
* component[0].valueQuantity.system = $ucum
* component[0].valueQuantity.code = #mm[Hg]
* component[1].code = $loinc#8462-4 "Diastolic blood pressure"
* component[1].valueQuantity.value = 78
* component[1].valueQuantity.unit = "mm[Hg]"
* component[1].valueQuantity.system = $ucum
* component[1].valueQuantity.code = #mm[Hg]
* note.text = "Follow-up BP compared to target range 120-129/<80 mmHg."
