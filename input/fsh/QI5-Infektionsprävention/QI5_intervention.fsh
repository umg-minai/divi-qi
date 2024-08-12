// TODO: is the basis here (for population) the patient or the device?

Instance: StopOdersInvasiveDevices
InstanceOf: recommendation-plan 
Usage: #definition
Title: "Stop Orders for Invasive Devices"
Description: "All Intensive Care Patients with invasive devices should have a daily re-evaluation regarding the necessity of each device."
* insert canonical-url(DIVI-DigiQIs, intervention/stop-orders_invasive-devices)
* status = #active
* name = "Intervention_StopOrders_InvasiveDevices"
* date = "2024-03-29"
* version = "1.0"

// Reference Recommendation Collection
* extension[partOf].valueCanonical = Canonical(DIVIQualityIndicator5)

// Reference Population for the Intervention: All Intensive Care Patients with at least one invasive device
* subjectCanonical = Canonical(IntensiveCarePatients-InvasiveDevice)

// Define Intervention 
* insert rs-combination-all
* action[other][+] 
  * definitionCanonical = Canonical(DailyStopOrdersInvasiveDevices)
  * code = $sct#74964007 "Other (qualifier value)"


// Recommended Action
Instance: DailyStopOrdersInvasiveDevices
InstanceOf: RecommendationAction
Usage: #definition
Title: "Daily Stop-Orders for Invasive Devices"
Description: "All invasive devices have a daily re-evaluation regarding the necessity of each device."
* name = "DailyStopOrdersInvasiveDevices"
* insert canonical-url(DIVI-DigiQIs, recommended-action/daily-stop-orders-invasive-devices)
* insert publisher-experimental-version(7.0)
* status = #active
* code = $sct#230165009 "Indication of" // TODO: find better code (self-defined?)
* kind = $cs-fhir-types#Task "Task"
* timingTiming
  * repeat
    * frequency = 1
    * period = 1
    * periodUnit = $ucum#d "day"


Instance: HandDisinfectantConsumption
InstanceOf: recommendation-plan 
Usage: #definition
Title: "Hand Disinfectant Consumption"
Description: "The consumption of hand disinfectant should be more than 80 litres per 1000 days."
* insert canonical-url(DIVI-DigiQIs, intervention/hand-disinfectant_consumption)
* status = #active
* name = "Intervention_HandDisinfectant_Consumption"
* date = "2024-03-29"
* version = "1.0"

// Reference Recommendation Collection
* extension[partOf].valueCanonical = Canonical(DIVIQualityIndicator5)

// Reference Population for the Intervention: All Intensive Care Patients 
* subjectCanonical = Canonical(IntensiveCarePatients)

// Define Intervention 
* insert rs-combination-all
* action[assessment][+]
  * code = $sct#386053000 "Evaluation procedure (procedure)"
  * goalId[+] = "assessment-hand-disinfectant-consumption"

// Define Goal for the Hand-Disinfectant Consumption
* goal[other][+]
  * category = $sct#74964007 "Other (qualifier value)"
  * id = "assessment-hand-disinfectant-consumption"
  * description.text = "The consumption of hand disinfectant is more than 80 litres per 1000 days."
  * target[+]
    * measure = $sct#311942001 "Disinfectant"
    * detailRange.low = 80 $ucum#L "liter"
    * due = 1000 $ucum#d "day"


Instance: InfectionDeviceRatio
InstanceOf: recommendation-plan 
Usage: #definition
Title: "Infection-per-Device Ratio"
Description: "The number of infections per invasive devices is at zero."
* insert canonical-url(DIVI-DigiQIs, intervention/infection-device-ratio)
* status = #active
* name = "Intervention_Infection_Device_Ratio"
* date = "2024-03-29"
* version = "1.0"

// Reference Recommendation Collection
* extension[partOf].valueCanonical = Canonical(DIVIQualityIndicator5)

// Reference Population for the Intervention: All Intensive Care Patients with at least one invasive device
* subjectCanonical = Canonical(IntensiveCarePatients-InvasiveDevice)

// Define Intervention 
* insert rs-combination-all
* action[assessment][+]
  * code = $sct#386053000 "Evaluation procedure (procedure)"
  * goalId[+] = "assessment-infection-device-ratio"

// Define Goal for the Infection-per-Device Ratio
* goal[other][+]
  * category = $sct#74964007 "Other (qualifier value)"
  * id = "assessment-infection-device-ratio"
  * description.text = "The number of infections per invasive devices is at zero."
  * target[+]
    * measure = $sct#736152001 "CLABSI - central line associated bloodstream infection"
    * detailRange.low = 0 '' ""
    * due = 1 $ucum#d "day"


Instance: PenumoniaVentilatedPatientRatio
InstanceOf: recommendation-plan 
Usage: #definition
Title: "Pneumonia-per-Ventilated-Patients Ratio"
Description: "The number of pneumonia cases per ventilated patients should be low."
* insert canonical-url(DIVI-DigiQIs, intervention/pneumonia-ventilated-patients-ratio)
* status = #active
* name = "Intervention_Pneumonia_VentilatedPatients_Ratio"
* date = "2024-03-29"
* version = "1.0"

// Reference Recommendation Collection
* extension[partOf].valueCanonical = Canonical(DIVIQualityIndicator5)

// Reference Population for the Intervention: All Intensive Care Patients that are ventilated 
* subjectCanonical = Canonical(IntensiveCarePatients-InvasiveVentilation)

// Define Intervention 
* insert rs-combination-all
* action[assessment][+]
  * code = $sct#386053000 "Evaluation procedure (procedure)"
  * goalId[+] = "assessment-pneumonia-ventilated-patients-ratio"

// Define Goal for the Pneumonia-Ventilated-Patients-Ratio
* goal[other][+]
  * category = $sct#74964007 "Other (qualifier value)"
  * id = "assessment-pneumonia-ventilated-patients-ratio"
  * description.text = "The number of pneumonia cases per ventilated patients is at zero."
  * target[+]
    * measure = $sct#429271009 "Ventilator associated pneumonia"
    * detailRange.low = 0 '' ""
    * due = 1 $ucum#d "day"


