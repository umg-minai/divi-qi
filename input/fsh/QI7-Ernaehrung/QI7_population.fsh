Instance: IntensiveCarePatients-PredictedInsufficientEnergyIntake
InstanceOf: recommendation-eligibility-criteria
Usage: #definition
Title: "Population: Intensive Care Patients with Predicted Insufficient Energy Intake"
Description: "Intensive Care Patients with Predicted Insufficient Energy Intake"
* insert canonical-url(DIVI-DigiQIs, population/intensive-care-patients_predicted-insufficient-energy-intake)
* status = #active
* name = "Population_IntensiveCarePatients_PredictedInsufficientEnergyIntake"

// Include Intensive Care Patients
* characteristic[procedure][+]
  * definitionByTypeAndValue
    * valueCodeableConcept = $sct#133903000 "Care of Intensive Care Unit Patient"
* characteristic[procedure][=].exclude = false

// Include only Patients with Predicted Insufficient Energy Intake 
* characteristic[procedure][+]
  * definitionByTypeAndValue
    * valueCodeableConcept = $sct#440331000124103 "Predicted Inadequate Energy Intake"
* characteristic[procedure][=].exclude = false


Instance: IntensiveCarePatients-ClinicallyFed-NoAdipositas
InstanceOf: recommendation-eligibility-criteria
Usage: #definition
Title: "Population: Intensive Care Patients that are clinically fed and have no Adipositas"
Description: "Intensive Care Patients that are clinically fed and have no Adipositas"
* insert canonical-url(DIVI-DigiQIs, population/intensive-care-patients_clinically-fed_no-adipositas)
* status = #active
* name = "Population_IntensiveCarePatients_ClinicallyFed_NoAdipositas"

// Include Intensive Care Patients
* characteristic[procedure][+]
  * definitionByTypeAndValue
    * valueCodeableConcept = $sct#133903000 "Care of Intensive Care Unit Patient"
* characteristic[procedure][=].exclude = false

// Include only Patients that are Clinically Fed 
* characteristic[procedure][+]
  * definitionByTypeAndValue
    * valueCodeableConcept = $sct#75118006 "Feeding Patient"
* characteristic[procedure][=].exclude = false

// Include only Patients that don't have Adipositas 
* characteristic[condition][+]
  * definitionByTypeAndValue
    * valueCodeableConcept = $sct#60621009 "Body Mass Index"
    * valueRange
      * low = 0 'mmHg' "mmHg"
      * high = 29.999999999 'mmHg' "mmHg"
* characteristic[condition][=].exclude = false

// Exclude Patients with Contraindication of Enteral Feeding 
* characteristic[condition][+]
  * definitionByTypeAndValue
    * offset = $sct#103306004 "Contraindication to"
    * valueCodeableConcept = $sct#229912004 "Enteral Feeding"
* characteristic[condition][=].exclude = true