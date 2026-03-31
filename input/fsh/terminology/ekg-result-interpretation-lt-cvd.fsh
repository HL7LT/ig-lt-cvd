ValueSet: EkgResultInterpretationVS
Id: ekg-result-interpretation
Title: "EKG Result Interpretation"
Description: """
SNOMED CT codes for interpreting electrocardiogram (EKG/ECG) findings within the Lithuanian CVD screening programme.
Includes both high-level interpretation (normal/abnormal) and specific finding codes.
Multiple findings may be recorded simultaneously (e.g., abnormal + atrial fibrillation).
Free-text "Other" findings should be captured in Observation.note.
"""
* ^url = $ekg-result-interpretation-vs-url
* ^status = #draft
* ^experimental = true
* ^publisher = "HL7 Lithuania"
* $sct#164854000 "Electrocardiogram normal (finding)"
* $sct#102594003 "Electrocardiogram abnormal (finding)"
* $sct#55930002  "ST-T wave changes on electrocardiogram (finding)"
* $sct#164889003 "Electrocardiogram: atrial fibrillation (finding)"
* $sct#164890007 "Electrocardiogram: atrial flutter (finding)"
* $sct#164909002 "Electrocardiogram: left bundle branch block (finding)"
* $sct#164887001 "Electrocardiogram: supraventricular arrhythmia (finding)"
* $sct#164883002 "Electrocardiogram: extrasystoles (finding)"
