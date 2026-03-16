Instance: care-plan-cvd-screening-example
InstanceOf: CarePlanLtCvd
Usage: #example
Title: "Care Plan: CVD Screening (example)"
Description: "An example instance of a CarePlan for a patient at risk of Cardiovascular Disease (CVD), covering goals and activities related to lifestyle changes."

* status = #active
* intent = #plan
* title = "Plan for Heart and Blood Vessel Disease Screening Measures"
* description = "Comprehensive plan detailing lifestyle modifications, pharmacological advice, and biometric targets for CVD risk reduction."
* created = 2025-10-31T10:00:00+02:00
* subject = Reference(patient-male-example)
* extension[riskGroup].valueCodeableConcept = $risk-group-lt-cvd-url#very-large "Very large"
* contained[0] = goal-ldl
* contained[+] = goal-bmi
* contained[+] = goal-bp
* goal = Reference(goal-ldl)
* goal[+] = Reference(goal-bmi)
* goal[+] = Reference(goal-bp)
* activity[0].performedActivity.concept = $sct#702388001 "Tobacco use cessation education (procedure)"
* activity[0].progress.text = "Quitting smoking intervention selected: Pharmacological and Behavior change tools."
* activity[1].performedActivity.concept = $sct#11816003 "Diet education (procedure)"
* activity[1].progress[0].text = """
  Healthy Nutrition Plan: Diet should include consumption of fruits and vegetables > 200 g/day, 35–45 g of fiber (recommended from grains), moderate consumption of nuts (30 g/day, unsalted), 1–2 servings of fish per week (one fatty fish), limited amounts of lean meat, low-fat dairy products, and liquid vegetable oils.
  Saturated fats <10% of total fat intake, replacing them with polyunsaturated fats, reducing trans fats, preferably not from processed foods and making up <1% of total energy intake.
  Salt ˂ 5–6 g per day.
  Avoid alcohol if consumed, limit intake to ˂100 g per week or <15 g per day. Avoid high-energy foods, such as sugar-sweetened soft drinks.
  """
* activity[1].progress[+].text = "Focus on reducing processed sugar intake dramatically by eliminating soft drinks."
* activity[2].performedActivity.concept = $sct#1287704009 "Physical activity consultation (procedure)"
* activity[2].progress[0].text = "30-60 minutes of moderate physical activity daily, beneficial and irregular physical activity."
* activity[2].progress[+].text = "Focus on 3 sessions of swimming per week in addition to daily walks."
* activity[3].performedActivity.concept.text = "Antilipid treatment prescribed by the doctor."
* activity[3].progress[0].text = "Atorvastatin 20mg daily."
* supportingInfo[0].display = "A healthy weight is when Body Mass Index (BMI) is 18.5-24.9 kg/m2."
* supportingInfo[1].display = "Regular use of prescribed medication: Antilipid treatment, Antihypertensive and heart rate regulating (cardioprotective) treatment, Currently used medications."
* note[0].text = "Recommend follow-up appointment with a cardiologist in three months to review treatment efficacy and progress toward goals."

Instance: goal-ldl
InstanceOf: Goal
Usage: #inline
Title: "Goal: Target LDL Cholesterol"
* lifecycleStatus = #active
* subject = Reference(patient-male-example)
* description.text = "Target LDL Cholesterol, considering the cardiovascular disease risk group"
* target[0].measure = $loinc#13457-7 "Cholesterol in LDL [Mass/volume] in Serum or Plasma by calculation"
* target[0].detailQuantity.value = 1.4
* target[0].detailQuantity.unit = "mmol/L"
* target[0].detailQuantity.system = $ucum
* target[0].detailQuantity.code = #mmol/L
* target[0].dueDate = 2026-10-31

Instance: goal-bmi
InstanceOf: Goal
Usage: #inline
Title: "Goal: Target Body Mass Index (BMI)"
* lifecycleStatus = #active
* subject = Reference(patient-male-example)
* description.text = "Target Body Mass Index (BMI) of 22.5 kg/m2"
* target[0].measure = $loinc#39156-5 "Body mass index (BMI) [Ratio]"
* target[0].detailQuantity.value = 22.5
* target[0].detailQuantity.unit = "kg/m2"
* target[0].detailQuantity.system = $ucum
* target[0].detailQuantity.code = #kg/m2

Instance: goal-bp
InstanceOf: Goal
Usage: #inline
Title: "Goal: Target Blood Pressure (BP) 120-129/<80 mmHg"
* lifecycleStatus = #planned
* description.text = "Target BP 120-129/<80 mmHg"
* subject = Reference(patient-male-example)
