Profile: CarePlanLtCvd
Parent: CarePlan
Id: care-plan-lt-cvd
Title: "Care Plan for screening programs"
Description: "A simplified profile for CarePlan focusing on essential elements."
* ^url = $care-plan-lt-cvd-url
* extension contains RiskGroupExtLtCvd named riskGroup 0..1
  and $activity-other-description-ext-lt-url named activityOtherDesc 0..1
  and $other-dietary-changes-ext-lt-url named otherDietaryChanges 0..1
