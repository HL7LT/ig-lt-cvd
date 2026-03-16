# Composition 2: Following the Attached XML (ŠKL) Format

Composition(s) that mirror the structure and coding of the SKL01/SKL02/SKL03 XMLs so that the same sections and references appear in R5. Does not replace any existing resource.

## Instances

- **composition-skl-risk-assessment-example.fsh** – Mirrors SKL01: document type 83539-7 (ŠKL rizikos vertinimas), section hierarchy with LOINC 55752-0, 11535-2, 18605-6, 46467-7, 8716-3, 26436-6, 51848-0. Section entries reference existing CVD IG examples as placeholders; in full migration these would be List, CarePlan, Observation.

Further instances for SKL02 (77442-2) and SKL03 (78710-1) can be added under this folder when needed; structure is analogous with type and section codes as in 01-gap-analysis.md.

## Usage

Review section-by-section; when promoting, replace placeholder references with actual List/CarePlan/Observation instances that match the XML semantics. Optionally define a Composition profile (e.g. CompositionCvdSklLt) constraining type and section codes before promoting.
