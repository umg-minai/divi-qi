Instance: DIVIQualityIndicator6
InstanceOf: recommendation
Usage: #definition
Title: "DIVI Quality Indicator 6"
Description: "DIVI Quality Indicator 6: Infection Management"
* name = "DiVI_QualityIndicator_6"
* version = "1.0"
* date = "2024-03-29"
* status = #active
* insert canonical-url(DIVI-DigiQIs, recommendation/DIVI-QualityIndicator-6)
* experimental = true
* publisher = "Deutsche Interdisziplinäre Vereinigung für Intensiv- und Notfallmedizin (DIVI)"
* insert rs-combination-all

// Reference to Quality Indicator 6a
* action[+]
  * title = "DIVI Quality Indicator 6a: Indication, Focus and Duration of Therapy for Antibiotics"
  * code = $cs-common-process#guideline-based-care
  * description = "All Intensive Care Patients with Antibiotics should have a daily re-evaluation of the Indication, Focus and Duration of Therapy for each Antibiotic."
  * definitionCanonical = Canonical(AntibioticsIndicationFocusDuration)

// Reference to Quality Indicator 6b
* action[+]
  * title = "DIVI Quality Indicator 6b: Frequency of Blood Cultures"
  * code = $cs-common-process#guideline-based-care
  * description = "The Frequency of Blood Cultures should be at least 80 per 1000 days."
  * definitionCanonical = Canonical(FrequencyBloodCultures)



