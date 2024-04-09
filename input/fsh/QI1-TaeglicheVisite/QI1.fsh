Instance: DIVIQualityIndicator1
InstanceOf: recommendation
Usage: #definition
Title: "DIVI Quality Indicator 1"
Description: "DIVI Quality Indicator 1: Daily multiprofessional ward rounds with documentation of treatment goals"
* name = "DiVI_QualityIndicator_1"
* version = "1.0"
* date = "2024-03-29"
* status = #active
* insert canonical-url(DIVI-DigiQIs, recommendation/DIVI-QualityIndicator-1)
* experimental = true
* publisher = "Deutsche Interdisziplinäre Vereinigung für Intensiv- und Notfallmedizin (DIVI)"
* insert rs-combination-all

// Reference to Quality Indicator 1a
* action[+]
  * title = "DIVI Quality Indicator 1a: Daily multiprofessional ward rounds"
  * code = $cs-common-process#guideline-based-care
  * description = "Every Intensive Care Patient should be visited daily in multiprofessional ward rounds."
  * definitionCanonical = Canonical(DailyMultiprofessionalWardRounds)

// Reference to Quality Indicator 1b
* action[+]
  * title = "DIVI Quality Indicator 1b: Daily documentation of treatment goals"
  * code = $cs-common-process#guideline-based-care
  * description = "Treatment Goals should be documented daily for every Intensive Care Patient."
  * definitionCanonical = Canonical(DailyDocumentationTreatmentGoals)


