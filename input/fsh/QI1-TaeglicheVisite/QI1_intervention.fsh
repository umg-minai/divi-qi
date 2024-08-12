Instance: DailyMultiprofessionalWardRounds
InstanceOf: recommendation-plan 
Usage: #definition
Title: "Daily multiprofessional ward rounds"
Description: "Every Intensive Care Patient should be visited daily in multiprofessional ward rounds led by an intensive care specialist."
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
* action[other][+] // TODO: Check all slice names
  * definitionCanonical = Canonical(DailyMultiprofessionalWardRoundsAction)
  * code = $sct#74964007 "Other (qualifier value)"

// Recommended Action
Instance: DailyMultiprofessionalWardRoundsAction
InstanceOf: RecommendationAction
Usage: #definition
Title: "Daily multiprofessional ward rounds"
Description: "Every Intensive Care Patient is visited daily in multiprofessional ward rounds led by an intensive care specialist."
* name = "DailyMultiprofessionalWardRoundsAction"
* insert canonical-url(DIVI-DigiQIs, recommended-action/daily-ward-rounds)
* insert publisher-experimental-version(7.0)
* status = #active
* code = $divi-qi-s#VISITE-FA-ZB-ITS "Multidisciplinary ward round led by an intensive care specialist"
* kind = $cs-fhir-types#Task "Task"
//* code = $sct#1236923003 "Participation in multidisciplinary ward round"
* timingTiming
  * repeat
    * frequency = 1
    * period = 1
    * periodUnit = $ucum#d "day"


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
* action[other][+] 
  * definitionCanonical = Canonical(DailyTreatmentGoals)
  * code = $sct#74964007 "Other (qualifier value)"


// Recommended Action
Instance: DailyTreatmentGoals
InstanceOf: RecommendationAction
Usage: #definition
Title: "Daily Treatment Goals"
Description: "Daily Treatment Goals are set at least once every day."
* name = "DailyTreatmentGoals"
* insert canonical-url(DIVI-DigiQIs, recommended-action/daily-treatment-goals)
* insert publisher-experimental-version(7.0)
* status = #active
* code = $divi-qi-s#TAGESZIEL "Setting daily treatment goals"
* kind = $cs-fhir-types#Task "Task"
* timingTiming
  * repeat
    * frequency = 1
    * period = 1
    * periodUnit = $ucum#d "day"
