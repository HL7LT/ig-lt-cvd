# ESPBI elektroninės formos kaip klausimynai

Lietuvos **ŠKL prevencijos ir ankstyvosios diagnostikos** programos dokumentacijoje ESPBI apibrėžiamos dvi pagrindinės **elektroninės formos**: **paciento ŠKL rizikos vertinimo klausimynas** (1 forma) ir **ŠKL prevencijos priemonių planas**, įskaitant vėlesnį **pasiekimų vertinimo** bloką (2 forma).

Šiame IG pateikiami **pavyzdiniai FHIR [Questionnaire](https://hl7.org/fhir/questionnaire.html)** aprašai ir atitinkami **[QuestionnaireResponse](https://hl7.org/fhir/questionnaireresponse.html)** pavyzdžiai, kad diegėjai galėtų suderinti formų duomenų fiksavimą su FHIR, **nepakeisdami** kitose vadovo dalyse naudojamų struktūrizuotų **Observation** ir **CarePlan** profilių.

Klausimynuose naudojamos **grupės** (`item.type = #group`) su stabiliais **linkId**, kad produkcinės sistemos galėtų išplėsti elementus iki pilno nacionalinio laukų rinkinio. Sąlyginiai poelementiai naudoja `enableWhen` logiką.

---

## 1 forma — ŠKL rizikos vertinimo klausimynas

**FHIR artefaktai:**

* [Questionnaire: CVD risk assessment (ESPBI form 1)](Questionnaire-questionnaire-cvd-risk-assessment.html) — kanoninis URL `https://hl7.lt/fhir/cvd/Questionnaire/cvd-risk-assessment`
* [QuestionnaireResponse: CVD risk assessment (example)](QuestionnaireResponse-questionnaireresponse-cvd-risk-assessment-example.html)

### Grupė: Kontekstas

| linkId | Etiketė | Tipas | Privaloma | Siejama su |
|--------|---------|-------|-----------|------------|
| `evaluation-datetime` | Vertinimo data ir laikas | dateTime | taip | [CVDRiskAssessmentLtCvd](StructureDefinition-cvd-risk-assessment-lt-cvd.html) |

### Grupė: Gretutinės lėtinės ligos

| linkId | Etiketė | Tipas | Privaloma | Siejama su |
|--------|---------|-------|-----------|------------|
| `chronic-condition-summary` | Reikšmingos lėtinės ligos | text | — | [CvdChronicConditionLtCvd](StructureDefinition-cvd-chronic-condition-lt-cvd.html) |

### Grupė: Rizikos veiksniai

| linkId | Etiketė | Tipas | Privaloma | Siejama su |
|--------|---------|-------|-----------|------------|
| `risk-factor-hypertension` | Arterinė hipertenzija | coding | taip | [RiskFactorStatusLtCvd](StructureDefinition-risk-factor-status-lt-cvd.html) |
| `risk-factor-dyslipidemia` | Dislipidemija | coding | taip | [RiskFactorStatusLtCvd](StructureDefinition-risk-factor-status-lt-cvd.html) |
| `risk-factor-diabetes` | Cukrinis diabetas | coding | taip | [RiskFactorStatusLtCvd](StructureDefinition-risk-factor-status-lt-cvd.html) |
| `risk-factor-glucose-tolerance` | Sutrikusi gliukozės tolerancija / sutrikusi gliukozė nevalgius | coding | taip | [RiskFactorStatusLtCvd](StructureDefinition-risk-factor-status-lt-cvd.html) |
| `risk-factor-familial-hypercholesterolemia` | Šeiminė hipercholesterolemija | coding | taip | [RiskFactorStatusLtCvd](StructureDefinition-risk-factor-status-lt-cvd.html) |
| `risk-factor-smoking` | Rūkymas | coding | taip | TobaccoUseLtLifestyle (Lifestyle IG) |
| ↳ `smoking-duration-years` | Rūkymo trukmė (metais) | decimal | — | TobaccoUseDurationLtLifestyle — rodoma, kai *Rūko* |
| ↳ `smoking-type` | Rūkymo forma | coding (kartotinis) | — | TobaccoTypeUsedLtLifestyle — rodoma, kai *Rūko* |
| `risk-factor-physical-activity` | Fizinis aktyvumas | coding | taip | PhysicalActivityLtLifestyle (Lifestyle IG) |
| `risk-factor-nutrition` | Mityba | coding | taip | NutritionLtLifestyle (Lifestyle IG) |
| `risk-factor-alcohol` | Alkoholio vartojimas | coding | taip | AlcoholConsumptionLtLifestyle (Lifestyle IG) |
| ↳ `audit-c-score` | AUDIT / AUDIT-C testo rezultatas | decimal | — | AuditCLtLifestyle — rodoma, kai *Alkoholis: Taip* |
| `risk-factor-family-cvd` | Ankstyvų ŠKL ar ankstyvos širdinės mirties šeiminė anamnezė | coding | taip | FamilyHistoryCvdLtLifestyle (Lifestyle IG) |
| `risk-factor-family-diabetes` | Cukrinio diabeto šeiminė anamnezė | coding | taip | FamilyHistoryDiabetesLtLifestyle (Lifestyle IG) |

Atsakymų parinktys rizikos veiksnių elementams: *Ne* / *Yra, negydomas* / *Yra, gydomas* (hipertenzija, dislipidemija, cukrinis diabetas, sutrikusi gliukozės tolerancija); *Ne* / *Yra* (šeiminė hipercholesterolemija); *Nerūko* / *Rūko* / *Rūkė anksčiau* (rūkymas); *Pakankamas* / *Nepakankamas* (fizinis aktyvumas); *Subalansuota* / *Nesubalansuota* (mityba); *Ne* / *Taip* / *Nežinoma* (alkoholio vartojimas, šeiminės anamnezės elementai).

### Grupė: Objektyvi būklė ir tyrimai

| linkId | Etiketė | Tipas | Privaloma | Siejama su |
|--------|---------|-------|-----------|------------|
| `height-cm` | Ūgis (cm) | decimal | taip | BodyHeightLtVitalSigns (VitalSigns IG) |
| `weight-kg` | Svoris (kg) | decimal | taip | BodyWeightLtVitalSigns (VitalSigns IG) |
| `waist-cm` | Liemens apimtis (cm) | decimal | taip | WaistCircumferenceLtVitalSigns (VitalSigns IG) |
| `bp-systolic` | Sistolinis kraujospūdis (mmHg) | decimal | taip | BloodPressurePanelLtVitalSigns (VitalSigns IG) |
| `bp-diastolic` | Diastolinis kraujospūdis (mmHg) | decimal | taip | BloodPressurePanelLtVitalSigns (VitalSigns IG) |
| `heart-rate` | Širdies susitraukimų dažnis (k./min.) | decimal | taip | HeartRateLtVitalSigns (VitalSigns IG) |
| `bmi-calculated` | KMI (kg/m², apskaičiuojamas automatiškai) | decimal | taip | BmiLtVitalSigns (VitalSigns IG) |
| `abdominal-obesity` | Pilvinis nutukimas (vyrams ≥102 cm, moterims ≥88 cm) | coding | taip | WaistCircumferenceLtVitalSigns — nutukimo kodui naudoti `interpretation` |
| `obesity-bmi` | Antsvoris / nutukimas (KMI ≥25) | coding | taip | BmiLtVitalSigns (VitalSigns IG) |

### Grupė: Lipidograma

| linkId | Etiketė | Tipas | Privaloma | Siejama su |
|--------|---------|-------|-----------|------------|
| `lipid-tc` | Bendras cholesterolis (mmol/l) | decimal | taip | TotalCholesterolLabLt (Lab IG) |
| `lipid-hdl` | DTL cholesterolis (mmol/l) | decimal | taip | CholesterolHdlLabLt (Lab IG) |
| `lipid-non-hdl` | ne-DTL cholesterolis (mmol/l) | decimal | taip | CholesterolNonHdlLabLt (Lab IG) |
| `lipid-ldl` | MTL cholesterolis (mmol/l) | decimal | taip | CholesterolLdlLabLt (Lab IG) |
| `lipid-tg` | Trigliceridai (mmol/l) | decimal | taip | TriglyceridesLabLt (Lab IG) |

### Grupė: Rizikos įvertinimas ir grupė

| linkId | Etiketė | Tipas | Privaloma | Siejama su |
|--------|---------|-------|-----------|------------|
| `score2-percent` | SCORE2 širdies ir kraujagyslių rizika (%) | decimal | — | [CVDRiskAssessmentLtCvd](StructureDefinition-cvd-risk-assessment-lt-cvd.html) |
| `metabolic-syndrome` | Metabolinis sindromas (≥3 iš 5 NCEP ATP III kriterijų) | coding | taip | MetabolicSyndromeLtLifestyle (Lifestyle IG) |
| `risk-group-cvd` | Širdies ir kraujagyslių ligų rizikos grupė | coding | taip | [RiskGroupObservationLtCvd](StructureDefinition-risk-group-observation-lt-cvd.html) |
| `albumin-creatinine-ratio` | Albumino ir kreatinino santykis (sergant cukriniu diabetu) | decimal | — | AcrLabLt (Lab IG) |

### Grupė: Išplėstinis paritetinis sąrašas — migracijos atvaizdavimas

Neprivalomi elementai, apimantys laukus, esančius DSTU1 migracijos atvaizdavimo lentelėje, bet nedubliuojamus pagrindinėse grupėse. Visi jie žymimi `required = true` tais atvejais, kai programoje atitinkama reikšmė yra privaloma.

| linkId | Etiketė | Privaloma | Siejama su |
|--------|---------|-----------|------------|
| `mig-encounter` | Vizitas (vizito ID / kontekstas) | — | EncounterLt (Base IG) |
| `mig-practitioner-role` | PractitionerRole (darbovietė / specialistas) | — | PractitionerRoleLt (Base IG) |
| `mig-heart-rate` | Širdies susitraukimų dažnis (k./min.) | — | HeartRateLtVitalSigns |
| `mig-bmi` | KMI (kg/m²) | — | BmiLtVitalSigns |
| `mig-glucose-fasting` | Gliukozė nevalgius (mmol/l) | taip | GlucoseVenousLabLt (Lab IG) |
| `mig-hba1c` | HbA1c (%) | taip | Hba1cLabLt (Lab IG) |
| `mig-creatinine` | Kreatininas | taip | CreatinineTestLabLt (Lab IG) |
| `mig-egfr` | eGFR | taip | EgfrLabLt (Lab IG) |
| `mig-alcohol` | Alkoholio vartojimas (apibendrintai) | — | AlcoholConsumptionLtLifestyle |
| `mig-physical-activity` | Fizinis aktyvumas (apibendrintai) | — | PhysicalActivityLtLifestyle |
| `mig-nutrition` | Mitybos įpročiai / mityba | — | NutritionLtLifestyle |
| `mig-family-cvd` | Šeiminė ŠKL anamnezė | — | FamilyHistoryCvdLtLifestyle |
| `mig-referral` | Siuntimas (kardiologo konsultacijai / paslaugai) | — | ServiceRequestLt (Base IG) |
| `mig-follow-up-appointment` | Pakartotinis vizitas (Appointment) | — | AppointmentLt (Base IG) |
| `mig-achievement-round` | Pasiekimų vertinimas (naratyvinis aprašas) | — | ObservationLt (Base IG) |
| `mig-chronic-additional` | Papildomos lėtinės ligos | — | [CvdChronicConditionLtCvd](StructureDefinition-cvd-chronic-condition-lt-cvd.html) |

---

## 2 forma — Prevencijos planas ir pasiekimų vertinimas

**FHIR artefaktai:**

* [Questionnaire: CVD prevention plan and achievement (ESPBI form 2)](Questionnaire-questionnaire-cvd-prevention-plan.html) — kanoninis URL `https://hl7.lt/fhir/cvd/Questionnaire/cvd-prevention-plan`
* [QuestionnaireResponse: CVD prevention plan and achievement (example)](QuestionnaireResponse-questionnaireresponse-cvd-prevention-plan-example.html)

### Grupė: Planas

| linkId | Etiketė | Tipas | Privaloma | Siejama su |
|--------|---------|-------|-----------|------------|
| `plan-created-datetime` | Plano sudarymo data ir laikas | dateTime | taip | [CarePlanLtCvd](StructureDefinition-care-plan-lt-cvd.html) |
| `plan-risk-group` | Širdies ir kraujagyslių ligų rizikos grupė (plane) | coding | taip | [RiskGroupExtLtCvd](StructureDefinition-risk-group-ext-lt-cvd.html) |
| `plan-target-ldl` | Tikslinė MTL cholesterolio reikšmė | coding | taip | [CarePlanLtCvd](StructureDefinition-care-plan-lt-cvd.html) — parinktys: <2,6 / <1,8 / <1,4 mmol/l |
| `plan-target-bp` | Tikslinis kraujospūdis: 120–129/<80 mmHg | **display** | — | [CarePlanLtCvd](StructureDefinition-care-plan-lt-cvd.html) |
| `plan-smoking-cessation` | Rūkymo nutraukimas (intervencijos) | coding (kartotinis) | — | [CarePlanLtCvd](StructureDefinition-care-plan-lt-cvd.html) — *Farmakologinės priemonės* / *Elgsenos keitimo priemonės* |

### Grupė: Gyvensena ir svoris

| linkId | Etiketė | Tipas | Privaloma | Siejama su |
|--------|---------|-------|-----------|------------|
| `plan-physical-activity` | Fizinio aktyvumo planas | coding | — | PhysicalActivityLtLifestyle (Lifestyle IG) |
| `plan-target-bmi` | Tikslinis KMI (kg/m²) | decimal | taip | BmiLtVitalSigns (VitalSigns IG) |
| `info-healthy-nutrition` | *Sveika mityba — rekomenduojama Viduržemio jūros dieta; mažinti druskos, sočiųjų riebalų ir pridėtinio cukraus vartojimą* | **display** | — | — |
| `info-healthy-weight` | *Sveikas kūno svoris — tikslinis KMI < 25 kg/m²; liemens apimtis vyrams < 94 cm, moterims < 80 cm* | **display** | — | — |
| `info-regular-medication` | *Reguliarus vaistų vartojimas — visus paskirtus vaistus (statinus, antihipertenzinius vaistus) vartoti reguliariai ir taip, kaip nurodyta* | **display** | — | — |

### Grupė: Pasiekimų vertinimas

| linkId | Etiketė | Tipas | Privaloma | Siejama su |
|--------|---------|-------|-----------|------------|
| `achievement-datetime` | Pasiekimų vertinimo data ir laikas | dateTime | — | ObservationLt (Base IG) |
| `achievement-ldl-mmol` | Pasiekta MTL cholesterolio reikšmė (mmol/l) | decimal | — | CholesterolLdlLabLt (Lab IG) |
| `achievement-ldl-target-met` | Ar pasiekta tikslinė MTL cholesterolio reikšmė? | boolean | — | [CarePlanLtCvd](StructureDefinition-care-plan-lt-cvd.html) |
| `achievement-bp-systolic` | Dabartinis sistolinis kraujospūdis (mmHg) | decimal | — | BloodPressurePanelLtVitalSigns |
| `achievement-bp-diastolic` | Dabartinis diastolinis kraujospūdis (mmHg) | decimal | — | BloodPressurePanelLtVitalSigns |
| `achievement-bp-target-met` | Ar pasiektas tikslinis AKS? | boolean | — | [CarePlanLtCvd](StructureDefinition-care-plan-lt-cvd.html) |
| `achievement-smoking-quit` | Ar pavyko mesti rūkyti? | boolean | — | TobaccoUseLtLifestyle (Lifestyle IG) |
| `achievement-height-cm` | Ūgis (cm) | decimal | taip | BodyHeightLtVitalSigns (VitalSigns IG) |
| `achievement-weight-kg` | Svoris (kg) | decimal | taip | BodyWeightLtVitalSigns (VitalSigns IG) |
| `achievement-bmi` | Pasiektas KMI (kg/m², apskaičiuojamas automatiškai) | decimal | taip | BmiLtVitalSigns (VitalSigns IG) |
| `achievement-comments` | Pasiekimų vertintojo komentarai | text | — | ObservationLt (Base IG) |

---

## Siejimas su profiliais (FHIR R5)

Klausimynuose kiekvienam elementui gali būti naudojamas neprivalomas kanoninis **`item.definition`** (StructureDefinition URI), o išsamiam tarp-IG aprašymui pateikiami atskiri **[ConceptMap](https://hl7.org/fhir/conceptmap.html)** ištekliai: kiekviena eilutė susieja **linkId** su **tikslinio profilio kodu**, naudodama `target.comment` (StructureDefinition URL, pavyzdinių egzempliorių ID, CI Build nuorodos).

* Šaltinio `linkId` registras — rizikos vertinimas: [CodeSystem cvd-questionnaire-risk-assessment-item](CodeSystem-cvd-questionnaire-risk-assessment-item.html)
* Šaltinio `linkId` registras — prevencijos planas: [CodeSystem cvd-questionnaire-prevention-plan-item](CodeSystem-cvd-questionnaire-prevention-plan-item.html)
* Tikslinių profilių registras: [CodeSystem cvd-questionnaire-mapping-target](CodeSystem-cvd-questionnaire-mapping-target.html)
* [ConceptMap: cvd-risk-assessment-questionnaire](ConceptMap-conceptmap-cvd-risk-assessment-questionnaire.html) — kanoninis URL `https://hl7.lt/fhir/cvd/ConceptMap/cvd-risk-assessment-questionnaire`
* [ConceptMap: cvd-prevention-plan-questionnaire](ConceptMap-conceptmap-cvd-prevention-plan-questionnaire.html) — kanoninis URL `https://hl7.lt/fhir/cvd/ConceptMap/cvd-prevention-plan-questionnaire`

---

## Kada naudoti QuestionnaireResponse vietoj Observation

| Metodas | Tipinis naudojimas |
|----------|-------------|
| **Questionnaire / QuestionnaireResponse** | Tikslus formos atsakymų fiksavimas; spartus suderinimas su ESPBI naudotojo sąsaja; užpildytų formų eksportas. |
| **Observation**, **Condition**, **CarePlan** | **Klinikinis sąveikumas**, sprendimų palaikymas, SCORE2 ir rizikos grupės semantika, CarePlan tikslai ir veiklos, ilgalaikė stebėsena. |

Praktikoje sistema gali **saugoti** `QuestionnaireResponse` audito tikslais ir iš jo **generuoti** `Observation` bei `CarePlan` išteklius ataskaitoms ir duomenų mainams. **[ŠKL ataskaitos](cvd-report.html)** modelyje (DiagnosticReport + Composition) **nebūtina pateikti nuorodų į** `Questionnaire` išteklius; abu metodai gali būti naudojami kartu.

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
| Šeiminė ŠKL anamnezė | [Observation: Family History CVD – Positive](https://build.fhir.org/ig/HL7LT/ig-lt-lifestyle/Observation-observation-family-history-cvd-positive-example.html) |

Nuolatinės integracijos versijos: [LT VitalSigns IG](https://build.fhir.org/ig/HL7LT/ig-lt-vitalsigns/) · [LT Lifestyle IG](https://build.fhir.org/ig/HL7LT/ig-lt-lifestyle/) · [LT Lab IG](https://build.fhir.org/ig/HL7LT/ig-lt-lab/)