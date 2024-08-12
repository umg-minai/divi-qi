// TODO: is the basis here (for population) the patient or the device?

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
  * definitionCanonical = Canonical(DailyWeaningAssessments)
  * code = $sct#74964007 "Other (qualifier value)"
* action[other][+] 
  * definitionCanonical = Canonical(DailyWeaningTrials)
  * code = $sct#74964007 "Other (qualifier value)"


// Recommended Action
Instance: DailyWeaningAssessments
InstanceOf: RecommendationAction
Usage: #definition
Title: "Daily Assessments of Readiness-to-wean from mechanical ventilation"
Description: "Readiness-to-wean from mechanical ventilation is assessed periodically every day."
* name = "DailyWeaningAssessments"
* insert canonical-url(DIVI-DigiQIs, recommended-action/daily-weaning-assessments)
* insert publisher-experimental-version(7.0)
* status = #active
* code = $divi-qi-s#EVAL-VENT-WEAN "Assessment of Readiness-to-wean from mechanical ventilation"
* kind = $cs-fhir-types#Task "Task"
* timingTiming
  * repeat
    * frequency = 1
    * period = 1
    * periodUnit = $ucum#d "day"

Instance: DailyWeaningTrials
InstanceOf: RecommendationAction
Usage: #definition
Title: "Daily Weaning Trials"
Description: "Weaning trials are performed periodically every day."
* name = "DailyWeaningTrials"
* insert canonical-url(DIVI-DigiQIs, recommended-action/daily-weaning-trials)
* insert publisher-experimental-version(7.0)
* status = #active
* code = $sct#1259865002 "Weaning from mechanically assisted ventilation commenced"
* kind = $cs-fhir-types#Task "Task"
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
* action[other][+] 
  * definitionCanonical = Canonical(NoDischargeWithHomeVentilation)
  * code = $sct#74964007 "Other (qualifier value)"

// Recommended Action
Instance: NoDischargeWithHomeVentilation // TODO: doNotPerform flag
InstanceOf: RecommendationAction
Usage: #definition
Title: "No Discharge with Home Ventilation"
Description: "The patient is not discharged with home ventilation."
* name = "NoDischargeWithHomeVentilation"
* insert canonical-url(DIVI-DigiQIs, recommended-action/no-discharge-with-home-ventilation)
* insert publisher-experimental-version(7.0)
* status = #active
* code = $sct#60631000119109 "Dependence on home ventilator" //Zum Zeitpunkt: $sct#306568008 "Discharge from intensive care service"
* kind = $cs-fhir-types#Task "Task"
* timingTiming
  * repeat
    * frequency = 1
    * period = 1
    * periodUnit = $ucum#d "day"