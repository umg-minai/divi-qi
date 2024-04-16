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
* action[other][+] 
  * definitionCanonical = Canonical(dailyMultiprofessionalWardRounds)
  * code = $sct#74964007 "Other (qualifier value)"

// Recommended Action
Instance: dailyMultiprofessionalWardRounds
InstanceOf: body-positioning-action
Usage: #definition
Title: "Daily multiprofessional ward rounds"
Description: "Every Intensive Care Patient should be visited daily in multiprofessional ward rounds led by an intensive care specialist."
* name = "dailyMultiprofessionalWardRounds"
* insert canonical-url(DIVI-DigiQIs, recommended-action/daily-ward-rounds)
* insert publisher-experimental-version(7.0)
* status = #active
* code = $divi-qi-s#VISITE-FA-ZB-ITS "Multidisciplinary ward round led by an intensive care specialist"
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
  * definitionCanonical = Canonical(setDailyTreatmentGoals)
  * code = $sct#74964007 "Other (qualifier value)"


// Recommended Action
Instance: setDailyTreatmentGoals
InstanceOf: body-positioning-action
Usage: #definition
Title: "Daily Documentation of Treatment Goals"
Description: "Treatment Goals should be documented at least once every day."
* name = "setDailyTreatmentGoals"
* insert canonical-url(DIVI-DigiQIs, recommended-action/daily-treatment-goals)
* insert publisher-experimental-version(7.0)
* status = #active
* code = $divi-qi-s#TAGESZIEL "Setting daily treatment goals"
* timingTiming
  * repeat
    * frequency = 1
    * period = 1
    * periodUnit = $ucum#d "day"
