// =============================================================================
// SKL02 (ŠKL prevencijos priemonių planas) – Provenance, from DSTU1 cid:0
// Migrated to R5: agent.reference → agent.who
// =============================================================================

Instance: skl02-provenance-0
InstanceOf: Provenance
Usage: #inline
Title: "Provenance: SKL02 plan document submission (migration)"
Description: "Provenance for ŠKL plan of care document submission event. Migrated from DSTU1."
* target = Reference(skl02-composition-1)
* recorded = 2012-11-08T23:16:03+11:00
* agent.type = $provenance-participant-type#practitioner "Practitioner"
* agent.who = Reference(practitioner-example)
