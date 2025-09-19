Instance: CM-GAP-FrSchedule-To-MOS-Agenda
InstanceOf: ConceptMap
Title: "CM-GAP-FrSchedule-To-MOS-Agenda"
Usage: #definition
* title = "CM-GAP-FrSchedule-To-MOS-Agenda"
* description = "ConceptMap définissant la correspondance détaillée entre le profil GAP-FrSchedule et le modèle logique MOS Agenda."
* name = "CM_GAP_FrSchedule_To_MOS_Agenda"
* status = #draft
* experimental = true
* date = "2025-09-18"

* sourceUri = "https://interop.esante.gouv.fr/ig/fhir/gap/StructureDefinition/gap-fr-schedule"
* targetUri = "https://interop.esante.gouv.fr/ig/fhir/MOS"


// Group for gap-fr-schedule.html → MOS Agenda
* insert Group(https://interop.esante.gouv.fr/ig/fhir/gap/StructureDefinition/gap-fr-schedule, https://interop.esante.gouv.fr/ig/fhir/MOS/StructureDefinition/Agenda)

* insert GroupElementWithCommentTarget(Schedule.identifier, Agenda.idAgenda, [["Identifiant de l'agenda."]])
* insert GroupElementWithCommentTarget(Schedule.text, Agenda.nomAgenda, [["Nom de l'agenda."]])
* insert GroupElementWithCommentTarget(Schedule.extension:availabilityTime.extension:created, Agenda.dateCreation, [["Date de création de l'agenda."]])
* insert GroupElementWithCommentTarget(Schedule.planningHorizon.start, Agenda.dateDebutPlanification, [["Date de début de validité de l'agenda."]])
* insert GroupElementWithCommentTarget(Schedule.planningHorizon.end, Agenda.dateFinPlanification, [["Date de fin de validité de l'agenda."]])
* insert GroupElementWithCommentTarget(Schedule.meta, Agenda.metadonnee, [["Informations relatives à la gestion des classes et des données."]])
//
* insert GroupElementWithCommentTarget(Schedule.actor, Agenda.personnePriseCharge, [["Les acteurs qui sont des patients (ressource Patient) sont mappés vers des références PersonnePriseCharge."]])
* insert GroupElementWithCommentTarget(Schedule.actor, Agenda.professionnel, [["Les acteurs qui sont des praticiens (ressources Practitioner ou PractitionerRole) sont mappés vers des références Professionnel."]])
* insert GroupElementWithCommentTarget(Schedule.actor, Agenda.entiteGeographique, [["Les acteurs référencés comme un Lieu (ressource Location) sont mappés vers EntiteGeographique."]])
* insert GroupElementWithCommentTarget(Schedule.actor, Agenda.equipementSpecifique, [["Les acteurs représentant des dispositifs (ressource Device) sont mappés vers EquipementSpecifique."]])


* insert Group(https://interop.esante.gouv.fr/ig/fhir/gap/StructureDefinition/gap-fr-schedule, https://interop.esante.gouv.fr/ig/fhir/MOS/StructureDefinition/PlageDisponibilite)
* insert GroupElementWithCommentTarget(Schedule.extension:availabilityTime.extension:start, PlageDisponibilite.plageDisponibilite.debutDateEffective, [["Date de début de la plage de disponibilité."]])
* insert GroupElementWithCommentTarget(Schedule.extension:availabilityTime.extension:start, PlageDisponibilite.plageDisponibilite.heureDebut, [["Heure de début de la plage de disponibilité."]])
* insert GroupElementWithCommentTarget(Schedule.extension:availabilityTime.extension:end, PlageDisponibilite.plageDisponibilite.finDateEffective, [["Date de fin de la plage de disponibilité."]])
* insert GroupElementWithCommentTarget(Schedule.extension:availabilityTime.extension:end, PlageDisponibilite.plageDisponibilite.heureFin, [["Heure de fin de la plage de disponibilité."]])
* insert GroupElementWithCommentTarget(Schedule.extension:availabilityTime.extension:type, PlageDisponibilite.statutPlageDisponibilite, [["Disponibilité (ou non) de la plage de disponibilité."]])
