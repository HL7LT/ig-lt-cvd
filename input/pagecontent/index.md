# Lithuanian Cardiovascular Disease Prevention Implementation Guide

## Introduction and purpose

This Implementation Guide specifies how to consistently represent and exchange structured clinical data for the **Lithuanian cardiovascular disease (CVD) prevention and early diagnosis programme** using the **HL7® FHIR® R5** standard.

It supports national **ESPBI** electronic forms and workflows for the **patient CVD risk assessment questionnaire** and the **CVD prevention measures plan** (including follow-up **achievement evaluation**). The guide enables:

* comparable, machine-readable **risk assessment** (e.g. SCORE2) and **programme risk group** assignment,
* structured capture of **CVD-relevant chronic conditions** and **risk factors**,
* interoperable **prevention plans** (targets, lifestyle measures, medication context),
* and **longitudinal** exchange as patients move between visits and institutions.

A concise clinical pathway from primary assessment through follow-up is described on the **[Workflow](workflow.html)** page.

## For programme and business stakeholders

Standardised FHIR resources allow **consistent reporting** to programme administrators, **coordination** between primary care and specialists, and **alignment** with national questionnaire and prevention-plan datasets. Implementers can validate payloads against published profiles and value sets, reducing ambiguity in integrations and registries.

## For clinicians

The profiles support **structured documentation** of cardiovascular risk (numeric estimate and category), **heart and vessel disease risk group** for programme eligibility and recall, **comorbidities** that affect CVD risk, **modifiable and non-modifiable risk factors**, **ECG** when used in assessment, and **individualised prevention plans** (e.g. LDL and blood pressure targets, smoking cessation, nutrition, physical activity, weight, and prescribed medication context). Data can be **reused** at follow-up visits for achievement review.

## Scope of this guide (profiles)

This IG defines the following artefacts. Each name links to its definition in this publication.

| Need in programme forms | Profile / extension |
| ----------------------- | ------------------- |
| SCORE2-style CVD risk (%) and qualitative risk degree | [CVDRiskAssessmentLtCvd](StructureDefinition-cvd-risk-assessment-lt-cvd.html) |
| Programme risk group for heart and vessel diseases | [RiskGroupObservationLtCvd](StructureDefinition-risk-group-observation-lt-cvd.html) |
| Risk group on CarePlan (extension) | [RiskGroupExtLtCvd](StructureDefinition-risk-group-ext-lt-cvd.html) |
| Accompanying chronic diseases (CVD programme list) | [CvdChronicConditionLtCvd](StructureDefinition-cvd-chronic-condition-lt-cvd.html) |
| Risk factors (structured status / count) | [RiskFactorStatusLtCvd](StructureDefinition-risk-factor-status-lt-cvd.html) |
| CVD prevention and screening care plan | [CarePlanLtCvd](StructureDefinition-care-plan-lt-cvd.html) |
| ECG finding in assessment context | [EKGLtCvd](StructureDefinition-ekg-lt-cvd.html) |

**Terminology** (value sets and code systems used by these profiles) is published under this guide and **tx.hl7.lt**; see the Artifacts index.

## Relationship to other Lithuanian IGs

Demographics, practitioner, organisation, and encounter patterns use **LT Base** profiles where applicable. **Vital signs** (e.g. blood pressure, weight, height, BMI), **laboratory results** (lipids, glucose, HbA1c), and **lifestyle observations** (smoking, alcohol, physical activity, diet) are modelled in **LT VitalSigns**, **LT Lab**, and **LT Lifestyle** respectively. This CVD IG focuses on **programme-specific** risk stratification, conditions, risk factors, plans, and ECG—not on redefining those base measurements.

## Why use this guide?

1. **Interoperability:** Same semantics for CVD questionnaire and prevention-plan data across EHRs and national systems.
2. **Data quality:** Required bindings and profiles improve completeness and comparability of programme data.
3. **Clinical utility:** Supports decision support, recall by risk group, and structured follow-up evaluation.

See **[Workflow](workflow.html)** for the end-to-end pathway. Use **Artifacts** for the full list of profiles, extensions, terminology, and examples.

### IP Statements
<!-- { // not yet supported by i18n in IG publisher: % include ip-statements.xhtml %} -->

### Contributors

| Name                                             | Role                          | Organization                                    |
| ------------------------------------------------ | ----------------------------- | ----------------------------------------------- |
| [Igor Bossenko](https://about.askigor.eu)     | Primary Author                | [HELEX](https://helex.health) |
| [Kati Laidus](https://www.linkedin.com/in/kati-laidus/) | Co-Author                 | [HELEX](https://helex.health)               |
| Martynas Bieliauskas                           | Reviewer                      | [LMB](https://lmb.lt)               |
