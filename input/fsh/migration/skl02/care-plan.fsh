// =============================================================================
// SKL02 (ŠKL prevencijos priemonių planas) – CarePlan, from DSTU1 cid:3
// Migrated: patient → subject; goal/activity from ltnhr-careplan preserved in note (EU/Lt profile uses goal only Reference(GoalLt))
// =============================================================================

Instance: skl02-care-plan-3
InstanceOf: CarePlanLtCvd
Usage: #example
Title: "Care Plan: ŠKL prevention plan (SKL02)"
Description: "Plan of care with LDL, BP, smoking cessation, diet, physical activity, BMI goals. Migrated from DSTU1."
* status = #active
* intent = #plan
* subject = Reference(patient-male-example)
* contributor = Reference(practitioner-role-example)
* note[0].text = "Tikslinis MTL Cholesterolis: 1.8 mmol/l; Tikslinis kraujo spaudimas: 120-129 mm[Hg]; Metimas rūkyti: Farmakologinės, Elgesio keitimo priemonės; Kita (mityba); Fizinis aktyvumas; Siektinas KMI: 23,0 kg/m2"
