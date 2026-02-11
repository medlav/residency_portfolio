// SPDX-License-Identifier: BSD-3-Clause
// Copyright (c) 2026 medlav

// AREA MICROBIOLOGIA E VIROLOGIA
const List<Map<String, dynamic>> kOfficialMicrobiologiaVirologiaActivities = [
  // Attività quantificate con un numero minimo (N)
  {
    "id": 1,
    "name": "Prelievo di campioni microbiologici",
    "description":
        "Prelievo di campioni biologici di interesse microbiologico (Collection of biological samples of microbiological interest)",
    "min_required_amount": 160,
    "required_departments": ["Area Prelievi/Servizio di Microbiologia"],
  },
  {
    "id": 2,
    "name": "Iter diagnostico clinico integrato",
    "description":
        "Partecipazione all’iter diagnostico sotto gli aspetti batteriologici, virologici, micologici, o parassitologici di casi clinici (Participation in the diagnostic pathway concerning bacteriological, virological, mycological, or parasitological aspects of clinical cases)",
    "min_required_amount": 240,
    "required_departments": ["Servizio di Microbiologia"],
  },
  {
    "id": 3,
    "name": "Diagnostica batteriologica",
    "description":
        "Esecuzione di esami batteriologici (microscopici, colturali, sierologici e/o molecolari), sino alla formulazione diagnostica in almeno il 30% dei casi (Performance of bacteriological examinations (microscopic, cultural, serological, and/or molecular), up to diagnostic formulation in at least 30% of cases)",
    "min_required_amount": 4000,
    "required_departments": ["Laboratorio Batteriologia"],
  },
  {
    "id": 4,
    "name": "Diagnostica virologica",
    "description":
        "Esecuzione di esami virologici (microscopici, colturali, sierologici e/o molecolari), sino alla formulazione diagnostica in almeno il 30% dei casi (Performance of virological examinations (microscopic, cultural, serological, and/or molecular), up to diagnostic formulation in at least 30% of cases)",
    "min_required_amount": 640,
    "required_departments": ["Laboratorio Virologia"],
  },
  {
    "id": 5,
    "name": "Diagnostica micologica",
    "description":
        "Esecuzione di esami micologici (microscopici, colturali, sierologici e/o molecolari), sino alla formulazione diagnostica in almeno il 30% dei casi (Performance of mycological examinations (microscopic, cultural, serological, and/or molecular), up to diagnostic formulation in at least 30% of cases)",
    "min_required_amount": 400,
    "required_departments": ["Laboratorio Micologia"],
  },
  {
    "id": 6,
    "name": "Diagnostica parassitologica",
    "description":
        "Esecuzione di esami parassitologici (microscopici, colturali, sierologici e/o molecolari), sino alla formulazione diagnostica in almeno il 30% dei casi (Performance of parasitological examinations (microscopic, cultural, serological, and/or molecular), up to diagnostic formulation in at least 30% of cases)",
    "min_required_amount": 240,
    "required_departments": ["Laboratorio Parassitologia"],
  },
  {
    "id": 7,
    "name": "Diagnostica microbiologica d'urgenza",
    "description":
        "Esecuzione di esami (tra batteriologici, virologici, micologici e parassitologici) in urgenza (Performance of examinations (among bacteriological, virological, mycological, and parasitological) in emergency)",
    "min_required_amount": 40,
    "required_departments": ["Laboratorio Urgenze"],
  },

  // Attività non quantificate con N, ma obbligatorie per l'addestramento (Partecipazione)
  {
    "id": 8, "name": "Aggiornamento e formazione ECM",
    "description":
        "Partecipazione a corsi di aggiornamento, seminari, dimostrazioni, conferenze e congressi con tematiche direttamente pertinenti o comunque di completamento al percorso formativo in Microbiologia e Virologia, accreditati dal Ministero della Salute per l’Educazione Continua in Medicina (Participation in refresher courses, seminars, demonstrations, conferences, and congresses with themes directly pertinent or completing the training path in Microbiology and Virology, accredited by the Ministry of Health for Continuing Medical Education)",
    "min_required_amount": 0, // Nessun N, requisito di partecipazione.
    "required_departments": ["Formazione/ECM"],
  },
];
