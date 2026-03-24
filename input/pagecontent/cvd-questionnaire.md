# ESPBI electronic forms as Questionnaires

Lithuanian **CVD prevention and early diagnosis** programme documentation defines two main **electronic forms** for ESPBI (see national programme material): the **patient cardiovascular disease risk assessment questionnaire** and the **CVD prevention measures plan** (including a later **achievement evaluation** block). 

This IG provides **illustrative FHIR [Questionnaire](https://hl7.org/fhir/questionnaire.html)** definitions and matching **[QuestionnaireResponse](https://hl7.org/fhir/questionnaireresponse.html)** examples so implementers can align form capture with FHIR **without** replacing the structured **Observation** and **CarePlan** profiles used elsewhere in the guide.

## Form 1 — Risk assessment questionnaire

**Scope (national tables 10.5–10.9):** context (evaluation time), accompanying **chronic diseases**, **risk factors** (hypertension, dyslipidemia, diabetes, smoking, and more in the full form), **objective findings** (anthropometrics, blood pressure, investigations), **lipidogram**, **SCORE2**, and **programme risk group**.

* Core form items - context (evaluation time), accompanying **chronic diseases**, **risk factors** (hypertension, dyslipidemia, diabetes, smoking, and more in the full form), **objective findings** (anthropometrics, blood pressure, investigations), **lipidogram**, **SCORE2**, and **programme risk group**.
* grp-migration-md-parity — optional items for each missing-concept row in the migration table that does not duplicate a core item (e.g. encounter, practitioner role, heart rate, BMI, glucose, HbA1c, creatinine, eGFR, alcohol, physical activity, nutrition, family CVD, referral, follow-up appointment, achievement narrative, additional chronic conditions).
* grp-ig-example-parity — short notes for already-covered examples (Patient, Practitioner, Organization, ECG, medications, diabetes duration), complementing QuestionnaireResponse.subject / author.

### FHIR artefacts

* [Questionnaire: CVD risk assessment (ESPBI form 1)](Questionnaire-questionnaire-cvd-risk-assessment.html) — canonical URL `https://hl7.lt/fhir/cvd/Questionnaire/cvd-risk-assessment`
* [QuestionnaireResponse: CVD risk assessment (example)](QuestionnaireResponse-questionnaireresponse-cvd-risk-assessment-example.html)

The Questionnaire uses **groups** (`item.type = group`) with stable **linkIds** (e.g. `grp-risk-factors`, `risk-factor-hypertension`) so production systems can extend items to **full** national field sets. The example response uses the same patient as other CVD examples.

## Form 2 — Prevention plan and achievement evaluation

**Scope (national table 10.10+):** plan creation time, **risk group**, **target LDL**, smoking cessation options, **physical activity** and **target BMI**, then **achievement** (evaluation time, achieved LDL, current BP, whether lipid and BP targets were met, comments).

### FHIR artefacts

* [Questionnaire: CVD prevention plan and achievement (ESPBI form 2)](Questionnaire-questionnaire-cvd-prevention-plan.html) — canonical URL `https://hl7.lt/fhir/cvd/Questionnaire/cvd-prevention-plan`
* [QuestionnaireResponse: CVD prevention plan and achievement (example)](QuestionnaireResponse-questionnaireresponse-cvd-prevention-plan-example.html)


## Mapping to profiles (FHIR R5)

The example Questionnaires use short **`item.text`** labels, optional canonical **`item.definition`** (StructureDefinition URI), and separate **[ConceptMap](https://hl7.org/fhir/conceptmap.html)** resources for **human-readable cross-IG narrative**: each row maps a **linkId** (from the CodeSystems below) to a **target profile code** with **`target.comment`** (StructureDefinition URLs, example instance ids, CI Build links).

* Source linkIds — risk assessment: [CodeSystem cvd-questionnaire-risk-assessment-item](CodeSystem-cvd-questionnaire-risk-assessment-item.html); prevention plan: [CodeSystem cvd-questionnaire-prevention-plan-item](CodeSystem-cvd-questionnaire-prevention-plan-item.html).
* Target profile registry: [CodeSystem cvd-questionnaire-mapping-target](CodeSystem-cvd-questionnaire-mapping-target.html).
* [ConceptMap cvd-risk-assessment-questionnaire](ConceptMap-conceptmap-cvd-risk-assessment-questionnaire.html) — canonical URL `https://hl7.lt/fhir/cvd/ConceptMap/cvd-risk-assessment-questionnaire`
* [ConceptMap cvd-prevention-plan-questionnaire](ConceptMap-conceptmap-cvd-prevention-plan-questionnaire.html) — canonical URL `https://hl7.lt/fhir/cvd/ConceptMap/cvd-prevention-plan-questionnaire`

Full description of R5 ConceptMap FSH, **`related-to`**, and alignment with **`input/fsh/migration/mapping.md`**: [Questionnaire mapping](questionnaire-mapping.html).

## When to use QuestionnaireResponse vs Observations

| Approach | Typical use |
|----------|-------------|
| **Questionnaire / QuestionnaireResponse** | Screen-faithful capture of **form answers**; rapid alignment with ESPBI UI; export of filled forms. |
| **Observation**, **Condition**, **CarePlan** (profiles in this IG) | **Clinical interoperability**, decision support, **SCORE2** and **risk group** semantics, **CarePlan** goals and activities, longitudinal follow-up. |

In practice, a system might **persist** QuestionnaireResponse for auditing and **derive** Observations and CarePlans for reporting and exchange. The **[CVD report](cvd-report.html)** model (DiagnosticReport + Composition) is **not** required to reference Questionnaire resources; the two approaches can coexist.

## Cross-IG examples (CI Build)

Published examples for measurements and behaviour often linked from programme assessment:

* [Blood pressure (VitalSigns)](https://build.fhir.org/ig/HL7LT/ig-lt-vitalsigns/Observation-observation-blood-pressure-example.html)
* [Body height (VitalSigns)](https://build.fhir.org/ig/HL7LT/ig-lt-vitalsigns/Observation-observation-body-height-example.html)
* [Tobacco use (Lifestyle)](https://build.fhir.org/ig/HL7LT/ig-lt-lifestyle/Observation-observation-tobacco-use-current-smoker-example.html)
* [Alcohol consumption (Lifestyle)](https://build.fhir.org/ig/HL7LT/ig-lt-lifestyle/Observation-observation-alcohol-consumption-no-example.html)

Continuous integration builds: [Lithuanian Vital Signs IG](https://build.fhir.org/ig/HL7LT/ig-lt-vitalsigns/), [Lithuanian Lifestyle IG](https://build.fhir.org/ig/HL7LT/ig-lt-lifestyle/).
