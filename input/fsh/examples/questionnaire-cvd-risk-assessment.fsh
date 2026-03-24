Instance: questionnaire-cvd-risk-assessment
InstanceOf: Questionnaire
Usage: #example
Title: "Questionnaire: CVD risk assessment (ESPBI form 1)"
Description: "Illustrative FHIR Questionnaire for the national **patient cardiovascular disease risk assessment** electronic form (PDF tables 10.5–10.9). Extend with full field parity in production."
* url = "https://hl7.lt/fhir/cvd/Questionnaire/cvd-risk-assessment"
* version = "0.1.0"
* name = "CvdRiskAssessment"
* title = "Patient cardiovascular disease risk assessment questionnaire"
* status = #draft
* subjectType = #Patient
* date = "2025-10-01"
* publisher = "HL7 Lithuania"
* description = "Representative subset of programme fields: context, chronic diseases, key risk factors, anthropometrics, blood pressure, lipid panel, SCORE2, and risk group."

* item[0].linkId = "grp-context"
* item[0].text = "Context"
* item[0].type = #group
* item[0].item[0].linkId = "evaluation-datetime"
* item[0].item[0].text = "Evaluation date and time"
* item[0].item[0].type = #dateTime
* item[0].item[0].required = true

* item[1].linkId = "grp-chronic"
* item[1].text = "Accompanying chronic diseases (programme list)"
* item[1].type = #group
* item[1].item[0].linkId = "chronic-condition-summary"
* item[1].item[0].text = "Relevant chronic conditions documented (free text or coded in production)"
* item[1].item[0].type = #text

* item[2].linkId = "grp-risk-factors"
* item[2].text = "Risk factors"
* item[2].type = #group
* item[2].item[0].linkId = "risk-factor-hypertension"
* item[2].item[0].text = "Arterial hypertension"
* item[2].item[0].type = #coding
* item[2].item[0].answerOption[0].valueCoding = $cvd-questionnaire-options-cs#risk-factor-no "No"
* item[2].item[0].answerOption[1].valueCoding = $cvd-questionnaire-options-cs#risk-factor-untreated "There is, untreated"
* item[2].item[0].answerOption[2].valueCoding = $cvd-questionnaire-options-cs#risk-factor-treated "There is, treated"
* item[2].item[0].required = true
* item[2].item[1].linkId = "risk-factor-dyslipidemia"
* item[2].item[1].text = "Dyslipidemia"
* item[2].item[1].type = #coding
* item[2].item[1].answerOption[0].valueCoding = $cvd-questionnaire-options-cs#risk-factor-no "No"
* item[2].item[1].answerOption[1].valueCoding = $cvd-questionnaire-options-cs#risk-factor-untreated "There is, untreated"
* item[2].item[1].answerOption[2].valueCoding = $cvd-questionnaire-options-cs#risk-factor-treated "There is, treated"
* item[2].item[1].required = true
* item[2].item[2].linkId = "risk-factor-diabetes"
* item[2].item[2].text = "Diabetes"
* item[2].item[2].type = #coding
* item[2].item[2].answerOption[0].valueCoding = $cvd-questionnaire-options-cs#risk-factor-no "No"
* item[2].item[2].answerOption[1].valueCoding = $cvd-questionnaire-options-cs#risk-factor-untreated "There is, untreated"
* item[2].item[2].answerOption[2].valueCoding = $cvd-questionnaire-options-cs#risk-factor-treated "There is, treated"
* item[2].item[2].required = true
* item[2].item[3].linkId = "risk-factor-smoking"
* item[2].item[3].text = "Smoking"
* item[2].item[3].type = #coding
* item[2].item[3].answerOption[0].valueCoding = $cvd-questionnaire-options-cs#smoking-never "Did not smoke"
* item[2].item[3].answerOption[1].valueCoding = $cvd-questionnaire-options-cs#smoking-current "Smokes"
* item[2].item[3].answerOption[2].valueCoding = $cvd-questionnaire-options-cs#smoking-former "Smoked before"
* item[2].item[3].required = true

* item[3].linkId = "grp-objective"
* item[3].text = "Objective condition and investigations"
* item[3].type = #group
* item[3].item[0].linkId = "height-cm"
* item[3].item[0].text = "Height (cm)"
* item[3].item[0].type = #decimal
* item[3].item[0].required = true
* item[3].item[1].linkId = "weight-kg"
* item[3].item[1].text = "Weight (kg)"
* item[3].item[1].type = #decimal
* item[3].item[1].required = true
* item[3].item[2].linkId = "waist-cm"
* item[3].item[2].text = "Waist circumference (cm)"
* item[3].item[2].type = #decimal
* item[3].item[2].required = true
* item[3].item[3].linkId = "bp-systolic"
* item[3].item[3].text = "Systolic blood pressure (mmHg)"
* item[3].item[3].type = #decimal
* item[3].item[3].required = true
* item[3].item[4].linkId = "bp-diastolic"
* item[3].item[4].text = "Diastolic blood pressure (mmHg)"
* item[3].item[4].type = #decimal
* item[3].item[4].required = true

* item[4].linkId = "grp-lipidogram"
* item[4].text = "Lipidogram"
* item[4].type = #group
* item[4].item[0].linkId = "lipid-tc"
* item[4].item[0].text = "Total cholesterol (mmol/l)"
* item[4].item[0].type = #decimal
* item[4].item[1].linkId = "lipid-hdl"
* item[4].item[1].text = "HDL cholesterol (mmol/l)"
* item[4].item[1].type = #decimal
* item[4].item[2].linkId = "lipid-ldl"
* item[4].item[2].text = "LDL cholesterol (mmol/l)"
* item[4].item[2].type = #decimal
* item[4].item[3].linkId = "lipid-tg"
* item[4].item[3].text = "Triglycerides (mmol/l)"
* item[4].item[3].type = #decimal

* item[5].linkId = "grp-risk-estimate"
* item[5].text = "Risk estimate and group"
* item[5].type = #group
* item[5].item[0].linkId = "score2-percent"
* item[5].item[0].text = "SCORE2 cardiovascular risk (%)"
* item[5].item[0].type = #decimal
* item[5].item[1].linkId = "risk-group-cvd"
* item[5].item[1].text = "Risk group for heart and vascular diseases"
* item[5].item[1].type = #coding
* item[5].item[1].answerOption[0].valueCoding = $cvd-questionnaire-options-cs#cvd-rg-small-medium "Small to medium"
* item[5].item[1].answerOption[1].valueCoding = $cvd-questionnaire-options-cs#cvd-rg-large "Large"
* item[5].item[1].answerOption[2].valueCoding = $cvd-questionnaire-options-cs#cvd-rg-very-large "Very large"
* item[5].item[1].required = true

Instance: questionnaireresponse-cvd-risk-assessment-example
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "QuestionnaireResponse: CVD risk assessment (example)"
Description: "Example answers for the CVD risk assessment Questionnaire, aligned with other CVD IG examples (SCORE2 24%, high risk group)."
* questionnaire = "https://hl7.lt/fhir/cvd/Questionnaire/cvd-risk-assessment"
* status = #completed
* subject = Reference(Patient/patient-male-example)
* authored = "2025-10-01T09:00:00Z"
* author = Reference(Practitioner/practitioner-example)

* item[0].linkId = "grp-context"
* item[0].item[0].linkId = "evaluation-datetime"
* item[0].item[0].answer.valueDateTime = "2025-10-01T09:00:00Z"

* item[1].linkId = "grp-chronic"
* item[1].item[0].linkId = "chronic-condition-summary"
* item[1].item[0].answer.valueString = "Heart failure (I50) — example only"

* item[2].linkId = "grp-risk-factors"
* item[2].item[0].linkId = "risk-factor-hypertension"
* item[2].item[0].answer.valueCoding = $cvd-questionnaire-options-cs#risk-factor-treated "There is, treated"
* item[2].item[1].linkId = "risk-factor-dyslipidemia"
* item[2].item[1].answer.valueCoding = $cvd-questionnaire-options-cs#risk-factor-treated "There is, treated"
* item[2].item[2].linkId = "risk-factor-diabetes"
* item[2].item[2].answer.valueCoding = $cvd-questionnaire-options-cs#risk-factor-no "No"
* item[2].item[3].linkId = "risk-factor-smoking"
* item[2].item[3].answer.valueCoding = $cvd-questionnaire-options-cs#smoking-never "Did not smoke"

* item[3].linkId = "grp-objective"
* item[3].item[0].linkId = "height-cm"
* item[3].item[0].answer.valueDecimal = 178
* item[3].item[1].linkId = "weight-kg"
* item[3].item[1].answer.valueDecimal = 88
* item[3].item[2].linkId = "waist-cm"
* item[3].item[2].answer.valueDecimal = 98
* item[3].item[3].linkId = "bp-systolic"
* item[3].item[3].answer.valueDecimal = 132
* item[3].item[4].linkId = "bp-diastolic"
* item[3].item[4].answer.valueDecimal = 84

* item[4].linkId = "grp-lipidogram"
* item[4].item[0].linkId = "lipid-tc"
* item[4].item[0].answer.valueDecimal = 5.8
* item[4].item[1].linkId = "lipid-hdl"
* item[4].item[1].answer.valueDecimal = 1.1
* item[4].item[2].linkId = "lipid-ldl"
* item[4].item[2].answer.valueDecimal = 3.6
* item[4].item[3].linkId = "lipid-tg"
* item[4].item[3].answer.valueDecimal = 1.9

* item[5].linkId = "grp-risk-estimate"
* item[5].item[0].linkId = "score2-percent"
* item[5].item[0].answer.valueDecimal = 24
* item[5].item[1].linkId = "risk-group-cvd"
* item[5].item[1].answer.valueCoding = $cvd-questionnaire-options-cs#cvd-rg-large "Large"
