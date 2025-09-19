Instance: CM-GAP-BundleConsultationDisponibilitesToMOS
InstanceOf: ConceptMap
Title: "CM-GAP-BundleConsultationDisponibilitesToMOS"
Usage: #definition
* title = "CM-GAP-BundleConsultationDisponibilitesToMOS"
* description = "ConceptMap définissant la correspondance détaillée entre le profil GAP-BundleResultatReponseADemandeConsultationDisponibilites et les modèles logiques MOS."
* name = "CM_GAP_BundleConsultationDisponibilitesToMOS"
* status = #draft
* experimental = false

* sourceUri = "https://interop.esante.gouv.fr/ig/fhir/gap/StructureDefinition/gap-bundle-reponse-demande-consult-dispo"
* targetUri = "https://interop.esante.gouv.fr/ig/fhir/MOS"

// Slot to Creneau
* insert Group(https://interop.esante.gouv.fr/ig/fhir/gap/StructureDefinition/gap-bundle-reponse-demande-consult-dispo, https://interop.esante.gouv.fr/ig/fhir/MOS/StructureDefinition/Creneau)
* insert GroupElement(Bundle.entry:Slot.resource, Creneau)
* group[=].element[=].target[=].comment = "L'entrée Slot du Bundle est mappé vers le modèle logique Creneau."
* group[=].unmapped.mode = #other-map
* group[=].unmapped.url = Canonical(CM-GAP-FrSlotToMOSCreneau)

// Schedule to Agenda
* insert Group(https://interop.esante.gouv.fr/ig/fhir/gap/StructureDefinition/gap-bundle-reponse-demande-consult-dispo, https://interop.esante.gouv.fr/ig/fhir/MOS/StructureDefinition/Agenda)
* insert GroupElement(Bundle.entry:Schedule.resource, Agenda)
* group[=].element[=].target[=].comment = "L'entrée Schedule du Bundle est mappé vers le modèle logique Agenda."
* group[=].unmapped.mode = #other-map
* group[=].unmapped.url = Canonical(CM-GAP-FrSchedule-To-MOS-Agenda)

// Patient to PersonnePriseCharge
* insert Group(https://interop.esante.gouv.fr/ig/fhir/gap/StructureDefinition/gap-bundle-reponse-demande-consult-dispo, https://interop.esante.gouv.fr/ig/fhir/MOS/StructureDefinition/PersonnePriseCharge)
* insert GroupElement(Bundle.entry:Patient.resource, PersonnePriseCharge)
* group[=].element[=].target[=].comment = "L'entrée Patient du Bundle est mappé vers le modèle logique PersonnePriseCharge."
* group[=].unmapped.mode = #fixed
* group[=].unmapped.code = #MOSmap
* group[=].unmapped.display = "Le mapping est un travail en cours à voir dans l'IG MOS."

// Practitioner to Professionnel
* insert Group(https://interop.esante.gouv.fr/ig/fhir/gap/StructureDefinition/gap-bundle-reponse-demande-consult-dispo, https://interop.esante.gouv.fr/ig/fhir/MOS/StructureDefinition/Professionnel)
* insert GroupElement(Bundle.entry:Practitioner.resource, Professionnel)
* group[=].element[=].target[=].comment = "L'entrée Practitioner du Bundle est mappé vers le modèle logique Professionnel."
* group[=].unmapped.mode = #fixed
* group[=].unmapped.code = #MOSmap
* group[=].unmapped.display = "Le mapping est un travail en cours à voir dans l'IG MOS."

// PractitionerRole to ExerciceProfessionnel
* insert Group(https://interop.esante.gouv.fr/ig/fhir/gap/StructureDefinition/gap-bundle-reponse-demande-consult-dispo, https://interop.esante.gouv.fr/ig/fhir/MOS/StructureDefinition/ExerciceProfessionnel)
* insert GroupElement(Bundle.entry:PractitionerRole.resource, ExerciceProfessionnel)
* group[=].element[=].target[=].comment = "L'entrée PractitionerRole du Bundle est mappé vers le modèle logique ExerciceProfessionnel."
* group[=].unmapped.mode = #fixed
* group[=].unmapped.code = #MOSmap
* group[=].unmapped.display = "Le mapping est un travail en cours à voir dans l'IG MOS."

// Device to EquipementSpecifique
* insert Group(https://interop.esante.gouv.fr/ig/fhir/gap/StructureDefinition/gap-bundle-reponse-demande-consult-dispo, https://interop.esante.gouv.fr/ig/fhir/MOS/StructureDefinition/EquipementSpecifique)
* insert GroupElement(Bundle.entry:Device.resource, EquipementSpecifique)
* group[=].element[=].target[=].comment = "L'entrée Device du Bundle est mappé vers le modèle logique EquipementSpecifique."
* group[=].unmapped.mode = #fixed
* group[=].unmapped.code = #MOSmap
* group[=].unmapped.display = "Le mapping est un travail en cours à voir dans l'IG MOS."

// Location to Lieu
* insert Group(https://interop.esante.gouv.fr/ig/fhir/gap/StructureDefinition/gap-bundle-reponse-demande-consult-dispo, https://interop.esante.gouv.fr/ig/fhir/MOS/StructureDefinition/Lieu)
* insert GroupElement(Bundle.entry:Location.resource, Lieu)
* group[=].element[=].target[=].comment = "L'entrée Location du Bundle est mappé vers le modèle logique Lieu."
* group[=].unmapped.mode = #fixed
* group[=].unmapped.code = #MOSmap
* group[=].unmapped.display = "Le mapping est un travail en cours à voir dans l'IG MOS."

// HealthcareService to OrganisationInterne
* insert Group(https://interop.esante.gouv.fr/ig/fhir/gap/StructureDefinition/gap-bundle-reponse-demande-consult-dispo, https://interop.esante.gouv.fr/ig/fhir/MOS/StructureDefinition/OrganisationInterne)
* insert GroupElement(Bundle.entry:HealthcareService.resource, OrganisationInterne)
* group[=].element[=].target[=].comment = "L'entrée HealthcareService du Bundle est mappé vers le modèle logique OrganisationInterne."
* group[=].unmapped.mode = #fixed
* group[=].unmapped.code = #MOSmap
* group[=].unmapped.display = "Le mapping est un travail en cours à voir dans l'IG MOS."

// Organization to EntiteGeographique
* insert Group(https://interop.esante.gouv.fr/ig/fhir/gap/StructureDefinition/gap-bundle-reponse-demande-consult-dispo, https://interop.esante.gouv.fr/ig/fhir/MOS/StructureDefinition/EntiteGeographique)
* insert GroupElement(Bundle.entry:Organization.resource, EntiteGeographique)
* group[=].element[=].target[=].comment = "L'entrée Organization du Bundle est mappé vers le modèle logique EntiteGeographique."
* group[=].unmapped.mode = #fixed
* group[=].unmapped.code = #MOSmap
* group[=].unmapped.display = "Le mapping est un travail en cours à voir dans l'IG MOS."

// RelatedPerson to PersonnePhysique
* insert Group(https://interop.esante.gouv.fr/ig/fhir/gap/StructureDefinition/gap-bundle-reponse-demande-consult-dispo, https://interop.esante.gouv.fr/ig/fhir/MOS/StructureDefinition/PersonnePhysique)
* insert GroupElement(Bundle.entry:OrganizRelatedPersonation.resource, PersonnePhysique)
* group[=].element[=].target[=].comment = "L'entrée RelatedPerson du Bundle est mappé vers le modèle logique PersonnePhysique."
* group[=].unmapped.mode = #fixed
* group[=].unmapped.code = #MOSmap
* group[=].unmapped.display = "Le mapping est un travail en cours à voir dans l'IG MOS."