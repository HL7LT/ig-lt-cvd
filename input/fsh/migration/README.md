# SKL DSTU1 Migration

This directory contains FSH instances and supporting documentation for migrating Cardio Screening Report (ŠKL) documents from **FHIR DSTU1** (XML) to **FHIR R5** using Lithuanian IG profiles.

## Source XMLs

| File | Document type (LOINC) | Title (LT) |
|------|------------------------|------------|
| SKL01_final_v3.xml | 83539-7 | ŠKL rizikos vertinimas (CVD risk assessment) |
| SKL02_v1.xml | 77442-2 | ŠKL prevencijos priemonių planas (Plan of care) |
| SKL03_v1.xml | 78710-1 | ŠKL prevencijos priemonių plano pasiekimų vertinimas (Progress note) |

## Directory layout

- **skl01/** – Instances from SKL01 (risk assessment): provenance, composition, lists, medication-statement, observations (risk factors, vitals, lab, evaluation).
- **skl02/** – Instances from SKL02 (plan): provenance, composition, care-plan, observation (other recommendations).
- **skl03/** – Instances from SKL03 (progress): provenance, composition, care-plan, observations (vitals panel and members, lab panel and LDL, comment).
- **composition-skl-format/** – Composition example that references the migrated skl01 instances.
- **composition-eu-im/** – EU IM composition example (separate format).

## Instance naming

- **Pattern:** `sklXX-{resource-type}-{cid}` or `sklXX-{resource-type}-{descriptor}`.
- **Examples:**
  - `skl01-provenance-0` – Provenance for SKL01 (DSTU1 cid:0).
  - `skl01-composition-1` – Composition for SKL01 (cid:1).
  - `skl01-list-diagnoses` – List of diagnoses (cid:2).
  - `skl01-observation-hypertension-181` – Risk factor observation (cid:181).
  - `skl03-observation-vitals-panel-6` – Vital signs panel (cid:6).

References between instances use these ids (e.g. `Reference(skl01-list-cvd-risk-factors)`). Compositions use `section.entry` to reference the appropriate List or Observation instances.

## Profile binding

- **Composition** → CompositionLt (ig-lt-base).
- **CarePlan** → CarePlanLtCvd (ig-lt-cvd).
- **Observation** (risk factor status) → RiskFactorStatusLtCvd or ObservationLt.
- **Observation** (vitals, lab, narrative) → ObservationLt.
- **MedicationStatement** → MedicationStatementLtCvd (ig-lt-lifestyle).
- **List**, **Provenance** → core resource (no LT profile).

Base references (patient, practitioner, organization) use existing examples: `patient-male-example`, `practitioner-example`, `organization-example` from `input/fsh/examples/base/`.

## DSTU1 → R5 mapping (applied in instances)

- `Observation.name` → `Observation.code`
- `Observation.appliesDateTime` → `Observation.effectiveDateTime`
- `Observation.reliability` → omitted (removed in R4)
- `Observation.related` (child observations) → `Observation.hasMember`
- `Composition.section.content` → `Composition.section.entry`
- `CarePlan.patient` → `CarePlan.subject`
- `Provenance.agent.reference` → `Provenance.agent.who`

## Reports

- **REPORT-inconsistencies-dstu1-vs-igs.md** – Structural, terminology, extension, and profile-coverage inconsistencies between DSTU1 and current LT IGs.
- **01-gap-analysis.md** – Gap analysis and section LOINC reference.
