Instance: IntensiveCarePatients-SevereARDS-InvasiveVentilation
InstanceOf: recommendation-eligibility-criteria
Usage: #definition
Title: "Population: Intensive Care Patients with Severe ARDS and Invasive Ventilation"
Description: "Intensive Care Patients with Severe ARDS and Invasive Ventilation"
* insert canonical-url(DIVI-DigiQIs, population/intensive-care-patients_severe-ards_invasive-ventilation)
* status = #active
* name = "Population_IntensiveCarePatients_SevereARDS_InvasiveVentilation"

// Include Intensive Care Patients
* characteristic[procedure][+]
  * definitionByTypeAndValue
    * valueCodeableConcept = $sct#133903000 "Care of Intensive Care Unit Patient"
* characteristic[procedure][=].exclude = false

// Include only Patients with Invasive Ventilation
* characteristic[procedure][+]
  * definitionByTypeAndValue
    * valueCodeableConcept = $sct#226471000000101 "Invasive Ventilation"
* characteristic[procedure][=].exclude = false

// Include only Patients with Severe ARDS (combination of ARDS and Oxygenation Index <100)
* characteristic[+].definitionByCombination
  * code = #all-of
  
  * characteristic[condition][+]
    * definitionByTypeAndValue
      * valueCodeableConcept = $sct#67782005 "Acute Respiratory Distress Syndrome"
  * characteristic[condition][=].exclude = false

  * characteristic[procedure][+]
    * definitionByTypeAndValue
      * valueCodeableConcept = $loinc#3029943 "Horowitz-Index in Arterial Blood"
      * valueRange
        * low = 0 'mmHg' "mmHg"
        * high = 99.999999999 'mmHg' "mmHg"
  * characteristic[procedure][=].exclude = false

* characteristic[=].exclude = false


Instance: IntensiveCarePatients-SevereARDS-InvasiveVentilation-FiO2-21to29
InstanceOf: recommendation-eligibility-criteria
Usage: #definition
Title: "Population: Intensive Care Patients with Severe ARDS and Invasive Ventilation with FiO2=0.21-0.29"
Description: "Intensive Care Patients with Severe ARDS and Invasive Ventilation with FiO2=0.21-0.29"
* insert canonical-url(DIVI-DigiQIs, population/intensive-care-patients_severe-ards_invasive-ventilation_FiO2-21to29)
* status = #active
* name = "Population_IntensiveCarePatients_SevereARDS_InvasiveVentilation_FiO2-21to29"

// Include Intensive Care Patients
* characteristic[procedure][+]
  * definitionByTypeAndValue
    * valueCodeableConcept = $sct#133903000 "Care of Intensive Care Unit Patient"
* characteristic[procedure][=].exclude = false

// Include only Patients with Invasive Ventilation
* characteristic[procedure][+]
  * definitionByTypeAndValue
    * valueCodeableConcept = $sct#226471000000101 "Invasive Ventilation"
* characteristic[procedure][=].exclude = false

// Include only Patients with Severe ARDS (combination of ARDS and Oxygenation Index <100)
* characteristic[+].definitionByCombination
  * code = #all-of
  
  * characteristic[condition][+]
    * definitionByTypeAndValue
      * valueCodeableConcept = $sct#67782005 "Acute Respiratory Distress Syndrome"
  * characteristic[condition][=].exclude = false

  * characteristic[procedure][+]
    * definitionByTypeAndValue
      * valueCodeableConcept = $sct#313558004 "Oxygen Index Measurement"
      * valueRange
        * low = 0 'mmHg' "mmHg"
        * high = 99.999999999 'mmHg' "mmHg"
  * characteristic[procedure][=].exclude = false

* characteristic[=].exclude = false

// Include only Patients with FiO2=0.21-0.29
* characteristic[ventilationObservableLOINC][+]
  * definitionByTypeAndValue
    * type = $sct#364698001 "Ventilator observable"
    * valueCodeableConcept = $loinc#3150-0 "Inhaled oxygen concentration"
    * valueRange
      * low = 0 '%' "%"
      * high = 29.999999999 '%' "%"
* characteristic[ventilationObservableLOINC][=].exclude = false


Instance: IntensiveCarePatients-SevereARDS-InvasiveVentilation-FiO2-30to39
InstanceOf: recommendation-eligibility-criteria
Usage: #definition
Title: "Population: Intensive Care Patients with Severe ARDS and Invasive Ventilation with FiO2=0.30-0.39"
Description: "Intensive Care Patients with Severe ARDS and Invasive Ventilation with FiO2=0.30-0.39"
* insert canonical-url(DIVI-DigiQIs, population/intensive-care-patients_severe-ards_invasive-ventilation_FiO2-30to39)
* status = #active
* name = "Population_IntensiveCarePatients_SevereARDS_InvasiveVentilation_FiO2-30to39"

// Include Intensive Care Patients
* characteristic[procedure][+]
  * definitionByTypeAndValue
    * valueCodeableConcept = $sct#133903000 "Care of Intensive Care Unit Patient"
* characteristic[procedure][=].exclude = false

// Include only Patients with Invasive Ventilation
* characteristic[procedure][+]
  * definitionByTypeAndValue
    * valueCodeableConcept = $sct#226471000000101 "Invasive Ventilation"
* characteristic[procedure][=].exclude = false

// Include only Patients with Severe ARDS (combination of ARDS and Oxygenation Index <100)
* characteristic[+].definitionByCombination
  * code = #all-of
  
  * characteristic[condition][+]
    * definitionByTypeAndValue
      * valueCodeableConcept = $sct#67782005 "Acute Respiratory Distress Syndrome"
  * characteristic[condition][=].exclude = false

  * characteristic[procedure][+]
    * definitionByTypeAndValue
      * valueCodeableConcept = $sct#313558004 "Oxygen Index Measurement"
      * valueRange
        * low = 0 'mmHg' "mmHg"
        * high = 99.999999999 'mmHg' "mmHg"
  * characteristic[procedure][=].exclude = false

* characteristic[=].exclude = false

// Include only Patients with FiO2=0.30-0.39
* characteristic[ventilationObservableLOINC][+]
  * definitionByTypeAndValue
    * type = $sct#364698001 "Ventilator observable"
    * valueCodeableConcept = $loinc#3150-0 "Inhaled oxygen concentration"
    * valueRange
      * low = 30 '%' "%"
      * high = 39.999999999 '%' "%"
* characteristic[ventilationObservableLOINC][=].exclude = false


Instance: IntensiveCarePatients-SevereARDS-InvasiveVentilation-FiO2-40to49
InstanceOf: recommendation-eligibility-criteria
Usage: #definition
Title: "Population: Intensive Care Patients with Severe ARDS and Invasive Ventilation with FiO2=0.40-0.49"
Description: "Intensive Care Patients with Severe ARDS and Invasive Ventilation with FiO2=0.40-0.49"
* insert canonical-url(DIVI-DigiQIs, population/intensive-care-patients_severe-ards_invasive-ventilation_FiO2-40to49)
* status = #active
* name = "Population_IntensiveCarePatients_SevereARDS_InvasiveVentilation_FiO2-40to49"

// Include Intensive Care Patients
* characteristic[procedure][+]
  * definitionByTypeAndValue
    * valueCodeableConcept = $sct#133903000 "Care of Intensive Care Unit Patient"
* characteristic[procedure][=].exclude = false

// Include only Patients with Invasive Ventilation
* characteristic[procedure][+]
  * definitionByTypeAndValue
    * valueCodeableConcept = $sct#226471000000101 "Invasive Ventilation"
* characteristic[procedure][=].exclude = false

// Include only Patients with Severe ARDS (combination of ARDS and Oxygenation Index <100)
* characteristic[+].definitionByCombination
  * code = #all-of
  
  * characteristic[condition][+]
    * definitionByTypeAndValue
      * valueCodeableConcept = $sct#67782005 "Acute Respiratory Distress Syndrome"
  * characteristic[condition][=].exclude = false

  * characteristic[procedure][+]
    * definitionByTypeAndValue
      * valueCodeableConcept = $sct#313558004 "Oxygen Index Measurement"
      * valueRange
        * low = 0 'mmHg' "mmHg"
        * high = 99.999999999 'mmHg' "mmHg"
  * characteristic[procedure][=].exclude = false

* characteristic[=].exclude = false

// Include only Patients with FiO2=0.40-0.49
* characteristic[ventilationObservableLOINC][+]
  * definitionByTypeAndValue
    * type = $sct#364698001 "Ventilator observable"
    * valueCodeableConcept = $loinc#3150-0 "Inhaled oxygen concentration"
    * valueRange
      * low = 40 '%' "%"
      * high = 49.999999999 '%' "%"
* characteristic[ventilationObservableLOINC][=].exclude = false


Instance: IntensiveCarePatients-SevereARDS-InvasiveVentilation-FiO2-50to59
InstanceOf: recommendation-eligibility-criteria
Usage: #definition
Title: "Population: Intensive Care Patients with Severe ARDS and Invasive Ventilation with FiO2=0.50-0.59"
Description: "Intensive Care Patients with Severe ARDS and Invasive Ventilation with FiO2=0.50-0.59"
* insert canonical-url(DIVI-DigiQIs, population/intensive-care-patients_severe-ards_invasive-ventilation_FiO2-50to59)
* status = #active
* name = "Population_IntensiveCarePatients_SevereARDS_InvasiveVentilation_FiO2-50to59"

// Include Intensive Care Patients
* characteristic[procedure][+]
  * definitionByTypeAndValue
    * valueCodeableConcept = $sct#133903000 "Care of Intensive Care Unit Patient"
* characteristic[procedure][=].exclude = false

// Include only Patients with Invasive Ventilation
* characteristic[procedure][+]
  * definitionByTypeAndValue
    * valueCodeableConcept = $sct#226471000000101 "Invasive Ventilation"
* characteristic[procedure][=].exclude = false

// Include only Patients with Severe ARDS (combination of ARDS and Oxygenation Index <100)
* characteristic[+].definitionByCombination
  * code = #all-of
  
  * characteristic[condition][+]
    * definitionByTypeAndValue
      * valueCodeableConcept = $sct#67782005 "Acute Respiratory Distress Syndrome"
  * characteristic[condition][=].exclude = false

  * characteristic[procedure][+]
    * definitionByTypeAndValue
      * valueCodeableConcept = $sct#313558004 "Oxygen Index Measurement"
      * valueRange
        * low = 0 'mmHg' "mmHg"
        * high = 99.999999999 'mmHg' "mmHg"
  * characteristic[procedure][=].exclude = false

* characteristic[=].exclude = false

// Include only Patients with FiO2=0.50-0.59
* characteristic[ventilationObservableLOINC][+]
  * definitionByTypeAndValue
    * type = $sct#364698001 "Ventilator observable"
    * valueCodeableConcept = $loinc#3150-0 "Inhaled oxygen concentration"
    * valueRange
      * low = 50 '%' "%"
      * high = 59.999999999 '%' "%"
* characteristic[ventilationObservableLOINC][=].exclude = false


Instance: IntensiveCarePatients-SevereARDS-InvasiveVentilation-FiO2-60to79
InstanceOf: recommendation-eligibility-criteria
Usage: #definition
Title: "Population: Intensive Care Patients with Severe ARDS and Invasive Ventilation with FiO2=0.60-0.79"
Description: "Intensive Care Patients with Severe ARDS and Invasive Ventilation with FiO2=0.60-0.79"
* insert canonical-url(DIVI-DigiQIs, population/intensive-care-patients_severe-ards_invasive-ventilation_FiO2-60to79)
* status = #active
* name = "Population_IntensiveCarePatients_SevereARDS_InvasiveVentilation_FiO2-60to79"

// Include Intensive Care Patients
* characteristic[procedure][+]
  * definitionByTypeAndValue
    * valueCodeableConcept = $sct#133903000 "Care of Intensive Care Unit Patient"
* characteristic[procedure][=].exclude = false

// Include only Patients with Invasive Ventilation
* characteristic[procedure][+]
  * definitionByTypeAndValue
    * valueCodeableConcept = $sct#226471000000101 "Invasive Ventilation"
* characteristic[procedure][=].exclude = false

// Include only Patients with Severe ARDS (combination of ARDS and Oxygenation Index <100)
* characteristic[+].definitionByCombination
  * code = #all-of
  
  * characteristic[condition][+]
    * definitionByTypeAndValue
      * valueCodeableConcept = $sct#67782005 "Acute Respiratory Distress Syndrome"
  * characteristic[condition][=].exclude = false

  * characteristic[procedure][+]
    * definitionByTypeAndValue
      * valueCodeableConcept = $sct#313558004 "Oxygen Index Measurement"
      * valueRange
        * low = 0 'mmHg' "mmHg"
        * high = 99.999999999 'mmHg' "mmHg"
  * characteristic[procedure][=].exclude = false

* characteristic[=].exclude = false

// Include only Patients with FiO2=0.60-0.79
* characteristic[ventilationObservableLOINC][+]
  * definitionByTypeAndValue
    * type = $sct#364698001 "Ventilator observable"
    * valueCodeableConcept = $loinc#3150-0 "Inhaled oxygen concentration"
    * valueRange
      * low = 60 '%' "%"
      * high = 79.999999999 '%' "%"
* characteristic[ventilationObservableLOINC][=].exclude = false


Instance: IntensiveCarePatients-SevereARDS-InvasiveVentilation-FiO2-80to99
InstanceOf: recommendation-eligibility-criteria
Usage: #definition
Title: "Population: Intensive Care Patients with Severe ARDS and Invasive Ventilation with FiO2=0.80-0.99"
Description: "Intensive Care Patients with Severe ARDS and Invasive Ventilation with FiO2=0.80-0.99"
* insert canonical-url(DIVI-DigiQIs, population/intensive-care-patients_severe-ards_invasive-ventilation_FiO2-80to99)
* status = #active
* name = "Population_IntensiveCarePatients_SevereARDS_InvasiveVentilation_FiO2-80to99"

// Include Intensive Care Patients
* characteristic[procedure][+]
  * definitionByTypeAndValue
    * valueCodeableConcept = $sct#133903000 "Care of Intensive Care Unit Patient"
* characteristic[procedure][=].exclude = false

// Include only Patients with Invasive Ventilation
* characteristic[procedure][+]
  * definitionByTypeAndValue
    * valueCodeableConcept = $sct#226471000000101 "Invasive Ventilation"
* characteristic[procedure][=].exclude = false

// Include only Patients with Severe ARDS (combination of ARDS and Oxygenation Index <100)
* characteristic[+].definitionByCombination
  * code = #all-of
  
  * characteristic[condition][+]
    * definitionByTypeAndValue
      * valueCodeableConcept = $sct#67782005 "Acute Respiratory Distress Syndrome"
  * characteristic[condition][=].exclude = false

  * characteristic[procedure][+]
    * definitionByTypeAndValue
      * valueCodeableConcept = $sct#313558004 "Oxygen Index Measurement"
      * valueRange
        * low = 0 'mmHg' "mmHg"
        * high = 99.999999999 'mmHg' "mmHg"
  * characteristic[procedure][=].exclude = false

* characteristic[=].exclude = false

// Include only Patients with FiO2=0.80-0.99
* characteristic[ventilationObservableLOINC][+]
  * definitionByTypeAndValue
    * type = $sct#364698001 "Ventilator observable"
    * valueCodeableConcept = $loinc#3150-0 "Inhaled oxygen concentration"
    * valueRange
      * low = 80 '%' "%"
      * high = 99.999999999 '%' "%"
* characteristic[ventilationObservableLOINC][=].exclude = false


Instance: IntensiveCarePatients-SevereARDS-InvasiveVentilation-FiO2-100
InstanceOf: recommendation-eligibility-criteria
Usage: #definition
Title: "Population: Intensive Care Patients with Severe ARDS and Invasive Ventilation with FiO2=1.00"
Description: "Intensive Care Patients with Severe ARDS and Invasive Ventilation with FiO2=1.00"
* insert canonical-url(DIVI-DigiQIs, population/intensive-care-patients_severe-ards_invasive-ventilation_FiO2-100)
* status = #active
* name = "Population_IntensiveCarePatients_SevereARDS_InvasiveVentilation_FiO2-100"

// Include Intensive Care Patients
* characteristic[procedure][+]
  * definitionByTypeAndValue
    * valueCodeableConcept = $sct#133903000 "Care of Intensive Care Unit Patient"
* characteristic[procedure][=].exclude = false

// Include only Patients with Invasive Ventilation
* characteristic[procedure][+]
  * definitionByTypeAndValue
    * valueCodeableConcept = $sct#226471000000101 "Invasive Ventilation"
* characteristic[procedure][=].exclude = false

// Include only Patients with Severe ARDS (combination of ARDS and Oxygenation Index <100)
* characteristic[+].definitionByCombination
  * code = #all-of
  
  * characteristic[condition][+]
    * definitionByTypeAndValue
      * valueCodeableConcept = $sct#67782005 "Acute Respiratory Distress Syndrome"
  * characteristic[condition][=].exclude = false

  * characteristic[procedure][+]
    * definitionByTypeAndValue
      * valueCodeableConcept = $sct#313558004 "Oxygen Index Measurement"
      * valueRange
        * low = 0 'mmHg' "mmHg"
        * high = 99.999999999 'mmHg' "mmHg"
  * characteristic[procedure][=].exclude = false

* characteristic[=].exclude = false

// Include only Patients with FiO2=1.0
* characteristic[ventilationObservableLOINC][+]
  * definitionByTypeAndValue
    * type = $sct#364698001 "Ventilator observable"
    * valueCodeableConcept = $loinc#3150-0 "Inhaled oxygen concentration"
    * valueRange
      * low = 100 '%' "%"
      * high = 100 '%' "%"
* characteristic[ventilationObservableLOINC][=].exclude = false