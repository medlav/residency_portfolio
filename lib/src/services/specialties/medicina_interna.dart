// SPDX-License-Identifier: BSD-3-Clause
// Copyright (c) 2026 medlav

// AREA MEDICA MEDICINA INTERNA
const List<Map<String, dynamic>> kOfficialMedicinaInternaActivities = [
  {
    "id": 1,
    "name": "Gestione clinica e cartelle internistiche",
    "description":
        "Aver redatto e controfirmato cartelle cliniche dei pazienti ricoverati o ambulatoriali seguiti personalmente; le cartelle debbono riportare un esame obiettivo completo che comprenda tra l’altro, la valutazione dello stato nutrizionale e, ove indicato, l'esplorazione rettale e/o vaginale. Ove necessario, deve aver curato l'idonea preparazione di campioni e l'invio in laboratorio di liquidi biologici con l'appropriata richiesta d'analisi (Having personally drafted and countersigned clinical records for inpatients or outpatients followed; the records must include a complete physical examination including, among other things, nutritional status assessment and, where indicated, rectal and/or vaginal examination. Where necessary, the specialist must have ensured the proper preparation of samples and the submission of biological fluids to the laboratory with the appropriate analysis request)",
    "min_required_amount": 400,
    "required_departments": [],
  },
  {
    "id": 2,
    "name": "Consulenze internistiche extra-reparto",
    "description":
        "Aver partecipato a consulenze internistiche presso reparti esterni, specialistici o territoriali (Having participated in internal medicine consultations in external, specialized, or territorial departments)",
    "min_required_amount": 100,
    "required_departments": ["reparti esterni", "specialistici o territoriali"],
  },
  {
    "id": 3,
    "name": "Interpretazione elettrocardiografica (ECG)",
    "description":
        "Aver interpretato esami elettrocardiografici da poter porre la diagnosi dei più comuni disordini del ritmo, della conduzione e della ripolarizzazione (Having interpreted electrocardiographic exams to be able to diagnose the most common disorders of rhythm, conduction, and repolarization)",
    "min_required_amount": 100,
    "required_departments": [],
  },
  {
    "id": 4,
    "name": "Manovre invasive e agoaspirati",
    "description":
        "Avere eseguito personalmente le seguenti manovre invasive: paracentesi, toracentesi, prelievo per emogasanalisi, citoaspirati di diversi organi e apparati, ventilazione assistita, agoaspirato midollare (10 ciascuna) (Having personally performed the following invasive maneuvers: paracentesis, thoracentesis, blood gas analysis sampling, fine-needle aspiration of various organs and systems, assisted ventilation, bone marrow aspiration (10 each))",
    "min_required_amount": 10,
    "required_departments": [],
  },
  {
    "id": 5,
    "name": "Diagnostica strumentale e funzionale",
    "description":
        "Aver partecipato alla esecuzione di indagini strumentali come ecoDoppler dei grossi vasi arteriosi e venosi, ecocardiografia, ergometria, endoscopia, scintigrafia, prove di funzione respiratoria, diagnostica allergologica (Having participated in the execution of instrumental investigations such as eco-Doppler of large arterial and venous vessels, echocardiography, ergometry, endoscopy, scintigraphy, respiratory function tests, allergological diagnostics)",
    "min_required_amount": 80,
    "required_departments": [],
  },
  {
    "id": 6,
    "name": "Rianimazione cardiopolmonare (BLS/ACLS)",
    "description":
        "Aver acquisito competenza sulle tecniche di base ed avanzate di rianimazione cardiopolmonare (BLS e ACLS) ed aver partecipato od eseguito manovre di rianimazione su paziente o manichino (Having acquired competence in basic and advanced cardiopulmonary resuscitation techniques (BLS and ACLS) and having participated in or performed resuscitation maneuvers on patients or manikins)",
    "min_required_amount": 4,
    "required_departments": [],
  },
  {
    "id": 7,
    "name": "Ecografia clinica internistica (Bedside)",
    "description":
        "Aver eseguito direttamente esami ecografici da poter interpretare le immagini di interesse internistico (collo, tiroide, mammella, torace, apparato digerente, fegato e vie biliari, pancreas, milza, reni e surreni, vescica) (Having personally performed ultrasound examinations to be able to interpret images of internal medicine interest (neck, thyroid, breast, chest, digestive system, liver and biliary tract, pancreas, spleen, kidneys and adrenal glands, bladder))",
    "min_required_amount": 100,
    "required_departments": [],
  },
  {
    "id": 8,
    "name": "Discussione esami ecocardiografici",
    "description":
        "Aver discusso con lo specialista esami ecocardiografici (Having discussed echocardiographic exams with the specialist)",
    "min_required_amount": 20,
    "required_departments": [],
  },
  {
    "id": 9,
    "name": "Discussione esami angiografici",
    "description":
        "Aver discusso con lo specialista esami angiografici (Having discussed angiographic exams with the specialist)",
    "min_required_amount": 10,
    "required_departments": [],
  },
  {
    "id": 10,
    "name": "Discussione preparati istopatologici",
    "description":
        "Aver discusso con lo specialista preparati istopatologici (Having discussed histopathological preparations with the specialist)",
    "min_required_amount": 20,
    "required_departments": [],
  },
  {
    "id": 11,
    "name": "Discussione TC/RMN encefalo",
    "description":
        "Aver discusso con lo specialista TC o RMN encefalo (Having discussed brain CT or MRI scans with the specialist)",
    "min_required_amount": 40,
    "required_departments": [],
  },
  {
    "id": 12,
    "name": "Discussione imaging radiologico tradizionale",
    "description":
        "Aver discusso con lo specialista tra Rx torace, Rx rachide, Rx apparato digerente (Having discussed with the specialist among chest X-rays, spine X-rays, digestive system X-rays)",
    "min_required_amount": 60,
    "required_departments": [],
  },
  {
    "id": 13,
    "name": "Responsabilità in turni di guardia",
    "description":
        "Aver partecipato a turni di guardia divisionale o interdivisionale, assumendo la responsabilità in prima persona (con possibilità di consultazione del tutore) nei turni degli ultimi due anni (Having participated in divisional or interdivisional on-call shifts, taking personal responsibility (with possibility of tutor consultation) in the shifts of the last two years)",
    "min_required_amount": 40,
    "required_departments": [],
  },
  {
    "id": 14,
    "name": "Conduzione di sperimentazioni cliniche (GCP)",
    "description":
        "Aver seguito direttamente la conduzione, secondo le norme della buona pratica clinica, di sperimentazioni cliniche controllate (Having directly followed the conduct of controlled clinical trials, according to the rules of good clinical practice)",
    "min_required_amount": 3,
    "required_departments": [],
  },
];
