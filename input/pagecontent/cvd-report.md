# CVD programme report (DiagnosticReport + Composition)

This page describes how **one coherent programme record** for Lithuanian **CVD prevention and early diagnosis** can be represented using a **DiagnosticReport** linked to a **Composition**, following the same **document anchor** idea as **imaging** and **pathology** in other national IGs: the report lists structured **Observation** results; the composition groups **human-readable sections** and references to **Conditions**, **CarePlans**, and follow-up measurements.

## Roles of the resources

* **[CvdReportLtCvd](StructureDefinition-cvd-report-lt-cvd.html)** — `DiagnosticReport` specialised for the programme. It carries identifiers, status, effective time, author, and a **`result`** list of **Observation** resources that belong to this report (SCORE2, risk group, EKG, follow-up LDL and BP, etc.). It points to exactly one **[CvdCompositionLtCvd](StructureDefinition-cvd-composition-lt-cvd.html)** for the narrative document.
* **[CvdCompositionLtCvd](StructureDefinition-cvd-composition-lt-cvd.html)** — `Composition` with **three fixed sections**: **assessment** (questionnaire-aligned findings), **prevention plan** (typically a **CarePlan**), and **achievement evaluation** (follow-up observations). **Conditions** and **CarePlans** appear as **`section.entry`** references, not in `DiagnosticReport.result`, because the base diagnostic report profile constrains `result` to **Observation**.

This separation keeps **interpretation and measurements** in Observations while the **composition** supplies the **document structure** expected for exchange and rendering in ESPBI-style workflows.

## Examples in this IG

* [DiagnosticReport: CVD programme report (example)](DiagnosticReport-diagnosticreport-cvd-example.html)
* [Composition: CVD programme document (example)](Composition-composition-cvd-example.html)

Together they reference the same patient example as other CVD instances and align with the **[workflow](workflow.html)** steps for risk stratification, planning, and follow-up.

## Cross-IG measurements (published CI Build)

Raw **vital signs** and **lifestyle** data are usually profiled in **LT VitalSigns** and **LT Lifestyle**. For integration testing and documentation, published examples on the FHIR CI build include:

* Blood pressure — [Observation: Blood Pressure (example)](https://build.fhir.org/ig/HL7LT/ig-lt-vitalsigns/Observation-observation-blood-pressure-example.html)
* Body height — [Observation: Body Height (example)](https://build.fhir.org/ig/HL7LT/ig-lt-vitalsigns/Observation-observation-body-height-example.html)
* Tobacco use — [Observation: Smoking Status - Current Smoker (example)](https://build.fhir.org/ig/HL7LT/ig-lt-lifestyle/Observation-observation-tobacco-use-current-smoker-example.html)
* Alcohol — [Observation: Alcohol Consumption – No (example)](https://build.fhir.org/ig/HL7LT/ig-lt-lifestyle/Observation-observation-alcohol-consumption-no-example.html)

Laboratory results (lipids, glucose, creatinine, etc.) are typically expressed with **LT Lab** observation profiles; link those resources from the **assessment** section when building a full programme record.

## Relation to questionnaires

National **electronic forms** can also be captured as **[Questionnaire](https://hl7.org/fhir/questionnaire.html)** / **[QuestionnaireResponse](https://hl7.org/fhir/questionnaireresponse.html)** — see **[Questionnaires](cvd-questionnaire.html)**. That path is **orthogonal** to the report/composition bundle: implementers may store form answers in QuestionnaireResponse, derive Observations, or use both.
