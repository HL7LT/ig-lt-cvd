CodeSystem: ABIComponentCS
Id: abi-component
Title: "ABI Component"
Description: "Component codes for ankle-brachial index observations (laterality)."
* ^url = $abi-component-cs-url
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* ^publisher = "HL7 Lithuania"
* #right-abi "Right ankle-brachial index" "Ankle-brachial pressure index measured on the right side."
* #left-abi "Left ankle-brachial index" "Ankle-brachial pressure index measured on the left side."

CodeSystem: ABIInterpretationCS
Id: abi-interpretation
Title: "Ankle-Brachial Index Interpretation"
Description: "Interpretation categories for ankle-brachial index (ABI) peripheral arterial disease severity."
* ^url = $abi-interpretation-cs-url
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* ^publisher = "HL7 Lithuania"
* #normal "Normal (ABI > 0.9)" "No significant peripheral arterial disease."
* #mild-moderate "Mild to moderate PAD (ABI 0.41-0.90)" "Mild to moderate peripheral arterial disease."
* #severe "Severe PAD (ABI <= 0.40)" "Severe peripheral arterial disease."

ValueSet: ABIInterpretationVS
Id: abi-interpretation
Title: "Ankle-Brachial Index Interpretation"
Description: "Interpretation categories for ankle-brachial index (ABI) peripheral arterial disease severity."
* ^url = $abi-interpretation-vs-url
* ^status = #draft
* ^experimental = true
* ^publisher = "HL7 Lithuania"
* include codes from system $abi-interpretation-cs-url
