CodeSystem: CarotidComponentCS
Id: carotid-component
Title: "Carotid Ultrasound Component"
Description: "Component codes for carotid artery ultrasound observations (plaque and IMT, laterality)."
* ^url = $carotid-component-cs-url
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* ^publisher = "HL7 Lithuania"
* #right-plaque "Right carotid artery plaque" "Atherosclerotic plaque assessment of the right carotid artery."
* #left-plaque "Left carotid artery plaque" "Atherosclerotic plaque assessment of the left carotid artery."
* #right-imt "Right carotid IMT" "Intima-media thickness of the right carotid artery."
* #left-imt "Left carotid IMT" "Intima-media thickness of the left carotid artery."

CodeSystem: CarotidPlaqueCategoryCS
Id: carotid-plaque-category
Title: "Carotid Plaque Category"
Description: "Categories for atherosclerotic plaque assessment in carotid arteries."
* ^url = $carotid-plaque-category-cs-url
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* ^publisher = "HL7 Lithuania"
* #none "No plaque" "No atherosclerotic plaque detected."
* #present "Plaque present" "Atherosclerotic plaque present, stenosis not quantified."
* #lt50 "Stenosis < 50%" "Atherosclerotic plaque with stenosis less than 50%."
* #50-69 "Stenosis 50-69%" "Atherosclerotic plaque with stenosis 50-69%."
* #gt70 "Stenosis > 70%" "Atherosclerotic plaque with stenosis greater than 70%."

ValueSet: CarotidPlaqueCategoryVS
Id: carotid-plaque-category
Title: "Carotid Plaque Category"
Description: "Categories for atherosclerotic plaque assessment in carotid arteries."
* ^url = $carotid-plaque-category-vs-url
* ^status = #draft
* ^experimental = true
* ^publisher = "HL7 Lithuania"
* include codes from system $carotid-plaque-category-cs-url
