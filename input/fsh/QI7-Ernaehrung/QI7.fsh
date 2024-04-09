Instance: DIVIQualityIndicator7
InstanceOf: recommendation
Usage: #definition
Title: "DIVI Quality Indicator 7"
Description: "DIVI Quality Indicator 7: Patient-adapted Clinical Nutrition"
* name = "DiVI_QualityIndicator_7"
* version = "1.0"
* date = "2024-03-29"
* status = #active
* insert canonical-url(DIVI-DigiQIs, recommendation/DIVI-QualityIndicator-7)
* experimental = true
* publisher = "Deutsche Interdisziplinäre Vereinigung für Intensiv- und Notfallmedizin (DIVI)"
* insert rs-combination-all

// Reference to Quality Indicator 7a
* action[+]
  * title = "DIVI Quality Indicator 7a: Early Enteral Feeding"
  * code = $cs-common-process#guideline-based-care
  * description = "All Intensive Care Patients for which a sufficient oral nutrition is not expected on day one should be started on enteral feeding within 24 hours."
  * definitionCanonical = Canonical(EarlyEnteralFeeding)

// Reference to Quality Indicator 7b
* action[+]
  * title = "DIVI Quality Indicator 7b: Sufficient Feeding in Non-Adipose Patients"
  * code = $cs-common-process#guideline-based-care
  * description = "Every day, all Non-Adipose Intensive Care Patients should receive the amount of Calories that match their daily individual requirements."
  * definitionCanonical = Canonical(SufficientFeeding)

