Instance: PeriodicAssessmentOfSedationAnalgesiaDelirium
InstanceOf: recommendation-plan 
Usage: #definition
Title: "Periodic Assessment of Sedation Level, Analgesia Level and Delirium Status"
Description: "Sedation Level, Analgesia Level and Delirium Status should be assessed at least once in each shift (time-slots 6-14, 14-22, 22-6) in all Intensive Care Patients."
* insert canonical-url(DIVI-DigiQIs, intervention/periodic-assessment_sedation_analgesia_delirium)
* status = #active
* name = "Intervention_PeriodicAssessment_Sedation_Analgesia_Delirium"
* date = "2024-03-29"
* version = "1.0"

// Reference Recommendation Collection
* extension[partOf].valueCanonical = Canonical(DIVIQualityIndicator2)

// Reference Population for the Intervention: Intensive Care Patients
* subjectCanonical = Canonical(IntensiveCarePatients)

// Define Intervention 
* insert rs-combination-all
* action[assessment][+]
  * code = $sct#386053000 "Evaluation procedure (procedure)"
  * goalId[+] = "assessment-sedation-between-6-14-goal"
  * goalId[+] = "assessment-analgesia-between-6-14-goal"
  * goalId[+] = "assessment-delirium-between-6-14-goal"
* action[assessment][+]
  * code = $sct#386053000 "Evaluation procedure (procedure)"
  * goalId[+] = "assessment-sedation-between-14-22-goal"
  * goalId[+] = "assessment-analgesia-between-14-22-goal"
  * goalId[+] = "assessment-delirium-between-14-22-goal"
* action[assessment][+]
  * code = $sct#386053000 "Evaluation procedure (procedure)"
  * goalId[+] = "assessment-sedation-between-22-6-goal"
  * goalId[+] = "assessment-analgesia-between-22-6-goal"
  * goalId[+] = "assessment-delirium-between-22-6-goal"

// Define Goals for Sedation Assessment between 6-14
* goal[assessmentScale][+]
  * category = $sct#273249006 "Assessment scales (assessment scale)"
  * id = "assessment-sedation-between-6-14-goal"
  * description.text = "Sedation should be assessed between 6-14h every day."
  * target[+]
    * measure = $sct#851211000000105 "Assessment of Sedation Level"
    * detailRange
      * low = 6 'oclock' "o'clock"
      * high = 13.999999999 'oclock' "o'clock"
    * detailCodeableConcept = $sct#28017001 "Daytime"
    
// Define Goal for Analgesia Assessment between 6-14
* goal[assessmentScale][+]
  * category = $sct#273249006 "Assessment scales (assessment scale)"
  * id = "assessment-analgesia-between-6-14-goal"
  * description.text = "Analgesia should be assessed between 6-14h every day."
  * target[+]
    * measure = $sct#370778008 "Assessment of Pain Control"
    * detailRange
      * low = 6 'oclock' "o'clock"
      * high = 13.999999999 'oclock' "o'clock"
    * detailCodeableConcept = $sct#28017001 "Daytime"

// Define Goal for Delirium Assessment between 6-14
* goal[assessmentScale][+]
  * category = $sct#273249006 "Assessment scales (assessment scale)"
  * id = "assessment-delirium-between-6-14-goal"
  * description.text = "Delirium should be assessed between 6-14h every day."
  * target[+]
    * measure = $sct#733870009 "Assessment of Delirium"
    * detailRange
      * low = 6 'oclock' "o'clock"
      * high = 13.999999999 'oclock' "o'clock"
    * detailCodeableConcept = $sct#28017001 "Daytime"

// Define Goals for Sedation Assessment between 14-22
* goal[assessmentScale][+]
  * category = $sct#273249006 "Assessment scales (assessment scale)"
  * id = "assessment-sedation-between-14-22-goal"
  * description.text = "Sedation should be assessed between 14-22h every day."
  * target[+]
    * measure = $sct#851211000000105 "Assessment of Sedation Level"
    * detailRange
      * low = 14 'oclock' "o'clock"
      * high = 21.999999999 'oclock' "o'clock"
    * detailCodeableConcept = $sct#28017001 "Daytime"
    
// Define Goal for Analgesia Assessment between 14-22
* goal[assessmentScale][+]
  * category = $sct#273249006 "Assessment scales (assessment scale)"
  * id = "assessment-analgesia-between-14-22-goal"
  * description.text = "Analgesia should be assessed between 14-22h every day."
  * target[+]
    * measure = $sct#370778008 "Assessment of Pain Control"
    * detailRange
      * low = 14 'oclock' "o'clock"
      * high = 21.999999999 'oclock' "o'clock"
    * detailCodeableConcept = $sct#28017001 "Daytime"

// Define Goal for Delirium Assessment between 14-22
* goal[assessmentScale][+]
  * category = $sct#273249006 "Assessment scales (assessment scale)"
  * id = "assessment-delirium-between-14-22-goal"
  * description.text = "Delirium should be assessed between 14-22h every day."
  * target[+]
    * measure = $sct#733870009 "Assessment of Delirium"
    * detailRange
      * low = 14 'oclock' "o'clock"
      * high = 21.999999999 'oclock' "o'clock"
    * detailCodeableConcept = $sct#28017001 "Daytime"

// Define Goals for Sedation Assessment between 22-6
* goal[assessmentScale][+]
  * category = $sct#273249006 "Assessment scales (assessment scale)"
  * id = "assessment-sedation-between-22-6-goal"
  * description.text = "Sedation should be assessed between 22-6h every day."
  * target[+]
    * measure = $sct#851211000000105 "Assessment of Sedation Level"
    * detailRange
      * low = 22 'oclock' "o'clock"
      * high = 5.999999999 'oclock' "o'clock"
    * detailCodeableConcept = $sct#28017001 "Daytime"
    
// Define Goal for Analgesia Assessment between 22-6
* goal[assessmentScale][+]
  * category = $sct#273249006 "Assessment scales (assessment scale)"
  * id = "assessment-analgesia-between-22-6-goal"
  * description.text = "Analgesia should be assessed between 22-6h every day."
  * target[+]
    * measure = $sct#370778008 "Assessment of Pain Control"
    * detailRange
      * low = 22 'oclock' "o'clock"
      * high = 5.999999999 'oclock' "o'clock"
    * detailCodeableConcept = $sct#28017001 "Daytime"

// Define Goal for Delirium Assessment between 22-6
* goal[assessmentScale][+]
  * category = $sct#273249006 "Assessment scales (assessment scale)"
  * id = "assessment-delirium-between-22-6-goal"
  * description.text = "Delirium should be assessed between 22-6h every day."
  * target[+]
    * measure = $sct#733870009 "Assessment of Delirium"
    * detailRange
      * low = 22 'oclock' "o'clock"
      * high = 5.999999999 'oclock' "o'clock"
    * detailCodeableConcept = $sct#28017001 "Daytime"


Instance: SedationLevelAnalgesiaLevelDeliriumStatusInAcceptableRanges
InstanceOf: recommendation-plan 
Usage: #definition
Title: "Sedation Level, Analgesia Level and Delirium Status in acceptable ranges."
Description: "Sedation Level, Analgesia Level and Delirium Status should be in acceptable ranges."
* insert canonical-url(DIVI-DigiQIs, intervention/Sedation-Level_Analgesia-Level_Delirium-Status_In-Acceptable-Ranges)
* status = #active
* name = "Intervention_SedationLevel_AnalgesiaLevel_DeliriumStatus_InAcceptableranges"
* date = "2024-03-29"
* version = "1.0"

// Reference Recommendation Collection
* extension[partOf].valueCanonical = Canonical(DIVIQualityIndicator2)

// Reference Population for the Intervention: Intensive Care Patients
* subjectCanonical = Canonical(IntensiveCarePatients)

// Define Intervention 
* insert rs-combination-all
* action[assessment][+]
  * code = $sct#386053000 "Evaluation procedure (procedure)"
  * goalId[+] = "sedation-rass-inrange-goal"
  * goalId[+] = "analgesia-nrs-inrange-goal"
  * goalId[+] = "analgesia-vas-inrange-goal"
  * goalId[+] = "analgesia-bps-inrange-goal"
  * goalId[+] = "delirium-camicu-inrange-goal"
  * goalId[+] = "delirium-icdsc-inrange-goal"

// Define Goal for Sedation Assessment per RASS
* goal[assessmentScale][+]
  * category = $sct#273249006 "Assessment scales (assessment scale)"
  * id = "sedation-rass-inrange-goal"
  * description.text = "Sedation Level should be within RASS scores of -1 to +1"
  * target[+]
    * measure = $sct#4574410001244102 "Richmond agitation-sedation scale"
    * detailRange
      * low = -1 '' ""
      * high = 1 '' ""

// Define Goal for Analgesia Assessment per NRS
* goal[assessmentScale][+]
  * category = $sct#273249006 "Assessment scales (assessment scale)"
  * id = "analgesia-nrs-inrange-goal"
  * description.text = "Analgesia Level should be within NRS scores of 0 to 3"
  * target[+]
    * measure = $sct#1284852002 "Numeric Pain Rating Scale"
    * detailRange
      * low = 0 '' ""
      * high = 3 '' ""

// Define Goal for Analgesia Assessment per VAS
* goal[assessmentScale][+]
  * category = $sct#273249006 "Assessment scales (assessment scale)"
  * id = "analgesia-vas-inrange-goal"
  * description.text = "Analgesia Level should be within VAS scores of 0 to 3"
  * target[+]
    * measure = $sct#273904000 "Visual analog pain scale"
    * detailRange
      * low = 0 '' ""
      * high = 3 '' ""

// Define Goal for Analgesia Assessment per BPS
* goal[assessmentScale][+]
  * category = $sct#273249006 "Assessment scales (assessment scale)"
  * id = "analgesia-bps-inrange-goal"
  * description.text = "Analgesia Level should be within BPS scores of 0 to 3"
  * target[+]
    * measure = $divi-qi-s#BPS "Behavioral Pain Scale"
    * detailRange
      * low = 0 '' ""
      * high = 3 '' ""

// Define Goal for Delirium Assessment per CAM-ICU
* goal[assessmentScale][+]
  * category = $sct#273249006 "Assessment scales (assessment scale)"
  * id = "delirium-camicu-inrange-goal"
  * description.text = "Delirium Status should be within CAM-ICU scores of 0 (No Delirium)"
  * target[+]
    * measure = $divi-qi-s#CAM-ICU "CAM-ICU"
    * detailRange
      * low = 0 '' ""
      * high = 0 '' ""

// Define Goal for Delirium Assessment per ICDSC
* goal[assessmentScale][+]
  * category = $sct#273249006 "Assessment scales (assessment scale)"
  * id = "delirium-icdsc-inrange-goal"
  * description.text = "Delirium Status should be within ICDSC scores of 0 (No Delirium)"
  * target[+]
    * measure = $divi-qi-s#ICDSC "ICDSC"
    * detailRange
      * low = 0 '' ""
      * high = 0 '' ""