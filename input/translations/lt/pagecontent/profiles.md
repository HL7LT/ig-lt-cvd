### Profiliai

Šiame puslapyje pateikiami visi Lietuvos ŠKL įgyvendinimo vadove apibrėžti `StructureDefinition` profiliai ir plėtiniai. Šie profiliai skirti širdies ir kraujagyslių ligų patikros ir prevencijos programai palaikyti — nuo pirminio rizikos vertinimo ir laboratorinių tyrimų iki prevencijos planavimo, EKG interpretavimo ir pasiekimų vertinimo.

#### Ataskaitos ir kompozicijos profiliai

| Profilis | Aprašas |
|---|---|
| [CvdReportLtCvd](StructureDefinition-cvd-report-lt-cvd.html) | Pagrindinis ŠKL programos dokumento `DiagnosticReport` išteklius. Jis susieja `CvdComposition` su visais struktūrizuotais `Observation` rezultatais (SCORE2, rizikos grupė, EKG, stebėsenos duomenys). Modeliuotas pagal vaizdinės diagnostikos ataskaitos principą. |
| [CvdCompositionLtCvd](StructureDefinition-cvd-composition-lt-cvd.html) | Sujungta trijų skyrių kompozicija visam ŠKL prevencijos programos dokumentui (rizikos vertinimas + prevencijos planas + pasiekimų vertinimas). Atskirų dokumento dalių aprašymui naudokite toliau pateiktus specializuotus profilius. |
| [CvdRiskAssessmentCompositionLtCvd](StructureDefinition-cvd-risk-assessment-composition-lt-cvd.html) | ŠKL rizikos vertinimo dokumento kompozicija (DSTU1 SKL01 atitikmuo). Fiksuotas tipas: `LOINC#83539-7` — kardiologinis rizikos vertinimo ir patikros įrašas. |
| [CvdPreventionPlanCompositionLtCvd](StructureDefinition-cvd-prevention-plan-composition-lt-cvd.html) | ŠKL prevencijos priemonių plano dokumento kompozicija (DSTU1 SKL02 atitikmuo). Fiksuotas tipas: `LOINC#77442-2` — kardiologinis priežiūros plano įrašas. |
| [CvdAchievementCompositionLtCvd](StructureDefinition-cvd-achievement-composition-lt-cvd.html) | ŠKL pasiekimų vertinimo dokumento kompozicija (DSTU1 SKL03 atitikmuo). Fiksuotas tipas: `LOINC#78710-1` — kardiologinis eigos įrašas. |

#### Rizikos vertinimo profiliai

| Profilis | Aprašas |
|---|---|
| [CVDRiskAssessmentLtCvd](StructureDefinition-cvd-risk-assessment-lt-cvd.html) | `Observation` išteklius, skirtas SCORE2 širdies ir kraujagyslių rizikos įverčiui. Jame fiksuojama apskaičiuota procentinė rizika, taip pat komponentais nurodoma amžiaus grupė ir rizikos kategorija. |
| [RiskGroupObservationLtCvd](StructureDefinition-risk-group-observation-lt-cvd.html) | Programos rizikos grupės klasifikacija (maža–vidutinė, didelė, labai didelė). Pagal ją nustatomi MTL tikslai ir tolesnės stebėsenos intervalai. |
| [RiskFactorStatusLtCvd](StructureDefinition-risk-factor-status-lt-cvd.html) | Bendrasis rizikos veiksnio būsenos `Observation` išteklius (nėra / yra negydomas / yra gydomas), taikomas hipertenzijai, dislipidemijai, cukriniam diabetui, šeiminei hipercholesterolemijai ir kitiems programoje numatytiems rizikos veiksniams. |
| [CvdChronicConditionLtCvd](StructureDefinition-cvd-chronic-condition-lt-cvd.html) | Gretutinė didelės rizikos lėtinė būklė (pvz., širdies nepakankamumas, anksčiau įvykęs miokardo infarktas), dėl kurios pacientas gali būti priskirtas aukštesnei programos rizikos grupei. |

#### Klinikinių matavimų profilis

| Profilis | Aprašas |
|---|---|
| [EKGLtCvd](StructureDefinition-ekg-lt-cvd.html) | 12 derivacijų elektrokardiogramos `Observation` išteklius su `SampledData` komponentais. Interpretacija apribota reikšmių rinkiniu `EkgResultInterpretationVS` (normali / patologinė pagal SNOMED CT). |

#### Prevencijos profilis

| Profilis | Aprašas |
|---|---|
| [CarePlanLtCvd](StructureDefinition-care-plan-lt-cvd.html) | Prevencijos `CarePlan` išteklius, kuriame fiksuojamos gyvensenos intervencijos (rūkymo nutraukimas, mityba, fizinis aktyvumas) ir struktūrizuoti tikslai (tikslinė MTL reikšmė, tikslinis AKS, tikslinis KMI, kūno svorio sumažinimas ≥5 %). Programos rizikos grupė nurodoma naudojant `RiskGroupExtLtCvd`. |

#### Plėtiniai

| Plėtinys | Aprašas |
|---|---|
| [RiskGroupExtLtCvd](StructureDefinition-risk-group-ext-lt-cvd.html) | Leidžia programos ŠKL rizikos grupės klasifikaciją tiesiogiai susieti su `CarePlan` ištekliumi, kad ją būtų galima panaudoti ir be susieto `RiskGroupObservation` nuskaitymo. |

#### Tarp-IG priklausomybės

ŠKL patikros procesas remiasi kituose Lietuvos FHIR IG apibrėžtais stebėjimo duomenimis:

- **[Vital Signs IG](https://build.fhir.org/ig/HL7LT/ig-lt-vitalsigns/)** — kūno ūgis, svoris, KMI, liemens apimtis (su nutukimo interpretacija), kraujospūdžio panelė, širdies ritmas
- **[Lifestyle IG](https://build.fhir.org/ig/HL7LT/ig-lt-lifestyle/)** — tabako vartojimas ir tipas, alkoholio vartojimas (AUDIT-C), fizinis aktyvumas, mityba, metabolinis sindromas, ŠKL ir diabeto šeiminė anamnezė
- **[Lab IG](https://build.fhir.org/ig/HL7LT/ig-lt-lab/)** — lipidograma (bendras cholesterolis, DTL, MTL, ne-DTL, trigliceridai), gliukozė, HbA1c, kreatininas, ŠFG, albumino ir kreatinino santykis