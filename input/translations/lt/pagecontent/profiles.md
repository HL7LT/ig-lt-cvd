### Profiliai

Šiame puslapyje pateikiami visi StructureDefinition profiliai ir plėtiniai, apibrėžti Lietuvos ŠKL diegimo vadove. Šie profiliai palaiko širdies ir kraujagyslių ligų atrankos ir prevencijos programą — nuo pradinio rizikos vertinimo ir laboratorinių tyrimų iki prevencijos planavimo, EKG interpretacijos ir pasiekimų vertinimo.

#### Ataskaitos ir kompozicijos profiliai

| Profilis | Aprašas |
|---|---|
| [CvdReportLtCvd](StructureDefinition-cvd-report-lt-cvd.html) | DiagnosticReport inkaras ŠKL programos dokumentui. Susieja CvdComposition su visais struktūrizuotais Observation rezultatais (SCORE2, rizikos grupė, EKG, stebėsena). Modeliuota pagal vaizdinės diagnostikos ataskaitos šabloną. |
| [CvdCompositionLtCvd](StructureDefinition-cvd-composition-lt-cvd.html) | Kombinuota trijų skyrių kompozicija visam ŠKL prevencijos programos dokumentui (rizikos vertinimas + prevencijos planas + pasiekimų vertinimas). Individualių skyrių naudokite žemiau esančius dokumentams skirtus profilius. |
| [CvdRiskAssessmentCompositionLtCvd](StructureDefinition-cvd-risk-assessment-composition-lt-cvd.html) | ŠKL rizikos vertinimo dokumento kompozicija (DSTU1 SKL01 atitikmuo). Fiksuotas tipas: `LOINC#83539-7` Kardiologinis rizikos vertinimo ir atrankos aprašas. |
| [CvdPreventionPlanCompositionLtCvd](StructureDefinition-cvd-prevention-plan-composition-lt-cvd.html) | ŠKL prevencijos priemonių plano dokumento kompozicija (DSTU1 SKL02 atitikmuo). Fiksuotas tipas: `LOINC#77442-2` Kardiologinis priežiūros plano aprašas. |
| [CvdAchievementCompositionLtCvd](StructureDefinition-cvd-achievement-composition-lt-cvd.html) | ŠKL pasiekimų vertinimo dokumento kompozicija (DSTU1 SKL03 atitikmuo). Fiksuotas tipas: `LOINC#78710-1` Kardiologinė pažangos pastaba. |

#### Rizikos vertinimo profiliai

| Profilis | Aprašas |
|---|---|
| [CVDRiskAssessmentLtCvd](StructureDefinition-cvd-risk-assessment-lt-cvd.html) | SCORE2 širdies ir kraujagyslių rizikos įvertinimo Observation. Fiksuoja apskaičiuotą procentinę riziką su komponento kodavimu pagal amžiaus grupę ir rizikos kategoriją. |
| [RiskGroupObservationLtCvd](StructureDefinition-risk-group-observation-lt-cvd.html) | Programos rizikos grupės klasifikacija (maža–vidutinė, didelė, labai didelė). Lemia MTL tikslus ir stebėsenos intervalų sprendimus. |
| [RiskFactorStatusLtCvd](StructureDefinition-risk-factor-status-lt-cvd.html) | Bendrasis rizikos veiksnio būsenos Observation (nėra / yra negydomas / yra gydomas) hipertenzijai, dislipidemijai, cukriniam diabetui, šeiminei hipercholestrerolemijiai ir kitiems programos sąrašo rizikos veiksniams. |
| [CvdChronicConditionLtCvd](StructureDefinition-cvd-chronic-condition-lt-cvd.html) | Lydinti didelės rizikos lėtinė liga (pvz., širdies nepakankamumas, ankstesnis miokardo infarktas), kuri padidina paciento programos rizikos grupę. |

#### Klinikinių matavimų profilis

| Profilis | Aprašas |
|---|---|
| [EKGLtCvd](StructureDefinition-ekg-lt-cvd.html) | 12 kanalų elektrokardiogramos Observation su SampledData komponentais. Interpretacija suskirstyta pagal `EkgResultInterpretationVS` (normali / patologiška pagal SNOMED CT). |

#### Prevencijos profilis

| Profilis | Aprašas |
|---|---|
| [CarePlanLtCvd](StructureDefinition-care-plan-lt-cvd.html) | Prevencijos priežiūros planas, fiksuojantis gyvensenos intervencijas (metimas rūkyti, mityba, fizinis aktyvumas) ir struktūrizuotus tikslus (tikslinė MTL, tikslinė AKS, tikslinė KMI, svorio mažinimas ≥5%). Neša programos rizikos grupę per `RiskGroupExtLtCvd`. |

#### Plėtiniai

| Plėtinys | Aprašas |
|---|---|
| [RiskGroupExtLtCvd](StructureDefinition-risk-group-ext-lt-cvd.html) | Priskiria programos ŠKL rizikos grupės klasifikaciją tiesiogiai CarePlan resursui, leidžiant paskesniam gavimui be susijusio RiskGroupObservation sprendimo. |

#### Tarp-IG priklausomybės

ŠKL atrankos kelias remiasi stebėjimais, apibrėžtais kituose Lietuvos FHIR IG:

- **[Gyvybiniai rodikliai IG](https://build.fhir.org/ig/HL7LT/ig-lt-vitalsigns/)** — kūno ūgis, svoris, KMI, juosmens apimtis (su nutukimo interpretacija), kraujospūdžio panelė, širdies ritmas
- **[Gyvensenos IG](https://build.fhir.org/ig/HL7LT/ig-lt-lifestyle/)** — tabako vartojimas ir tipas, alkoholio vartojimas (AUDIT-C), fizinis aktyvumas, mityba, metabolinis sindromas, ŠKL ir diabeto šeiminė istorija
- **[Laboratorijos IG](https://build.fhir.org/ig/HL7LT/ig-lt-lab/)** — lipidograma (bendras cholesterolis, LTL, MTL, ne-LTL, trigliceridai), gliukozė, HbA1c, kreatininas, ŠFG, albumino/kreatinino santykis
