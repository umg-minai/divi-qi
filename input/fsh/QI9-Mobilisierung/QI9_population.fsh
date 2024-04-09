Instance: IntensiveCarePatients-WithOut-NoMobilizationOrder
InstanceOf: recommendation-eligibility-criteria
Usage: #definition
Title: "Population: Intensive Care Patients without a no-mobilization order"
Description: "Intensive Care Patients without a no-mobilization order"
* insert canonical-url(DIVI-DigiQIs, population/intensive-care-patients_without_no-mobilization-order)
* status = #active
* name = "Population_IntensiveCarePatients_WithOut_NoMobilizationOrder"

// Include Intensive Care Patients
* characteristic[procedure][+]
  * definitionByTypeAndValue
    * valueCodeableConcept = $sct#133903000 "Care of Intensive Care Unit Patient"
* characteristic[procedure][=].exclude = false

// Include only Patients that don't have a no-mobilization order
* characteristic[procedure][+]
  * definitionByTypeAndValue
    * valueCodeableConcept = $sct#183074009 "Recommendation to rest in bed"
* characteristic[procedure][=].exclude = true

