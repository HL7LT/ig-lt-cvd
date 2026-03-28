ValueSet: EkgResultInterpretationVS
Id: ekg-result-interpretation
Title: "EKG Result Interpretation"
Description: """
SNOMED CT codes for interpreting electrocardiogram (EKG/ECG) findings within the Lithuanian CVD screening programme.
Only two values are used in practice: normal and abnormal ECG result.
"""
* ^url = $ekg-result-interpretation-vs-url
* ^status = #draft
* ^experimental = true
* ^publisher = "HL7 Lithuania"
* $sct#164854000 "Electrocardiogram normal (finding)"
* $sct#102594003 "Electrocardiogram abnormal (finding)"
