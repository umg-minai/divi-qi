Alias: $ext-action-combination-method = https://www.netzwerk-universitaetsmedizin.de/fhir/cpg-on-ebm-on-fhir/StructureDefinition/ext-action-combination-method
Alias: $cs-action-combination-method = https://www.netzwerk-universitaetsmedizin.de/fhir/cpg-on-ebm-on-fhir/CodeSystem/cs-action-combination-method

RuleSet: rs-combination-exactly(threshold)
* extension[$ext-action-combination-method].extension[method].valueCodeableConcept = $cs-action-combination-method#exactly
* extension[$ext-action-combination-method].extension[threshold].valuePositiveInt = {threshold}

RuleSet: rs-combination-at-least(threshold)
* extension[$ext-action-combination-method].extension[method].valueCodeableConcept = $cs-action-combination-method#at-least
* extension[$ext-action-combination-method].extension[threshold].valuePositiveInt = {threshold}

RuleSet: rs-combination-at-most(threshold)
* extension[$ext-action-combination-method].extension[method].valueCodeableConcept = $cs-action-combination-method#at-most
* extension[$ext-action-combination-method].extension[threshold].valuePositiveInt = {threshold}

RuleSet: rs-combination-one-or-more
* extension[$ext-action-combination-method].extension[method].valueCodeableConcept = $cs-action-combination-method#one-or-more

RuleSet: rs-combination-all
* extension[$ext-action-combination-method].extension[method].valueCodeableConcept = $cs-action-combination-method#all

RuleSet: rs-combination-any
* extension[$ext-action-combination-method].extension[method].valueCodeableConcept = $cs-action-combination-method#any
