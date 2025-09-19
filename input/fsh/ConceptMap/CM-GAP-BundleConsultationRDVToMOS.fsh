Instance: CM-GAP-BundleConsultationRDVToMOS
InstanceOf: ConceptMap
Title: "CM-GAP-BundleConsultationRDVToMOS"
Usage: #definition
* title = "CM-GAP-BundleConsultationRDVToMOS"
* description = "ConceptMap définissant la correspondance détaillée entre le profil GAP-BundleResultatReponseADemandeConsultationRDV et les modèles logiques MOS."
* name = "CM_GAP_BundleConsultationRDVToMOS"
* status = #draft
* experimental = false

* sourceUri = "https://interop.esante.gouv.fr/ig/fhir/gap/StructureDefinition/gap-bundle-reponse-demande-consult-rdv"
* targetUri = "https://interop.esante.gouv.fr/ig/fhir/MOS"

// Appointment to RendezVous
* insert Group(https://interop.esante.gouv.fr/ig/fhir/gap/StructureDefinition/gap-bundle-reponse-demande-consult-rdv, https://interop.esante.gouv.fr/ig/fhir/MOS/StructureDefinition/RendezVous)
* insert GroupElementWithCommentTarget(Bundle.entry:Appointment.resource, RendezVous, [["L'entrée Appointment du Bundle est mappé vers le modèle logique RendezVous."]])
* group[=].unmapped.mode = #other-map
* group[=].unmapped.url = Canonical(CM-GAP-FrAppointmentToMOSRendezVous)

// Slot to Creneau
* insert Group(https://interop.esante.gouv.fr/ig/fhir/gap/StructureDefinition/gap-bundle-reponse-demande-consult-rdv, https://interop.esante.gouv.fr/ig/fhir/MOS/StructureDefinition/Creneau)
* insert GroupElementWithCommentTarget(Bundle.entry:Slot.resource, Creneau, [["L'entrée Slot du Bundle est mappé vers le modèle logique Creneau."]])
* group[=].unmapped.mode = #other-map
* group[=].unmapped.url = Canonical(CM-GAP-FrSlotToMOSCreneau)

// Schedule to Agenda
* insert Group(https://interop.esante.gouv.fr/ig/fhir/gap/StructureDefinition/gap-bundle-reponse-demande-consult-rdv, https://interop.esante.gouv.fr/ig/fhir/MOS/StructureDefinition/Agenda)
* insert GroupElementWithCommentTarget(Bundle.entry:Schedule.resource, Agenda, [["L'entrée Schedule du Bundle est mappé vers le modèle logique Agenda."]])
* group[=].unmapped.mode = #other-map
* group[=].unmapped.url = Canonical(CM-GAP-FrSchedule-To-MOS-Agenda)

// Patient to PersonnePriseCharge
* insert Group(https://interop.esante.gouv.fr/ig/fhir/gap/StructureDefinition/gap-bundle-reponse-demande-consult-rdv, https://interop.esante.gouv.fr/ig/fhir/MOS/StructureDefinition/PersonnePriseCharge)
* insert GroupElementWithCommentTarget(Bundle.entry:Patient.resource, PersonnePriseCharge, [["L'entrée Patient du Bundle est mappé vers le modèle logique PersonnePriseCharge."]])
* group[=].unmapped.mode = #fixed
* group[=].unmapped.code = #MOSmap
* group[=].unmapped.display = "Le mapping est un travail en cours à voir dans l'IG MOS."

// Practitioner to Professionnel
* insert Group(https://interop.esante.gouv.fr/ig/fhir/gap/StructureDefinition/gap-bundle-reponse-demande-consult-rdv, https://interop.esante.gouv.fr/ig/fhir/MOS/StructureDefinition/Professionnel)
* insert GroupElementWithCommentTarget(Bundle.entry:Practitioner.resource, Professionnel, [["L'entrée Practitioner du Bundle est mappé vers le modèle logique Professionnel."]])
* group[=].unmapped.mode = #fixed
* group[=].unmapped.code = #MOSmap
* group[=].unmapped.display = "Le mapping est un travail en cours à voir dans l'IG MOS."

// PractitionerRole to ExerciceProfessionnel
* insert Group(https://interop.esante.gouv.fr/ig/fhir/gap/StructureDefinition/gap-bundle-reponse-demande-consult-rdv, https://interop.esante.gouv.fr/ig/fhir/MOS/StructureDefinition/ExerciceProfessionnel)
* insert GroupElementWithCommentTarget(Bundle.entry:PractitionerRole.resource, ExerciceProfessionnel, [["L'entrée PractitionerRole du Bundle est mappé vers le modèle logique ExerciceProfessionnel."]])
* group[=].unmapped.mode = #fixed
* group[=].unmapped.code = #MOSmap
* group[=].unmapped.display = "Le mapping est un travail en cours à voir dans l'IG MOS."

// Device to EquipementSpecifique
* insert Group(https://interop.esante.gouv.fr/ig/fhir/gap/StructureDefinition/gap-bundle-reponse-demande-consult-rdv, https://interop.esante.gouv.fr/ig/fhir/MOS/StructureDefinition/EquipementSpecifique)
* insert GroupElementWithCommentTarget(Bundle.entry:Device.resource, EquipementSpecifique, [["L'entrée Device du Bundle est mappé vers le modèle logique EquipementSpecifique."]])
* group[=].unmapped.mode = #fixed
* group[=].unmapped.code = #MOSmap
* group[=].unmapped.display = "Le mapping est un travail en cours à voir dans l'IG MOS."

// Location to Lieu
* insert Group(https://interop.esante.gouv.fr/ig/fhir/gap/StructureDefinition/gap-bundle-reponse-demande-consult-rdv, https://interop.esante.gouv.fr/ig/fhir/MOS/StructureDefinition/Lieu)
* insert GroupElementWithCommentTarget(Bundle.entry:Location.resource, Lieu, [["L'entrée Location du Bundle est mappé vers le modèle logique Lieu."]])
* group[=].unmapped.mode = #fixed
* group[=].unmapped.code = #MOSmap
* group[=].unmapped.display = "Le mapping est un travail en cours à voir dans l'IG MOS."

// HealthcareService to OrganisationInterne
* insert Group(https://interop.esante.gouv.fr/ig/fhir/gap/StructureDefinition/gap-bundle-reponse-demande-consult-rdv, https://interop.esante.gouv.fr/ig/fhir/MOS/StructureDefinition/OrganisationInterne)
* insert GroupElementWithCommentTarget(Bundle.entry:HealthcareService.resource, OrganisationInterne, [["L'entrée HealthcareService du Bundle est mappé vers le modèle logique OrganisationInterne."]])
* group[=].unmapped.mode = #fixed
* group[=].unmapped.code = #MOSmap
* group[=].unmapped.display = "Le mapping est un travail en cours à voir dans l'IG MOS."

// Organization to EntiteGeographique
* insert Group(https://interop.esante.gouv.fr/ig/fhir/gap/StructureDefinition/gap-bundle-reponse-demande-consult-rdv, https://interop.esante.gouv.fr/ig/fhir/MOS/StructureDefinition/EntiteGeographique)
* insert GroupElementWithCommentTarget(Bundle.entry:Organization.resource, EntiteGeographique, [["L'entrée Organization du Bundle est mappé vers le modèle logique EntiteGeographique."]])
* group[=].unmapped.mode = #fixed
* group[=].unmapped.code = #MOSmap
* group[=].unmapped.display = "Le mapping est un travail en cours à voir dans l'IG MOS."

// RelatedPerson to Contact
* insert Group(https://interop.esante.gouv.fr/ig/fhir/gap/StructureDefinition/gap-bundle-reponse-demande-consult-rdv, https://interop.esante.gouv.fr/ig/fhir/MOS/StructureDefinition/Contact)
* insert GroupElementWithCommentTarget(Bundle.entry:RelatedPerson.resource, Contact, [["L'entrée RelatedPerson du Bundle est mappé vers le modèle logique Contact."]])
* group[=].unmapped.mode = #fixed
* group[=].unmapped.code = #MOSmap
* group[=].unmapped.display = "Le mapping est un travail en cours à voir dans l'IG MOS."