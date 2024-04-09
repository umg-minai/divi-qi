Instance: DIVIQualityIndicator2
InstanceOf: recommendation
Usage: #definition
Title: "DIVI Quality Indicator 2"
Description: "DIVI Quality Indicator 2: Management of Sedation, Analgesia and Delirium"
* name = "DiVI_QualityIndicator_2"
* version = "1.0"
* date = "2024-03-29"
* status = #active
* insert canonical-url(DIVI-DigiQIs, recommendation/DIVI-QualityIndicator-2)
* experimental = true
* publisher = "Deutsche Interdisziplinäre Vereinigung für Intensiv- und Notfallmedizin (DIVI)"
* insert rs-combination-all

// Reference to Quality Indicator 2a
* action[+]
  * title = "DIVI Quality Indicator 2a: Periodic Assessment of Sedation, Analgesia and Delirium in all Intensive Care Patients"
  * code = $cs-common-process#guideline-based-care
  * description = "Sedation Level, Analgesia Level and Delirium Status should be assessed at least once in each shift (time-slots 6-14, 14-22, 22-6) in all Intensive Care Patients."
  * definitionCanonical = Canonical(PeriodicAssessmentOfSedationAnalgesiaDelirium)
  
// Reference to Quality Indicator 2b
* action[+]
  * title = "DIVI Quality Indicator 2b: Sedation Level, Analgesia Level, Delirium Status"
  * code = $cs-common-process#guideline-based-care
  * description = "Sedation Level, Analgesia Level and Delirium Status should be in acceptable ranges in all Intensive Care Patients."
  * definitionCanonical = Canonical(SedationLevelAnalgesiaLevelDeliriumStatusInAcceptableRanges)

