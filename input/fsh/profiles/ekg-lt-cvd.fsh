Alias: $EKG = urn:oid:2.16.840.1.113883.6.24

Profile: EKGLtCvd
Parent: ObservationLt
Id: ekg-lt-cvd
Title: "EKG"
Description: "Electrocardiogram (EKG/ECG) observation using 12 leads and SampledData data type."
* ^url = $ekg-lt-cvd-url
* ^status = #draft
* ^language = #en
* ^version = "1.0.0"
* ^experimental = true
* ^publisher = "HL7 Lithuania"

* category = $observation-category#procedure "Procedure"

* code.coding ^slicing.discriminator[0].type = #value
* code.coding ^slicing.discriminator[0].path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains mdc 1..1 and snomed 1..1 and loinc 0..1
* code.coding[mdc] = $EKG#131328 "MDC_ECG_ELEC_POTL"
* code.coding[snomed] = $sct#268400002 "12 lead ECG"
* code.coding[loinc] = $loinc#11524-6 "EKG study"

* subject 1..
* subject only Reference(PatientLt)
* effective[x] 1..
* effective[x] only dateTime
* note MS
* component MS
* component.value[x] only SampledData
* value[x] ..0
* interpretation MS
* interpretation from $numeric-result-interpretation-lt-url
