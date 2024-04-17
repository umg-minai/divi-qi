Instance: EarlyEnteralFeeding
InstanceOf: recommendation-plan 
Usage: #definition
Title: "Early Enteral Feeding"
Description: "All Intensive Care Patients for which a sufficient oral nutrition is not expected on day one should be started on enteral feeding within 24 hours."
* insert canonical-url(DIVI-DigiQIs, intervention/early-enteral-feeding)
* status = #active
* name = "Intervention_EarlyEnteralFeeding"
* date = "2024-03-29"
* version = "1.0"

// Reference Recommendation Collection
* extension[partOf].valueCanonical = Canonical(DIVIQualityIndicator7)

// Reference Population for the Intervention: Intensive Care Patients with Predicted Insufficient Energy Intake
* subjectCanonical = Canonical(IntensiveCarePatients-PredictedInsufficientEnergyIntake)

// Define Intervention 
* insert rs-combination-all
* action[other][+] 
  * definitionCanonical = Canonical(FirstEnteralFeedingWithin24hours)
  * code = $sct#74964007 "Other (qualifier value)"


// Recommended Action
Instance: FirstEnteralFeedingWithin24hours
InstanceOf: ActivityDefinition
Usage: #definition
Title: "First Enteral Feeding Within 24 hours"
Description: "First Enteral Feeding occurs within 24 hours after Admission to Intensive Care."
* name = "FirstEnteralFeedingWithin24hours"
* insert canonical-url(DIVI-DigiQIs, recommended-action/first-enteral-feeding-within-24hours)
* insert publisher-experimental-version(7.0)
* status = #active
* code = $sct#229912004 "Enteral Feeding"
* timingTiming
  * repeat
    * frequency = 1
    * period = 1
    * periodUnit = $ucum#d "day"
/*     * timeFromEvent
      * eventCodeableConcept = $sct#305351004 "Admission to Intensive Care Unit"
      * range 
        * high = 24 'hours' "hours" */


Instance: SufficientFeeding
InstanceOf: recommendation-plan 
Usage: #definition
Title: "Sufficient Feeding in Non-Adipose Patients"
Description: "Every day, all Non-Adipose Intensive Care Patients should receive the amount of Calories that match their daily individual requirements."
* insert canonical-url(DIVI-DigiQIs, intervention/sufficient-feeding)
* status = #active
* name = "Intervention_SufficientFeeding"
* date = "2024-03-29"
* version = "1.0"

// Reference Recommendation Collection
* extension[partOf].valueCanonical = Canonical(DIVIQualityIndicator7)

// Reference Population for the Intervention: Intensive Care Patients that are clinically fed and have no Adipositas
* subjectCanonical = Canonical(IntensiveCarePatients-ClinicallyFed-NoAdipositas)

// Define Intervention 
* insert rs-combination-all
* action[other][+] 
  * definitionCanonical = Canonical(DailySufficientFeeding)
  * code = $sct#74964007 "Other (qualifier value)"


// Recommended Action
Instance: DailySufficientFeeding
InstanceOf: ActivityDefinition
Usage: #definition
Title: "The daily calorie intake is sufficient"
Description: "The daily amount of calories matches the individual requirements."
* name = "DailySufficientFeeding"
* insert canonical-url(DIVI-DigiQIs, recommended-action/daily-sufficient-feeding)
* insert publisher-experimental-version(7.0)
* status = #active
* code = $sct#787787004 "Calorie Intake" // + $sct#769397007 "Sufficient Amount"
* timingTiming
  * repeat
    * frequency = 1
    * period = 1
    * periodUnit = $ucum#d "day"
