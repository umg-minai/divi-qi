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
* action[other][+] 
  * definitionCanonical = Canonical(FirstMobilizationWithin24hours)
  * code = $sct#74964007 "Other (qualifier value)"


// Recommended Action
Instance: FirstMobilizationWithin24hours
InstanceOf: RecommendationAction
Usage: #definition
Title: "First Mobilization within 24 hours"
Description: "First Mobilization occurs within 24 hours after Admission to Intensive Care."
* name = "FirstMobilizationWithin24hours"
* insert canonical-url(DIVI-DigiQIs, recommended-action/first-mobilization-within-24hours)
* insert publisher-experimental-version(7.0)
* status = #active
* code = $sct#74923002 "Mobilization"
* kind = $cs-fhir-types#ServiceRequest "ServiceRequest"
* extension[relativeTime]
  * extension[contextCode].valueCodeableConcept = $sct#305351004 "Admission to Intensive Care Unit"
  * extension[offset].valueRange
    * low = 0 'h' "hours"
    * high = 24 'h' "hours"



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
* action[other][+] 
  * definitionCanonical = Canonical(DailyMobilization)
  * code = $sct#74964007 "Other (qualifier value)"


// Recommended Action
Instance: DailyMobilization
InstanceOf: RecommendationAction
Usage: #definition
Title: "Daily Mobilization"
Description: "Mobilization that occurs at least once a day."
* name = "DailyMobilization"
* insert canonical-url(DIVI-DigiQIs, recommended-action/daily-mobilization)
* insert publisher-experimental-version(7.0)
* status = #active
* code = $sct#74923002 "Mobilization"
* kind = $cs-fhir-types#ServiceRequest "ServiceRequest"
* timingTiming
  * repeat
    * frequency = 1
    * period = 1
    * periodUnit = $ucum#d "day"