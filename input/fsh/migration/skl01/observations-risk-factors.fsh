// =============================================================================
// SKL01 – Risk factor status observations (DSTU1 cid:181, 182, 183, 184, 185, 186, 187, 188, 189, 18treatment)
// Migrated: name → code, method → component where applicable; bind RiskFactorStatusLtCvd where semantics match
// =============================================================================

Instance: skl01-observation-treatment
InstanceOf: ObservationLt
Usage: #example
Title: "Observation: Treatment status (SKL01)"
Description: "Yra ir gydoma. Migrated from DSTU1 cid:18treatment."
* status = #final
* category = $observation-category#exam "Exam"
* code = $sct#1156601009 "Treatment parameter (observable entity)"
* effectiveDateTime = 2014-10-28T08:01:00.000+02:00
* valueCodeableConcept = $sct#182991002 "Treatment given (situation)"
* valueCodeableConcept.text = "Yra ir gydoma"
* subject = Reference(patient-male-example)
* performer = Reference(practitioner-example)

Instance: skl01-observation-hypertension-181
InstanceOf: RiskFactorStatusLtCvd
Usage: #example
Title: "Observation: Hypertension risk factor (SKL01)"
Description: "Hipertenzija – Yra. Migrated from DSTU1 cid:181."
* status = #final
* code = $sct#38341003 "Hypertensive disorder, systemic arterial (disorder)"
* effectiveDateTime = 2014-10-28T08:01:00.000+02:00
* component[risk].valueCodeableConcept = $risk-probability#certain "Certain"
* component[risk].valueCodeableConcept.text = "Yra"
* component[treatment].valueCodeableConcept = $sct#182991002 "Treatment given (situation)"
* subject = Reference(patient-male-example)
* performer = Reference(practitioner-example)
* derivedFrom[0] = Reference(skl01-observation-treatment)

Instance: skl01-observation-dyslipidemia-182
InstanceOf: RiskFactorStatusLtCvd
Usage: #example
Title: "Observation: Dyslipidemia risk factor (SKL01)"
Description: "Dislipidemija – Yra. Migrated from DSTU1 cid:182."
* status = #final
* code = $sct#370992007 "Disorder of lipoprotein metabolism (disorder)"
* effectiveDateTime = 2014-10-28T08:01:00.000+02:00
* component[risk].valueCodeableConcept = $risk-probability#certain "Certain"
* component[risk].valueCodeableConcept.text = "Yra"
* component[treatment].valueCodeableConcept = $sct#182991002 "Treatment given (situation)"
* subject = Reference(patient-male-example)
* performer = Reference(practitioner-example)
* derivedFrom[0] = Reference(skl01-observation-treatment)

Instance: skl01-observation-diabetes-183
InstanceOf: RiskFactorStatusLtCvd
Usage: #example
Title: "Observation: Diabetes risk factor (SKL01)"
Description: "Cukrinis diabetas – Yra. Migrated from DSTU1 cid:183."
* status = #final
* code = $sct#73211009 "Diabetes mellitus (disorder)"
* effectiveDateTime = 2014-10-28T08:01:00.000+02:00
* component[risk].valueCodeableConcept = $risk-probability#certain "Certain"
* component[risk].valueCodeableConcept.text = "Yra"
* component[treatment].valueCodeableConcept = $sct#182991002 "Treatment given (situation)"
* subject = Reference(patient-male-example)
* performer = Reference(practitioner-example)
* derivedFrom[0] = Reference(skl01-observation-treatment)
* derivedFrom[1] = Reference(skl01-observation-diabetes-duration-184)

Instance: skl01-observation-diabetes-duration-184
InstanceOf: ObservationLt
Usage: #example
Title: "Observation: Diabetes duration >10 years (SKL01)"
Description: "Ar CD > 10 metų? Migrated from DSTU1 cid:184."
* status = #final
* category = $observation-category#exam "Exam"
* code = $sct#161445009 "History of diabetes mellitus (situation)"
* effectiveDateTime = 2014-10-28T08:01:00.000+02:00
* valueQuantity = 10 $ucum#a
* valueQuantity.comparator = #>
* subject = Reference(patient-male-example)
* performer = Reference(practitioner-example)

Instance: skl01-observation-igt-185
InstanceOf: RiskFactorStatusLtCvd
Usage: #example
Title: "Observation: Impaired glucose tolerance (SKL01)"
Description: "Gliukozės tolerancijos sutrikimas – Yra. Migrated from DSTU1 cid:185."
* status = #final
* code = $sct#9414007 "Impaired glucose tolerance (disorder)"
* effectiveDateTime = 2014-10-28T08:01:00.000+02:00
* component[risk].valueCodeableConcept = $risk-probability#certain "Certain"
* component[risk].valueCodeableConcept.text = "Yra"
* subject = Reference(patient-male-example)
* performer = Reference(practitioner-example)
* derivedFrom[0] = Reference(skl01-observation-treatment)

Instance: skl01-observation-smoking-186
InstanceOf: ObservationLt
Usage: #example
Title: "Observation: Smoking risk factor (SKL01)"
Description: "Rūkymas. Migrated from DSTU1 cid:186."
* status = #final
* category = $observation-category#exam "Exam"
* code = $sct#80943009 "Risk factor"
* effectiveDateTime = 2014-10-28T08:01:00.000+02:00
* valueQuantity = 25 $ucum#1
* interpretation = $sct#52101004 "Present (qualifier value)"
* subject = Reference(patient-male-example)
* performer = Reference(practitioner-example)

Instance: skl01-observation-physical-activity-187
InstanceOf: ObservationLt
Usage: #example
Title: "Observation: Physical activity (SKL01)"
Description: "Fizinis aktyvumas. Migrated from DSTU1 cid:187."
* status = #final
* category = $observation-category#exam "Exam"
* code = $sct#229065009 "Exercise therapy (regime/therapy)"
* effectiveDateTime = 2014-10-28T08:01:00.000+02:00
* subject = Reference(patient-male-example)
* performer = Reference(practitioner-example)

Instance: skl01-observation-diet-188
InstanceOf: ObservationLt
Usage: #example
Title: "Observation: Diet (SKL01)"
Description: "Mityba. Migrated from DSTU1 cid:188."
* status = #final
* category = $observation-category#exam "Exam"
* code = $sct#410175003 "Dietary regime management (procedure)"
* effectiveDateTime = 2014-10-28T08:01:00.000+02:00
* subject = Reference(patient-male-example)
* performer = Reference(practitioner-example)

Instance: skl01-observation-alcohol-189
InstanceOf: ObservationLt
Usage: #example
Title: "Observation: Alcohol consumption (SKL01)"
Description: "Alkoholio vartojimas. Migrated from DSTU1 cid:189."
* status = #final
* category = $observation-category#exam "Exam"
* code = $sct#228272002 "Alcohol consumption (observable entity)"
// Siin vale snomed kood, kas sobiks 897148007 | Alcoholic beverage intake (observable entity) | ?
* effectiveDateTime = 2014-10-28T08:01:00.000+02:00
* subject = Reference(patient-male-example)
* performer = Reference(practitioner-example)
