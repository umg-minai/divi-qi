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
* action[other][+] 
  * definitionCanonical = Canonical(SedationAssessmentEarlyShift)
  * code = $sct#74964007 "Other (qualifier value)"
* action[other][+] 
  * definitionCanonical = Canonical(SedationAssessmentLateShift)
  * code = $sct#74964007 "Other (qualifier value)"
* action[other][+] 
  * definitionCanonical = Canonical(SedationAssessmentNightShift)
  * code = $sct#74964007 "Other (qualifier value)"
* action[other][+] 
  * definitionCanonical = Canonical(PainAssessmentEarlyShift)
  * code = $sct#74964007 "Other (qualifier value)"
* action[other][+] 
  * definitionCanonical = Canonical(PainAssessmentLateShift)
  * code = $sct#74964007 "Other (qualifier value)"
* action[other][+] 
  * definitionCanonical = Canonical(PainAssessmentNightShift)
  * code = $sct#74964007 "Other (qualifier value)"
* action[other][+] 
  * definitionCanonical = Canonical(DeliriumAssessmentEarlyShift)
  * code = $sct#74964007 "Other (qualifier value)"
* action[other][+] 
  * definitionCanonical = Canonical(DeliriumAssessmentLateShift)
  * code = $sct#74964007 "Other (qualifier value)"
* action[other][+] 
  * definitionCanonical = Canonical(DeliriumAssessmentNightShift)
  * code = $sct#74964007 "Other (qualifier value)"


// Recommended Actions
Instance: SedationAssessmentEarlyShift
InstanceOf: ActivityDefinition
Usage: #definition
Title: "Sedation Assessment during Early Shift"
Description: "Sedation should be assessed once between 6 AM and <2 PM every day."
* name = "SedationAssessmentEarlyShift"
* insert canonical-url(DIVI-DigiQIs, recommended-action/sedation-assessment-early-shift)
* insert publisher-experimental-version(7.0)
* status = #active
* code = $sct-uk#851211000000105 "Assessment of Sedation Level"
* timingTiming
  * repeat
    * frequency = 1
    * period = 1
    * periodUnit = $ucum#d "day"  //Zwischen 6-14 Uhr  // TODO: hier einfügen und bei allen weiteren unten auch

Instance: SedationAssessmentLateShift
InstanceOf: ActivityDefinition
Usage: #definition
Title: "Sedation Assessment during Late Shift"
Description: "Sedation should be assessed once between 2 AM and <10 PM every day."
* name = "SedationAssessmentLateShift"
* insert canonical-url(DIVI-DigiQIs, recommended-action/sedation-assessment-late-shift)
* insert publisher-experimental-version(7.0)
* status = #active
* code = $sct-uk#851211000000105 "Assessment of Sedation Level"
* timingTiming
  * repeat
    * frequency = 1
    * period = 1
    * periodUnit = $ucum#d "day"  //Zwischen 14-22 Uhr 

Instance: SedationAssessmentNightShift
InstanceOf: ActivityDefinition
Usage: #definition
Title: "Sedation Assessment during Night Shift"
Description: "Sedation should be assessed once between 10 PM and <6 AM every day."
* name = "SedationAssessmentNightShift"
* insert canonical-url(DIVI-DigiQIs, recommended-action/sedation-assessment-night-shift)
* insert publisher-experimental-version(7.0)
* status = #active
* code = $sct-uk#851211000000105 "Assessment of Sedation Level"
* timingTiming
  * repeat
    * frequency = 1
    * period = 1
    * periodUnit = $ucum#d "day"  //Zwischen 22-6 Uhr 

Instance: PainAssessmentEarlyShift
InstanceOf: ActivityDefinition
Usage: #definition
Title: "Pain Assessment during Early Shift"
Description: "Pain should be assessed once between 6 AM and <2 PM every day."
* name = "PainAssessmentEarlyShift"
* insert canonical-url(DIVI-DigiQIs, recommended-action/pain-assessment-early-shift)
* insert publisher-experimental-version(7.0)
* status = #active
* code = $sct#370778008 "Assessment of Pain Control"
* timingTiming
  * repeat
    * frequency = 1
    * period = 1
    * periodUnit = $ucum#d "day"  //Zwischen 6-14 Uhr 

Instance: PainAssessmentLateShift
InstanceOf: ActivityDefinition
Usage: #definition
Title: "Pain Assessment during Late Shift"
Description: "Pain should be assessed once between 2 AM and <10 PM every day."
* name = "PainAssessmentLateShift"
* insert canonical-url(DIVI-DigiQIs, recommended-action/pain-assessment-late-shift)
* insert publisher-experimental-version(7.0)
* status = #active
* code = $sct#370778008 "Assessment of Pain Control"
* timingTiming
  * repeat
    * frequency = 1
    * period = 1
    * periodUnit = $ucum#d "day"  //Zwischen 14-22 Uhr 

Instance: PainAssessmentNightShift
InstanceOf: ActivityDefinition
Usage: #definition
Title: "Pain Assessment during Night Shift"
Description: "Pain should be assessed once between 10 PM and <6 AM every day."
* name = "PainAssessmentNightShift"
* insert canonical-url(DIVI-DigiQIs, recommended-action/pain-assessment-night-shift)
* insert publisher-experimental-version(7.0)
* status = #active
* code = $sct#370778008 "Assessment of Pain Control"
* timingTiming
  * repeat
    * frequency = 1
    * period = 1
    * periodUnit = $ucum#d "day"  //Zwischen 22-6 Uhr 

Instance: DeliriumAssessmentEarlyShift
InstanceOf: ActivityDefinition
Usage: #definition
Title: "Delirium Assessment during Early Shift"
Description: "Delirium should be assessed once between 6 AM and <2 PM every day."
* name = "DeliriumAssessmentEarlyShift"
* insert canonical-url(DIVI-DigiQIs, recommended-action/delirium-assessment-early-shift)
* insert publisher-experimental-version(7.0)
* status = #active
* code = $sct#733870009 "Assessment of Delirium"
* timingTiming
  * repeat
    * frequency = 1
    * period = 1
    * periodUnit = $ucum#d "day"  //Zwischen 6-14 Uhr 

Instance: DeliriumAssessmentLateShift
InstanceOf: ActivityDefinition
Usage: #definition
Title: "Delirium Assessment during Late Shift"
Description: "Delirium should be assessed once between 2 AM and <10 PM every day."
* name = "DeliriumAssessmentLateShift"
* insert canonical-url(DIVI-DigiQIs, recommended-action/delirium-assessment-late-shift)
* insert publisher-experimental-version(7.0)
* status = #active
* code = $sct#733870009 "Assessment of Delirium"
* timingTiming
  * repeat
    * frequency = 1
    * period = 1
    * periodUnit = $ucum#d "day"  //Zwischen 14-22 Uhr 

Instance: DeliriumAssessmentNightShift
InstanceOf: ActivityDefinition
Usage: #definition
Title: "Delirium Assessment during Night Shift"
Description: "Delirium should be assessed once between 10 PM and <6 AM every day."
* name = "DeliriumAssessmentNightShift"
* insert canonical-url(DIVI-DigiQIs, recommended-action/delirium-assessment-night-shift)
* insert publisher-experimental-version(7.0)
* status = #active
* code = $sct#733870009 "Assessment of Delirium"
* timingTiming
  * repeat
    * frequency = 1
    * period = 1
    * periodUnit = $ucum#d "day"  //Zwischen 22-6 Uhr 



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
    * measure = $sct-us#457441000124102 "Richmond agitation-sedation scale"
    * detailRange
      * low = -1 '' ""
      * high = 1 '' ""

// Define Goal for Analgesia Assessment per NRS
* goal[assessmentScale][+]
  * category = $sct#273249006 "Assessment scales (assessment scale)"
  * id = "analgesia-nrs-inrange-goal"
  * description.text = "Analgesia Level should be within NRS scores of 0 to 3"
  * target[+]
    * measure = $sct-int#1284852002 "Numeric Pain Rating Scale"
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