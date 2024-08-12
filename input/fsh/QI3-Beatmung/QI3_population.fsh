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
    * valueCodeableConcept = $sct#1258985005 "Invasive mechanical ventilation"
* characteristic[procedure][=].exclude = false

// Include only Patients with ARDS 
* characteristic[condition][+]
  * definitionByTypeAndValue
    * valueCodeableConcept = $sct#67782005 "Acute Respiratory Distress Syndrome"
* characteristic[condition][=].exclude = false

// Include only Patients with Oxygenation Index <100
* characteristic[observation][+]
  * definitionByTypeAndValue
    * type = $loinc#50984-4 "Horowitz Index in Arterial Blood"
    * valueRange
      * low = 0 'mm[Hg]' "mm[Hg]"
      * high = 99.999999999 'mm[Hg]' "mm[Hg]"
* characteristic[observation][=].exclude = false


Instance: IntensiveCarePatients-SevereARDS-InvasiveVentilation-FiO2-21to29
InstanceOf: recommendation-eligibility-criteria
Usage: #definition
Title: "Population: Intensive Care Patients with Severe ARDS and Invasive Ventilation with FiO2=0.21-0.29"
Description: "Intensive Care Patients with Severe ARDS and Invasive Ventilation with FiO2=0.21-0.29"
* insert canonical-url(DIVI-DigiQIs, population/intensive-care-patients_severe-ards_invasive-ventilation_FiO2-21to29)
* status = #active
* name = "Population_IntensiveCarePatients_SevereARDS_InvasiveVentilation_FiO2_21to29"

// Include Intensive Care Patients
* characteristic[procedure][+]
  * definitionByTypeAndValue
    * valueCodeableConcept = $sct#133903000 "Care of Intensive Care Unit Patient"
* characteristic[procedure][=].exclude = false

// Include only Patients with Invasive Ventilation
* characteristic[procedure][+]
  * definitionByTypeAndValue
    * valueCodeableConcept = $sct#1258985005 "Invasive mechanical ventilation"
* characteristic[procedure][=].exclude = false

// Include only Patients with ARDS 
* characteristic[condition][+]
  * definitionByTypeAndValue
    * valueCodeableConcept = $sct#67782005 "Acute Respiratory Distress Syndrome"
* characteristic[condition][=].exclude = false

// Include only Patients with Oxygenation Index <100
* characteristic[observation][+]
  * definitionByTypeAndValue
    * type = $loinc#50984-4 "Horowitz Index in Arterial Blood"
    * valueRange
      * low = 0 'mm[Hg]' "mm[Hg]"
      * high = 99.999999999 'mm[Hg]' "mm[Hg]"
* characteristic[observation][=].exclude = false

// Include only Patients with FiO2=0.21-0.29
* characteristic[observation][+]
  * definitionByTypeAndValue
    * type = $loinc#3150-0 "Inhaled oxygen concentration"
    * valueRange
      * low = 0 '%' "%"
      * high = 29.999999999 '%' "%"
* characteristic[observation][=].exclude = false


Instance: IntensiveCarePatients-SevereARDS-InvasiveVentilation-FiO2-30to39
InstanceOf: recommendation-eligibility-criteria
Usage: #definition
Title: "Population: Intensive Care Patients with Severe ARDS and Invasive Ventilation with FiO2=0.30-0.39"
Description: "Intensive Care Patients with Severe ARDS and Invasive Ventilation with FiO2=0.30-0.39"
* insert canonical-url(DIVI-DigiQIs, population/intensive-care-patients_severe-ards_invasive-ventilation_FiO2-30to39)
* status = #active
* name = "Population_IntensiveCarePatients_SevereARDS_InvasiveVentilation_FiO2_30to39"

// Include Intensive Care Patients
* characteristic[procedure][+]
  * definitionByTypeAndValue
    * valueCodeableConcept = $sct#133903000 "Care of Intensive Care Unit Patient"
* characteristic[procedure][=].exclude = false

// Include only Patients with Invasive Ventilation
* characteristic[procedure][+]
  * definitionByTypeAndValue
    * valueCodeableConcept = $sct#1258985005 "Invasive mechanical ventilation"
* characteristic[procedure][=].exclude = false

// Include only Patients with ARDS 
* characteristic[condition][+]
  * definitionByTypeAndValue
    * valueCodeableConcept = $sct#67782005 "Acute Respiratory Distress Syndrome"
* characteristic[condition][=].exclude = false

// Include only Patients with Oxygenation Index <100
* characteristic[observation][+]
  * definitionByTypeAndValue
    * type = $loinc#50984-4 "Horowitz Index in Arterial Blood"
    * valueRange
      * low = 0 'mm[Hg]' "mm[Hg]"
      * high = 99.999999999 'mm[Hg]' "mm[Hg]"
* characteristic[observation][=].exclude = false

// Include only Patients with FiO2=0.30-0.39
* characteristic[observation][+]
  * definitionByTypeAndValue
    * type = $loinc#3150-0 "Inhaled oxygen concentration"
    * valueRange
      * low = 30 '%' "%"
      * high = 39.999999999 '%' "%"
* characteristic[observation][=].exclude = false


Instance: IntensiveCarePatients-SevereARDS-InvasiveVentilation-FiO2-40to49
InstanceOf: recommendation-eligibility-criteria
Usage: #definition
Title: "Population: Intensive Care Patients with Severe ARDS and Invasive Ventilation with FiO2=0.40-0.49"
Description: "Intensive Care Patients with Severe ARDS and Invasive Ventilation with FiO2=0.40-0.49"
* insert canonical-url(DIVI-DigiQIs, population/intensive-care-patients_severe-ards_invasive-ventilation_FiO2-40to49)
* status = #active
* name = "Population_IntensiveCarePatients_SevereARDS_InvasiveVentilation_FiO2_40to49"

// Include Intensive Care Patients
* characteristic[procedure][+]
  * definitionByTypeAndValue
    * valueCodeableConcept = $sct#133903000 "Care of Intensive Care Unit Patient"
* characteristic[procedure][=].exclude = false

// Include only Patients with Invasive Ventilation
* characteristic[procedure][+]
  * definitionByTypeAndValue
    * valueCodeableConcept = $sct#1258985005 "Invasive mechanical ventilation"
* characteristic[procedure][=].exclude = false

// Include only Patients with ARDS 
* characteristic[condition][+]
  * definitionByTypeAndValue
    * valueCodeableConcept = $sct#67782005 "Acute Respiratory Distress Syndrome"
* characteristic[condition][=].exclude = false

// Include only Patients with Oxygenation Index <100
* characteristic[observation][+]
  * definitionByTypeAndValue
    * type = $loinc#50984-4 "Horowitz Index in Arterial Blood"
    * valueRange
      * low = 0 'mm[Hg]' "mm[Hg]"
      * high = 99.999999999 'mm[Hg]' "mm[Hg]"
* characteristic[observation][=].exclude = false

// Include only Patients with FiO2=0.40-0.49
* characteristic[observation][+]
  * definitionByTypeAndValue
    * type = $loinc#3150-0 "Inhaled oxygen concentration"
    * valueRange
      * low = 40 '%' "%"
      * high = 49.999999999 '%' "%"
* characteristic[observation][=].exclude = false


Instance: IntensiveCarePatients-SevereARDS-InvasiveVentilation-FiO2-50to59
InstanceOf: recommendation-eligibility-criteria
Usage: #definition
Title: "Population: Intensive Care Patients with Severe ARDS and Invasive Ventilation with FiO2=0.50-0.59"
Description: "Intensive Care Patients with Severe ARDS and Invasive Ventilation with FiO2=0.50-0.59"
* insert canonical-url(DIVI-DigiQIs, population/intensive-care-patients_severe-ards_invasive-ventilation_FiO2-50to59)
* status = #active
* name = "Population_IntensiveCarePatients_SevereARDS_InvasiveVentilation_FiO2_50to59"

// Include Intensive Care Patients
* characteristic[procedure][+]
  * definitionByTypeAndValue
    * valueCodeableConcept = $sct#133903000 "Care of Intensive Care Unit Patient"
* characteristic[procedure][=].exclude = false

// Include only Patients with Invasive Ventilation
* characteristic[procedure][+]
  * definitionByTypeAndValue
    * valueCodeableConcept = $sct#1258985005 "Invasive mechanical ventilation"
* characteristic[procedure][=].exclude = false

// Include only Patients with ARDS 
* characteristic[condition][+]
  * definitionByTypeAndValue
    * valueCodeableConcept = $sct#67782005 "Acute Respiratory Distress Syndrome"
* characteristic[condition][=].exclude = false

// Include only Patients with Oxygenation Index <100
* characteristic[observation][+]
  * definitionByTypeAndValue
    * type = $loinc#50984-4 "Horowitz Index in Arterial Blood"
    * valueRange
      * low = 0 'mm[Hg]' "mm[Hg]"
      * high = 99.999999999 'mm[Hg]' "mm[Hg]"
* characteristic[observation][=].exclude = false

// Include only Patients with FiO2=0.50-0.59
* characteristic[observation][+]
  * definitionByTypeAndValue
    * type = $loinc#3150-0 "Inhaled oxygen concentration"
    * valueRange
      * low = 50 '%' "%"
      * high = 59.999999999 '%' "%"
* characteristic[observation][=].exclude = false


Instance: IntensiveCarePatients-SevereARDS-InvasiveVentilation-FiO2-60to79
InstanceOf: recommendation-eligibility-criteria
Usage: #definition
Title: "Population: Intensive Care Patients with Severe ARDS and Invasive Ventilation with FiO2=0.60-0.79"
Description: "Intensive Care Patients with Severe ARDS and Invasive Ventilation with FiO2=0.60-0.79"
* insert canonical-url(DIVI-DigiQIs, population/intensive-care-patients_severe-ards_invasive-ventilation_FiO2-60to79)
* status = #active
* name = "Population_IntensiveCarePatients_SevereARDS_InvasiveVentilation_FiO2_60to79"

// Include Intensive Care Patients
* characteristic[procedure][+]
  * definitionByTypeAndValue
    * valueCodeableConcept = $sct#133903000 "Care of Intensive Care Unit Patient"
* characteristic[procedure][=].exclude = false

// Include only Patients with Invasive Ventilation
* characteristic[procedure][+]
  * definitionByTypeAndValue
    * valueCodeableConcept = $sct#1258985005 "Invasive mechanical ventilation"
* characteristic[procedure][=].exclude = false

// Include only Patients with ARDS 
* characteristic[condition][+]
  * definitionByTypeAndValue
    * valueCodeableConcept = $sct#67782005 "Acute Respiratory Distress Syndrome"
* characteristic[condition][=].exclude = false

// Include only Patients with Oxygenation Index <100
* characteristic[observation][+]
  * definitionByTypeAndValue
    * type = $loinc#50984-4 "Horowitz Index in Arterial Blood"
    * valueRange
      * low = 0 'mm[Hg]' "mm[Hg]"
      * high = 99.999999999 'mm[Hg]' "mm[Hg]"
* characteristic[observation][=].exclude = false

// Include only Patients with FiO2=0.60-0.79
* characteristic[observation][+]
  * definitionByTypeAndValue
    * type = $loinc#3150-0 "Inhaled oxygen concentration"
    * valueRange
      * low = 60 '%' "%"
      * high = 79.999999999 '%' "%"
* characteristic[observation][=].exclude = false


Instance: IntensiveCarePatients-SevereARDS-InvasiveVentilation-FiO2-80to99
InstanceOf: recommendation-eligibility-criteria
Usage: #definition
Title: "Population: Intensive Care Patients with Severe ARDS and Invasive Ventilation with FiO2=0.80-0.99"
Description: "Intensive Care Patients with Severe ARDS and Invasive Ventilation with FiO2=0.80-0.99"
* insert canonical-url(DIVI-DigiQIs, population/intensive-care-patients_severe-ards_invasive-ventilation_FiO2-80to99)
* status = #active
* name = "Population_IntensiveCarePatients_SevereARDS_InvasiveVentilation_FiO2_80to99"

// Include Intensive Care Patients
* characteristic[procedure][+]
  * definitionByTypeAndValue
    * valueCodeableConcept = $sct#133903000 "Care of Intensive Care Unit Patient"
* characteristic[procedure][=].exclude = false

// Include only Patients with Invasive Ventilation
* characteristic[procedure][+]
  * definitionByTypeAndValue
    * valueCodeableConcept = $sct#1258985005 "Invasive mechanical ventilation"
* characteristic[procedure][=].exclude = false

// Include only Patients with ARDS 
* characteristic[condition][+]
  * definitionByTypeAndValue
    * valueCodeableConcept = $sct#67782005 "Acute Respiratory Distress Syndrome"
* characteristic[condition][=].exclude = false

// Include only Patients with Oxygenation Index <100
* characteristic[observation][+]
  * definitionByTypeAndValue
    * type = $loinc#50984-4 "Horowitz Index in Arterial Blood"
    * valueRange
      * low = 0 'mm[Hg]' "mm[Hg]"
      * high = 99.999999999 'mm[Hg]' "mm[Hg]"
* characteristic[observation][=].exclude = false

// Include only Patients with FiO2=0.80-0.99
* characteristic[observation][+]
  * definitionByTypeAndValue
    * type = $loinc#3150-0 "Inhaled oxygen concentration"
    * valueRange
      * low = 80 '%' "%"
      * high = 99.999999999 '%' "%"
* characteristic[observation][=].exclude = false


Instance: IntensiveCarePatients-SevereARDS-InvasiveVentilation-FiO2-100
InstanceOf: recommendation-eligibility-criteria
Usage: #definition
Title: "Population: Intensive Care Patients with Severe ARDS and Invasive Ventilation with FiO2=1.00"
Description: "Intensive Care Patients with Severe ARDS and Invasive Ventilation with FiO2=1.00"
* insert canonical-url(DIVI-DigiQIs, population/intensive-care-patients_severe-ards_invasive-ventilation_FiO2-100)
* status = #active
* name = "Population_IntensiveCarePatients_SevereARDS_InvasiveVentilation_FiO2_100"

// Include Intensive Care Patients
* characteristic[procedure][+]
  * definitionByTypeAndValue
    * valueCodeableConcept = $sct#133903000 "Care of Intensive Care Unit Patient"
* characteristic[procedure][=].exclude = false

// Include only Patients with Invasive Ventilation
* characteristic[procedure][+]
  * definitionByTypeAndValue
    * valueCodeableConcept = $sct#1258985005 "Invasive mechanical ventilation"
* characteristic[procedure][=].exclude = false

// Include only Patients with ARDS 
* characteristic[condition][+]
  * definitionByTypeAndValue
    * valueCodeableConcept = $sct#67782005 "Acute Respiratory Distress Syndrome"
* characteristic[condition][=].exclude = false

// Include only Patients with Oxygenation Index <100
* characteristic[observation][+]
  * definitionByTypeAndValue
    * type = $loinc#50984-4 "Horowitz Index in Arterial Blood"
    * valueRange
      * low = 0 'mm[Hg]' "mm[Hg]"
      * high = 99.999999999 'mm[Hg]' "mm[Hg]"
* characteristic[observation][=].exclude = false

// Include only Patients with FiO2=1.0
* characteristic[observation][+]
  * definitionByTypeAndValue
    * type = $loinc#3150-0 "Inhaled oxygen concentration"
    * valueRange
      * low = 100 '%' "%"
      * high = 100 '%' "%"
* characteristic[observation][=].exclude = false