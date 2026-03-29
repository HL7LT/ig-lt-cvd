Profile: RiskFactorStatusLtCvd
Parent: ObservationLt
Id: risk-factor-status-lt-cvd
Title: "Risk Factor Status"
Description: """
Generic structure for recording Screening-related risk factors,
such as hypertension, diabetes, or dyslipidemia.
Captures both the assessed risk probability and the treatment status.
"""
* ^url = $risk-factor-status-lt-cvd-url
* ^status = #draft
* ^language = #en
* ^version = "1.0.0"
* ^date = "2025-10-26T11:00:00+03:00"
* ^experimental = true
* ^publisher = "HL7 Lithuania"
* category = $observation-category#exam "Exam"
* code 1..1
* code from RiskFactorTypeLtCvd (extensible)
* code ^short = "Type of risk factor (e.g., hypertension, diabetes, dyslipidemia)"
* subject 1..
* subject only Reference(PatientLt)
* effective[x] 1..
* effective[x] only dateTime
* effectiveDateTime ^comment = "The date and time when risk factor status or risk was assessed."
* component 1..3
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.description = "Slice based on the component.code pattern"
* component contains risk 1..1 MS and treatment 0..1 MS and medication 0..1 MS
* component[risk].code = $sct#80943009 "Risk factor"
* component[risk].value[x] only CodeableConcept
* component[risk].valueCodeableConcept from $risk-probability-vs (extensible)
* component[risk] ^short = "Assessed risk probability or certainty level."
* component[treatment].code = $sct#443938003 "Procedure carried out on subject"
* component[treatment].value[x] only CodeableConcept
* component[treatment].valueCodeableConcept from $treatment-status-url (extensible)
* component[treatment] ^short = "Indicates whether treatment has been given or not."
* component[medication].code = $sct#129019007 "Taking medication (observable entity)"
* component[medication].value[x] only CodeableConcept
* component[medication].valueCodeableConcept from $medication-taken-url (extensible)
* component[medication] ^short = "Indicates whether medication has been taken or not."
