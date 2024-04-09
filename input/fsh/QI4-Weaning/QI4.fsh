Instance: DIVIQualityIndicator4
InstanceOf: recommendation
Usage: #definition
Title: "DIVI Quality Indicator 4"
Description: "DIVI Quality Indicator 4: Early Weaning from Invasive Ventilation"
* name = "DiVI_QualityIndicator_4"
* version = "1.0"
* date = "2024-03-29"
* status = #active
* insert canonical-url(DIVI-DigiQIs, recommendation/DIVI-QualityIndicator-4)
* experimental = true
* publisher = "Deutsche Interdisziplinäre Vereinigung für Intensiv- und Notfallmedizin (DIVI)"
* insert rs-combination-all

// Reference to Quality Indicator 4a
* action[+]
  * title = "DIVI Quality Indicator 4a: Daily Evaluation of Readiness-to-Wean and/or Weaning Trials"
  * code = $cs-common-process#guideline-based-care
  * description = "All invasive ventilated Intensive Care Patients should be evaluated for their readiness-to-wean and/or receive weaning trials at least once every day."
  * definitionCanonical = Canonical(PeriodicAssessmentOfWeaning)

// Reference to Quality Indicator 4b
* action[+]
  * title = "DIVI Quality Indicator 4b: Discharge with dependence on home ventilation"
  * code = $cs-common-process#guideline-based-care
  * description = "The fraction of patients discharged with dependence on home ventilation should be low."
  * definitionCanonical = Canonical(DischargeWithoutHomeVentilation)

