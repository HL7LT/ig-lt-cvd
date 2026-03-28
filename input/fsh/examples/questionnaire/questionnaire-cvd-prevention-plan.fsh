Instance: questionnaire-cvd-prevention-plan
InstanceOf: Questionnaire
Usage: #example
Title: "Questionnaire: CVD prevention plan and achievement (ESPBI form 2)"
Description: "Illustrative FHIR Questionnaire for the **CVD prevention measures plan** and **achievement evaluation** electronic form (PDF table 10.10+). Extend with full national field parity in production."
* url = "https://hl7.lt/fhir/cvd/Questionnaire/cvd-prevention-plan"
* version = "0.1.0"
* name = "CvdPreventionPlan"
* title = "Plan of cardiovascular disease prevention measures and achievement evaluation"
* status = #draft
* subjectType = #Patient
* date = "2025-10-01"
* publisher = "HL7 Lithuania"
* description = "Representative subset: plan metadata, risk group, LDL target, lifestyle areas, and achievement follow-up."

* item[0].linkId = "grp-plan-header"
* item[0].text = "Plan"
* item[0].type = #group
* item[0].item[0].linkId = "plan-created-datetime"
* item[0].item[0].text = "Plan creation date and time"
* item[0].item[0].type = #dateTime
* item[0].item[0].required = true
* item[0].item[1].linkId = "plan-risk-group"
* item[0].item[1].text = "Risk group for heart and vascular diseases (plan)"
* item[0].item[1].type = #coding
* item[0].item[1].answerOption[0].valueCoding = $cvd-questionnaire-options-cs#cvd-rg-large "Large"
* item[0].item[1].answerOption[1].valueCoding = $cvd-questionnaire-options-cs#cvd-rg-very-large "Very large"
* item[0].item[1].required = true
* item[0].item[2].linkId = "plan-target-ldl"
* item[0].item[2].text = "Target LDL cholesterol considering risk group"
* item[0].item[2].type = #coding
* item[0].item[2].answerOption[0].valueCoding = $cvd-questionnaire-options-cs#ldl-target-26 "<2.6 mmol/l"
* item[0].item[2].answerOption[1].valueCoding = $cvd-questionnaire-options-cs#ldl-target-18 "<1.8 mmol/l"
* item[0].item[2].answerOption[2].valueCoding = $cvd-questionnaire-options-cs#ldl-target-14 "<1.4 mmol/l"
* item[0].item[2].required = true
* item[0].item[3].linkId = "plan-target-bp"
* item[0].item[3].text = "Target blood pressure: 120-129/<80 mmHg"
* item[0].item[3].type = #display
* item[0].item[4].linkId = "plan-smoking-cessation"
* item[0].item[4].text = "Quitting smoking (interventions)"
* item[0].item[4].type = #coding
* item[0].item[4].answerOption[0].valueCoding = $cvd-questionnaire-options-cs#cessation-pharmacological "Pharmacological"
* item[0].item[4].answerOption[1].valueCoding = $cvd-questionnaire-options-cs#cessation-behavior "Behavior change tools"
* item[0].item[4].repeats = true

* item[1].linkId = "grp-plan-lifestyle"
* item[1].text = "Lifestyle and weight"
* item[1].type = #group
* item[1].item[0].linkId = "plan-physical-activity"
* item[1].item[0].text = "Physical activity plan"
* item[1].item[0].type = #coding
* item[1].item[0].answerOption[0].valueCoding = $cvd-questionnaire-options-cs#pa-moderate-daily "30-60 minutes moderate activity daily"
* item[1].item[0].answerOption[1].valueCoding = $cvd-questionnaire-options-cs#pa-other "Other"
* item[1].item[1].linkId = "plan-target-bmi"
* item[1].item[1].text = "Target BMI (kg/m²)"
* item[1].item[1].type = #decimal
* item[1].item[1].required = true
* item[1].item[2].linkId = "info-healthy-nutrition"
* item[1].item[2].text = "Healthy nutrition — Mediterranean diet recommended; reduce salt (<5 g/day), saturated fats, and added sugar."
* item[1].item[2].type = #display
* item[1].item[3].linkId = "info-healthy-weight"
* item[1].item[3].text = "Healthy weight — target BMI < 25 kg/m²; waist circumference men < 94 cm, women < 80 cm."
* item[1].item[3].type = #display
* item[1].item[4].linkId = "info-regular-medication"
* item[1].item[4].text = "Regular medication — take all prescribed medications (statins, antihypertensives) regularly and as directed."
* item[1].item[4].type = #display

* item[2].linkId = "grp-achievement"
* item[2].text = "Achievement evaluation"
* item[2].type = #group
* item[2].item[0].linkId = "achievement-datetime"
* item[2].item[0].text = "Achievement evaluation date and time"
* item[2].item[0].type = #dateTime
* item[2].item[1].linkId = "achievement-ldl-mmol"
* item[2].item[1].text = "Achieved LDL cholesterol (mmol/l)"
* item[2].item[1].type = #decimal
* item[2].item[2].linkId = "achievement-ldl-target-met"
* item[2].item[2].text = "Has the target LDL cholesterol been achieved?"
* item[2].item[2].type = #boolean
* item[2].item[3].linkId = "achievement-bp-systolic"
* item[2].item[3].text = "Current systolic blood pressure (mmHg)"
* item[2].item[3].type = #decimal
* item[2].item[4].linkId = "achievement-bp-diastolic"
* item[2].item[4].text = "Current diastolic blood pressure (mmHg)"
* item[2].item[4].type = #decimal
* item[2].item[5].linkId = "achievement-bp-target-met"
* item[2].item[5].text = "Has the target BP been achieved?"
* item[2].item[5].type = #boolean
* item[2].item[6].linkId = "achievement-smoking-quit"
* item[2].item[6].text = "Smoking cessation achieved (at follow-up)"
* item[2].item[6].type = #boolean
* item[2].item[7].linkId = "achievement-height-cm"
* item[2].item[7].text = "Height (cm)"
* item[2].item[7].type = #decimal
* item[2].item[7].required = true
* item[2].item[8].linkId = "achievement-weight-kg"
* item[2].item[8].text = "Weight (kg)"
* item[2].item[8].type = #decimal
* item[2].item[8].required = true
* item[2].item[9].linkId = "achievement-bmi"
* item[2].item[9].text = "Achieved BMI (kg/m², automatically calculated)"
* item[2].item[9].type = #decimal
* item[2].item[9].required = true
* item[2].item[10].linkId = "achievement-comments"
* item[2].item[10].text = "Comments from the achievement evaluator"
* item[2].item[10].type = #text

Instance: questionnaireresponse-cvd-prevention-plan-example
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "QuestionnaireResponse: CVD prevention plan and achievement (example)"
Description: "Example answers for the prevention plan Questionnaire including a follow-up achievement block."
* questionnaire = "https://hl7.lt/fhir/cvd/Questionnaire/cvd-prevention-plan"
* status = #completed
* subject = Reference(Patient/patient-male-example)
* authored = "2026-01-15T11:00:00Z"
* author = Reference(Practitioner/practitioner-example)

* item[0].linkId = "grp-plan-header"
* item[0].item[0].linkId = "plan-created-datetime"
* item[0].item[0].answer.valueDateTime = "2025-10-31T10:00:00+02:00"
* item[0].item[1].linkId = "plan-risk-group"
* item[0].item[1].answer.valueCoding = $cvd-questionnaire-options-cs#cvd-rg-very-large "Very large"
* item[0].item[2].linkId = "plan-target-ldl"
* item[0].item[2].answer.valueCoding = $cvd-questionnaire-options-cs#ldl-target-18 "<1.8 mmol/l"
* item[0].item[3].linkId = "plan-target-bp"
* item[0].item[4].linkId = "plan-smoking-cessation"
* item[0].item[4].answer[0].valueCoding = $cvd-questionnaire-options-cs#cessation-behavior "Behavior change tools"

* item[1].linkId = "grp-plan-lifestyle"
* item[1].item[0].linkId = "plan-physical-activity"
* item[1].item[0].answer.valueCoding = $cvd-questionnaire-options-cs#pa-moderate-daily "30-60 minutes moderate activity daily"
* item[1].item[1].linkId = "plan-target-bmi"
* item[1].item[1].answer.valueDecimal = 24.5

* item[2].linkId = "grp-achievement"
* item[2].item[0].linkId = "achievement-datetime"
* item[2].item[0].answer.valueDateTime = "2026-01-15T11:00:00Z"
* item[2].item[1].linkId = "achievement-ldl-mmol"
* item[2].item[1].answer.valueDecimal = 2.4
* item[2].item[2].linkId = "achievement-ldl-target-met"
* item[2].item[2].answer.valueBoolean = true
* item[2].item[3].linkId = "achievement-bp-systolic"
* item[2].item[3].answer.valueDecimal = 126
* item[2].item[4].linkId = "achievement-bp-diastolic"
* item[2].item[4].answer.valueDecimal = 78
* item[2].item[5].linkId = "achievement-bp-target-met"
* item[2].item[5].answer.valueBoolean = true
* item[2].item[6].linkId = "achievement-smoking-quit"
* item[2].item[6].answer.valueBoolean = true
* item[2].item[7].linkId = "achievement-height-cm"
* item[2].item[7].answer.valueDecimal = 178
* item[2].item[8].linkId = "achievement-weight-kg"
* item[2].item[8].answer.valueDecimal = 85
* item[2].item[9].linkId = "achievement-bmi"
* item[2].item[9].answer.valueDecimal = 26.8
* item[2].item[10].linkId = "achievement-comments"
* item[2].item[10].answer.valueString = "Patient adheres to statin therapy; BP self-monitoring stable."
