### Terminology

This page lists all ValueSets and CodeSystems defined in the Lithuanian CVD Implementation Guide.

#### CodeSystems

| CodeSystem | Description |
|---|---|
| [CvdQuestionnaireRiskAssessmentItem](CodeSystem-cvd-questionnaire-risk-assessment-item.html) | Stable linkId codes for all items in the CVD risk assessment Questionnaire (Form 1). Used as the source in the risk-assessment ConceptMap. |
| [CvdQuestionnairePreventionPlanItem](CodeSystem-cvd-questionnaire-prevention-plan-item.html) | Stable linkId codes for all items in the CVD prevention plan Questionnaire (Form 2). Used as the source in the prevention-plan ConceptMap. |
| [CvdQuestionnaireMappingTarget](CodeSystem-cvd-questionnaire-mapping-target.html) | Registry of target profile codes for questionnaire-to-profile ConceptMaps. Each code identifies the Lithuanian FHIR profile or cross-IG observation that a questionnaire item maps to. |

#### ValueSets

| ValueSet | Description |
|---|---|
| [CVDRiskGroupLtCvd](ValueSet-cvd-risk-group.html) | Programme risk group categories: small-to-medium, large, very large. Drives LDL targets and follow-up intervals. Used in `RiskGroupObservationLtCvd` and `RiskGroupExtLtCvd`. |
| [CVDRiskDegreeLtCvd](ValueSet-cvd-risk-degree.html) | Numeric SCORE2 risk degree classification (low, moderate, high, very high). Used in `CVDRiskAssessmentLtCvd`. |
| [CvdHighRiskConditionLtCvd](ValueSet-cvd-high-risk-condition.html) | ICD-10 codes for accompanying high-risk chronic conditions (e.g. heart failure I50, prior MI I21–I22) that automatically elevate programme risk group. Used in `CvdChronicConditionLtCvd`. |
| [RiskFactorTypeLtCvd](ValueSet-risk-factor-type.html) | SNOMED CT codes identifying programme risk factor types: hypertension, dyslipidemia, diabetes, possible familial hypercholesterolemia, and others. Used in `RiskFactorStatusLtCvd`. |
| [CvdCompositionCodeVS](ValueSet-cvd-composition-code.html) | Allowed LOINC document type codes for CVD programme compositions: `83539-7` (risk assessment), `77442-2` (prevention plan), `78710-1` (progress note). Bound to `CvdCompositionLtCvd.type`. |
| [EkgResultInterpretationVS](ValueSet-ekg-result-interpretation.html) | SNOMED CT codes for ECG interpretation: `164854000` Electrocardiogram normal and `102594003` Electrocardiogram abnormal. Bound (required) to the `ekgResult` interpretation slice in `EKGLtCvd`. |
