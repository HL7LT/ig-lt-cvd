# ESPBI elektroninės formos kaip klausimynai

Lietuvos **ŠKL prevencijos ir ankstyvos diagnostikos** programos dokumentacija apibrėžia dvi pagrindines **elektronines formas** ESPBI (žr. nacionalinę programos medžiagą): **paciento širdies ir kraujagyslių ligų rizikos vertinimo anketa** ir **ŠKL prevencijos priemonių planas** (įskaitant vėlesnį **pasiekimų vertinimo** bloką).

Šis IG teikia **iliustracinius FHIR [Questionnaire](https://hl7.org/fhir/questionnaire.html)** apibrėžimus ir atitinkamus **[QuestionnaireResponse](https://hl7.org/fhir/questionnaireresponse.html)** pavyzdžius, kad diegėjai galėtų suderinti formų fiksavimą su FHIR **nepakeičiant** struktūrizuotų **Observation** ir **CarePlan** profilių, naudojamų kitur vadove.

## 1 forma — Rizikos vertinimo anketa

**Apimtis (nacionalinės lentelės 10.5–10.9):** kontekstas (vertinimo laikas), lydinčios **lėtinės ligos**, **rizikos veiksniai** (hipertenzija, dislipidemija, cukrinis diabetas, rūkymas ir kt.), **objektyvūs radiniai** (antropometrija, kraujospūdis, tyrimai), **lipidograma**, **SCORE2** ir **programos rizikos grupė**.

* Pagrindiniai formos punktai — kontekstas (vertinimo laikas), lydinčios **lėtinės ligos**, **rizikos veiksniai** (hipertenzija, dislipidemija, cukrinis diabetas, rūkymas ir kiti pilnoje formoje), **objektyvūs radiniai** (antropometrija, kraujospūdis, tyrimai), **lipidograma**, **SCORE2** ir **programos rizikos grupė**.
* grp-migration-md-parity — neprivalomi punktai kiekvienai migracijų lentelės eilutei, kuri neatkartoja pagrindinio punkto (pvz., vizitas, specialisto vaidmuo, širdies ritmas, KMI, gliukozė, HbA1c, kreatininas, ŠFG, alkoholis, fizinis aktyvumas, mityba, šeiminė ŠKL istorija, siuntimas, pakartotinis vizitas, pasiekimų aprašas, papildomos lėtinės ligos).
* grp-ig-example-parity — trumpos pastabos jau padengtiems pavyzdžiams (Pacientas, Specialistas, Organizacija, EKG, vaistai, cukrinis diabetas ir jo trukmė), papildančios QuestionnaireResponse.subject / author.

### FHIR artefaktai

* [Questionnaire: CVD risk assessment (ESPBI form 1)](Questionnaire-questionnaire-cvd-risk-assessment.html) — kanoninė URL `https://hl7.lt/fhir/cvd/Questionnaire/cvd-risk-assessment`
* [QuestionnaireResponse: CVD risk assessment (example)](QuestionnaireResponse-questionnaireresponse-cvd-risk-assessment-example.html)

Klausimynas naudoja **grupes** (`item.type = group`) su stabiliais **linkId** (pvz., `grp-risk-factors`, `risk-factor-hypertension`), kad gamybinės sistemos galėtų išplėsti punktus iki **pilno** nacionalinio laukų rinkinio. Pavyzdinis atsakymas naudoja tą patį pacientą kaip ir kiti ŠKL pavyzdžiai.

## 2 forma — Prevencijos planas ir pasiekimų vertinimas

**Apimtis (nacionalinė lentelė 10.10+):** plano sukūrimo laikas, **rizikos grupė**, **tikslinė MTL**, metimo rūkyti parinktys, **fizinis aktyvumas** ir **tikslinė KMI**, tada **pasiekimai** (vertinimo laikas, pasiektas MTL, dabartinis kraujospūdis, ar lipidų ir kraujospūdžio tikslai pasiekti, komentarai).

### FHIR artefaktai

* [Questionnaire: CVD prevention plan and achievement (ESPBI form 2)](Questionnaire-questionnaire-cvd-prevention-plan.html) — kanoninė URL `https://hl7.lt/fhir/cvd/Questionnaire/cvd-prevention-plan`
* [QuestionnaireResponse: CVD prevention plan and achievement (example)](QuestionnaireResponse-questionnaireresponse-cvd-prevention-plan-example.html)


## Atitikimas profiliams (FHIR R5)

Klausimynų pavyzdžiai naudoja trumpas **`item.text`** etiketes, neprivalomą kanoninį **`item.definition`** (StructureDefinition URI) ir atskirus **[ConceptMap](https://hl7.org/fhir/conceptmap.html)** resursus **žmogui skaitomam tarp-IG aprašui**: kiekviena eilutė žemėlapia **linkId** (iš žemiau esančių CodeSystem) į **tikslinį profilio kodą** su **`target.comment`** (StructureDefinition URL, pavyzdinių egzempliorių id, CI Build nuorodos).

* Šaltinio linkId — rizikos vertinimas: [CodeSystem cvd-questionnaire-risk-assessment-item](CodeSystem-cvd-questionnaire-risk-assessment-item.html); prevencijos planas: [CodeSystem cvd-questionnaire-prevention-plan-item](CodeSystem-cvd-questionnaire-prevention-plan-item.html).
* Tikslinių profilių registras: [CodeSystem cvd-questionnaire-mapping-target](CodeSystem-cvd-questionnaire-mapping-target.html).
* [ConceptMap cvd-risk-assessment-questionnaire](ConceptMap-conceptmap-cvd-risk-assessment-questionnaire.html) — kanoninė URL `https://hl7.lt/fhir/cvd/ConceptMap/cvd-risk-assessment-questionnaire`
* [ConceptMap cvd-prevention-plan-questionnaire](ConceptMap-conceptmap-cvd-prevention-plan-questionnaire.html) — kanoninė URL `https://hl7.lt/fhir/cvd/ConceptMap/cvd-prevention-plan-questionnaire`

Pilnas R5 ConceptMap FSH, **`related-to`** ir suderinimo su **`input/fsh/migration/mapping.md`** aprašas: [Questionnaire mapping](questionnaire-mapping.html).

## Kada naudoti QuestionnaireResponse vietoj Observations

| Metodas | Tipinis naudojimas |
|----------|-------------|
| **Questionnaire / QuestionnaireResponse** | Tikslus formos atsakymų fiksavimas; spartus suderinimas su ESPBI sąsaja; užpildytų formų eksportas. |
| **Observation**, **Condition**, **CarePlan** (šio IG profiliai) | **Klinikinė sąveika**, sprendimų parama, **SCORE2** ir **rizikos grupės** semantika, **CarePlan** tikslai ir veiklos, ilgalaikė stebėsena. |

Praktiškai sistema gali **išsaugoti** QuestionnaireResponse auditui ir **išvesti** Observations ir CarePlans ataskaitoms ir mainams. **[ŠKL ataskaita](cvd-report.html)** modelis (DiagnosticReport + Composition) **nebūtinai** turi nurodyti Questionnaire resursus; abu metodai gali koegzistuoti.

## Tarp-IG pavyzdžiai (CI Build)

Su programos vertinimu dažnai susiję matavimų ir elgsenos pavyzdžiai:

* [Arterinis kraujospūdis (VitalSigns)](https://build.fhir.org/ig/HL7LT/ig-lt-vitalsigns/Observation-observation-blood-pressure-example.html)
* [Kūno ūgis (VitalSigns)](https://build.fhir.org/ig/HL7LT/ig-lt-vitalsigns/Observation-observation-body-height-example.html)
* [Tabako vartojimas (Lifestyle)](https://build.fhir.org/ig/HL7LT/ig-lt-lifestyle/Observation-observation-tobacco-use-current-smoker-example.html)
* [Alkoholio vartojimas (Lifestyle)](https://build.fhir.org/ig/HL7LT/ig-lt-lifestyle/Observation-observation-alcohol-consumption-no-example.html)

Nuolatinės integracijos kūrimai: [Lietuvos gyvybiniai rodikliai IG](https://build.fhir.org/ig/HL7LT/ig-lt-vitalsigns/), [Lietuvos gyvensenos IG](https://build.fhir.org/ig/HL7LT/ig-lt-lifestyle/).
