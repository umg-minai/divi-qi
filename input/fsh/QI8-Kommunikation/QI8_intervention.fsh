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
* action[other][+] 
  * definitionCanonical = Canonical(FirstCommunicationPatientsRelativesWithin72hours)
  * code = $sct#74964007 "Other (qualifier value)"


// Recommended Action
Instance: FirstCommunicationPatientsRelativesWithin72hours
InstanceOf: RecommendationAction
Usage: #definition
Title: "First Communication with Patients and/or their Relatives within 72 hours"
Description: "An initial structured communication with the Patients and/or their Relatives occurs within 72 hours of Admission to Intensive Care."
* name = "FirstCommunicationPatientsRelativesWithin72hours"
* insert canonical-url(DIVI-DigiQIs, recommended-action/first-communication-patients-relatives-within-24hours)
* insert publisher-experimental-version(7.0)
* status = #active
* code = $sct#225330006 "Client Participation"
* kind = $cs-fhir-types#Task "Task"
* extension[relativeTime]
  * extension[contextCode].valueCodeableConcept = $sct#305351004 "Admission to Intensive Care Unit"
  * extension[offset].valueRange
    * low = 0 'h' "hours"
    * high = 72 'h' "hours"


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
* action[other][+] 
  * definitionCanonical = Canonical(WeeklyCommunicationPatientsRelatives)
  * code = $sct#74964007 "Other (qualifier value)"


// Recommended Action
Instance: WeeklyCommunicationPatientsRelatives
InstanceOf: RecommendationAction
Usage: #definition
Title: "Weekly Communication with Patients and Relatives"
Description: "At least one structured communication with the Patients and/or their Relatives takes place every week."
* name = "WeeklyCommunicationPatientsRelatives"
* insert canonical-url(DIVI-DigiQIs, recommended-action/weekly-communication-patients-relatives)
* insert publisher-experimental-version(7.0)
* status = #active
* code = $sct#225330006 "Client Participation"
* kind = $cs-fhir-types#Task "Task"
* timingTiming
  * repeat
    * frequency = 1
    * period = 7
    * periodUnit = $ucum#d "day"