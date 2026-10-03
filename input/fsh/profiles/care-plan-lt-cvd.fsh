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
// These four goal kinds were previously expressed as slices of CarePlan.goal
// discriminated by #value on "display". That discriminator could never be
// evaluated: no slice asserted a value, pattern or binding on display, and no
// example populates Reference.display at all, so the publisher reported
// "Slicing cannot be evaluated" once per goal per slice — 36 errors from four
// slices that constrained nothing beyond their own prose.
//
// The slices are therefore replaced by documentation on goal itself, which is
// what they actually were. To make them enforceable instead, define a Goal
// profile per target and slice with #profile on "resolve()".
* goal MS
* goal ^short = "Programme goals: target LDL cholesterol, target blood pressure, target BMI, weight loss of at least 5%"
* goal ^definition = """References to Goal resources for the cardiovascular prevention targets used by the programme:

* target LDL cholesterol (<2.6 / <1.8 / <1.4 mmol/l by CVD risk group);
* target blood pressure (120–129/<80 mmHg per programme protocol);
* target body-mass index;
* weight reduction of at least 5% of initial body weight, from the DSTU1 SKL03 achievement evaluation criteria."""

// Activities: smoking cessation, diet, physical activity
* activity MS
* activity ^short = "Lifestyle interventions (smoking, diet, exercise)"
* activity ^definition = "Planned or performed lifestyle interventions: smoking cessation (pharmacological / behavioral), dietary changes, physical activity recommendations."

// Other recommendations and informational text
* note MS
* note ^short = "Other recommendations, informational text (healthy nutrition, healthy weight, regular medication)"
