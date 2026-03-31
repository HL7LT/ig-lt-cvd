CodeSystem: CoronaryCalciumInterpretationCS
Id: coronary-calcium-interpretation
Title: "Coronary Artery Calcium Score Interpretation"
Description: "Six-level interpretation scale for coronary artery calcium (Agatston) score."
* ^url = $coronary-calcium-interpretation-cs-url
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* ^publisher = "HL7 Lithuania"
* #0 "No calcification (score 0)" "No coronary artery calcification detected."
* #1-10 "Minimal (score 1-10)" "Minimal coronary artery calcification."
* #11-100 "Mild (score 11-100)" "Mild coronary artery calcification."
* #101-400 "Moderate (score 101-400)" "Moderate coronary artery calcification."
* #401-1000 "Significant (score 401-1000)" "Significant coronary artery calcification."
* #gt1000 "Very significant (score > 1000)" "Very significant coronary artery calcification."

ValueSet: CoronaryCalciumInterpretationVS
Id: coronary-calcium-interpretation
Title: "Coronary Artery Calcium Score Interpretation"
Description: "Six-level interpretation scale for coronary artery calcium (Agatston) score."
* ^url = $coronary-calcium-interpretation-vs-url
* ^status = #draft
* ^experimental = true
* ^publisher = "HL7 Lithuania"
* include codes from system $coronary-calcium-interpretation-cs-url
