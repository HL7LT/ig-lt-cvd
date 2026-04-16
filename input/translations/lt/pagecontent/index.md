# Lietuvos širdies ir kraujagyslių ligų prevencijos įgyvendinimo vadovas

## Įvadas ir tikslas

Šiame įgyvendinimo vadove apibrėžiama, kaip, naudojant **HL7® FHIR® R5** standartą, nuosekliai pateikti ir keistis struktūrizuotais klinikiniais duomenimis, susijusiais su **Lietuvos širdies ir kraujagyslių ligų (ŠKL) prevencijos ir ankstyvosios diagnostikos programa**.

Jis palaiko nacionalines **ESPBI** elektronines formas ir darbo eigas, skirtas **paciento ŠKL rizikos vertinimo klausimynui** ir **ŠKL prevencijos priemonių planui** (įskaitant vėlesnį **pasiekimų vertinimą**). Vadovas sudaro sąlygas:

* atlikti palyginamą, mašinai skaitomą **rizikos vertinimą** (pvz., SCORE2) ir priskirti **programos rizikos grupę**,
* struktūruotai fiksuoti **ŠKL rizikai reikšmingas lėtines ligas** ir **rizikos veiksnius**,
* naudoti sąveikius **prevencijos planus** (tikslus, gyvensenos priemones, informaciją apie vaistų vartojimą),
* ir užtikrinti **ilgalaikius** duomenų mainus pacientui pereinant tarp vizitų ir gydymo įstaigų.

Trumpas klinikinis kelias nuo pirminio vertinimo iki tolesnės stebėsenos aprašytas puslapyje **[Darbo eiga](workflow.html)**.

## Programos organizatoriams ir kitiems suinteresuotiesiems

Standartizuoti FHIR ištekliai sudaro sąlygas **nuosekliam ataskaitų teikimui** programos administratoriams, **koordinavimui** tarp pirminės sveikatos priežiūros ir specialistų bei **suderinamumui** su nacionalinių klausimynų ir prevencijos planų duomenų rinkiniais. Diegėjai gali tikrinti duomenų paketus pagal paskelbtus profilius ir reikšmių rinkinius, taip mažindami neaiškumus integracijose ir registruose.

## Gydytojams

Šie profiliai palaiko **struktūrizuotą dokumentavimą**: širdies ir kraujagyslių rizikos (skaitinio įverčio ir kategorijos), **širdies ir kraujagyslių ligų rizikos grupės**, svarbios programos taikymui ir pacientų kvietimui pakartotiniam vertinimui, **gretutinių ligų**, turinčių įtakos ŠKL rizikai, **keičiamų ir nekeičiamų rizikos veiksnių**, **EKG**, kai ji naudojama vertinimo metu, ir **individualizuotų prevencijos planų** (pvz., MTL cholesterolio ir arterinio kraujospūdžio tikslų, rūkymo nutraukimo, mitybos, fizinio aktyvumo, kūno svorio bei paskirtų vaistų konteksto). Duomenys gali būti **pakartotinai naudojami** per tolesnius vizitus pasiekimams įvertinti.

## Šio vadovo apimtis (profiliai)

Šis IG apibrėžia šiuos artefaktus. Kiekvienas pavadinimas veda į jo aprašą šiame leidinyje.

| Programos formų poreikis | Profilis / plėtinys |
| ------------------------ | ------------------- |
| SCORE2 tipo ŠKL rizika (%) ir kokybinė rizikos kategorija | [CVDRiskAssessmentLtCvd](StructureDefinition-cvd-risk-assessment-lt-cvd.html) |
| Programos rizikos grupė širdies ir kraujagyslių ligoms | [RiskGroupObservationLtCvd](StructureDefinition-risk-group-observation-lt-cvd.html) |
| Rizikos grupė CarePlan ištekliuje (plėtinys) | [RiskGroupExtLtCvd](StructureDefinition-risk-group-ext-lt-cvd.html) |
| Gretutinės lėtinės ligos (ŠKL programos sąrašas) | [CvdChronicConditionLtCvd](StructureDefinition-cvd-chronic-condition-lt-cvd.html) |
| Rizikos veiksniai (struktūrizuota būsena / skaičius) | [RiskFactorStatusLtCvd](StructureDefinition-risk-factor-status-lt-cvd.html) |
| ŠKL prevencijos ir patikros planas | [CarePlanLtCvd](StructureDefinition-care-plan-lt-cvd.html) |
| EKG radinys vertinimo kontekste | [EKGLtCvd](StructureDefinition-ekg-lt-cvd.html) |

**Terminologija** (reikšmių rinkiniai ir kodų sistemos, naudojami šiuose profiliuose) skelbiama šiame vadove ir **tx.hl7.lt**; visą sąrašą žr. **Artifacts** skiltyje.

## Ryšys su kitais Lietuvos IG

Demografijos, specialisto, organizacijos ir vizito modeliai, kur taikoma, naudoja **LT Base** profilius. **Gyvybiniai rodikliai** (pvz., kraujospūdis, svoris, ūgis, KMI), **laboratoriniai rezultatai** (lipidai, gliukozė, HbA1c) ir **gyvensenos stebėjimai** (rūkymas, alkoholio vartojimas, fizinis aktyvumas, mityba) modeliuojami atitinkamai **LT VitalSigns**, **LT Lab** ir **LT Lifestyle** IG. Šis ŠKL IG orientuotas į **programai specifinę** rizikos stratifikaciją, gretutines ligas, rizikos veiksnius, planus ir EKG, o ne į pakartotinį bazinių matavimų apibrėžimą.

## Kodėl verta naudoti šį vadovą?

1. **Sąveikumas:** vienoda ŠKL klausimyno ir prevencijos plano duomenų semantika skirtingose ESI ir nacionalinėse sistemose.
2. **Duomenų kokybė:** privalomi susiejimai ir profiliai didina programos duomenų išsamumą ir palyginamumą.
3. **Klinikinė nauda:** sudaro sąlygas sprendimų palaikymui, pacientų kvietimui pagal rizikos grupę ir struktūrizuotam tolesniam pasiekimų vertinimui.

Visą procesą nuo pradžios iki pabaigos žr. puslapyje **[Darbo eiga](workflow.html)**. Visi profiliai, plėtiniai, terminologija ir pavyzdžiai pateikti **Artifacts** skiltyje.

### IP pareiškimai
<!-- { // not yet supported by i18n in IG publisher: % include ip-statements.xhtml %} -->

### Bendraautoriai

| Vardas | Vaidmuo | Organizacija |
| --- | --- | --- |
| [Kati Laidus](https://www.linkedin.com/in/kati-laidus/) | Bendraautorė | [HELEX Solutions](https://helex.solutions) |
| [Igor Bossenko](https://about.askigor.eu) | Bendraautoris | [HELEX Solutions](https://helex.solutions) |
| Martynas Bieliauskas | Bendraautoris | [LMB](https://lmb.lt) |
| Audra Stepanauskaite | Bendraautorė | [LMB](https://lmb.lt) |
| Albert Kušlevič | Bendraautoris | [LMB](https://lmb.lt) |