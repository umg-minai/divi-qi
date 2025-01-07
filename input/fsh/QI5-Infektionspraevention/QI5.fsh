Instance: DIVIQualityIndicator5
InstanceOf: recommendation
Usage: #definition
Title: "DIVI Quality Indicator 5"
Description: "DIVI Quality Indicator 5: Infection Prevention"
* name = "DiVI_QualityIndicator_5"
* version = "1.0"
* date = "2024-03-29"
* status = #active
* insert canonical-url(DIVI-DigiQIs, recommendation/DIVI-QualityIndicator-5)
* experimental = true
* publisher = "Deutsche Interdisziplinäre Vereinigung für Intensiv- und Notfallmedizin (DIVI)"
* insert rs-combination-all

// Reference to Quality Indicator 5a
* action[+]
  * title = "DIVI Quality Indicator 5a: Stop Orders for Invasive Devices"
  * code = $cs-common-process#guideline-based-care
  * description = "All Intensive Care Patients with invasive devices should have a daily re-evaluation regarding the necessity of each device."
  * definitionCanonical = Canonical(StopOdersInvasiveDevices)

// Reference to Quality Indicator 5b
* action[+]
  * title = "DIVI Quality Indicator 5b: Hand Disinfectant Consumption"
  * code = $cs-common-process#guideline-based-care
  * description = "The consumption of hand disinfectant should be more than 80 litres per 1000 days."
  * definitionCanonical = Canonical(HandDisinfectantConsumption)

// Reference to Quality Indicator 5c
* action[+]
  * title = "DIVI Quality Indicator 5c: Infection-per-Device Ratio"
  * code = $cs-common-process#guideline-based-care
  * description = "The number of infections per invasive devices should be low."
  * definitionCanonical = Canonical(InfectionDeviceRatio)

// Reference to Quality Indicator 5d
* action[+]
  * title = "DIVI Quality Indicator 5d: Pneumonia-per-Ventilated-Patients Ratio"
  * code = $cs-common-process#guideline-based-care
  * description = "The number of pneumonia cases per ventilated patients should be low."
  * definitionCanonical = Canonical(PenumoniaVentilatedPatientRatio)




