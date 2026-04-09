### Terminologija

Šiame puslapyje pateikiami visi ValueSet ir CodeSystem, apibrėžti Lietuvos ŠKL diegimo vadove.

#### Kodų sistemos

| Kodų sistema | Aprašas |
|---|---|
| [CvdQuestionnaireRiskAssessmentItem](CodeSystem-cvd-questionnaire-risk-assessment-item.html) | Stabilūs linkId kodai visiems ŠKL rizikos vertinimo klausimyno (1 forma) punktams. Naudojami kaip šaltinis rizikos vertinimo ConceptMap. |
| [CvdQuestionnairePreventionPlanItem](CodeSystem-cvd-questionnaire-prevention-plan-item.html) | Stabilūs linkId kodai visiems ŠKL prevencijos plano klausimyno (2 forma) punktams. Naudojami kaip šaltinis prevencijos plano ConceptMap. |
| [CvdQuestionnaireMappingTarget](CodeSystem-cvd-questionnaire-mapping-target.html) | Tikslinių profilių kodų registras klausimyno ir profilio ConceptMap. Kiekvienas kodas identifikuoja Lietuvos FHIR profilį ar tarp-IG stebėjimą, į kurį žemėlapiamas klausimyno punktas. |

#### Reikšmių rinkiniai

| Reikšmių rinkinys | Aprašas |
|---|---|
| [CVDRiskGroupLtCvd](ValueSet-cvd-risk-group.html) | Programos rizikos grupės kategorijos: maža–vidutinė, didelė, labai didelė. Lemia MTL tikslus ir stebėsenos intervalus. Naudojama `RiskGroupObservationLtCvd` ir `RiskGroupExtLtCvd`. |
| [CVDRiskDegreeLtCvd](ValueSet-cvd-risk-degree.html) | Skaitinės SCORE2 rizikos laipsnio klasifikacija (maža, vidutinė, didelė, labai didelė). Naudojama `CVDRiskAssessmentLtCvd`. |
| [CvdHighRiskConditionLtCvd](ValueSet-cvd-high-risk-condition.html) | TLK-10 kodai lydinčioms didelės rizikos lėtinėms ligoms (pvz., širdies nepakankamumas I50, ankstesnis MI I21–I22), kurios automatiškai padidina programos rizikos grupę. Naudojama `CvdChronicConditionLtCvd`. |
| [RiskFactorTypeLtCvd](ValueSet-risk-factor-type.html) | SNOMED CT kodai, identifikuojantys programos rizikos veiksnių tipus: hipertenzija, dislipidemija, cukrinis diabetas, galima šeiminė hipercholestrerolemija ir kiti. Naudojama `RiskFactorStatusLtCvd`. |
| [CvdCompositionCodeVS](ValueSet-cvd-composition-code.html) | Leistini LOINC dokumento tipo kodai ŠKL programos kompozicijoms: `83539-7` (rizikos vertinimas), `77442-2` (prevencijos planas), `78710-1` (pažangos pastaba). Susieta su `CvdCompositionLtCvd.type`. |
| [EkgResultInterpretationVS](ValueSet-ekg-result-interpretation.html) | SNOMED CT kodai EKG interpretacijai: `164854000` Elektrokardiograma normali ir `102594003` Elektrokardiograma patologiška. Susieta (privaloma) su `ekgResult` interpretacijos pjūviu `EKGLtCvd`. |
