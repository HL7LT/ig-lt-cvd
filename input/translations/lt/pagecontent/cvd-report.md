# ŠKL programos ataskaita (DiagnosticReport + Composition)

Šiame puslapyje aprašoma, kaip Lietuvos **ŠKL prevencijos ir ankstyvosios diagnostikos** kontekste **vientisas programos įrašas** gali būti pateikiamas naudojant **DiagnosticReport**, susietą su **Composition**, taikant tą patį **pagrindinio dokumento principą** kaip ir **vaizdinėje diagnostikoje** bei **patologijoje** kituose nacionaliniuose IG: ataskaitoje pateikiami struktūrizuoti **Observation** rezultatai, o kompozicija sugrupuoja **žmogui suprantamus skyrius** ir nuorodas į **Condition**, **CarePlan** bei tolesnės stebėsenos matavimus.

## Išteklių vaidmenys

* **[CvdReportLtCvd](StructureDefinition-cvd-report-lt-cvd.html)** — programai pritaikytas `DiagnosticReport`. Jame nurodomi identifikatoriai, būsena, taikymo laikas, autorius ir **`result`** sąrašas su šiai ataskaitai priklausančiais **Observation** ištekliais (SCORE2, rizikos grupė, EKG, tolesnės stebėsenos MTL ir AKS rodikliai ir kt.). Jis nurodo tik vieną **[CvdCompositionLtCvd](StructureDefinition-cvd-composition-lt-cvd.html)**, kuri naudojama kaip naratyvinis dokumentas.
* **[CvdCompositionLtCvd](StructureDefinition-cvd-composition-lt-cvd.html)** — `Composition` su **trimis fiksuotais skyriais**: **vertinimas** (su klausimynu suderinti radiniai), **prevencijos planas** (paprastai **CarePlan**) ir **pasiekimų vertinimas** (tolesnės stebėsenos Observation ištekliai). **Condition** ir **CarePlan** pateikiami kaip **`section.entry`** nuorodos, o ne `DiagnosticReport.result`, nes bazinis diagnostinės ataskaitos profilis `result` apriboja tik **Observation** ištekliais.

Toks atskyrimas leidžia **interpretacijas ir matavimus** išlaikyti Observation ištekliuose, o **Composition** suteikia **dokumento struktūrą**, reikalingą duomenų mainams ir atvaizdavimui ESPBI tipo darbo eigose.

## Šio IG pavyzdžiai

* [DiagnosticReport: CVD programme report (example)](DiagnosticReport-diagnosticreport-cvd-example.html)
* [Composition: CVD programme document (example)](Composition-composition-cvd-example.html)

Kartu jie naudoja tą patį paciento pavyzdį kaip ir kiti ŠKL egzemplioriai šiame IG ir atitinka **[darbo eigos](workflow.html)** žingsnius, susijusius su rizikos stratifikavimu, planavimu ir tolesne stebėsena.

## Tarp-IG matavimai (paskelbtas CI Build)

Pirminiai **gyvybiniai rodikliai** ir **gyvensenos** duomenys paprastai profiliuojami **LT VitalSigns** ir **LT Lifestyle** IG. Integracijos testavimo ir dokumentavimo tikslais FHIR CI Build aplinkoje skelbiami šie pavyzdžiai:

* Arterinis kraujospūdis — [Observation: Blood Pressure (example)](https://build.fhir.org/ig/HL7LT/ig-lt-vitalsigns/Observation-observation-blood-pressure-example.html)
* Kūno ūgis — [Observation: Body Height (example)](https://build.fhir.org/ig/HL7LT/ig-lt-vitalsigns/Observation-observation-body-height-example.html)
* Tabako vartojimas — [Observation: Smoking Status - Current Smoker (example)](https://build.fhir.org/ig/HL7LT/ig-lt-lifestyle/Observation-observation-tobacco-use-current-smoker-example.html)
* Alkoholio vartojimas — [Observation: Alcohol Consumption – No (example)](https://build.fhir.org/ig/HL7LT/ig-lt-lifestyle/Observation-observation-alcohol-consumption-no-example.html)

Laboratoriniai rezultatai (lipidai, gliukozė, kreatininas ir kt.) paprastai išreiškiami naudojant **LT Lab** Observation profilius; kuriant pilną programos įrašą, šiuos išteklius reikėtų susieti iš **vertinimo** skyriaus.