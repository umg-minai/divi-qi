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
* action[other][+] 
  * definitionCanonical = Canonical(dailyWeaningAssessments)
  * code = $sct#74964007 "Other (qualifier value)"
* action[other][+] 
  * definitionCanonical = Canonical(dailyWeaningTrials)
  * code = $sct#74964007 "Other (qualifier value)"


// Recommended Action
Instance: dailyWeaningAssessments
InstanceOf: body-positioning-action
Usage: #definition
Title: "Daily Assessments of Readiness-to-wean from mechanical ventilation"
Description: "Readiness-to-wean from mechanical ventilation should be assessed periodically every day."
* name = "dailyWeaningAssessments"
* insert canonical-url(DIVI-DigiQIs, recommended-action/daily-weaning-assessments)
* insert publisher-experimental-version(7.0)
* status = #active
* code = $divi-qi-s#EVAL-VENT-WEAN "Assessment of Readiness-to-wean from mechanical ventilation"
* timingTiming
  * repeat
    * frequency = 1
    * period = 1
    * periodUnit = $ucum#d "day"

Instance: dailyWeaningTrials
InstanceOf: body-positioning-action
Usage: #definition
Title: "Daily Weaning Trials"
Description: "Weaning trials should be performed periodically every day."
* name = "dailyWeaningTrials"
* insert canonical-url(DIVI-DigiQIs, recommended-action/daily-weaning-trials)
* insert publisher-experimental-version(7.0)
* status = #active
* code = $sct#1259865002 "Weaning from mechanically assisted ventilation commenced"
* timingTiming
  * repeat
    * frequency = 1
    * period = 1
    * periodUnit = $ucum#d "day"


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
    * measure = $sct#60631000119109 "Dependence on home ventilator"
    * detailRange.low = 0 '' ""
    * detailCodeableConcept = $sct#306568008 "Discharge from intensive care service"

