Instance: DailyMultiprofessionalWardRounds
InstanceOf: recommendation-plan 
Usage: #definition
Title: "Daily multiprofessional ward rounds"
Description: "Every Intensive Care Patient should be visited daily in multiprofessional ward rounds."
* insert canonical-url(DIVI-DigiQIs, intervention/daily-ward-rounds)
* status = #active
* name = "Intervention_DailyWardRounds"
* date = "2024-03-29"
* version = "1.0"

// Reference Recommendation Collection
* extension[partOf].valueCanonical = Canonical(DIVIQualityIndicator1)

// Reference Population for the Intervention: Intensive Care Patients
* subjectCanonical = Canonical(IntensiveCarePatients)

// Define Intervention 
* insert rs-combination-all
* action[assessment][+]
  * code = $sct#386053000 "Evaluation procedure (procedure)"
  * goalId[+] = "multiprofessional-wardrounds-goal"
* action[assessment][+]
  * code = $sct#386053000 "Evaluation procedure (procedure)"
  * goalId[+] = "multiprofessional-wardrounds-include-icu-specialist-goal"

// Define Goal for Multiprofessional Ward Rounds occurrence
* goal[assessmentScale][+]
  * category = $sct#273249006 "Assessment scales (assessment scale)"
  * id = "multiprofessional-wardrounds-goal"
  * description.text = "Ward Rounds should be performed at least once every day."
  * target[+]
    * measure = $sct#1236923003 "Participation in multidisciplinary ward round"
    * detailRange.low = 1 'occurrence' "occurrence"
    * due = 1 'd' "d"

// Define Goal for participation of ICU specialist
* goal[assessmentScale][+]
  * category = $sct#273249006 "Assessment scales (assessment scale)"
  * id = "multiprofessional-wardrounds-include-icu-specialist-goal"
  * description.text = "Ward Rounds should include at least one physician with ICU specialist certification."
  * target[+]
    * measure = $divi-qi-s#FA-ZB-ITS "Participation of ICU specialist in multidisciplinary ward round"
    * detailRange.low = 1 'occurrence' "occurrence"
    * due = 1 'd' "d"


Instance: DailyDocumentationTreatmentGoals
InstanceOf: recommendation-plan 
Usage: #definition
Title: "Daily Documentation of Treatment Goals"
Description: "Treatment Goals should be documented daily for every Intensive Care Patient."
* insert canonical-url(DIVI-DigiQIs, intervention/daily-treatment-goals)
* status = #active
* name = "Intervention_DailyTreatmentGoals"
* date = "2024-03-29"
* version = "1.0"

// Reference Recommendation Collection
* extension[partOf].valueCanonical = Canonical(DIVIQualityIndicator1)

// Reference Population for the Intervention: Intensive Care Patients
* subjectCanonical = Canonical(IntensiveCarePatients)

// Define Intervention 
* insert rs-combination-all
* action[assessment][+]
  * code = $sct#386053000 "Evaluation procedure (procedure)"
  * goalId[+] = "daily-treatment-goals-goal"

// Define Goal for Documentation of Treatment Goals
* goal[assessmentScale][+]
  * category = $sct#273249006 "Assessment scales (assessment scale)"
  * id = "daily-treatment-goals-goal"
  * description.text = "Treatment Goals should be documented at least once every day."
  * target[+]
    * measure = $divi-qi-s#TAGESZIEL "Setting health objective"
    * detailRange.low = 1 'occurrence' "occurrence"
    * due = 1 'day' "day"

