// =============================================================================
// SKL01 – MedicationStatement (DSTU1 cid:32)
// Migrated: dose/numberOfDoses extensions → dosage.text
// =============================================================================

Instance: skl01-medication-statement-32
InstanceOf: MedicationStatement
Usage: #example
Title: "MedicationStatement: Current medication (SKL01)"
Description: "Non-prescription medication. Migrated from DSTU1 cid:32."
* status = #recorded
* subject = Reference(patient-male-example)
* medication = Reference(Medication/1000017575)
* dosage.text = "22ml per dieną, 4 kartai"
