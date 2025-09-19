Instance: CM-GAP-FrSlotToMOSCreneau
InstanceOf: ConceptMap
Title: "CM-GAP-FrSlotToMOSCreneau"
Usage: #definition
* title = "CM-GAP-FrSlotToMOSCreneau"
* description = "ConceptMap définissant la correspondance détaillée entre le profil GAP-FrSlot et le modèle logique MOS Creneau."
* name = "CM_GAP_FrSlotToMOSCreneau"
* status = #draft
* experimental = false

* sourceUri = "https://interop.esante.gouv.fr/ig/fhir/gap/StructureDefinition/gap-fr-slot"
* targetUri = "https://interop.esante.gouv.fr/ig/fhir/MOS/StructureDefinition/Creneau"

// Group for GAP-FrSlot → MOS Creneau
* insert Group(https://interop.esante.gouv.fr/ig/fhir/gap/StructureDefinition/gap-fr-slot, https://interop.esante.gouv.fr/ig/fhir/MOS/StructureDefinition/Creneau)

* insert GroupElementWithCommentTarget(Slot.identifier, Creneau.idCreneau, [["Identifiant unique du créneau, mappé vers Creneau.idCreneau."]])
* insert GroupElementWithCommentTarget(Slot.status, Creneau.statut, [["Statut du créneau (libre, occupé, etc.) mappé vers Creneau.statut."]])
* insert GroupElementWithCommentTarget(Slot.start, Creneau.dateDebut, [["Date et heure de début du créneau, mappées vers Creneau.dateDebut."]])
* insert GroupElementWithCommentTarget(Slot.end, Creneau.dateFin, [["Date et heure de fin du créneau, mappées vers Creneau.dateFin."]])
* insert GroupElementWithCommentTarget(Slot.comment, Creneau.informationComplementaire, [["Commentaires ou informations complémentaires liés au créneau, mappés vers Creneau.informationComplementaire."]])
* insert GroupElementWithCommentTarget(Slot.meta, Creneau.metadonnee, [["Les métadonnées de la ressource sont mappées vers les éléments de Creneau.metadonnee."]])
* group[=].element[+].code = #Slot.schedule
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "La référence est faite dans le modèle logique Agenda."