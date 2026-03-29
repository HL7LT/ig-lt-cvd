Instance: practitioner-role-example
InstanceOf: PractitionerRoleLt
Usage: #example
Title: "PractitionerRole: Dr. Petras Kazlauskas at Vilniaus miesto ligoninė (example)"
Description: "An example PractitionerRole linking a practitioner to an organization."
* active = true
* practitioner = Reference(practitioner-example)
* practitioner.display = "Dr. Petras Kazlauskas"
* organization = Reference(organization-example)
* organization.display = "Vilniaus miesto ligoninė"
