// =============================================================================
// SKL01 – Legacy DSTU1 stubs (referenced by migration examples)
// These are minimal placeholder instances to prevent broken HTML links in
// the IG Publisher output. The resource IDs match the original DSTU1 IDs.
// =============================================================================

Instance: dstu1-encounter-1000017570
InstanceOf: Encounter
Usage: #example
Title: "Encounter: DSTU1 Legacy (id:1000017570)"
Description: "Minimal stub for the DSTU1 encounter referenced by SKL01/02/03 migration composition examples."
* id = "1000017570"
* status = #completed
* class = $v3-ActCode#AMB "ambulatory"
* subject = Reference(patient-male-example)

Instance: dstu1-condition-351
InstanceOf: Condition
Usage: #example
Title: "Condition: DSTU1 Legacy chronic condition (id:351)"
Description: "Minimal stub for the DSTU1 chronic disease referenced in the SKL01 diagnosis list."
* id = "351"
* subject = Reference(patient-male-example)
* code.text = "DSTU1 chronic condition (id:351)"
* clinicalStatus = $condition-clinical#active

Instance: dstu1-medication-dispense-1000043
InstanceOf: MedicationDispense
Usage: #example
Title: "MedicationDispense: DSTU1 Legacy (id:1000043)"
Description: "Minimal stub for the DSTU1 dispensed medication referenced in the SKL01 medications-dispensed list."
* id = "1000043"
* status = #completed
* subject = Reference(patient-male-example)
* medication.concept.text = "DSTU1 dispensed medication (id:1000043)"

Instance: dstu1-medication-1000017575
InstanceOf: Medication
Usage: #example
Title: "Medication: DSTU1 Legacy (id:1000017575)"
Description: "Minimal stub for the DSTU1 medication referenced in the SKL01 MedicationStatement."
* id = "1000017575"
* code.text = "DSTU1 medication (id:1000017575)"
