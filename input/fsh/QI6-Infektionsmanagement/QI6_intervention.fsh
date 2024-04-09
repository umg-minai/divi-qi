Instance: AntibioticsIndicationFocusDuration
InstanceOf: recommendation-plan 
Usage: #definition
Title: "Indication, Focus and Duration of Therapy for Antibiotics"
Description: "All Intensive Care Patients with Antibiotics should have a daily re-evaluation of the Indication, Focus and Duration of Therapy for each Antibiotic."
* insert canonical-url(DIVI-DigiQIs, intervention/antibiotics_indication-focus-duration)
* status = #active
* name = "Intervention_Antibiotics_IndicationFocusDuration"
* date = "2024-03-29"
* version = "1.0"

// Reference Recommendation Collection
* extension[partOf].valueCanonical = Canonical(DIVIQualityIndicator6)

// Reference Population for the Intervention: All Intensive Care Patients with at least one antibiotic
* subjectCanonical = Canonical(IntensiveCarePatients-Antibiotic)

// Define Intervention 
* insert rs-combination-all
* action[assessment][+]
  * code = $sct#386053000 "Evaluation procedure (procedure)"
  * goalId[+] = "assessment-antibiotic-indication"
  * goalId[+] = "assessment-antibiotic-focus"
  * goalId[+] = "assessment-antibiotic-duration"

// Define Goal for Antibiotics' Indication
* goal[assessmentScale][+]
  * category = $sct#273249006 "Assessment scales (assessment scale)"
  * id = "assessment-antibiotic-indication"
  * description.text = "Antibiotics should have a daily re-evaluation of the Indication for each Antibiotic."
  * target[+]
    * measure = $sct#230165009 "Indication of"
    * detailRange.low = 1 'occurrence' "occurrence"
    * due = 1 'day' "day"

// Define Goal for Antibiotics' Focus
* goal[assessmentScale][+]
  * category = $sct#273249006 "Assessment scales (assessment scale)"
  * id = "assessment-antibiotic-focus"
  * description.text = "Antibiotics should have a daily re-evaluation of the Focus for each Antibiotic."
  * target[+]
    * measure = $sct#272737002 "Site of"
    * detailRange.low = 1 'occurrence' "occurrence"
    * due = 1 'day' "day"

// Define Goal for Antibiotics' Duration
* goal[assessmentScale][+]
  * category = $sct#273249006 "Assessment scales (assessment scale)"
  * id = "assessment-antibiotic-duration"
  * description.text = "Antibiotics should have a daily re-evaluation of the Therapy Duration for each Antibiotic."
  * target[+]
    * measure = $sct#261773006 "Duration of Therapy"
    * detailRange.low = 1 'occurrence' "occurrence"
    * due = 1 'day' "day"


Instance: FrequencyBloodCultures
InstanceOf: recommendation-plan 
Usage: #definition
Title: "Frequency of Blood Cultures"
Description: "The Frequency of Blood Cultures should be at least 80 per 1000 days."
* insert canonical-url(DIVI-DigiQIs, intervention/blood-cultures_frequency)
* status = #active
* name = "Intervention_BloodCultures_Frequency"
* date = "2024-03-29"
* version = "1.0"

// Reference Recommendation Collection
* extension[partOf].valueCanonical = Canonical(DIVIQualityIndicator6)

// Reference Population for the Intervention: All Intensive Care Patients 
* subjectCanonical = Canonical(IntensiveCarePatients)

// Define Intervention 
* insert rs-combination-all
* action[assessment][+]
  * code = $sct#386053000 "Evaluation procedure (procedure)"
  * goalId[+] = "assessment-blood-cultures-frequency"

// Define Goal for the Blood-Cultures Frequency
* goal[assessmentScale][+]
  * category = $sct#273249006 "Assessment scales (assessment scale)"
  * id = "assessment-blood-cultures-frequency"
  * description.text = "The Frequency of Blood Cultures should be at least 80 per 1000 days."
  * target[+]
    * measure = $sct#30088009 "Blood Culture"
    * detailRange.low = 80 '' ""
    * due = 1000 'day' "day"



