Instance: IntensiveCarePatients-InvasiveVentilation-NoHomeVentilation
InstanceOf: recommendation-eligibility-criteria
Usage: #definition
Title: "Population: Intensive Care Patients with Invasive Ventilation and no Home Ventilation "
Description: "Intensive Care Patients with Invasive Ventilation and no Home Ventilation"
* insert canonical-url(DIVI-DigiQIs, population/intensive-care-patients_invasive-ventilation_no-home-ventilation)
* status = #active
* name = "Population_IntensiveCarePatients_InvasiveVentilation_NoHomeVentilation"

// Include Intensive Care Patients
* characteristic[procedure][+]
  * definitionByTypeAndValue
    * valueCodeableConcept = $sct#133903000 "Care of Intensive Care Unit Patient"
* characteristic[procedure][=].exclude = false

// Include only Patients with Invasive Ventilation
* characteristic[procedure][+]
  * definitionByTypeAndValue
    * valueCodeableConcept = $sct#226471000000101 "Invasive Ventilation"
* characteristic[procedure][=].exclude = false

// Exclude Patients with Dependence on Home Ventilator at or before Admission to Intensive Care Unit
* characteristic[condition][+]
  * definitionByTypeAndValue
    * valueCodeableConcept = $sct#60631000119109 "Dependence on home ventilator"
  * timeFromEvent
    * eventCodeableConcept = $sct#305351004 "Admission to Intensive Care Unit"
    * range
      * high = 0 'days' "days"
* characteristic[condition][=].exclude = true