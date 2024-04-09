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
* action[assessment][+]
  * code = $sct#386053000 "Evaluation procedure (procedure)"
  * goalId[+] = "assessment-stop-orders-invasive-devices"

// Define Goal for Stop-Orders for Invasive Devices
* goal[assessmentScale][+]
  * category = $sct#273249006 "Assessment scales (assessment scale)"
  * id = "assessment-stop-orders-invasive-devices"
  * description.text = "All invasive devices should have a daily re-evaluation regarding the necessity of each device."
  * target[+]
    * measure = $sct#230165009 "Indication of"
    * detailRange.low = 1 'occurrence' "occurrence"
    * due = 1 'day' "day"


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
* goal[assessmentScale][+]
  * category = $sct#273249006 "Assessment scales (assessment scale)"
  * id = "assessment-hand-disinfectant-consumption"
  * description.text = "The consumption of hand disinfectant should be more than 80 litres per 1000 days."
  * target[+]
    * measure = $sct#311942001 "Disinfectant"
    * detailRange.low = 80 'litres' "litres"
    * due = 1000 'days' "days"


Instance: InfectionDeviceRatio
InstanceOf: recommendation-plan 
Usage: #definition
Title: "Infection-per-Device Ratio"
Description: "The number of infections per invasive devices should be low."
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
* goal[assessmentScale][+]
  * category = $sct#273249006 "Assessment scales (assessment scale)"
  * id = "assessment-infection-device-ratio"
  * description.text = "The number of infections per invasive devices should be low."
  * target[+]
    * measure = $sct#736152001 "CLABSI - central line associated bloodstream infection"
    * detailRange.low = 0 'occurrence' "occurrence"
    * due = 1 'day' "day"


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
* goal[assessmentScale][+]
  * category = $sct#273249006 "Assessment scales (assessment scale)"
  * id = "assessment-pneumonia-ventilated-patients-ratio"
  * description.text = "The number of pneumonia cases per ventilated patients should be low."
  * target[+]
    * measure = $sct#429271009 "Ventilator associated pneumonia"
    * detailRange.low = 0 'occurrence' "occurrence"
    * due = 1 'day' "day"


