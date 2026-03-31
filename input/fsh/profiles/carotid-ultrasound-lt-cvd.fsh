Profile: CarotidUltrasoundLtCvd
Parent: ObservationLt
Id: carotid-ultrasound-lt-cvd
Title: "Carotid Ultrasound"
Description: """
Carotid artery ultrasound for atherosclerotic plaque assessment within CVD screening.
Captures plaque categories (none, present, stenosis grades) and intima-media thickness (IMT)
for right and left common carotid arteries. IMT > 1.5 mm is considered pathological.
"""
* ^url = $carotid-ultrasound-lt-cvd-url
* ^status = #draft
* ^language = #en
* ^version = "1.0.0"
* ^experimental = true
* ^publisher = "HL7 Lithuania"

* category = $observation-category#procedure "Procedure"
* code = $sct#241463004 "Ultrasound scan of carotid artery (procedure)"
* subject 1..
* subject only Reference(PatientLt)
* effective[x] 1..
* effective[x] only dateTime
* value[x] ..0

* component 1..*
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains
    rightPlaque 0..1 MS and
    leftPlaque 0..1 MS and
    rightIMT 0..1 MS and
    leftIMT 0..1 MS

* component[rightPlaque].code = $carotid-component-cs-url#right-plaque "Right carotid artery plaque"
* component[rightPlaque].value[x] only CodeableConcept
* component[rightPlaque].valueCodeableConcept from CarotidPlaqueCategoryVS (required)
* component[rightPlaque] ^short = "Atherosclerotic plaque in right carotid artery"

* component[leftPlaque].code = $carotid-component-cs-url#left-plaque "Left carotid artery plaque"
* component[leftPlaque].value[x] only CodeableConcept
* component[leftPlaque].valueCodeableConcept from CarotidPlaqueCategoryVS (required)
* component[leftPlaque] ^short = "Atherosclerotic plaque in left carotid artery"

* component[rightIMT].code = $carotid-component-cs-url#right-imt "Right carotid IMT"
* component[rightIMT].value[x] only Quantity
* component[rightIMT].valueQuantity.unit = "mm"
* component[rightIMT].valueQuantity.system = $ucum
* component[rightIMT].valueQuantity.code = #mm
* component[rightIMT] ^short = "Right carotid intima-media thickness (mm). Pathological > 1.5 mm."

* component[leftIMT].code = $carotid-component-cs-url#left-imt "Left carotid IMT"
* component[leftIMT].value[x] only Quantity
* component[leftIMT].valueQuantity.unit = "mm"
* component[leftIMT].valueQuantity.system = $ucum
* component[leftIMT].valueQuantity.code = #mm
* component[leftIMT] ^short = "Left carotid intima-media thickness (mm). Pathological > 1.5 mm."

* note MS
