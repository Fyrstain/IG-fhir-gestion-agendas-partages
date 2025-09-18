Instance: CM-GAP-FrAppointmentToMOSRendezVous
InstanceOf: ConceptMap
Title: "Mapping du GAP-FrAppointment vers RendezVous du MOS"
Usage: #definition
* title = "Mapping du GAP-FrAppointment vers RendezVous du MOS"
* description = "ConceptMap définissant la correspondance détaillée entre le profil GAP-FrAppointment et le modèle logique MOS RendezVous."
* name = "CM_GAP_FrAppointmentToMOSRendezVous"
* status = #draft
* experimental = false

* sourceUri = "https://interop.esante.gouv.fr/ig/fhir/gap/StructureDefinition/gap-fr-appointment"
* targetUri = "https://interop.esante.gouv.fr/ig/fhir/MOS/StructureDefinition/RendezVous"

// Group for GAP-FrAppointment → MOS RendezVous
* insert Group(https://interop.esante.gouv.fr/ig/fhir/gap/StructureDefinition/gap-fr-appointment, https://interop.esante.gouv.fr/ig/fhir/MOS/StructureDefinition/RendezVous)

* insert GroupElement(Appointment.identifier, RendezVous.idRdv)
* group[=].element[=].target[=].comment = "Identifiant logique du rendez-vous mappé vers RendezVous.idRdv."
* insert GroupElement(Appointment.appointmentType, RendezVous.typeRdv)
* group[=].element[=].target[=].comment = "Type ou style du rendez-vous mappé vers RendezVous.typeRdv."
* insert GroupElement(Appointment.created, RendezVous.datePriseRdv)
* group[=].element[=].target[=].comment = "Date à laquelle le rendez-vous a été initialement créé."
* insert GroupElement(Appointment.start, RendezVous.dateDebutRdv)
* group[=].element[=].target[=].comment = "Dates et heures de début du rendez-vous."
* insert GroupElement(Appointment.end, RendezVous.dateFinRdv)
* group[=].element[=].target[=].comment = "Dates et heures de fin du rendez-vous."
// Pas de Date d'annulation de RDV dans le profil
* insert GroupElement(Appointment.supportingInformation, RendezVous.pieceJointe)
* group[=].element[=].target[=].comment = "Informations supplémentaires fournies lors de la prise du rendez-vous."
* insert GroupElement(Appointment.priority, RendezVous.priorite)
* group[=].element[=].target[=].comment = "Priorité du rendez-vous."
* insert GroupElement(Appointment.description, RendezVous.titreRdv)
* group[=].element[=].target[=].comment = "La description peut servir à la fois de titre et de description détaillée du rendez-vous."
* insert GroupElement(Appointment.description, RendezVous.descriptionRdv)
* group[=].element[=].target[=].comment = "La description peut servir à la fois de titre et de description détaillée du rendez-vous."
* insert GroupElement(Appointment.reasonCode, RendezVous.motifRdv)
* group[=].element[=].target[=].comment = "Motif codé pour lequel le rendez-vous est pris."
* insert GroupElement(Appointment.comment, RendezVous.commentaire)
* group[=].element[=].target[=].comment = "Commentaires supplémentaires sur le rendez-vous."
* insert GroupElement(Appointment.status, RendezVous.statutRdv)
* group[=].element[=].target[=].comment = "Statut de disponibilité/occupation du rendez-vous."
* insert GroupElement(Appointment.slot, RendezVous.creneaux)
* group[=].element[=].target[=].comment = "Références aux créneaux horaires associés à ce rendez-vous."
* insert GroupElement(Appointment.participant.actor, RendezVous.personnePriseCharge)
* group[=].element[=].target[=].comment = "Les participants qui sont des patients (ressource Patient) sont mappés vers des références PersonnePriseCharge."
* insert GroupElement(Appointment.participant.actor, RendezVous.professionnel)
* group[=].element[=].target[=].comment = "Les participants qui sont des praticiens (ressources Practitioner ou PractitionerRole) sont mappés vers des références Professionnel."
* insert GroupElement(Appointment.participant.actor, RendezVous.entiteGeographique)
* group[=].element[=].target[=].comment = "Les participants référencés comme un Lieu (ressource Location) sont mappés vers EntiteGeographique."
* insert GroupElement(Appointment.participant.actor, RendezVous.equipementSpecifique)
* group[=].element[=].target[=].comment = "Les participants représentant des dispositifs (ressource Device) sont mappés vers EquipementSpecifique."
* insert GroupElement(Appointment.meta, RendezVous.metadonnee)
* group[=].element[=].target[=].comment = "Les métadonnées de la ressource sont mappées vers les éléments de RendezVous.metadonnee."