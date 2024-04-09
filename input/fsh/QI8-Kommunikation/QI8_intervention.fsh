Instance: InitialCommunicationPatientsRelatives
InstanceOf: recommendation-plan 
Usage: #definition
Title: "Inital Structured Communication with Patients and/or Relatives"
Description: "For all Intensive Care Patients, an initial structured communication with the Patients and/or their Relatives should take place within 72 hours of Admission to Intensive Care."
* insert canonical-url(DIVI-DigiQIs, intervention/initial-communication_patients-relatives)
* status = #active
* name = "Intervention_Initial_Communication_PatientsRelatives"
* date = "2024-03-29"
* version = "1.0"

// Reference Recommendation Collection
* extension[partOf].valueCanonical = Canonical(DIVIQualityIndicator8)

// Reference Population for the Intervention: Intensive Care Patients with Intensive Care Treatment Longer Than Three Days
* subjectCanonical = Canonical(IntensiveCarePatients-IntensiveCareLongerThanThreeDays)

// Define Intervention 
* insert rs-combination-all
* action[assessment][+]
  * code = $sct#386053000 "Evaluation procedure (procedure)"
  * goalId[+] = "assessment-inital-communication-patients-relatives"

// Define Goal for Inital Communication with Patients and Relatives
* goal[assessmentScale][+]
  * category = $sct#273249006 "Assessment scales (assessment scale)"
  * id = "assessment-inital-communication-patients-relatives"
  * description.text = "An initial structured communication with the Patients and/or their Relatives should take place within 72 hours of Admission to Intensive Care."
  * target[+]
    * measure = $sct#225330006 "Client Participation"
    * detailRange.low = 1 'occurrence' "occurrence"
    * due = 3 'day' "day"
/*     * timeFromEvent
      * eventCodeableConcept = $sct#305351004 "Admission to Intensive Care Unit"
      * range 
        * high = 72 'hours' "hours" */


Instance: PeriodicCommunicationPatientsRelatives
InstanceOf: recommendation-plan 
Usage: #definition
Title: "Periodic Structured Communication with Patients and/or Relatives"
Description: "For all Intensive Care Patients, at least one structured communication with the Patients and/or their Relatives should take place every week."
* insert canonical-url(DIVI-DigiQIs, intervention/periodic-communication_patients-relatives)
* status = #active
* name = "Intervention_Periodic_Communication_PatientsRelatives"
* date = "2024-03-29"
* version = "1.0"

// Reference Recommendation Collection
* extension[partOf].valueCanonical = Canonical(DIVIQualityIndicator8)

// Reference Population for the Intervention: Intensive Care Patients with Intensive Care Treatment Longer Than Three Days
* subjectCanonical = Canonical(IntensiveCarePatients-IntensiveCareLongerThanThreeDays)

// Define Intervention 
* insert rs-combination-all
* action[assessment][+]
  * code = $sct#386053000 "Evaluation procedure (procedure)"
  * goalId[+] = "assessment-periodic-communication-patients-relatives"

// Define Goal for Periodic Communication with Patients and Relatives
* goal[assessmentScale][+]
  * category = $sct#273249006 "Assessment scales (assessment scale)"
  * id = "assessment-periodic-communication-patients-relatives"
  * description.text = "At least one structured communication with the Patients and/or their Relatives should take place every week."
  * target[+]
    * measure = $sct#225330006 "Client Participation"
    * detailRange.low = 1 'occurrence' "occurrence"
    * due = 7 'days' "days"