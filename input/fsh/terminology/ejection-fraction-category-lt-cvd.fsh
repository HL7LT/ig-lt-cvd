CodeSystem: EjectionFractionCategoryCS
Id: ejection-fraction-category
Title: "Ejection Fraction Category"
Description: "Categories for left ventricular ejection fraction (LVEF) classification."
* ^url = $ejection-fraction-category-cs-url
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* ^publisher = "HL7 Lithuania"
* #preserved "Preserved (EF >= 50%)" "Left ventricular ejection fraction is preserved (>= 50%)."
* #mildly-reduced "Mildly reduced (EF 41-49%)" "Left ventricular ejection fraction is mildly reduced (41-49%)."
* #reduced "Reduced (EF <= 40%)" "Left ventricular ejection fraction is reduced (<= 40%)."

ValueSet: EjectionFractionCategoryVS
Id: ejection-fraction-category
Title: "Ejection Fraction Category"
Description: "Categories for left ventricular ejection fraction (LVEF) classification."
* ^url = $ejection-fraction-category-vs-url
* ^status = #draft
* ^experimental = true
* ^publisher = "HL7 Lithuania"
* include codes from system $ejection-fraction-category-cs-url
