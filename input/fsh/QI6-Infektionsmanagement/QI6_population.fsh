Instance: IntensiveCarePatients-Antibiotic
InstanceOf: recommendation-eligibility-criteria
Usage: #definition
Title: "Population: Intensive Care Patients with at least one antibiotic"
Description: "Intensive Care Patients with at least one antibiotic"
* insert canonical-url(DIVI-DigiQIs, population/intensive-care-patients_antibiotic)
* status = #active
* name = "Population_IntensiveCarePatients_Antibiotic"

// Include Intensive Care Patients
* characteristic[procedure][+]
  * definitionByTypeAndValue
    * valueCodeableConcept = $sct#133903000 "Care of Intensive Care Unit Patient"
* characteristic[procedure][=].exclude = false

// Include only Patients that have at least one antibiotic
* characteristic[procedure][+]
  * definitionByTypeAndValue
    * valueCodeableConcept = $sct#41000005 "Antibiotic"
* characteristic[procedure][=].exclude = false

