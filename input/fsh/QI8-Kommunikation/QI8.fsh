Instance: DIVIQualityIndicator8
InstanceOf: recommendation
Usage: #definition
Title: "DIVI Quality Indicator 8"
Description: "DIVI Quality Indicator 8: Structured Communication with Patients and Relatives"
* name = "DiVI_QualityIndicator_8"
* version = "1.0"
* date = "2024-03-29"
* status = #active
* insert canonical-url(DIVI-DigiQIs, recommendation/DIVI-QualityIndicator-8)
* experimental = true
* publisher = "Deutsche Interdisziplinäre Vereinigung für Intensiv- und Notfallmedizin (DIVI)"
* insert rs-combination-all

// Reference to Quality Indicator 8a
* action[+]
  * title = "DIVI Quality Indicator 8a: Inital Structured Communication with Patients and/or Relatives"
  * code = $cs-common-process#guideline-based-care
  * description = "For all Intensive Care Patients, an initial structured communication with the Patients and/or their Relatives should take place within 72 hours of Admission to Intensive Care."
  * definitionCanonical = Canonical(InitialCommunicationPatientsRelatives)

// Reference to Quality Indicator 8b
* action[+]
  * title = "DIVI Quality Indicator 8b: Periodic Structured Communication with Patients and/or Relatives"
  * code = $cs-common-process#guideline-based-care
  * description = "For all Intensive Care Patients, at least one structured communication with the Patients and/or their Relatives should take place every week."
  * definitionCanonical = Canonical(PeriodicCommunicationPatientsRelatives)

