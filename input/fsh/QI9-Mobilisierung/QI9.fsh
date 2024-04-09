Instance: DIVIQualityIndicator9
InstanceOf: recommendation
Usage: #definition
Title: "DIVI Quality Indicator 9"
Description: "DIVI Quality Indicator 9: Early Mobilization"
* name = "DiVI_QualityIndicator_9"
* version = "1.0"
* date = "2024-03-29"
* status = #active
* insert canonical-url(DIVI-DigiQIs, recommendation/DIVI-QualityIndicator-9)
* experimental = true
* publisher = "Deutsche Interdisziplinäre Vereinigung für Intensiv- und Notfallmedizin (DIVI)"
* insert rs-combination-all

// Reference to Quality Indicator 9a
* action[+]
  * title = "DIVI Quality Indicator 9a: Inital Mobilization"
  * code = $cs-common-process#guideline-based-care
  * description = "All Intensive Care Patients should be mobilized within 24 hours after admission to ICU."
  * definitionCanonical = Canonical(InitialMobilization)

// Reference to Quality Indicator 9b
* action[+]
  * title = "DIVI Quality Indicator 9b: Periodic Mobilization"
  * code = $cs-common-process#guideline-based-care
  * description = "All Intensive Care Patients that don't have a no-mobilization order should be mobilized at least once every day."
  * definitionCanonical = Canonical(PeriodicMobilization)

