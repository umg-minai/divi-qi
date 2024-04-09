Instance: InitialMobilization
InstanceOf: recommendation-plan 
Usage: #definition
Title: "Inital Mobilization"
Description: "All Intensive Care Patients should be mobilized within 24 hours after admission to ICU."
* insert canonical-url(DIVI-DigiQIs, intervention/initial-mobilization)
* status = #active
* name = "Intervention_InitialMobilization"
* date = "2024-03-29"
* version = "1.0"

// Reference Recommendation Collection
* extension[partOf].valueCanonical = Canonical(DIVIQualityIndicator9)

// Reference Population for the Intervention: All Intensive Care Patients 
* subjectCanonical = Canonical(IntensiveCarePatients)

// Define Intervention 
* insert rs-combination-all
* action[assessment][+]
  * code = $sct#386053000 "Evaluation procedure (procedure)"
  * goalId[+] = "assessment-inital-mobilization"

// Define Goal for Initial Mobilization
* goal[assessmentScale][+]
  * category = $sct#273249006 "Assessment scales (assessment scale)"
  * id = "assessment-inital-mobilization"
  * description.text = "Mobilized should be performed within 24 hours after admission to ICU."
  * target[+]
    * measure = $sct#74923002 "Mobilization"
    * detailRange.low = 1 'occurrence' "occurrence"
    * due = 1 'day' "day"
/*     * timeFromEvent
      * eventCodeableConcept = $sct#305351004 "Admission to Intensive Care Unit"
      * range 
        * high = 24 'hours' "hours" */


Instance: PeriodicMobilization
InstanceOf: recommendation-plan 
Usage: #definition
Title: "Periodic Mobilization"
Description: "All Intensive Care Patients that don't have a no-mobilization order should be mobilized at least once every day."
* insert canonical-url(DIVI-DigiQIs, intervention/periodic-mobilization)
* status = #active
* name = "Intervention_PeriodicMobilization"
* date = "2024-03-29"
* version = "1.0"

// Reference Recommendation Collection
* extension[partOf].valueCanonical = Canonical(DIVIQualityIndicator9)

// Reference Population for the Intervention: Intensive Care Patients without a no-mobilization order
* subjectCanonical = Canonical(IntensiveCarePatients-WithOut-NoMobilizationOrder)

// Define Intervention 
* insert rs-combination-all
* action[assessment][+]
  * code = $sct#386053000 "Evaluation procedure (procedure)"
  * goalId[+] = "assessment-periodic-mobilization"

// Define Goal for Periodic Mobilization
* goal[assessmentScale][+]
  * category = $sct#273249006 "Assessment scales (assessment scale)"
  * id = "assessment-periodic-mobilization"
  * description.text = "Mobilization should be performed at least once every day."
  * target[+]
    * measure = $sct#74923002 "Mobilization"
    * detailRange.low = 1 'occurrence' "occurrence"
    * due = 1 'day' "day"

