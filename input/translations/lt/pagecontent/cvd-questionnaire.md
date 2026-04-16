# ESPBI elektroninės formos kaip klausimynai

Lietuvos **ŠKL prevencijos ir ankstyvosios diagnostikos** programos dokumentacijoje ESPBI apibrėžiamos dvi pagrindinės **elektroninės formos** (žr. nacionalinę programos medžiagą): **paciento širdies ir kraujagyslių ligų rizikos vertinimo klausimynas** ir **ŠKL prevencijos priemonių planas** (įskaitant vėlesnį **pasiekimų vertinimo** bloką).

Šiame IG pateikiami **pavyzdiniai FHIR [Questionnaire](https://hl7.org/fhir/questionnaire.html)** aprašai ir atitinkami **[QuestionnaireResponse](https://hl7.org/fhir/questionnaireresponse.html)** pavyzdžiai, kad diegėjai galėtų suderinti formų duomenų fiksavimą su FHIR, **nepakeisdami** kitose vadovo dalyse naudojamų struktūrizuotų **Observation** ir **CarePlan** profilių.

## 1 forma — Rizikos vertinimo klausimynas

**Apimtis (nacionalinės lentelės 10.5–10.9):** kontekstas (vertinimo laikas), gretutinės **lėtinės ligos**, **rizikos veiksniai** (hipertenzija, dislipidemija, cukrinis diabetas, rūkymas ir kt. pilnoje formoje), **objektyvūs duomenys** (antropometriniai duomenys, kraujospūdis, tyrimai), **lipidograma**, **SCORE2** ir **programos rizikos grupė**.

* Pagrindiniai formos elementai — kontekstas (vertinimo laikas), gretutinės **lėtinės ligos**, **rizikos veiksniai** (hipertenzija, dislipidemija, cukrinis diabetas, rūkymas ir kiti pilnoje formoje), **objektyvūs duomenys** (antropometriniai duomenys, kraujospūdis, tyrimai), **lipidograma**, **SCORE2** ir **programos rizikos grupė**.
* `grp-migration-md-parity` — neprivalomi elementai kiekvienai migracijos lentelės eilutei, kuri nedubliuoja pagrindinio elemento (pvz., vizitas, gydytojo vaidmuo, širdies ritmas, KMI, gliukozė, HbA1c, kreatininas, ŠFG, alkoholio vartojimas, fizinis aktyvumas, mityba, šeiminė ŠKL anamnezė, siuntimas, pakartotinis vizitas, pasiekimų aprašas, papildomos lėtinės ligos).
* `grp-ig-example-parity` — trumpos pastabos dėl jau padengtų pavyzdžių (Pacientas, Specialistas, Organizacija, EKG, vaistai, cukrinio diabeto trukmė), papildančios `QuestionnaireResponse.subject` ir `author`.

### FHIR artefaktai

* [Questionnaire: CVD risk assessment (ESPBI form 1)](Questionnaire-questionnaire-cvd-risk-assessment.html) — kanoninis URL `https://hl7.lt/fhir/cvd/Questionnaire/cvd-risk-assessment`
* [QuestionnaireResponse: CVD risk assessment (example)](QuestionnaireResponse-questionnaireresponse-cvd-risk-assessment-example.html)

Klausimynas naudoja **grupes** (`item.type = group`) su stabiliais **linkId** (pvz., `grp-risk-factors`, `risk-factor-hypertension`), kad produkcinės sistemos galėtų išplėsti elementus iki **pilno** nacionalinio laukų rinkinio. Pavyzdiniame atsake naudojamas tas pats pacientas kaip ir kituose ŠKL pavyzdžiuose.

## 2 forma — Prevencijos planas ir pasiekimų vertinimas

**Apimtis (nacionalinė lentelė 10.10+):** plano sudarymo laikas, **rizikos grupė**, **tikslinė MTL cholesterolio reikšmė**, rūkymo metimo galimybės, **fizinis aktyvumas** ir **tikslinis KMI**, taip pat **pasiekimų vertinimas** (vertinimo laikas, pasiekta MTL reikšmė, esamas kraujospūdis, ar pasiekti lipidų ir kraujospūdžio tikslai, komentarai).

### FHIR artefaktai

* [Questionnaire: CVD prevention plan and achievement (ESPBI form 2)](Questionnaire-questionnaire-cvd-prevention-plan.html) — kanoninis URL `https://hl7.lt/fhir/cvd/Questionnaire/cvd-prevention-plan`
* [QuestionnaireResponse: CVD prevention plan and achievement (example)](QuestionnaireResponse-questionnaireresponse-cvd-prevention-plan-example.html)

## Atvaizdavimas į profilius (FHIR R5)

Klausimynų pavyzdžiuose naudojamos trumpos **`item.text`** etiketės, neprivalomas kanoninis **`item.definition`** (StructureDefinition URI) ir atskiri **[ConceptMap](https://hl7.org/fhir/conceptmap.html)** ištekliai, skirti **žmogui suprantamam tarp-IG aprašymui**: kiekviena eilutė susieja **linkId** (iš toliau pateiktų CodeSystem) su **tikslinio profilio kodu**, naudodama **`target.comment`** (StructureDefinition URL, pavyzdinių egzempliorių ID, CI Build nuorodos).

* Šaltinio linkId — rizikos vertinimas: [CodeSystem cvd-questionnaire-risk-assessment-item](CodeSystem-cvd-questionnaire-risk-assessment-item.html); prevencijos planas: [CodeSystem cvd-questionnaire-prevention-plan-item](CodeSystem-cvd-questionnaire-prevention-plan-item.html).
* Tikslinių profilių registras: [CodeSystem cvd-questionnaire-mapping-target](CodeSystem-cvd-questionnaire-mapping-target.html).
* [ConceptMap cvd-risk-assessment-questionnaire](ConceptMap-conceptmap-cvd-risk-assessment-questionnaire.html) — kanoninis URL `https://hl7.lt/fhir/cvd/ConceptMap/cvd-risk-assessment-questionnaire`
* [ConceptMap cvd-prevention-plan-questionnaire](ConceptMap-conceptmap-cvd-prevention-plan-questionnaire.html) — kanoninis URL `https://hl7.lt/fhir/cvd/ConceptMap/cvd-prevention-plan-questionnaire`

Išsamesnis R5 ConceptMap FSH, **`related-to`** ir suderinimo su **`input/fsh/migration/mapping.md`** aprašymas pateikiamas čia: [Questionnaire mapping](questionnaire-mapping.html).

## Kada naudoti QuestionnaireResponse vietoj Observation

| Metodas | Tipinis naudojimas |
|---------|--------------------|
| **Questionnaire / QuestionnaireResponse** | Tikslus **formos atsakymų** fiksavimas; spartus suderinimas su ESPBI naudotojo sąsaja; užpildytų formų eksportas. |
| **Observation**, **Condition**, **CarePlan** (šio IG profiliai) | **Klinikinis sąveikumas**, sprendimų palaikymas, **SCORE2** ir **rizikos grupės** semantika, **CarePlan** tikslai ir veiklos, ilgalaikė stebėsena. |

Praktikoje sistema gali **saugoti** QuestionnaireResponse auditui ir iš jo **išvesti** Observation bei CarePlan išteklius ataskaitoms ir duomenų mainams. **[ŠKL ataskaitos](cvd-report.html)** modelyje (DiagnosticReport + Composition) **nebūtina pateikti nuorodų į** Questionnaire išteklius; abu metodai gali būti naudojami kartu.

## Tarp-IG pavyzdžiai (CI Build)

Programos vertinime dažnai naudojami matavimų ir gyvensenos pavyzdžiai:

* [Arterinis kraujospūdis (VitalSigns)](https://build.fhir.org/ig/HL7LT/ig-lt-vitalsigns/Observation-observation-blood-pressure-example.html)
* [Kūno ūgis (VitalSigns)](https://build.fhir.org/ig/HL7LT/ig-lt-vitalsigns/Observation-observation-body-height-example.html)
* [Tabako vartojimas (Lifestyle)](https://build.fhir.org/ig/HL7LT/ig-lt-lifestyle/Observation-observation-tobacco-use-current-smoker-example.html)
* [Alkoholio vartojimas (Lifestyle)](https://build.fhir.org/ig/HL7LT/ig-lt-lifestyle/Observation-observation-alcohol-consumption-no-example.html)

Nuolatinės integracijos versijos: [Lithuanian Vital Signs IG](https://build.fhir.org/ig/HL7LT/ig-lt-vitalsigns/), [Lithuanian Lifestyle IG](https://build.fhir.org/ig/HL7LT/ig-lt-lifestyle/).