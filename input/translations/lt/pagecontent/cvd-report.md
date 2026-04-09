# ŠKL programos ataskaita (DiagnosticReport + Composition)

Šiame puslapyje aprašoma, kaip **vienas išsamus programos įrašas** Lietuvos **ŠKL prevencijos ir ankstyvos diagnostikos** kontekste gali būti vaizduojamas naudojant **DiagnosticReport** susietą su **Composition**, sekant tą pačią **dokumento inkaro** idėją kaip **vaizdinė diagnostika** ir **patologija** kituose nacionaliniuose IG: ataskaita sąrašuoja struktūrizuotus **Observation** rezultatus; kompozicija grupuoja **žmogui skaitomus skyrius** ir nuorodas į **Condition**, **CarePlan** ir stebėsenos matavimus.

## Resursų vaidmenys

* **[CvdReportLtCvd](StructureDefinition-cvd-report-lt-cvd.html)** — `DiagnosticReport`, specializuotas programai. Turi identifikatorius, būseną, galiojimo laiką, autorių ir **`result`** sąrašą **Observation** resursų, priklausančių šiai ataskaitai (SCORE2, rizikos grupė, EKG, stebėsenos MTL ir AKS ir kt.). Nurodo tiksliai vieną **[CvdCompositionLtCvd](StructureDefinition-cvd-composition-lt-cvd.html)** naratyviniam dokumentui.
* **[CvdCompositionLtCvd](StructureDefinition-cvd-composition-lt-cvd.html)** — `Composition` su **trimis fiksuotais skyriais**: **vertinimas** (anketa-suderinti radiniai), **prevencijos planas** (paprastai **CarePlan**) ir **pasiekimų vertinimas** (stebėsenos Observations). **Condition** ir **CarePlan** patenka į **`section.entry`** nuorodas, o ne į `DiagnosticReport.result`, nes bazinis diagnostinės ataskaitos profilis apriboja `result` tik iki **Observation**.

Toks atskyrimas palieka **interpretaciją ir matavimus** Observation resursuose, o **kompozicija** teikia **dokumento struktūrą**, reikalingą mainams ir pateikimui ESPBI tipo darbo eigose.

## Šio IG pavyzdžiai

* [DiagnosticReport: CVD programme report (example)](DiagnosticReport-diagnosticreport-cvd-example.html)
* [Composition: CVD programme document (example)](Composition-composition-cvd-example.html)

Kartu jie nurodo tą patį paciento pavyzdį kaip ir kiti ŠKL egzemplioriai ir suderinami su **[darbo eigos](workflow.html)** žingsniais rizikos stratifikacijai, planavimui ir stebėsenai.

## Tarp-IG matavimai (paskelbtas CI Build)

Pirminiai **gyvybiniai rodikliai** ir **gyvensenos** duomenys paprastai profiluojami **LT gyvybiniai rodikliai** ir **LT gyvensena**. Integracijos testavimui ir dokumentacijai FHIR CI kūrinyje skelbiami pavyzdžiai:

* Arterinis kraujospūdis — [Observation: Blood Pressure (example)](https://build.fhir.org/ig/HL7LT/ig-lt-vitalsigns/Observation-observation-blood-pressure-example.html)
* Kūno ūgis — [Observation: Body Height (example)](https://build.fhir.org/ig/HL7LT/ig-lt-vitalsigns/Observation-observation-body-height-example.html)
* Tabako vartojimas — [Observation: Smoking Status - Current Smoker (example)](https://build.fhir.org/ig/HL7LT/ig-lt-lifestyle/Observation-observation-tobacco-use-current-smoker-example.html)
* Alkoholis — [Observation: Alcohol Consumption – No (example)](https://build.fhir.org/ig/HL7LT/ig-lt-lifestyle/Observation-observation-alcohol-consumption-no-example.html)

Laboratoriniai rezultatai (lipidai, gliukozė, kreatininas ir kt.) paprastai išreiškiami **LT laboratorija** Observation profiliais; susiekite tuos resursus iš **vertinimo** skyriaus kuriant pilną programos įrašą.
