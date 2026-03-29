Profile: CarePlanLtCvd
Parent: CarePlanLt
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
  and $activity-other-description-ext-lt-lifestyle-url named activityOtherDesc 0..1
  and $other-dietary-changes-ext-lt-lifestyle-url named otherDietaryChanges 0..1

* status MS
* intent MS
* subject 1..1 MS
* subject only Reference(PatientLt)
* created MS
* custodian MS

// Goals: LDL target, BP target, BMI target, weight-loss ≥5% (from DSTU1 SKL03)
* goal MS
* goal ^slicing.discriminator.type = #value
* goal ^slicing.discriminator.path = "display"
* goal ^slicing.rules = #open
* goal contains
    ldlTarget 0..1 MS and
    bpTarget 0..1 MS and
    bmiTarget 0..1 MS and
    weightLoss5pct 0..1 MS
* goal[ldlTarget] ^short = "Target LDL cholesterol goal (<2.6 / <1.8 / <1.4 mmol/l by risk group)"
* goal[ldlTarget] ^definition = "Reference to a Goal resource expressing the target LDL cholesterol level based on CVD risk group."
* goal[bpTarget] ^short = "Target blood pressure goal (120–129/<80 mmHg)"
* goal[bpTarget] ^definition = "Reference to a Goal resource for systolic/diastolic blood pressure target per programme protocol."
* goal[bmiTarget] ^short = "Target BMI goal"
* goal[bmiTarget] ^definition = "Reference to a Goal resource expressing the target body-mass index (BMI) value."
* goal[weightLoss5pct] ^short = "Weight loss ≥5% of initial body weight goal"
* goal[weightLoss5pct] ^definition = "Reference to a Goal resource representing weight reduction of ≥5% of initial body weight. Originates from the DSTU1 SKL03 achievement evaluation criteria."

// Activities: smoking cessation, diet, physical activity
* activity MS
* activity ^short = "Lifestyle interventions (smoking, diet, exercise)"
* activity ^definition = "Planned or performed lifestyle interventions: smoking cessation (pharmacological / behavioral), dietary changes, physical activity recommendations."

// Other recommendations and informational text
* note MS
* note ^short = "Other recommendations, informational text (healthy nutrition, healthy weight, regular medication)"
