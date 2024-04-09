Instance: IntensiveCarePatients
InstanceOf: recommendation-eligibility-criteria
Usage: #definition
Title: "Population: Intensive Care Patients"
Description: "Intensive Care Patients"
* insert canonical-url(DIVI-DigiQIs, population/intensive-care-patients)
* status = #active
* name = "Population_IntensiveCarePatients"

// Include Intensive Care Patients
* characteristic[procedure][+]
  * definitionByTypeAndValue
    * valueCodeableConcept = $sct#133903000 "Care of Intensive Care Unit Patient"
* characteristic[procedure][=].exclude = false