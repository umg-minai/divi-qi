Instance: TidalVolumeLimitation
InstanceOf: recommendation-plan 
Usage: #definition
Title: "Tidal Volume Limitation"
Description: "Tidal volume should be limited to a maximum of 6 ml/kg ideal body weight in all invasive ventilated ICU patients with severe ARDS."
* insert canonical-url(DIVI-DigiQIs, intervention/tidal-volume_limitation)
* status = #active
* name = "Intervention_TidalVolume_Limitation"
* date = "2024-03-29"
* version = "1.0"

// Reference Recommendation Collection
* extension[partOf].valueCanonical = Canonical(DIVIQualityIndicator3)

// Reference Population for the Intervention: Intensive Care Patients
* subjectCanonical = Canonical(IntensiveCarePatients-SevereARDS-InvasiveVentilation)

// Define Intervention 
* insert rs-combination-all
* action[ventilatorManagement][+]
  * code = $sct#410210009 "Ventilator care management (procedure)"
  * goalId[+] = "tidal-volume-goal"

// Define Goal for Intervention 
* goal[ventilatorManagement][+]
  * category = $sct#385857005 "Ventilator care and adjustment (regime/therapy)"
  * id = "tidal-volume-goal"
  * description.text = "Tidal volume should be limited to a maximum of 6 ml/kg ideal body weight."
  * target[+]
    * measure = $cs-codex-celida#tvpibw "Tidal volume / ideal body weight (ARDSnet)"
    * detailRange.high = 6 'ml/kg' "ml/kg"


Instance: PlateauPressureLimitation
InstanceOf: recommendation-plan 
Usage: #definition
Title: "Plateau Pressure Limitation"
Description: "Plateau Pressure should be limited to a maximum of 30 cmH2O in all invasive ventilated ICU patients with severe ARDS."
* insert canonical-url(DIVI-DigiQIs, intervention/plateau-pressure_limitation)
* status = #active
* name = "Intervention_PlateauPressure_Limitation"
* date = "2024-03-29"
* version = "1.0"

// Reference Recommendation Collection
* extension[partOf].valueCanonical = Canonical(DIVIQualityIndicator3)

// Reference Population for the Intervention: Intensive Care Patients
* subjectCanonical = Canonical(IntensiveCarePatients-SevereARDS-InvasiveVentilation)

// Define Intervention 
* insert rs-combination-all
* action[ventilatorManagement][+]
  * code = $sct#410210009 "Ventilator care management (procedure)"
  * goalId[+] = "plateau-pressure-goal"

// Define Goal for Intervention 
* goal[ventilatorManagement][+]
  * category = $sct#385857005 "Ventilator care and adjustment (regime/therapy)"
  * id = "plateau-pressure-goal"
  * description.text = "Plateau pressure should be limited to a maximum of 30 cmH2O."
  * target[+]
    * measure = $loinc#76259-1 "Pressure.plateau Respiratory system airway --on ventilator"
    * detailRange.high = 30 'cm[H2O]' "cm[H2O]"


Instance: DrivingPressureLimitation
InstanceOf: recommendation-plan 
Usage: #definition
Title: "Driving Pressure Limitation"
Description: "Driving Pressure should be limited to a maximum of 15 cmH2O in all invasive ventilated ICU patients with severe ARDS."
* insert canonical-url(DIVI-DigiQIs, intervention/driving-pressure_limitation)
* status = #active
* name = "Intervention_DrivingPressure_Limitation"
* date = "2024-03-29"
* version = "1.0"

// Reference Recommendation Collection
* extension[partOf].valueCanonical = Canonical(DIVIQualityIndicator3)

// Reference Population for the Intervention: Intensive Care Patients
* subjectCanonical = Canonical(IntensiveCarePatients-SevereARDS-InvasiveVentilation)

// Define Intervention 
* insert rs-combination-all
* action[ventilatorManagement][+]
  * code = $sct#410210009 "Ventilator care management (procedure)"
  * goalId[+] = "driving-pressure-goal"

// Define Goal for Intervention 
* goal[ventilatorManagement][+]
  * category = $sct#385857005 "Ventilator care and adjustment (regime/therapy)"
  * id = "driving-pressure-goal"
  * description.text = "Driving pressure should be limited to a maximum of 15 cmH2O."
  * target[+]
    * measure = $loinc#76154-4 "Airway pressure delta --on ventilator"
    * detailRange.high = 15 'cm[H2O]' "cm[H2O]"

Instance: PEEPadjustedToFIO2-21to29
InstanceOf: recommendation-plan 
Usage: #definition
Title: "PEEP adjusted to FiO2=0.21-0.29"
Description: "PEEP should be adjusted according to the table on ardsnet.org in dependence of the FiO2 required to achieve adequate oxygenation in all ventilated ICU patients with severe ARDS."
* insert canonical-url(DIVI-DigiQIs, intervention/PEEP_adjustedTo_FiO2-21to29)
* status = #active
* name = "Intervention_PEEP_adjustedTo_FiO2-21to29"
* date = "2024-03-29"
* version = "1.0"

// Reference Recommendation Collection
* extension[partOf].valueCanonical = Canonical(DIVIQualityIndicator3)

// Reference Population for the Intervention: Invasive Ventilated Intensive Care Patients with FiO2=0.21-0.29
* subjectCanonical = Canonical(IntensiveCarePatients-SevereARDS-InvasiveVentilation-FiO2-21to29)

// Define Intervention 
* insert rs-combination-all
* action[ventilatorManagement][+]
  * code = $sct#410210009 "Ventilator care management (procedure)"
  * goalId[+] = "peep-goal-fiO2-21to29"

// Define Goal for Intervention 
* goal[ventilatorManagement][+]
  * category = $sct#385857005 "Ventilator care and adjustment (regime/therapy)"
  * id = "peep-goal-fiO2-21to29"
  * description.text = "PEEP should be set to 5 cmH2O for FiO2 0.21-0.29."
  * target[+]
    * measure = $loinc#76248-4 "PEEP Respiratory system --on ventilator"
    * detailRange
      * low = 5 'cm[H2O]' "cm[H2O]"
      * high = 5 'cm[H2O]' "cm[H2O]"


Instance: PEEPadjustedToFIO2-30to39
InstanceOf: recommendation-plan 
Usage: #definition
Title: "PEEP adjusted to FiO2=0.30-0.39"
Description: "PEEP should be adjusted according to the table on ardsnet.org in dependence of the FiO2 required to achieve adequate oxygenation in all ventilated ICU patients with severe ARDS."
* insert canonical-url(DIVI-DigiQIs, intervention/PEEP_adjustedTo_FiO2-30to39)
* status = #active
* name = "Intervention_PEEP_adjustedTo_FiO2-30to39"
* date = "2024-03-29"
* version = "1.0"

// Reference Recommendation Collection
* extension[partOf].valueCanonical = Canonical(DIVIQualityIndicator3)

// Reference Population for the Intervention: Invasive Ventilated Intensive Care Patients with FiO2=0.3-0.39
* subjectCanonical = Canonical(IntensiveCarePatients-SevereARDS-InvasiveVentilation-FiO2-30to39)

// Define Intervention 
* insert rs-combination-all
* action[ventilatorManagement][+]
  * code = $sct#410210009 "Ventilator care management (procedure)"
  * goalId[+] = "peep-goal-fiO2-30to39"

// Define Goal for Intervention
* goal[ventilatorManagement][+]
  * category = $sct#385857005 "Ventilator care and adjustment (regime/therapy)"
  * id = "peep-goal-fiO2-30to39"
  * description.text = "PEEP should be set to 5-14 cmH2O for FiO2 0.30-0.39."
  * target[+]
    * measure = $loinc#76248-4 "PEEP Respiratory system --on ventilator"
    * detailRange
      * low = 5 'cm[H2O]' "cm[H2O]"
      * high = 14 'cm[H2O]' "cm[H2O]"


Instance: PEEPadjustedToFIO2-40to49
InstanceOf: recommendation-plan 
Usage: #definition
Title: "PEEP adjusted to FiO2=0.40-0.49"
Description: "PEEP should be adjusted according to the table on ardsnet.org in dependence of the FiO2 required to achieve adequate oxygenation in all ventilated ICU patients with severe ARDS."
* insert canonical-url(DIVI-DigiQIs, intervention/PEEP_adjustedTo_FiO2-40to49)
* status = #active
* name = "Intervention_PEEP_adjustedTo_FiO2-40to49"
* date = "2024-03-29"
* version = "1.0"

// Reference Recommendation Collection
* extension[partOf].valueCanonical = Canonical(DIVIQualityIndicator3)

// Reference Population for the Intervention: Invasive Ventilated Intensive Care Patients with FiO2=0.4-0.49
* subjectCanonical = Canonical(IntensiveCarePatients-SevereARDS-InvasiveVentilation-FiO2-40to49)

// Define Intervention 
* insert rs-combination-all
* action[ventilatorManagement][+]
  * code = $sct#410210009 "Ventilator care management (procedure)"
  * goalId[+] = "peep-goal-fiO2-40to49"

// Define Goal for Intervention
* goal[ventilatorManagement][+]
  * category = $sct#385857005 "Ventilator care and adjustment (regime/therapy)"
  * id = "peep-goal-fiO2-40to49"
  * description.text = "PEEP should be set to 5-16 cmH2O for FiO2 0.40-0.49."
  * target[+]
    * measure = $loinc#76248-4 "PEEP Respiratory system --on ventilator"
    * detailRange
      * low = 5 'cm[H2O]' "cm[H2O]"
      * high = 16 'cm[H2O]' "cm[H2O]"


Instance: PEEPadjustedToFIO2-50to59
InstanceOf: recommendation-plan 
Usage: #definition
Title: "PEEP adjusted to FiO2=0.50-0.59"
Description: "PEEP should be adjusted according to the table on ardsnet.org in dependence of the FiO2 required to achieve adequate oxygenation in all ventilated ICU patients with severe ARDS."
* insert canonical-url(DIVI-DigiQIs, intervention/PEEP_adjustedTo_FiO2-50to59)
* status = #active
* name = "Intervention_PEEP_adjustedTo_FiO2-50to59"
* date = "2024-03-29"
* version = "1.0"

// Reference Recommendation Collection
* extension[partOf].valueCanonical = Canonical(DIVIQualityIndicator3)

// Reference Population for the Intervention: Invasive Ventilated Intensive Care Patients with FiO2=0.5-0.59
* subjectCanonical = Canonical(IntensiveCarePatients-SevereARDS-InvasiveVentilation-FiO2-50to59)

// Define Intervention 
* insert rs-combination-all
* action[ventilatorManagement][+]
  * code = $sct#410210009 "Ventilator care management (procedure)"
  * goalId[+] = "peep-goal-fiO2-50to59"

// Define Goal for Intervention
* goal[ventilatorManagement][+]
  * category = $sct#385857005 "Ventilator care and adjustment (regime/therapy)"
  * id = "peep-goal-fiO2-50to59"
  * description.text = "PEEP should be set to 8-20 cmH2O for FiO2 0.50-0.59."
  * target[+]
    * measure = $loinc#76248-4 "PEEP Respiratory system --on ventilator"
    * detailRange
      * low = 8 'cm[H2O]' "cm[H2O]"
      * high = 20 'cm[H2O]' "cm[H2O]"


Instance: PEEPadjustedToFIO2-60to79
InstanceOf: recommendation-plan 
Usage: #definition
Title: "PEEP adjusted to FiO2=0.60-0.79"
Description: "PEEP should be adjusted according to the table on ardsnet.org in dependence of the FiO2 required to achieve adequate oxygenation in all ventilated ICU patients with severe ARDS."
* insert canonical-url(DIVI-DigiQIs, intervention/PEEP_adjustedTo_FiO2-60to79)
* status = #active
* name = "Intervention_PEEP_adjustedTo_FiO2-60to79"
* date = "2024-03-29"
* version = "1.0"

// Reference Recommendation Collection
* extension[partOf].valueCanonical = Canonical(DIVIQualityIndicator3)

// Reference Population for the Intervention: Invasive Ventilated Intensive Care Patients with FiO2=0.6-0.79
* subjectCanonical = Canonical(IntensiveCarePatients-SevereARDS-InvasiveVentilation-FiO2-60to79)

// Define Intervention 
* insert rs-combination-all
* action[ventilatorManagement][+]
  * code = $sct#410210009 "Ventilator care management (procedure)"
  * goalId[+] = "peep-goal-fiO2-60to79"

// Define Goal for Intervention
* goal[ventilatorManagement][+]
  * category = $sct#385857005 "Ventilator care and adjustment (regime/therapy)"
  * id = "peep-goal-fiO2-60to79"
  * description.text = "PEEP should be set to 10-20 cmH2O for FiO2 0.60-0.79."
  * target[+]
    * measure = $loinc#76248-4 "PEEP Respiratory system --on ventilator"
    * detailRange
      * low = 10 'cm[H2O]' "cm[H2O]"
      * high = 20 'cm[H2O]' "cm[H2O]"


Instance: PEEPadjustedToFIO2-80to99
InstanceOf: recommendation-plan 
Usage: #definition
Title: "PEEP adjusted to FiO2=0.80-0.99"
Description: "PEEP should be adjusted according to the table on ardsnet.org in dependence of the FiO2 required to achieve adequate oxygenation in all ventilated ICU patients with severe ARDS."
* insert canonical-url(DIVI-DigiQIs, intervention/PEEP_adjustedTo_FiO2-80to99)
* status = #active
* name = "Intervention_PEEP_adjustedTo_FiO2-80to99"
* date = "2024-03-29"
* version = "1.0"

// Reference Recommendation Collection
* extension[partOf].valueCanonical = Canonical(DIVIQualityIndicator3)

// Reference Population for the Intervention: Invasive Ventilated Intensive Care Patients with FiO2=0.8-0.99
* subjectCanonical = Canonical(IntensiveCarePatients-SevereARDS-InvasiveVentilation-FiO2-80to99)

// Define Intervention 
* insert rs-combination-all
* action[ventilatorManagement][+]
  * code = $sct#410210009 "Ventilator care management (procedure)"
  * goalId[+] = "peep-goal-fiO2-80to99"

// Define Goal for Intervention
* goal[ventilatorManagement][+]
  * category = $sct#385857005 "Ventilator care and adjustment (regime/therapy)"
  * id = "peep-goal-fiO2-80to99"
  * description.text = "PEEP should be set to 14-22 cmH2O for FiO2 0.80-0.99."
  * target[+]
    * measure = $loinc#76248-4 "PEEP Respiratory system --on ventilator"
    * detailRange
      * low = 14 'cm[H2O]' "cm[H2O]"
      * high = 22 'cm[H2O]' "cm[H2O]"


Instance: PEEPadjustedToFIO2-100
InstanceOf: recommendation-plan 
Usage: #definition
Title: "PEEP adjusted to FiO2=1.00"
Description: "PEEP should be adjusted according to the table on ardsnet.org in dependence of the FiO2 required to achieve adequate oxygenation in all ventilated ICU patients with severe ARDS."
* insert canonical-url(DIVI-DigiQIs, intervention/PEEP_adjustedTo_FiO2-100)
* status = #active
* name = "Intervention_PEEP_adjustedTo_FiO2-100"
* date = "2024-03-29"
* version = "1.0"

// Reference Recommendation Collection
* extension[partOf].valueCanonical = Canonical(DIVIQualityIndicator3)

// Reference Population for the Intervention: Invasive Ventilated Intensive Care Patients with FiO2=100
* subjectCanonical = Canonical(IntensiveCarePatients-SevereARDS-InvasiveVentilation-FiO2-100)

// Define Intervention 
* insert rs-combination-all
* action[ventilatorManagement][+]
  * code = $sct#410210009 "Ventilator care management (procedure)"
  * goalId[+] = "peep-goal-fiO2-100"

// Define Goal for Intervention
* goal[ventilatorManagement][+]
  * category = $sct#385857005 "Ventilator care and adjustment (regime/therapy)"
  * id = "peep-goal-fiO2-100"
  * description.text = "PEEP should be set to 18-24 cmH2O for FiO2 1.00."
  * target[+]
    * measure = $loinc#76248-4 "PEEP Respiratory system --on ventilator"
    * detailRange
      * low = 18 'cm[H2O]' "cm[H2O]"
      * high = 24 'cm[H2O]' "cm[H2O]"