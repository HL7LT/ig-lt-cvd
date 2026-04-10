# ESPBI elektroninės formos kaip klausimynai

Lietuvos **ŠKL prevencijos ir ankstyvos diagnostikos** programos dokumentacija apibrėžia dvi pagrindines **elektronines formas** ESPBI: **paciento ŠKL rizikos vertinimo anketa** (1 forma) ir **ŠKL prevencijos priemonių planas**, įskaitant vėlesnį **pasiekimų vertinimo** bloką (2 forma).

Šis IG teikia **iliustracinius FHIR [Questionnaire](https://hl7.org/fhir/questionnaire.html)** apibrėžimus ir atitinkamus **[QuestionnaireResponse](https://hl7.org/fhir/questionnaireresponse.html)** pavyzdžius, kad diegėjai galėtų suderinti formų fiksavimą su FHIR **nepakeičiant** struktūrizuotų **Observation** ir **CarePlan** profilių, naudojamų kitur vadove.

Klausimynai naudoja **grupes** (`item.type = #group`) su stabiliais **linkId**, kad gamybinės sistemos galėtų išplėsti punktus iki pilno nacionalinio laukų rinkinio. Sąlyginiai papunkčiai naudoja `enableWhen` logiką.

---

## 1 forma — ŠKL rizikos vertinimo anketa

**FHIR artefaktai:**

* [Questionnaire: CVD risk assessment (ESPBI form 1)](Questionnaire-questionnaire-cvd-risk-assessment.html) — kanoninė `https://hl7.lt/fhir/cvd/Questionnaire/cvd-risk-assessment`
* [QuestionnaireResponse: CVD risk assessment (example)](QuestionnaireResponse-questionnaireresponse-cvd-risk-assessment-example.html)

### Grupė: Kontekstas

| linkId | Etiketė | Tipas | Privaloma | Žemėlapis į |
|--------|---------|-------|-----------|-------------|
| `evaluation-datetime` | Vertinimo data ir laikas | dateTime | taip | [CVDRiskAssessmentLtCvd](StructureDefinition-cvd-risk-assessment-lt-cvd.html) |

### Grupė: Lydinčios lėtinės ligos

| linkId | Etiketė | Tipas | Privaloma | Žemėlapis į |
|--------|---------|-------|-----------|-------------|
| `chronic-condition-summary` | Aktualios lėtinės ligos | text | — | [CvdChronicConditionLtCvd](StructureDefinition-cvd-chronic-condition-lt-cvd.html) |

### Grupė: Rizikos veiksniai

| linkId | Etiketė | Tipas | Privaloma | Žemėlapis į |
|--------|---------|-------|-----------|-------------|
| `risk-factor-hypertension` | Arterinė hipertenzija | coding | taip | [RiskFactorStatusLtCvd](StructureDefinition-risk-factor-status-lt-cvd.html) |
| `risk-factor-dyslipidemia` | Dislipidemija | coding | taip | [RiskFactorStatusLtCvd](StructureDefinition-risk-factor-status-lt-cvd.html) |
| `risk-factor-diabetes` | Cukrinis diabetas | coding | taip | [RiskFactorStatusLtCvd](StructureDefinition-risk-factor-status-lt-cvd.html) |
| `risk-factor-glucose-tolerance` | Gliukozės tolerancija / gliukozės kiekio plazmoje nevalgius sutrikimas | coding | taip | [RiskFactorStatusLtCvd](StructureDefinition-risk-factor-status-lt-cvd.html) |
| `risk-factor-familial-hypercholesterolemia` | Šeiminė hipercholestrerolemija | coding | taip | [RiskFactorStatusLtCvd](StructureDefinition-risk-factor-status-lt-cvd.html) |
| `risk-factor-smoking` | Rūkymas | coding | taip | TobaccoUseLtLifestyle (Lifestyle IG) |
| ↳ `smoking-duration-years` | Rūkymo trukmė (metai) | decimal | — | TobaccoUseDurationLtLifestyle — rodoma kai *Rūko* |
| ↳ `smoking-type` | Rūkymo forma | coding (kartojasi) | — | TobaccoTypeUsedLtLifestyle — rodoma kai *Rūko* |
| `risk-factor-physical-activity` | Fizinis aktyvumas | coding | taip | PhysicalActivityLtLifestyle (Lifestyle IG) |
| `risk-factor-nutrition` | Mityba | coding | taip | NutritionLtLifestyle (Lifestyle IG) |
| `risk-factor-alcohol` | Alkoholio vartojimas | coding | taip | AlcoholConsumptionLtLifestyle (Lifestyle IG) |
| ↳ `audit-c-score` | AUDIT / AUDIT-C testo rezultatas | decimal | — | AuditCLtLifestyle — rodoma kai *Alkoholis: Taip* |
| `risk-factor-family-cvd` | Šeiminė ankstyvos ŠKL ar ankstyvos širdies mirties istorija | coding | taip | FamilyHistoryCvdLtLifestyle (Lifestyle IG) |
| `risk-factor-family-diabetes` | Šeiminė cukrinio diabeto istorija | coding | taip | FamilyHistoryDiabetesLtLifestyle (Lifestyle IG) |

Atsakymų parinktys rizikos veiksnių punktams: *Ne* / *Yra, negydomas* / *Yra, gydomas* (hipertenzija, dislipidemija, cukrinis diabetas, gliukozės tolerancija); *Ne* / *Yra* (šeiminė hipercholestrerolemija); *Nerūkė* / *Rūko* / *Rūkė anksčiau* (rūkymas); *Pakankamas* / *Nepakankamas* (fizinis aktyvumas); *Subalansuota* / *Nesubalansuota* (mityba); *Ne* / *Taip* / *Nežinoma* (alkoholis, šeiminės istorijos punktai).

### Grupė: Objektyvi būklė ir tyrimai

| linkId | Etiketė | Tipas | Privaloma | Žemėlapis į |
|--------|---------|-------|-----------|-------------|
| `height-cm` | Ūgis (cm) | decimal | taip | BodyHeightLtVitalSigns (VitalSigns IG) |
| `weight-kg` | Svoris (kg) | decimal | taip | BodyWeightLtVitalSigns (VitalSigns IG) |
| `waist-cm` | Juosmens apimtis (cm) | decimal | taip | WaistCircumferenceLtVitalSigns (VitalSigns IG) |
| `bp-systolic` | Sistolinis kraujospūdis (mmHg) | decimal | taip | BloodPressurePanelLtVitalSigns (VitalSigns IG) |
| `bp-diastolic` | Diastolinis kraujospūdis (mmHg) | decimal | taip | BloodPressurePanelLtVitalSigns (VitalSigns IG) |
| `heart-rate` | Širdies ritmas (k./min.) | decimal | taip | HeartRateLtVitalSigns (VitalSigns IG) |
| `bmi-calculated` | KMI (kg/m², automatiškai skaičiuojama) | decimal | taip | BmiLtVitalSigns (VitalSigns IG) |
| `abdominal-obesity` | Pilvo nutukimas (vyrai ≥102 cm, moterys ≥88 cm) | coding | taip | WaistCircumferenceLtVitalSigns — naudoti `interpretation` nutukimo kodui |
| `obesity-bmi` | Nutukimas (KMI ≥25) | coding | taip | BmiLtVitalSigns (VitalSigns IG) |

### Grupė: Lipidograma

| linkId | Etiketė | Tipas | Privaloma | Žemėlapis į |
|--------|---------|-------|-----------|-------------|
| `lipid-tc` | Bendras cholesterolis (mmol/l) | decimal | taip | TotalCholesterolLabLt (Lab IG) |
| `lipid-hdl` | LTL cholesterolis (mmol/l) | decimal | taip | CholesterolHdlLabLt (Lab IG) |
| `lipid-non-hdl` | Ne-LTL cholesterolis (mmol/l) | decimal | taip | CholesterolNonHdlLabLt (Lab IG) |
| `lipid-ldl` | MTL cholesterolis (mmol/l) | decimal | taip | CholesterolLdlLabLt (Lab IG) |
| `lipid-tg` | Trigliceridai (mmol/l) | decimal | taip | TriglyceridesLabLt (Lab IG) |

### Grupė: Rizikos įvertinimas ir grupė

| linkId | Etiketė | Tipas | Privaloma | Žemėlapis į |
|--------|---------|-------|-----------|-------------|
| `score2-percent` | SCORE2 širdies ir kraujagyslių rizika (%) | decimal | — | [CVDRiskAssessmentLtCvd](StructureDefinition-cvd-risk-assessment-lt-cvd.html) |
| `metabolic-syndrome` | Metabolinis sindromas (≥3 iš 5 NCEP ATP III kriterijų) | coding | taip | MetabolicSyndromeLtLifestyle (Lifestyle IG) |
| `risk-group-cvd` | Rizikos grupė širdies ir kraujagyslių ligoms | coding | taip | [RiskGroupObservationLtCvd](StructureDefinition-risk-group-observation-lt-cvd.html) |
| `albumin-creatinine-ratio` | Albumino/kreatinino santykis (diabeto pacientams) | decimal | — | AcrLabLt (Lab IG) |

### Grupė: Išplėstinis paritetinis sąrašas — migracijos atvaizdavimas

Neprivalomi punktai, apimantys laukus, esančius DSTU1 migracijos atvaizdavimo lentelėje, bet nepasikartojančius pagrindinėse grupėse. Visi yra `required = true`, kur programa reikalauja reikšmės.

| linkId | Etiketė | Privaloma | Žemėlapis į |
|--------|---------|-----------|-------------|
| `mig-encounter` | Vizitas (vizito id / kontekstas) | — | EncounterLt (Base IG) |
| `mig-practitioner-role` | PractitionerRole (darbo vieta / specialistas) | — | PractitionerRoleLt (Base IG) |
| `mig-heart-rate` | Širdies ritmas (k./min.) | — | HeartRateLtVitalSigns |
| `mig-bmi` | KMI (kg/m²) | — | BmiLtVitalSigns |
| `mig-glucose-fasting` | Gliukozė nevalgius (mmol/l) | taip | GlucoseVenousLabLt (Lab IG) |
| `mig-hba1c` | HbA1c (%) | taip | Hba1cLabLt (Lab IG) |
| `mig-creatinine` | Kreatininas | taip | CreatinineTestLabLt (Lab IG) |
| `mig-egfr` | ŠFG | taip | EgfrLabLt (Lab IG) |
| `mig-alcohol` | Alkoholio vartojimas (apibendrintai) | — | AlcoholConsumptionLtLifestyle |
| `mig-physical-activity` | Fizinis aktyvumas (apibendrintai) | — | PhysicalActivityLtLifestyle |
| `mig-nutrition` | Mitybos įpročiai / mityba | — | NutritionLtLifestyle |
| `mig-family-cvd` | Šeiminė ŠKL istorija | — | FamilyHistoryCvdLtLifestyle |
| `mig-referral` | Siuntimas (kardiologija / paslauga) | — | ServiceRequestLt (Base IG) |
| `mig-follow-up-appointment` | Pakartotinis vizitas (susitikimas) | — | AppointmentLt (Base IG) |
| `mig-achievement-round` | Pasiekimų vertinimas (aprašomasis) | — | ObservationLt (Base IG) |
| `mig-chronic-additional` | Papildomos lėtinės ligos | — | [CvdChronicConditionLtCvd](StructureDefinition-cvd-chronic-condition-lt-cvd.html) |

---

## 2 forma — Prevencijos planas ir pasiekimų vertinimas

**FHIR artefaktai:**

* [Questionnaire: CVD prevention plan and achievement (ESPBI form 2)](Questionnaire-questionnaire-cvd-prevention-plan.html) — kanoninė `https://hl7.lt/fhir/cvd/Questionnaire/cvd-prevention-plan`
* [QuestionnaireResponse: CVD prevention plan and achievement (example)](QuestionnaireResponse-questionnaireresponse-cvd-prevention-plan-example.html)

### Grupė: Planas

| linkId | Etiketė | Tipas | Privaloma | Žemėlapis į |
|--------|---------|-------|-----------|-------------|
| `plan-created-datetime` | Plano sukūrimo data ir laikas | dateTime | taip | [CarePlanLtCvd](StructureDefinition-care-plan-lt-cvd.html) |
| `plan-risk-group` | Rizikos grupė širdies ir kraujagyslių ligoms (plane) | coding | taip | [RiskGroupExtLtCvd](StructureDefinition-risk-group-ext-lt-cvd.html) |
| `plan-target-ldl` | Tikslinė MTL cholesterolio vertė | coding | taip | [CarePlanLtCvd](StructureDefinition-care-plan-lt-cvd.html) — parinktys: <2,6 / <1,8 / <1,4 mmol/l |
| `plan-target-bp` | Tikslinė kraujospūdžio vertė: 120–129/<80 mmHg | **display** | — | [CarePlanLtCvd](StructureDefinition-care-plan-lt-cvd.html) |
| `plan-smoking-cessation` | Metimas rūkyti (intervencijos) | coding (kartojasi) | — | [CarePlanLtCvd](StructureDefinition-care-plan-lt-cvd.html) — *Farmakologinė* / *Elgsenos keitimo priemonės* |

### Grupė: Gyvensena ir svoris

| linkId | Etiketė | Tipas | Privaloma | Žemėlapis į |
|--------|---------|-------|-----------|-------------|
| `plan-physical-activity` | Fizinio aktyvumo planas | coding | — | PhysicalActivityLtLifestyle (Lifestyle IG) |
| `plan-target-bmi` | Tikslinė KMI (kg/m²) | decimal | taip | BmiLtVitalSigns (VitalSigns IG) |
| `info-healthy-nutrition` | *Sveika mityba — rekomenduojama Viduržemio jūros dieta; mažinti druską, sočiuosius riebalus ir pridėtinį cukrų* | **display** | — | — |
| `info-healthy-weight` | *Sveikas svoris — tikslinė KMI < 25 kg/m²; juosmuo vyrams < 94 cm, moterims < 80 cm* | **display** | — | — |
| `info-regular-medication` | *Reguliarus vaistų vartojimas — nuolat ir taip, kaip nurodyta, vartoti visus paskirtus vaistus (statinus, antihipertenzinius)* | **display** | — | — |

### Grupė: Pasiekimų vertinimas

| linkId | Etiketė | Tipas | Privaloma | Žemėlapis į |
|--------|---------|-------|-----------|-------------|
| `achievement-datetime` | Pasiekimų vertinimo data ir laikas | dateTime | — | ObservationLt (Base IG) |
| `achievement-ldl-mmol` | Pasiektas MTL cholesterolis (mmol/l) | decimal | — | CholesterolLdlLabLt (Lab IG) |
| `achievement-ldl-target-met` | Ar pasiekta tikslinė MTL vertė? | boolean | — | [CarePlanLtCvd](StructureDefinition-care-plan-lt-cvd.html) |
| `achievement-bp-systolic` | Dabartinis sistolinis kraujospūdis (mmHg) | decimal | — | BloodPressurePanelLtVitalSigns |
| `achievement-bp-diastolic` | Dabartinis diastolinis kraujospūdis (mmHg) | decimal | — | BloodPressurePanelLtVitalSigns |
| `achievement-bp-target-met` | Ar pasiekta tikslinė AKS vertė? | boolean | — | [CarePlanLtCvd](StructureDefinition-care-plan-lt-cvd.html) |
| `achievement-smoking-quit` | Metimo rūkyti tikslas pasiektas | boolean | — | TobaccoUseLtLifestyle (Lifestyle IG) |
| `achievement-height-cm` | Ūgis (cm) | decimal | taip | BodyHeightLtVitalSigns (VitalSigns IG) |
| `achievement-weight-kg` | Svoris (kg) | decimal | taip | BodyWeightLtVitalSigns (VitalSigns IG) |
| `achievement-bmi` | Pasiekta KMI (kg/m², automatiškai skaičiuojama) | decimal | taip | BmiLtVitalSigns (VitalSigns IG) |
| `achievement-comments` | Pasiekimų vertintojo komentarai | text | — | ObservationLt (Base IG) |

---

## Atitikimas profiliams (FHIR R5)

Klausimynai naudoja neprivalomą kanoninį **`item.definition`** (StructureDefinition URI) kiekviename punkte ir atskirus **[ConceptMap](https://hl7.org/fhir/conceptmap.html)** resursus pilnam tarp-IG žmogui skaitomam aprašui: kiekviena eilutė žemėlapia **linkId** į **tikslinį profilio kodą** su `target.comment` (StructureDefinition URL, pavyzdinių egzempliorių id, CI Build nuorodos).

* Šaltinio linkId registras — rizikos vertinimas: [CodeSystem cvd-questionnaire-risk-assessment-item](CodeSystem-cvd-questionnaire-risk-assessment-item.html)
* Šaltinio linkId registras — prevencijos planas: [CodeSystem cvd-questionnaire-prevention-plan-item](CodeSystem-cvd-questionnaire-prevention-plan-item.html)
* Tikslinių profilių registras: [CodeSystem cvd-questionnaire-mapping-target](CodeSystem-cvd-questionnaire-mapping-target.html)
* [ConceptMap: cvd-risk-assessment-questionnaire](ConceptMap-conceptmap-cvd-risk-assessment-questionnaire.html) — kanoninė `https://hl7.lt/fhir/cvd/ConceptMap/cvd-risk-assessment-questionnaire`
* [ConceptMap: cvd-prevention-plan-questionnaire](ConceptMap-conceptmap-cvd-prevention-plan-questionnaire.html) — kanoninė `https://hl7.lt/fhir/cvd/ConceptMap/cvd-prevention-plan-questionnaire`

---

## Kada naudoti QuestionnaireResponse vietoj Observations

| Metodas | Tipinis naudojimas |
|----------|-------------|
| **Questionnaire / QuestionnaireResponse** | Tikslus formos atsakymų fiksavimas; spartus suderinimas su ESPBI sąsaja; užpildytų formų eksportas. |
| **Observation**, **Condition**, **CarePlan** | **Klinikinė sąveika**, sprendimų parama, SCORE2 ir rizikos grupės semantika, CarePlan tikslai ir veiklos, ilgalaikė stebėsena. |

Praktiškai sistema gali **išsaugoti** QuestionnaireResponse auditui ir **išvesti** Observations ir CarePlans ataskaitoms ir mainams. **[ŠKL ataskaita](cvd-report.html)** modelis (DiagnosticReport + Composition) **nebūtinai** turi nurodyti Questionnaire resursus; abu metodai gali koegzistuoti.

---

## Tarp-IG pavyzdžiai (CI Build)

| Matavimas | Nuoroda |
|---|---|
| Arterinis kraujospūdis | [Observation: Blood Pressure](https://build.fhir.org/ig/HL7LT/ig-lt-vitalsigns/Observation-observation-blood-pressure-example.html) |
| Kūno ūgis | [Observation: Body Height](https://build.fhir.org/ig/HL7LT/ig-lt-vitalsigns/Observation-observation-body-height-example.html) |
| Tabako vartojimas | [Observation: Smoking Status – Current Smoker](https://build.fhir.org/ig/HL7LT/ig-lt-lifestyle/Observation-observation-tobacco-use-current-smoker-example.html) |
| Alkoholio vartojimas | [Observation: Alcohol Consumption – No](https://build.fhir.org/ig/HL7LT/ig-lt-lifestyle/Observation-observation-alcohol-consumption-no-example.html) |
| Fizinis aktyvumas | [Observation: Physical Activity – Below Recommendation](https://build.fhir.org/ig/HL7LT/ig-lt-lifestyle/Observation-observation-physical-activity-below-example.html) |
| Mityba | [Observation: Nutrition – Balanced](https://build.fhir.org/ig/HL7LT/ig-lt-lifestyle/Observation-observation-nutrition-balanced-example.html) |
| Šeiminė ŠKL istorija | [Observation: Family History CVD – Positive](https://build.fhir.org/ig/HL7LT/ig-lt-lifestyle/Observation-observation-family-history-cvd-positive-example.html) |

Nuolatinės integracijos kūrimai: [LT gyvybiniai rodikliai IG](https://build.fhir.org/ig/HL7LT/ig-lt-vitalsigns/) · [LT gyvensenos IG](https://build.fhir.org/ig/HL7LT/ig-lt-lifestyle/) · [LT laboratorijos IG](https://build.fhir.org/ig/HL7LT/ig-lt-lab/)
