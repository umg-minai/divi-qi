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
* action[assessment][+]
  * code = $sct#386053000 "Evaluation procedure (procedure)"
  * goalId[+] = "assessment-early-feeding-goal"

// Define Goal for Early Feeding
* goal[assessmentScale][+]
  * category = $sct#273249006 "Assessment scales (assessment scale)"
  * id = "assessment-early-feeding-goal"
  * description.text = "Enteral Feeding should be commenced within 24 hours after admission to Intensive Care."
  * target[+]
    * measure = $sct#229912004 "Enteral Feeding"
    * detailRange.low = 1 'kcal' "kcal"
    * due = 1 'day' "day"
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
* action[assessment][+]
  * code = $sct#386053000 "Evaluation procedure (procedure)"
  * goalId[+] = "assessment-sufficient-feeding-goal"

// Define Goal for Sufficient Feeding
* goal[assessmentScale][+]
  * category = $sct#273249006 "Assessment scales (assessment scale)"
  * id = "assessment-sufficient-feeding-goal"
  * description.text = "The daily amount of calories should match the individual requirements."
  * target[+]
    * measure = $sct#787787004 "Energy Intake (Syn. Calorie Intake)"
    * detailRange.low = 1 'kcal' "kcal"
    * due = 1 'day' "day"
// -> Bezug auf individuellen Bedarf: $sct#226244007 "Energy requirement (Syn. Recommended Energy Intake)"
