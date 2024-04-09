Instance: PeriodicAssessmentOfWeaning
InstanceOf: recommendation-plan 
Usage: #definition
Title: "Daily Evaluation of Readiness-to-Wean and/or Weaning Trials"
Description: "All invasive ventilated Intensive Care Patients should be evaluated for their readiness-to-wean and/or receive weaning trials at least once every day."
* insert canonical-url(DIVI-DigiQIs, intervention/periodic-assessment_weaning)
* status = #active
* name = "Intervention_PeriodicAssessment_Weaning"
* date = "2024-03-29"
* version = "1.0"

// Reference Recommendation Collection
* extension[partOf].valueCanonical = Canonical(DIVIQualityIndicator4)

// Reference Population for the Intervention: Invasive Ventilated Intensive Care Patients
* subjectCanonical = Canonical(IntensiveCarePatients-InvasiveVentilation-NoHomeVentilation)

// Define Intervention 
* insert rs-combination-any 
* action[assessment][+]
  * code = $sct#386053000 "Evaluation procedure (procedure)"
  * goalId[+] = "assessment-weaning-goal"
* action[ventilatorManagement][+]
  * code = $sct#410210009 "Ventilator care management (procedure)"
  * goalId[+] = "weaning-trial-goal"

// Define Goal for Weaning Assessment
* goal[assessmentScale][+]
  * category = $sct#273249006 "Assessment scales (assessment scale)"
  * id = "assessment-weaning-goal"
  * description.text = "Readiness-to-wean should be assessed periodically every day."
  * target[+]
    * measure = $sct#1259865002 "Weaning from mechanically assisted ventilation commenced"
    * detailRange.low = 1 'occurrence' "occurrence"
    * due = 1 'day' "day"

// Define Goal for Weaning Trial
* goal[ventilatorManagement][+]
  * category = $sct#385857005 "Ventilator care and adjustment (regime/therapy)"
  * id = "weaning-trial-goal"
  * description.text = "Weaning trials should be performed periodically every day."
  * target[+]
    * measure = $sct#1259865002 "Weaning from mechanically assisted ventilation commenced"
    * detailRange.low = 1 'occurrence' "occurrence"
    * due = 1 'day' "day"


Instance: DischargeWithoutHomeVentilation
InstanceOf: recommendation-plan 
Usage: #definition
Title: "Discharge with dependence on home ventilation"
Description: "The fraction of patients discharged with dependence on home ventilation should be low."
* insert canonical-url(DIVI-DigiQIs, intervention/discharge_longterm-ventilation-facility)
* status = #active
* name = "Intervention_Discharge_DependenceHomeVentilation"
* date = "2024-03-29"
* version = "1.0"

// Reference Recommendation Collection
* extension[partOf].valueCanonical = Canonical(DIVIQualityIndicator4)

// Reference Population for the Intervention: Invasive Ventilated Intensive Care Patients
* subjectCanonical = Canonical(IntensiveCarePatients-InvasiveVentilation-NoHomeVentilation)

// Define Intervention 
* insert rs-combination-all
//  * doNotPerform = true 
* action[assessment][+]
  * code = $sct#386053000 "Evaluation procedure (procedure)"
  * goalId[+] = "no-discharge-with-home-ventilation"

// Define Goal for No Discharge to Longterm-Ventilation Facility
* goal[assessmentScale][+]
  * category = $sct#273249006 "Assessment scales (assessment scale)"
  * id = "no-discharge-with-home-ventilation"
  * description.text = "The fraction of patients discharged with dependence on home ventilation should be low."
  * target[+]
    * measure = $sct#60631000119109 "Dependence on home ventilation"
    * detailRange.low = 0 'occurrence' "occurrence"
    * detailCodeableConcept = $sct#306568008 "Discharge from intensive care service"

