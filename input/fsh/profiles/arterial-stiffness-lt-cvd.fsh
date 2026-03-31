Profile: ArterialStiffnessLtCvd
Parent: ObservationLt
Id: arterial-stiffness-lt-cvd
Title: "Arterial Stiffness (PWV)"
Description: """
Pulse wave velocity (PWV) carotid-femoral measurement for arterial stiffness assessment.
Normal value: < 10 m/s. Values >= 10 m/s indicate increased arterial stiffness.
"""
* ^url = $arterial-stiffness-lt-cvd-url
* ^status = #draft
* ^language = #en
* ^version = "1.0.0"
* ^experimental = true
* ^publisher = "HL7 Lithuania"

* category = $observation-category#procedure "Procedure"
* code = $sct#252076005 "Measurement of pulse wave velocity"
* subject 1..
* subject only Reference(PatientLt)
* effective[x] 1..
* effective[x] only dateTime
* value[x] only Quantity
* valueQuantity 1..1
* valueQuantity.unit = "m/s"
* valueQuantity.system = $ucum
* valueQuantity.code = #m/s
* interpretation from ArterialStiffnessInterpretationVS (required)
* interpretation ^short = "Normal (< 10 m/s) or High (>= 10 m/s)"
* component ..0
* note MS
