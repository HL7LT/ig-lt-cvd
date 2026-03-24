Profile: CvdReportLtCvd
Parent: DiagnosticReportLt
Id: cvd-report-lt-cvd
Title: "DiagnosticReport: CVD programme report (LT)"
Description: "Anchor resource for the Lithuanian CVD prevention programme document: links a **CvdComposition** narrative with **Observation** results (SCORE2, risk group, EKG, etc.). Modelled after the **ImagingReport** pattern (DiagnosticReport + Composition) but specialised for cardiovascular screening and prevention rather than imaging."
* ^url = $cvd-report-lt-cvd-url
* ^status = #draft
* ^language = #en
* ^version = "1.0.0"
* ^publisher = "HL7 Lithuania"
* ^experimental = true

* identifier 1..* MS
* status 1..1 MS
* category 1..1 MS
* category = http://terminology.hl7.org/CodeSystem/v2-0074#LAB "Laboratory"
* category ^short = "Diagnostic service section; LAB is used as a generic grouping for programme diagnostic reports (same pattern as other LT diagnostic report profiles)."
* code 1..1 MS
* code = $sct#827181004 "Risk of cardiovascular disease"
* subject 1..1 MS
* subject only Reference(PatientLt)
* effective[x] 1..1 MS
* issued MS
* performer MS
* composition 1..1 MS
* composition only Reference(CvdCompositionLtCvd)
* result 1..* MS
* result only Reference(
    CVDRiskAssessmentLtCvd or
    RiskGroupObservationLtCvd or
    RiskFactorStatusLtCvd or
    EKGLtCvd or
    ObservationLt
  )
* conclusion MS
