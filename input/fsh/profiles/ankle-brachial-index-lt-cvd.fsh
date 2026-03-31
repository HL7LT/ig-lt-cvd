Profile: AnkleBrachialIndexLtCvd
Parent: ObservationLt
Id: ankle-brachial-index-lt-cvd
Title: "Ankle-Brachial Index (ABI)"
Description: """
Ankle-brachial pressure index for peripheral arterial disease assessment.
Indicated for diabetic patients and smokers within the CVD screening programme.
Interpretation: > 0.9 normal, 0.41-0.90 mild/moderate PAD, <= 0.40 severe PAD.
"""
* ^url = $ankle-brachial-index-lt-cvd-url
* ^status = #draft
* ^language = #en
* ^version = "1.0.0"
* ^experimental = true
* ^publisher = "HL7 Lithuania"

* category = $observation-category#procedure "Procedure"
* code = $sct#446841001 "Ankle brachial pressure index (observable entity)"
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
    rightABI 0..1 MS and
    leftABI 0..1 MS

* component[rightABI].code = $abi-component-cs-url#right-abi "Right ankle-brachial index"
* component[rightABI].value[x] only Quantity
* component[rightABI].valueQuantity.unit = "ratio"
* component[rightABI].valueQuantity.system = $ucum
* component[rightABI].valueQuantity.code = #{ratio}
* component[rightABI] ^short = "Right-side ABI ratio"

* component[leftABI].code = $abi-component-cs-url#left-abi "Left ankle-brachial index"
* component[leftABI].value[x] only Quantity
* component[leftABI].valueQuantity.unit = "ratio"
* component[leftABI].valueQuantity.system = $ucum
* component[leftABI].valueQuantity.code = #{ratio}
* component[leftABI] ^short = "Left-side ABI ratio"

* interpretation from ABIInterpretationVS (required)
* interpretation ^short = "Overall ABI interpretation: normal / mild-moderate / severe PAD"
* note MS
