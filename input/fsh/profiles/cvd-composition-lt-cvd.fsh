Profile: CvdCompositionLtCvd
Parent: CompositionLt
Id: cvd-composition-lt-cvd
Title: "Composition: CVD programme document (LT)"
Description: "Synoptic composition for the Lithuanian cardiovascular disease prevention programme: structured sections for **risk assessment** (questionnaire and objective findings), **prevention plan**, and **achievement evaluation** (follow-up), aligned with national ESPBI forms."
* ^url = $cvd-composition-lt-cvd-url
* ^status = #draft
* ^language = #en
* ^version = "1.0.0"
* ^publisher = "HL7 Lithuania"
* ^experimental = true
* . ^short = "CVD prevention programme composition"
* . ^definition = "A single logical document that groups references to observations, conditions, care plans, and follow-up measurements for CVD screening and prevention. Section narratives SHALL be present so the document is readable without resolving every reference."

* type = $loinc#51848-0 "Evaluation + Plan note"
* type ^short = "Evaluation and plan document for the CVD prevention programme."
* category = $loinc#11488-4 "Consult note"
* subject 1..1 MS
* subject only Reference(PatientLt)
* author 1..* MS
* author only Reference(PractitionerLt or PractitionerRoleLt or OrganizationLt)
* title 1..1 MS

* text 0..1 MS
* text ^short = "Optional document-level human-readable summary."

* section 3..3 MS
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #closed
* section ^slicing.ordered = true
* section contains
    assessment 1..1 MS and
    preventionPlan 1..1 MS and
    achievementEvaluation 1..1 MS

// Assessment — clinical context, chronic conditions, risk factors, objective findings, SCORE2, risk group (PDF tables 10.5–10.9)
* section[assessment].title 1..1 MS
* section[assessment].code = $loinc#29299-5 "Reason for visit Narrative"
* section[assessment].text 1..1 MS
* section[assessment].text.status 1..1 MS
* section[assessment].text.div 1..1 MS
* section[assessment].entry 1..* MS

// Prevention plan — targets, lifestyle, medications (PDF table 10.10 plan section)
* section[preventionPlan].title 1..1 MS
* section[preventionPlan].code = $loinc#18776-5 "Plan of care note"
* section[preventionPlan].text 1..1 MS
* section[preventionPlan].text.status 1..1 MS
* section[preventionPlan].text.div 1..1 MS
* section[preventionPlan].entry 1..* MS

// Achievement evaluation — follow-up measurements and targets (PDF achievement section)
* section[achievementEvaluation].title 1..1 MS
* section[achievementEvaluation].code = $loinc#39221-7 "Follow-up note"
* section[achievementEvaluation].text 1..1 MS
* section[achievementEvaluation].text.status 1..1 MS
* section[achievementEvaluation].text.div 1..1 MS
* section[achievementEvaluation].entry 0..* MS
