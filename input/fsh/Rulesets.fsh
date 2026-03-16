RuleSet: MultilingualName(entityType)
* name 1..1 MS
  * ^short = "Name {entityType} (in Lithuanian)"
  * extension contains translation named translation 0..* MS
    * ^short = "Name {entityType} (in English)"

RuleSet: HumanName
* name MS
  * use and text and family and given and suffix and period MS

RuleSet: OriginalCodeSystemDraft(id)
* ^url = "https://hl7.lt/fhir/CodeSystem/{id}"
* ^status = #draft
* ^content = #complete
* ^caseSensitive = true
* ^hierarchyMeaning = #is-a
* ^language = #lt
* ^experimental = true
* ^publisher = "HL7 Lithuania" 


RuleSet: OriginalCodeSystem(id)
* ^url = "https://hl7.lt/fhir/CodeSystem/{id}"
* ^status = #active
* ^content = #complete
* ^caseSensitive = true
* ^hierarchyMeaning = #is-a
* ^language = #lt
* ^experimental = false
* ^publisher = "HL7 Lithuania" 


RuleSet: SupplementCodeSystemDraft(id, supplements, version)
* ^url = "https://hl7.lt/fhir/CodeSystem/{id}"
* ^status = #draft
* ^content = #supplement
* ^supplements = {supplements}
* ^version = "{version}"
* ^language = #en
* ^experimental = true
* ^publisher = "HL7 Lithuania" 


RuleSet: SupplementCodeSystem(id, supplements, version)
* ^url = "https://hl7.lt/fhir/CodeSystem/{id}"
* ^status = #active
* ^content = #supplement
* ^supplements = {supplements}
* ^version = "{version}"
* ^language = #en
* ^experimental = false
* ^publisher = "HL7 Lithuania"

// Number of steps / vital signs invariants (used by profiles if present)
Invariant: vs-ns-1
Description: "if Observation.effective[x] (as dateTime) has a value then that value shall be precise at least to the day"
* severity = #error
* expression = "(effective as dateTime).toString().length() >= 8"

Invariant: vs-ns-2
Description: "For single vital signs observations (that do not require use of components or hasMember), then either a value[x] or a data absent reason must be present."
* severity = #error
* expression = "dataAbsentReason.exists() or value.exists()"

