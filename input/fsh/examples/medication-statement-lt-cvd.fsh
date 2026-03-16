Instance: medication-statement-screening-example
InstanceOf: MedicationStatement
Title: "MedicationStatement: Screening (example)"
Description: "Example instance of a MedicationStatement for screening programs."
Usage: #example
* status = #recorded
* medication.concept.text = "Tylenol PM"
* subject = Reference(patient-male-example)
* effectiveDateTime = "2015-01-23"
* dateAsserted = "2015-02-22"
* dosage.text = "1 tablet, 3 times per day after meals"
* note.text = "Patient cannot take acetaminophen as per Dr instructions"
