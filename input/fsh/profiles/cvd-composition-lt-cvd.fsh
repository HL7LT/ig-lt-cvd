// ----- Shared constraints -----
RuleSet: CvdCompositionBase
* ^status = #draft
* ^language = #en
* ^version = "1.0.0"
* ^publisher = "HL7 Lithuania"
* ^experimental = true
* category = $loinc#11488-4 "Consult note"
* subject 1..1 MS
* subject only Reference(PatientLt)
* author 1..* MS
* author only Reference(PractitionerLt or PractitionerRoleLt or OrganizationLt)
* title 1..1 MS
* text 0..1 MS
* section 1..* MS
* section.title 1..1 MS
* section.text 1..1 MS
* section.text.status MS
* section.text.div MS
* section.entry 0..* MS

Profile: CvdCompositionLtCvd
Parent: CompositionLt
Id: cvd-composition-lt-cvd
Title: "Composition: CVD programme document (LT)"
Description: "Combined composition for the Lithuanian CVD prevention programme containing all three sections. Use the specific profiles (CvdRiskAssessmentCompositionLtCvd, CvdPreventionPlanCompositionLtCvd, CvdAchievementCompositionLtCvd) when producing individual documents."
* ^url = $cvd-composition-lt-cvd-url
* insert CvdCompositionBase
* . ^short = "CVD prevention programme composition (combined)"

* type from CvdCompositionCodeVS
* section 3..3 MS
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #closed
* section ^slicing.ordered = true
* section contains
    assessment 1..1 MS and
    preventionPlan 1..1 MS and
    achievementEvaluation 1..1 MS

* section[assessment].title 1..1 MS
* section[assessment].code = $loinc#29299-5 "Reason for visit Narrative"
* section[assessment].text 1..1 MS
* section[assessment].text.status 1..1 MS
* section[assessment].text.div 1..1 MS
* section[assessment].entry 1..* MS

* section[preventionPlan].title 1..1 MS
* section[preventionPlan].code = $loinc#18776-5 "Plan of care note"
* section[preventionPlan].text 1..1 MS
* section[preventionPlan].text.status 1..1 MS
* section[preventionPlan].text.div 1..1 MS
* section[preventionPlan].entry 1..* MS

* section[achievementEvaluation].title 1..1 MS
* section[achievementEvaluation].code = $loinc#11506-3 "Progress note"
* section[achievementEvaluation].text 1..1 MS
* section[achievementEvaluation].text.status 1..1 MS
* section[achievementEvaluation].text.div 1..1 MS
* section[achievementEvaluation].entry 0..* MS
