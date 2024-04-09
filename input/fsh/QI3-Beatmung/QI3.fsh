Instance: DIVIQualityIndicator3
InstanceOf: recommendation
Usage: #definition
Title: "DIVI Quality Indicator 3"
Description: "DIVI Quality Indicator 3: Patient-adapted Ventilation"
* name = "DiVI_QualityIndicator_3"
* version = "1.0"
* date = "2024-03-29"
* status = #active
* insert canonical-url(DIVI-DigiQIs, recommendation/DIVI-QualityIndicator-3)
* experimental = true
* publisher = "Deutsche Interdisziplinäre Vereinigung für Intensiv- und Notfallmedizin (DIVI)"
* insert rs-combination-all

// Reference to Quality Indicator 3a
* action[+]
  * title = "DIVI Quality Indicator 3a: Tidal Volume Limitation"
  * code = $cs-common-process#guideline-based-care
  * description = "Tidal volume should be limited to a maximum of 6 ml/kg ideal body weight in all invasive ventilated ICU patients with severe ARDS."
  * definitionCanonical = Canonical(TidalVolumeLimitation)

// Reference to Quality Indicator 3b
* action[+]
  * title = "DIVI Quality Indicator 3b: Plateau Pressure Limitation"
  * code = $cs-common-process#guideline-based-care
  * description = "Plateau pressure should be limited to a maximum of 30 cmH2O in all invasive ventilated ICU patients with severe ARDS."
  * definitionCanonical = Canonical(PlateauPressureLimitation)

// Reference to Quality Indicator 3c
* action[+]
  * title = "DIVI Quality Indicator 3b: Driving Pressure Limitation"
  * code = $cs-common-process#guideline-based-care
  * description = "Driving pressure should be limited to a maximum of 15 cmH2O in all invasive ventilated ICU patients with severe ARDS."
  * definitionCanonical = Canonical(DrivingPressureLimitation)

// References to facultative Indicator for correct PEEP-Adjustment 
* action[+]
  * title = "Facultative Indicator 3d-1: PEEP adjusted in Dependence of FiO2=0.21-0.29"
  * code = $cs-common-process#guideline-based-care
  * description = "PEEP should be adjusted according to the table on ardsnet.org in dependence of the FiO2 required to achieve adequate oxygenation in all ventilated ICU patients with severe ARDS."
  * definitionCanonical = Canonical(PEEPadjustedToFIO2-21to29)

* action[+]
  * title = "Facultative Indicator 3d-2: PEEP adjusted in Dependence of FiO2=0.3-0.39"
  * code = $cs-common-process#guideline-based-care
  * description = "PEEP should be adjusted according to the table on ardsnet.org in dependence of the FiO2 required to achieve adequate oxygenation in all ventilated ICU patients with severe ARDS."
  * definitionCanonical = Canonical(PEEPadjustedToFIO2-30to39)

* action[+]
  * title = "Facultative Indicator 3d-3: PEEP adjusted in Dependence of FiO2=0.4-0.49"
  * code = $cs-common-process#guideline-based-care
  * description = "PEEP should be adjusted according to the table on ardsnet.org in dependence of the FiO2 required to achieve adequate oxygenation in all ventilated ICU patients with severe ARDS."
  * definitionCanonical = Canonical(PEEPadjustedToFIO2-40to49)

* action[+]
  * title = "Facultative Indicator 3d-4: PEEP adjusted in Dependence of FiO2=0.5-0.59"
  * code = $cs-common-process#guideline-based-care
  * description = "PEEP should be adjusted according to the table on ardsnet.org in dependence of the FiO2 required to achieve adequate oxygenation in all ventilated ICU patients with severe ARDS."
  * definitionCanonical = Canonical(PEEPadjustedToFIO2-50to59)

* action[+]
  * title = "Facultative Indicator 3d-5: PEEP adjusted in Dependence of FiO2=0.6-0.79"
  * code = $cs-common-process#guideline-based-care
  * description = "PEEP should be adjusted according to the table on ardsnet.org in dependence of the FiO2 required to achieve adequate oxygenation in all ventilated ICU patients with severe ARDS."
  * definitionCanonical = Canonical(PEEPadjustedToFIO2-60to79)

* action[+]
  * title = "Facultative Indicator 3d-6: PEEP adjusted in Dependence of FiO2=0.8-0.99"
  * code = $cs-common-process#guideline-based-care
  * description = "PEEP should be adjusted according to the table on ardsnet.org in dependence of the FiO2 required to achieve adequate oxygenation in all ventilated ICU patients with severe ARDS."
  * definitionCanonical = Canonical(PEEPadjustedToFIO2-80to99)

* action[+]
  * title = "Facultative Indicator 3d-7: PEEP adjusted in Dependence of FiO2=1.0"
  * code = $cs-common-process#guideline-based-care
  * description = "PEEP should be adjusted according to the table on ardsnet.org in dependence of the FiO2 required to achieve adequate oxygenation in all ventilated ICU patients with severe ARDS."
  * definitionCanonical = Canonical(PEEPadjustedToFIO2-100)