Instance: IntensiveCarePatients-IntensiveCareLongerThanThreeDays
InstanceOf: recommendation-eligibility-criteria
Usage: #definition
Title: "Population: Intensive Care Patients with Intensive Care Treatment Longer Than Three Days"
Description: "Intensive Care Patients with Intensive Care Treatment Longer Than Three Days"
* insert canonical-url(DIVI-DigiQIs, population/intensive-care-patients_intensive-care-longer-than-three-days)
* status = #active
* name = "Population_IntensiveCarePatients_IntensiveCareLongerThanThreeDays"

// Include Intensive Care Patients
* characteristic[procedure][+]
  * definitionByTypeAndValue
    * valueCodeableConcept = $sct#133903000 "Care of Intensive Care Unit Patient"
  * durationRange
    * low = 72.000000001 'hours' "hours"
* characteristic[procedure][=].exclude = false

// Include only Patients that were admitted to ICU more than three days ago
* characteristic[procedure][+]
  * definitionByTypeAndValue
    * valueCodeableConcept = $sct#133903000 "Care of Intensive Care Unit Patient"
  * timeFromEvent
    * eventCodeableConcept = $sct#305351004 "Admission to Intensive Care Unit"
    * range 
      * low = 72.000000001 'hours' "hours"
* characteristic[procedure][=].exclude = false

