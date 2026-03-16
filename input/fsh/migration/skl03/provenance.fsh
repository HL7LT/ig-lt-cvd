// =============================================================================
// SKL03 (ŠKL plano pasiekimų vertinimas) – Provenance, from DSTU1 cid:0
// Migrated to R5: agent.reference → agent.who
// =============================================================================

Instance: skl03-provenance-0
InstanceOf: Provenance
Usage: #inline
Title: "Provenance: SKL03 progress document submission (migration)"
Description: "Provenance for ŠKL progress note document submission. Migrated from DSTU1."
* target = Reference(skl03-composition-1)
* recorded = 2012-11-08T23:16:03+11:00
* agent.type = $provenance-participant-type#practitioner "Practitioner"
* agent.who = Reference(practitioner-example)
