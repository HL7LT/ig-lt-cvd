# Lietuvos širdies ir kraujagyslių ligų prevencijos diegimo vadovas

## Įvadas ir tikslas

Šis diegimo vadovas apibrėžia, kaip nuosekliai atvaizduoti ir keistis struktūrizuotais klinikiniais duomenimis **Lietuvos širdies ir kraujagyslių ligų (ŠKL) prevencijos ir ankstyvos diagnostikos programoje**, naudojant **HL7® FHIR® R5** standartą.

Jis palaiko nacionalines **ESPBI** elektronines formas ir procesus: **paciento ŠKL rizikos vertinimo anketą** ir **ŠKL prevencijos priemonių planą** (įskaitant vėlesnį **pasiekimų vertinimą**). Vadovas leidžia:

* palyginamus, mašinai skaitomus **rizikos vertinimus** (pvz., SCORE2) ir **programos rizikos grupės** priskyrimą,
* struktūrizuotą **ŠKL rizikai svarbių lėtinių ligų** ir **rizikos veiksnių** fiksavimą,
* sąveiką pagrįstus **prevencijos planus** (tikslai, gyvensenos priemonės, vaistų kontekstas),
* **ilgalaikį** duomenų mainą, kai pacientas keičia įstaigas ar vizitus.

Trumpas klinikinis kelias nuo pirminės apžiūros iki stebėsenos aprašytas puslapyje **[Darbo eiga](workflow.html)**.

## Programos ir verslo suinteresuotosioms šalims

Standartizuoti FHIR resursai leidžia **vienodą ataskaitų teikimą** programos administratoriams, **koordinuoti** pirminę priežiūrą ir specialistus bei **suderinti** duomenis su nacionalinėmis anketomis ir prevencijos plano rinkiniais. Diegėjai gali tikrinti duomenis pagal paskelbtus profilius ir reikšmių rinkinius, sumažindami neaiškumą integracijose ir registruose.

## Gydytojams

Profiliai palaiko **struktūrizuotą dokumentavimą**: širdies ir kraujagyslių riziką (skaitinį įvertinimą ir kategoriją), **širdies ir kraujagyslių ligų rizikos grupę** programai, **komorbidiškumą**, **keičiamus ir nekeičiamus rizikos veiksnius**, **EKG**, kai naudojama vertinime, ir **individualizuotus prevencijos planus** (pvz., MTL ir arterinio kraujospūdžio tikslai, metimas rūkyti, mityba, fizinis aktyvumas, svoris, paskirtų vaistų kontekstas). Duomenis galima **pakartotinai naudoti** pakartotinių vizitų metu pasiekimams įvertinti.

## Šio vadovo apimtis (profiliai)

Šis IG apibrėžia šiuos artefaktus. Kiekvienas pavadinimas veda į apibrėžimą šiame leidinyje.

| Programos formų poreikis | Profilis / plėtinys |
| ------------------------ | ------------------- |
| SCORE2 tipo ŠKL rizika (%) ir kokybinė rizikos pakopa | [CVDRiskAssessmentLtCvd](StructureDefinition-cvd-risk-assessment-lt-cvd.html) |
| Programos rizikos grupė širdies ir kraujagyslių ligoms | [RiskGroupObservationLtCvd](StructureDefinition-risk-group-observation-lt-cvd.html) |
| Rizikos grupė priežiūros plane (plėtinys) | [RiskGroupExtLtCvd](StructureDefinition-risk-group-ext-lt-cvd.html) |
| Lydinčios lėtinės ligos (ŠKL programos sąrašas) | [CvdChronicConditionLtCvd](StructureDefinition-cvd-chronic-condition-lt-cvd.html) |
| Rizikos veiksniai (struktūrizuota būsena / skaičius) | [RiskFactorStatusLtCvd](StructureDefinition-risk-factor-status-lt-cvd.html) |
| ŠKL prevencijos ir atrankos priežiūros planas | [CarePlanLtCvd](StructureDefinition-care-plan-lt-cvd.html) |
| EKG radinys vertinimo kontekste | [EKGLtCvd](StructureDefinition-ekg-lt-cvd.html) |

**Terminologiją** (reikšmių rinkinius ir kodų sistemas) skelbia šis vadovas ir **tx.hl7.lt**; visą sąrašą žr. Artifacts.

## Ryšys su kitais Lietuvos IG

Demografija, specialistas, organizacija ir vizitas dažniausiai naudoja **LT bazės** profilius. **Gyvybiniai rodikliai** (kraujospūdis, svoris, ūgis, KMI), **laboratoriniai rezultatai** (lipidai, gliukozė, HbA1c) ir **gyvensenos stebėjimai** (rūkymas, alkoholis, fizinis aktyvumas, mityba) modeliuojami **LT gyvybiniai rodikliai**, **LT laboratorija** ir **LT gyvensena**. Šis ŠKL IG sutelktas į **programai specifinę** rizikos stratifikaciją, ligas, rizikos veiksnius, planus ir EKG — ne į tų bazinių matavimų perkėlimą.

## Kodėl verta naudoti šį vadovą?

1. **Sąveika:** Vienodos semantikos anketos ir prevencijos plano duomenims visose ESI ir nacionalinėse sistemose.
2. **Duomenų kokybė:** Privalomi susiejimai ir profiliai gerina programos duomenų išsamumą ir palyginamumą.
3. **Klinikinė nauda:** Palaiko sprendimų paramą, priminimus pagal rizikos grupę ir struktūrizuotą pasiekimų vertinimą.

Žr. **[Darbo eiga](workflow.html)** dėl proceso nuo pradžios iki pabaigos. **Artifacts** — visi profiliai, plėtiniai, terminologija ir pavyzdžiai.

### IP teiginiai
<!-- { // dar nepalaiko i18n IG leidėjuje: % include ip-statements.xhtml %} -->

### Prisidėjusieji

| Vardas | Pareigos | Organizacija |
| ------------------------------------------------------------ | --------------------------------------------- | ---------------------------------------------------- |
| [Kati Laidus](https://www.linkedin.com/in/kati-laidus/) | Co-Author                 | [HELEX Solutions](https://helex.solutions)               |
| [Igor Bossenko](https://about.askigor.eu)     | Co-Author                | [HELEX Solutions](https://helex.solutions) |
| Martynas Bieliauskas                           | Co-Author                      | [LMB](https://lmb.lt)               |
| Audra Stepanauskaite                          | Co-Author                      | [LMB](https://lmb.lt)               |
| Albert Kušlevič                           | Co-Author                      | [LMB](https://lmb.lt)               |
