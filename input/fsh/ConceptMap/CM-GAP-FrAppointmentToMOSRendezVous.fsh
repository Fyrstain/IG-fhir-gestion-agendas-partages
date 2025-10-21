Instance: CM-GAP-FrAppointmentToMOSRendezVous
InstanceOf: ConceptMap
Title: "CM-GAP-FrAppointmentToMOSRendezVous"
Usage: #definition
* title = "CM-GAP-FrAppointmentToMOSRendezVous"
* description = "ConceptMap définissant la correspondance détaillée entre le profil GAP-FrAppointment et le modèle logique MOS RendezVous."
* name = "CM_GAP_FrAppointmentToMOSRendezVous"
* status = #draft
* experimental = false

* sourceUri = "https://interop.esante.gouv.fr/ig/fhir/gap/StructureDefinition/gap-fr-appointment"
* targetUri = "https://interop.esante.gouv.fr/ig/fhir/MOS/StructureDefinition/RendezVous"

// Group for GAP-FrAppointment → MOS RendezVous
* insert Group(https://interop.esante.gouv.fr/ig/fhir/gap/StructureDefinition/gap-fr-appointment, https://interop.esante.gouv.fr/ig/fhir/MOS/StructureDefinition/RendezVous)

* insert GroupElementWithCommentTarget(Appointment.identifier, RendezVous.idRdv, [["Identifiant logique du rendez-vous mappé vers RendezVous.idRdv."]])
* insert GroupElementWithCommentTarget(Appointment.appointmentType, RendezVous.typeRdv, [["Type du rendez-vous mappé vers RendezVous.typeRdv."]])
* insert GroupElementWithCommentTarget(Appointment.created, RendezVous.datePriseRdv, [["Date à laquelle le rendez-vous a été initialement créé."]])
* insert GroupElementWithCommentTarget(Appointment.start, RendezVous.dateDebutRdv, [["Date et heure de début du rendez-vous."]])
* insert GroupElementWithCommentTarget(Appointment.end, RendezVous.dateFinRdv, [["Date et heure de fin du rendez-vous."]])
// Pas de Date d'annulation de RDV dans le profil
* insert GroupElementWithCommentTarget(Appointment.supportingInformation, RendezVous.pieceJointe, [["Informations supplémentaires fournies lors de la prise du rendez-vous."]])
* insert GroupElementWithCommentTarget(Appointment.priority, RendezVous.priorite, [["Priorité du rendez-vous."]])
* insert GroupElementWithCommentTarget(Appointment.description, RendezVous.titreRdv, [["La description peut servir à la fois de titre et de description détaillée du rendez-vous."]])
* insert GroupElementWithCommentTarget(Appointment.description, RendezVous.descriptionRdv, [["La description peut servir à la fois de titre et de description détaillée du rendez-vous."]])
* insert GroupElementWithCommentTarget(Appointment.reasonCode, RendezVous.motifRdv, [["Motif codé pour lequel le rendez-vous est pris."]])
* insert GroupElementWithCommentTarget(Appointment.comment, RendezVous.commentaire, [["Commentaires supplémentaires sur le rendez-vous."]])
* insert GroupElementWithCommentTarget(Appointment.status, RendezVous.statutRdv, [["Statut de disponibilité/occupation du rendez-vous."]])
* insert GroupElementWithCommentTarget(Appointment.slot, RendezVous.creneaux, [["Références aux créneaux horaires associés à ce rendez-vous."]])
* insert GroupElementWithCommentTarget(Appointment.participant.actor, RendezVous.personnePriseCharge, [["Les participants qui sont des patients (ressource Patient) sont mappés vers des références PersonnePriseCharge."]])
* insert GroupElementWithCommentTarget(Appointment.participant.actor, RendezVous.professionnel, [["Les participants qui sont des praticiens (ressources Practitioner ou PractitionerRole) sont mappés vers des références Professionnel."]])
* insert GroupElementWithCommentTarget(Appointment.participant.actor, RendezVous.entiteGeographique, [["Les participants référencés comme un Lieu (ressource Location) sont mappés vers EntiteGeographique."]])
* insert GroupElementWithCommentTarget(Appointment.participant.actor, RendezVous.equipementSpecifique, [["Les participants représentant des dispositifs (ressource Device) sont mappés vers EquipementSpecifique."]])
* insert GroupElementWithCommentTarget(Appointment.meta, RendezVous.metadonnee, [["Les métadonnées de la ressource sont mappées vers les éléments de RendezVous.metadonnee."]])
