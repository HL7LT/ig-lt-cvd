Profile: EchocardiographyLtCvd
Parent: ObservationLt
Id: echocardiography-lt-cvd
Title: "Echocardiography"
Description: """
Echocardiography observation for CVD screening.
Captures left ventricular ejection fraction (EF), EF category, and optional established pathology (ICD-10).
"""
* ^url = $echocardiography-lt-cvd-url
* ^status = #draft
* ^language = #en
* ^version = "1.0.0"
* ^experimental = true
* ^publisher = "HL7 Lithuania"

* category = $observation-category#procedure "Procedure"
* code = $sct#40701008 "Echocardiography (procedure)"
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
    ejectionFraction 1..1 MS and
    efCategory 1..1 MS and
    pathology 0..1 MS

* component[ejectionFraction].code = $sct#250908004 "Left ventricular ejection fraction (observable entity)"
* component[ejectionFraction].value[x] only Quantity
* component[ejectionFraction].valueQuantity.unit = "%"
* component[ejectionFraction].valueQuantity.system = $ucum
* component[ejectionFraction].valueQuantity.code = #%
* component[ejectionFraction] ^short = "Left ventricular ejection fraction (%)"

* component[efCategory].code = $sct#364066002 "Cardiac ejection fraction finding (finding)"
* component[efCategory].value[x] only CodeableConcept
* component[efCategory].valueCodeableConcept from EjectionFractionCategoryVS (required)
* component[efCategory] ^short = "EF category: preserved (>= 50%), mildly reduced (41-49%), reduced (<= 40%)"

* component[pathology].code = $sct#106063007 "Cardiovascular finding (finding)"
* component[pathology].value[x] only CodeableConcept
* component[pathology] ^short = "Established cardiovascular pathology (ICD-10 code)"

* note MS
