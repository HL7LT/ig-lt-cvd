### Terminologija

Šiame puslapyje pateikiami visi Lietuvos ŠKL įgyvendinimo vadove apibrėžti `ValueSet` ir `CodeSystem` ištekliai.

#### Kodų sistemos

| Kodų sistema | Aprašas |
|---|---|
| [CvdQuestionnaireRiskAssessmentItem](CodeSystem-cvd-questionnaire-risk-assessment-item.html) | Stabilūs `linkId` kodai visiems ŠKL rizikos vertinimo klausimyno (1 forma) elementams. Naudojami kaip šaltinis rizikos vertinimo `ConceptMap`. |
| [CvdQuestionnairePreventionPlanItem](CodeSystem-cvd-questionnaire-prevention-plan-item.html) | Stabilūs `linkId` kodai visiems ŠKL prevencijos plano klausimyno (2 forma) elementams. Naudojami kaip šaltinis prevencijos plano `ConceptMap`. |
| [CvdQuestionnaireMappingTarget](CodeSystem-cvd-questionnaire-mapping-target.html) | Tikslinių profilių kodų registras, naudojamas klausimyno ir profilio `ConceptMap`. Kiekvienas kodas identifikuoja Lietuvos FHIR profilį arba tarp-IG stebėjimo išteklių, su kuriuo susiejamas klausimyno elementas. |

#### Reikšmių rinkiniai

| Reikšmių rinkinys | Aprašas |
|---|---|
| [CVDRiskGroupLtCvd](ValueSet-cvd-risk-group.html) | Programos rizikos grupės kategorijos: maža–vidutinė, didelė, labai didelė. Nuo jų priklauso MTL tikslai ir stebėsenos intervalai. Naudojama `RiskGroupObservationLtCvd` ir `RiskGroupExtLtCvd`. |
| [CVDRiskDegreeLtCvd](ValueSet-cvd-risk-degree.html) | SCORE2 rizikos laipsnio klasifikacija (maža, vidutinė, didelė, labai didelė). Naudojama `CVDRiskAssessmentLtCvd`. |
| [CvdHighRiskConditionLtCvd](ValueSet-cvd-high-risk-condition.html) | TLK-10 kodai gretutinėms didelės rizikos lėtinėms ligoms (pvz., širdies nepakankamumas I50, persirgtas miokardo infarktas I21–I22), kurios automatiškai padidina programos rizikos grupę. Naudojama `CvdChronicConditionLtCvd`. |
| [RiskFactorTypeLtCvd](ValueSet-risk-factor-type.html) | SNOMED CT kodai, identifikuojantys programos rizikos veiksnių tipus: hipertenziją, dislipidemiją, cukrinį diabetą, galimą šeiminę hipercholesterolemiją ir kitus. Naudojama `RiskFactorStatusLtCvd`. |
| [CvdCompositionCodeVS](ValueSet-cvd-composition-code.html) | Leistini LOINC dokumento tipo kodai ŠKL programos kompozicijoms: `83539-7` (rizikos vertinimas), `77442-2` (prevencijos planas), `78710-1` (eigos įrašas). Susieta su `CvdCompositionLtCvd.type`. |
| [EkgResultInterpretationVS](ValueSet-ekg-result-interpretation.html) | SNOMED CT kodai EKG interpretacijai: `164854000` — normali elektrokardiograma ir `102594003` — patologinė elektrokardiograma. Šis reikšmių rinkinys privalomai taikomas `EKGLtCvd` profilio `ekgResult` interpretacijos slice. |