// =============================================================================
// SKL01 (ŠKL rizikos vertinimas) – Provenance, from DSTU1 cid:0
// Migrated to R5: agent.reference → agent.who
// =============================================================================

Instance: skl01-provenance-0
InstanceOf: Provenance
Usage: #inline
Title: "Provenance: SKL01 risk assessment document submission (migration)"
Description: "Provenance for ŠKL CVD risk assessment document. Migrated from DSTU1."
* target = Reference(skl01-composition-1)
* recorded = 2012-11-08T23:16:03+11:00
* agent.type = $provenance-participant-type#practitioner "Practitioner"
* agent.who = Reference(practitioner-example)
