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

* insert GroupElement(Slot.identifier, Creneau.idCreneau)
* group[=].element[=].target[=].comment = "Identifiant unique du créneau, mappé vers Creneau.idCreneau."
* insert GroupElement(Slot.status, Creneau.statut)
* group[=].element[=].target[=].comment = "Statut du créneau (libre, occupé, etc.) mappé vers Creneau.statut."
* insert GroupElement(Slot.start, Creneau.dateDebut)
* group[=].element[=].target[=].comment = "Date et heure de début du créneau, mappées vers Creneau.dateDebut."
* insert GroupElement(Slot.end, Creneau.dateFin)
* group[=].element[=].target[=].comment = "Date et heure de fin du créneau, mappées vers Creneau.dateFin."
* insert GroupElement(Slot.comment, Creneau.informationComplementaire)
* group[=].element[=].target[=].comment = "Commentaires ou informations complémentaires liés au créneau, mappés vers Creneau.informationComplementaire."
* insert GroupElement(Slot.meta, Creneau.metadonnee)
* group[=].element[=].target[=].comment = "Les métadonnées de la ressource sont mappées vers les éléments de Creneau.metadonnee."