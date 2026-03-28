Profile: CarePlanLtCvd
Parent: CarePlan
Id: care-plan-lt-cvd
Title: "Care Plan: CVD prevention measures (LT)"
Description: """
Care plan for cardiovascular disease prevention within the Lithuanian CVD screening programme.
Captures prevention targets (LDL cholesterol, blood pressure, BMI), lifestyle interventions
(smoking cessation, diet, physical activity), and follow-up achievement evaluation.
"""
* ^url = $care-plan-lt-cvd-url
* ^status = #draft

* extension contains RiskGroupExtLtCvd named riskGroup 0..1
  and $activity-other-description-ext-lt-url named activityOtherDesc 0..1
  and $other-dietary-changes-ext-lt-url named otherDietaryChanges 0..1

* status MS
* intent MS
* subject 1..1 MS
* subject only Reference(PatientLt)
* created MS
* custodian MS

// Goals: LDL target, BP target, BMI target (at least LDL + BMI required per PDF)
* goal MS
* goal ^short = "Prevention targets (LDL, BP, BMI)"
* goal ^definition = "References to Goal resources representing target LDL cholesterol, target blood pressure, target BMI, and optionally weight loss ≥5%."

// Activities: smoking cessation, diet, physical activity
* activity MS
* activity ^short = "Lifestyle interventions (smoking, diet, exercise)"
* activity ^definition = "Planned or performed lifestyle interventions: smoking cessation (pharmacological / behavioral), dietary changes, physical activity recommendations."

// Other recommendations and informational text
* note MS
* note ^short = "Other recommendations, informational text (healthy nutrition, healthy weight, regular medication)"
