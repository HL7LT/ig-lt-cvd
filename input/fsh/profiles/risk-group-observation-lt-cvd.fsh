Profile: RiskGroupObservationLtCvd
Parent: ObservationLt
Id: risk-group-observation-lt-cvd
Title: "CVD Risk Group"
Description: "Records the patient's cardiovascular Screening risk classification, expressed as a percentage value and interpreted using HL7 Observation Interpretation codes."
* ^url = $risk-group-observation-lt-cvd-url
* ^status = #draft
* ^language = #en
* ^version = "1.0.0"
* ^date = "2025-10-25T19:10:07+03:00"
* ^experimental = true
* ^publisher = "HL7 Lithuania"
* category = $observation-category#exam "Exam"
* code = $sct#827181004 "Risk of cardiovascular disease"
* effective[x] 1.. MS
* effective[x] only dateTime
* effectiveDateTime ^comment = "The date and time when the cardiovascular risk assessment was performed."
* value[x] only Quantity
* valueQuantity = $ucum#% "%"
* interpretation from CVDRiskGroupLtCvd (extensible)
* interpretation ^short = "Risk group classification (Normal, High, Significantly high)"
* interpretation ^comment = """
The interpretation category is derived from the numeric cardiovascular risk percentage:
- < 10% → not assigned (below threshold)
- 10–19% → Normal (#N)
- 20–29% → High (#H)
- ≥ 30% → Significantly high (#HU)
"""
* component ..0
