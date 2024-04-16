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
* action[other][+] 
  * definitionCanonical = Canonical(dailyAssessmentAntibioticIndication)
  * code = $sct#74964007 "Other (qualifier value)"
* action[other][+] 
  * definitionCanonical = Canonical(dailyAssessmentAntibioticFocus)
  * code = $sct#74964007 "Other (qualifier value)"
* action[other][+] 
  * definitionCanonical = Canonical(dailyAssessmentAntibioticDuration)
  * code = $sct#74964007 "Other (qualifier value)"


// Recommended Action
Instance: dailyAssessmentAntibioticIndication
InstanceOf: body-positioning-action
Usage: #definition
Title: "Daily Assessment of the Indication for Antibiotics"
Description: "Antibiotics should have a daily re-evaluation of the Indication for each Antibiotic."
* name = "dailyAssessmentAntibioticIndication"
* insert canonical-url(DIVI-DigiQIs, recommended-action/daily-assessment-antibiotic-indication)
* insert publisher-experimental-version(7.0)
* status = #active
* code = $sct#230165009 "Indication of"
* timingTiming
  * repeat
    * frequency = 1
    * period = 1
    * periodUnit = $ucum#d "day"

Instance: dailyAssessmentAntibioticFocus
InstanceOf: body-positioning-action
Usage: #definition
Title: "Daily Assessment of the Focus for Antibiotics"
Description: "Antibiotics should have a daily re-evaluation of the Focus for each Antibiotic."
* name = "dailyAssessmentAntibioticFocus"
* insert canonical-url(DIVI-DigiQIs, recommended-action/daily-assessment-antibiotic-focus)
* insert publisher-experimental-version(7.0)
* status = #active
* code = $sct#272737002 "Site of"
* timingTiming
  * repeat
    * frequency = 1
    * period = 1
    * periodUnit = $ucum#d "day"

Instance: dailyAssessmentAntibioticDuration
InstanceOf: body-positioning-action
Usage: #definition
Title: "Daily Assessment of the Duration of Antibiotic Therapy"
Description: "Antibiotics should have a daily re-evaluation of the Duration of Therapy for each Antibiotic."
* name = "dailyAssessmentAntibioticDuration"
* insert canonical-url(DIVI-DigiQIs, recommended-action/daily-assessment-antibiotic-duration)
* insert publisher-experimental-version(7.0)
* status = #active
* code = $sct#261773006 "Duration of Therapy"
* timingTiming
  * repeat
    * frequency = 1
    * period = 1
    * periodUnit = $ucum#d "day"


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
* action[other][+] 
  * definitionCanonical = Canonical(frequentBloodCultures)
  * code = $sct#74964007 "Other (qualifier value)"


// Recommended Action
Instance: frequentBloodCultures
InstanceOf: body-positioning-action
Usage: #definition
Title: "Frequent Blood Cultures"
Description: "The Frequency of Blood Cultures should be at least 80 per 1000 days."
* name = "frequentBloodCultures"
* insert canonical-url(DIVI-DigiQIs, recommended-action/frequent-blood-cultures)
* insert publisher-experimental-version(7.0)
* status = #active
* code = $sct#30088009 "Blood Culture"
* timingTiming
  * repeat
    * frequency = 80
    * period = 1000
    * periodUnit = $ucum#d "day"

