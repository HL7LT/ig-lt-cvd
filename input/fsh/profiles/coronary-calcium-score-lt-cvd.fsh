Profile: CoronaryCalciumScoreLtCvd
Parent: ObservationLt
Id: coronary-calcium-score-lt-cvd
Title: "Coronary Artery Calcium Score (Agatston)"
Description: """
Coronary artery calcium score (Agatston method) for CVD risk stratification.
Ordered when the need for medication treatment is unclear or the patient does not tolerate statins.
Six-level interpretation: 0 (no calcification), 1-10 (minimal), 11-100 (mild),
101-400 (moderate), 401-1000 (significant), > 1000 (very significant).
"""
* ^url = $coronary-calcium-score-lt-cvd-url
* ^status = #draft
* ^language = #en
* ^version = "1.0.0"
* ^experimental = true
* ^publisher = "HL7 Lithuania"

* category = $observation-category#procedure "Procedure"
* code = $sct#450734004 "Coronary artery calcium score (observable entity)"
* subject 1..
* subject only Reference(PatientLt)
* effective[x] 1..
* effective[x] only dateTime
* value[x] only Quantity
* valueQuantity 1..1
* valueQuantity.unit = "score"
* valueQuantity.system = $ucum
* valueQuantity.code = #{score}
* interpretation from CoronaryCalciumInterpretationVS (required)
* interpretation ^short = "Six-level Agatston score interpretation (0 to > 1000)"
* component ..0
* note MS
