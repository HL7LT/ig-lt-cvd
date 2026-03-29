// =============================================================================
// SKL03 (ŠKL plano pasiekimų vertinimas) – CarePlan, from DSTU1 cid:3
// Goals with achievement status preserved in note (EU/Lt profile uses goal only Reference(GoalLt))
// =============================================================================

Instance: skl03-care-plan-3
InstanceOf: CarePlanLtCvd
Usage: #example
Title: "Care Plan: ŠKL progress assessment (SKL03)"
Description: "Care plan goals with achievement status. Migrated from DSTU1."
* status = #active
* intent = #plan
* subject = Reference(patient-male-example)
* contributor = Reference(practitioner-role-example)
* note[0].text = "MTL Cholesterolis: achieved; Kraujo spaudimas: in progress; Metimas rūkyti: in progress; KMI: in progress; Svoris sumažėjo >= 5%: achieved"
