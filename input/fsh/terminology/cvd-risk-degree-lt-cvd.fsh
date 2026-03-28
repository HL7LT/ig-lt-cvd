ValueSet: CVDRiskDegreeLtCvd
Id: cvd-risk-degree
Title: "Cardiovascular Disease Risk Degree (SCORE2)"
Description: """
Degree of cardiovascular disease risk according to SCORE2 risk estimation table.
Interpretation based on color zones:
🟢 Low – Normal (17621005)
🟡 Moderate – Mild (255604002)
🟠 High – Severe (24484000)
🔴 Very high – Fatal (399166001)
"""
* ^url = $cvd-risk-degree-lt-cvd-url
* ^status = #active
* ^language = #en
* ^publisher = "HL7 Lithuania"
* ^experimental = false
* $sct#17621005 "Normal (qualifier value)"
* $sct#255604002 "Mild (qualifier value)"
* $sct#24484000 "Severe (qualifier value)"
* $sct#399166001 "Fatal (qualifier value)"
