### Pavyzdžiai

Šiame puslapyje pateikiami visi Lietuvos ŠKL įgyvendinimo vadovo pavyzdiniai egzemplioriai, sugrupuoti pagal kategorijas. Klausimynų ir atsakymų į juos pavyzdžiai pateikiami puslapyje [Klausimynai](questionnaires.html), o apie DiagnosticReport + Composition modelį skaitykite puslapyje [ŠKL ataskaita](cvd-report.html).

#### Ataskaitos ir kompozicijos pavyzdžiai

| Egzempliorius | Profilis | Aprašas |
|---|---|---|
| [diagnosticreport-cvd-example](DiagnosticReport-diagnosticreport-cvd-example.html) | CvdReportLtCvd | ŠKL programos DiagnosticReport, susietas su kompozicija ir pateikiantis rizikos vertinimo, rizikos grupės, EKG bei stebėsenos Observation išteklius. |
| [composition-cvd-example](Composition-composition-cvd-example.html) | CvdCompositionLtCvd | Visa trijų skyrių ŠKL programos kompozicija: vertinimas, prevencijos planas ir pasiekimų vertinimas. |

#### SCORE2 ir rizikos grupės pavyzdžiai

| Egzempliorius | Profilis | Aprašas |
|---|---|---|
| [observation-cvd-risk-assessment-example](Observation-observation-cvd-risk-assessment-example.html) | CVDRiskAssessmentLtCvd | SCORE2 širdies ir kraujagyslių rizikos įvertis — 24 % (didelės rizikos amžiaus grupė). |
| [observation-risk-group-high-example](Observation-observation-risk-group-high-example.html) | RiskGroupObservationLtCvd | Programos rizikos grupės priskyrimas: didelė rizika. |

#### Rizikos veiksnių pavyzdžiai

| Egzempliorius | Profilis | Aprašas |
|---|---|---|
| [observation-hypertension-negligible-example](Observation-observation-hypertension-negligible-example.html) | RiskFactorStatusLtCvd | Arterinė hipertenzija: nustatyta, gydoma. |
| [observation-dyslipidemia-treated-example](Observation-observation-dyslipidemia-treated-example.html) | RiskFactorStatusLtCvd | Dislipidemija: nustatyta, gydoma. |
| [observation-diabetes-untreated-example](Observation-observation-diabetes-untreated-example.html) | RiskFactorStatusLtCvd | Cukrinis diabetas: nustatytas, negydomas. |
| [observation-impaired-glucose-tolerance-example](Observation-observation-impaired-glucose-tolerance-example.html) | RiskFactorStatusLtCvd | Gliukozės tolerancijos sutrikimas: nustatytas. |
| [observation-diabetes-duration-gt10-example](Observation-observation-diabetes-duration-gt10-example.html) | RiskFactorStatusLtCvd | Cukrinio diabeto trukmė — daugiau kaip 10 metų. |

#### Lėtinės būklės pavyzdys

| Egzempliorius | Profilis | Aprašas |
|---|---|---|
| [condition-cvd-heart-failure-example](Condition-condition-cvd-heart-failure-example.html) | CvdChronicConditionLtCvd | Gretutinė lėtinė būklė: širdies nepakankamumas (TLK-10 I50). |

#### EKG pavyzdys

| Egzempliorius | Profilis | Aprašas |
|---|---|---|
| [observation-ekg-normal-example](Observation-observation-ekg-normal-example.html) | EKGLtCvd | Normali 12 derivacijų EKG su `SampledData` komponentu ir normalios interpretacijos kodu (SNOMED CT `164854000`). |

#### CarePlan ir Goal pavyzdžiai

| Egzempliorius | Profilis | Aprašas |
|---|---|---|
| [care-plan-cvd-screening-example](CarePlan-care-plan-cvd-screening-example.html) | CarePlanLtCvd | ŠKL prevencijos planas su rizikos grupės plėtiniu, įtrauktais MTL, AKS ir KMI tikslais bei gyvensenos veiklomis. |
| [example-cvd-screening-plan-external](CarePlan-example-cvd-screening-plan-external.html) | CarePlan | Alternatyvus ŠKL planas, naudojantis išorinėmis (ne `contained`) Goal nuorodomis. |
| [example-goal-ldl](Goal-example-goal-ldl.html) | Goal | Tikslinė MTL cholesterolio reikšmė: <1,8 mmol/l (labai didelės rizikos grupė). |
| [example-goal-bp](Goal-example-goal-bp.html) | Goal | Tikslinė kraujospūdžio reikšmė: 120–129/<80 mmHg. |
| [example-goal-bmi](Goal-example-goal-bmi.html) | Goal | Tikslinė KMI reikšmė: <25 kg/m². |

#### Pasiekimų vertinimo stebėsenos Observation pavyzdžiai

| Egzempliorius | Profilis | Aprašas |
|---|---|---|
| [observation-cvd-followup-ldl-example](Observation-observation-cvd-followup-ldl-example.html) | ObservationLt | Stebėsenos MTL cholesterolio matavimas pasiekimų vertinimo metu. |
| [observation-cvd-followup-bp-example](Observation-observation-cvd-followup-bp-example.html) | ObservationLt | Stebėsenos kraujospūdžio matavimas pasiekimų vertinimo metu. |

#### Vaistų pavyzdys

| Egzempliorius | Profilis | Aprašas |
|---|---|---|
| [medication-statement-screening-example](MedicationStatement-medication-statement-screening-example.html) | MedicationStatementLtCvd | Esama gydymo statinais informacija, užfiksuota ŠKL rizikos vertinimo metu. |

#### Pagrindinio konteksto pavyzdžiai

| Egzempliorius | Profilis | Aprašas |
|---|---|---|
| [patient-male-example](Patient-patient-male-example.html) | PatientLt | Vyras pacientas, naudojamas visuose ŠKL pavyzdžiuose. |
| [practitioner-example](Practitioner-practitioner-example.html) | PractitionerLt | Šeimos gydytojas, atliekantis ŠKL patikrą. |
| [organization-example](Organization-organization-example.html) | OrganizationLt | Sveikatos priežiūros įstaiga (pirminės sveikatos priežiūros grandis). |

#### DSTU1 migracijos pavyzdžiai

Aplanke `migration/` pateikti egzemplioriai, migruoti iš ankstesnių DSTU1 ESPBI dokumentų (SKL01/02/03). Šie pavyzdžiai iliustruoja DSTU1→R5 atvaizdavimą ir yra priskirti dokumentams skirtiems kompozicijos profiliams:

| Egzempliorius | Profilis | DSTU1 dokumentas |
|---|---|---|
| [skl01-composition-1](Composition-skl01-composition-1.html) | CvdRiskAssessmentCompositionLtCvd | SKL01 — ŠKL rizikos vertinimas |
| [skl02-composition-1](Composition-skl02-composition-1.html) | CvdPreventionPlanCompositionLtCvd | SKL02 — ŠKL prevencijos priemonių planas |
| [skl03-composition-1](Composition-skl03-composition-1.html) | CvdAchievementCompositionLtCvd | SKL03 — ŠKL plano pasiekimų vertinimas |

#### Tarp-IG pavyzdžių nuorodos

ŠKL priežiūros procese naudojami matavimai, modeliuojami kituose Lietuvos FHIR IG:

**Gyvybinių rodiklių IG** ([https://build.fhir.org/ig/HL7LT/ig-lt-vitalsigns/](https://build.fhir.org/ig/HL7LT/ig-lt-vitalsigns/)):

| Pavyzdys | Aprašas |
|---|---|
| [observation-blood-pressure-example](https://build.fhir.org/ig/HL7LT/ig-lt-vitalsigns/Observation-observation-blood-pressure-example.html) | Kraujospūdžio panelė (sistolinis ir diastolinis). |
| [observation-body-height-example](https://build.fhir.org/ig/HL7LT/ig-lt-vitalsigns/Observation-observation-body-height-example.html) | Kūno ūgio matavimas. |
| [observation-body-weight-example](https://build.fhir.org/ig/HL7LT/ig-lt-vitalsigns/Observation-observation-body-weight-example.html) | Kūno svorio matavimas. |
| [observation-bmi-example](https://build.fhir.org/ig/HL7LT/ig-lt-vitalsigns/Observation-observation-bmi-example.html) | KMI apskaičiavimas. |
| [observation-waist-circumference-example](https://build.fhir.org/ig/HL7LT/ig-lt-vitalsigns/Observation-observation-waist-circumference-example.html) | Liemens apimties matavimas su nutukimo interpretacija. |

**Gyvensenos IG** ([https://build.fhir.org/ig/HL7LT/ig-lt-lifestyle/](https://build.fhir.org/ig/HL7LT/ig-lt-lifestyle/)):

| Pavyzdys | Aprašas |
|---|---|
| [observation-tobacco-use-current-smoker-example](https://build.fhir.org/ig/HL7LT/ig-lt-lifestyle/Observation-observation-tobacco-use-current-smoker-example.html) | Tabako vartojimo būsena (šiuo metu rūko). |
| [observation-alcohol-consumption-no-example](https://build.fhir.org/ig/HL7LT/ig-lt-lifestyle/Observation-observation-alcohol-consumption-no-example.html) | Alkoholio vartojimas (nevartoja). |
| [observation-physical-activity-below-example](https://build.fhir.org/ig/HL7LT/ig-lt-lifestyle/Observation-observation-physical-activity-below-example.html) | Nepakankamas fizinis aktyvumas. |
| [observation-family-history-cvd-positive-example](https://build.fhir.org/ig/HL7LT/ig-lt-lifestyle/Observation-observation-family-history-cvd-positive-example.html) | Teigiama šeiminė širdies ir kraujagyslių ligų anamnezė. |