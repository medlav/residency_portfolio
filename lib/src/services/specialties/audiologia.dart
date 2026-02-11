// SPDX-License-Identifier: BSD-3-Clause
// Copyright (c) 2026 medlav

// AREA AUDIOLOGIA E FONIATRIA
const List<Map<String, dynamic>> kOfficialAudiologiaFoniatriaActivities = [
  // Attività clinica generale
  {
    "id": 1,
    "name": "Attività clinica audiologica e foniatrica",
    "description":
        "Attività clinica su pazienti affetti da patologie audiologiche e foniatriche di cui almeno il **20% in età evolutiva** ed il **20% in età geriatrica** (Clinical activity on patients with audiological and phoniatric pathologies, with at least 20% in developmental age and 20% in geriatric age).",
    "min_required_amount": 350,
    "required_departments": [
      "Ambulatorio Audiologico",
      "Ambulatorio Foniatrico",
    ],
    "simulation_allowed": false,
  },

  // Diagnostica (Responsabilità Diretta)
  {
    "id": 2,
    "name": "Diagnosi specialistica audiologica e foniatrica",
    "description":
        "Diagnosi audiologiche e foniatriche complete, delle quali almeno il **25% con responsabilità diretta** (Complete audiological and phoniatric diagnoses, with at least 25% with direct responsibility).",
    "min_required_amount": 80,
    "required_departments": ["Ambulatorio Diagnostico Specialistico"],
    "simulation_allowed": false,
  },

  // Indagini Strumentali
  {
    "id": 3,
    "name": "Indagini audiometriche ERA",
    "description":
        "Indagini ERA (Evoked Response Audiometry), di cui almeno il **40% in pazienti in età evolutiva** (ERA investigations, with at least 40% in developmental age patients).",
    "min_required_amount": 20,
    "required_departments": ["Sezione Audiologia Infantile/ERA"],
    "simulation_allowed": false,
  },
  {
    "id": 4,
    "name": "Rinofaringolarinoscopie",
    "description": "Rinofaringolarinoscopie (Rhinopharyngolaryngoscopies).",
    "min_required_amount": 20,
    "required_departments": ["Ambulatorio Foniatrico/Endoscopia"],
    "simulation_allowed": false,
  },
  {
    "id": 5,
    "name": "Laringostroboscopie",
    "description": "Laringostroboscopie (Laryngostroboscopies).",
    "min_required_amount": 20,
    "required_departments": ["Ambulatorio Foniatrico/Endoscopia"],
    "simulation_allowed": false,
  },
  {
    "id": 6,
    "name": "Analisi acustica della voce",
    "description":
        "Analisi spettro acustiche della voce (Acoustic spectrum analysis of the voice).",
    "min_required_amount": 10,
    "required_departments": ["Laboratorio di Foniatria"],
    "simulation_allowed": false,
  },

  // Protesica e Riabilitazione
  {
    "id": 7,
    "name": "Prescrizione e controllo protesi uditive",
    "description":
        "Prescrizione e controllo di protesi uditive di cui il **10% impiantate chirurgicamente** (Prescription and control of hearing aids, of which 10% are surgically implanted).",
    "min_required_amount": 30,
    "required_departments": ["Ambulatorio Protesi Acustiche/Impianti Cocleari"],
    "simulation_allowed": false,
  },
  {
    "id": 8,
    "name": "Riabilitazione dei disturbi della comunicazione",
    "description":
        "Prescrizione e partecipazione a riabilitazioni di patologie della comunicazione delle quali almeno **5 in pazienti in età evolutiva** e **5 in pazienti post-chirurgici** (Prescription and participation in rehabilitation of communication disorders, including at least 5 in developmental age and 5 in post-surgical patients).",
    "min_required_amount": 20,
    "required_departments": ["Servizio Riabilitazione"],
    "simulation_allowed": false,
  },

  // Prevenzione e Chirurgia
  {
    "id": 9,
    "name": "Programmi di prevenzione della comunicazione",
    "description":
        "Programma di prevenzione delle patologie della comunicazione (Communication disorder prevention program).",
    "min_required_amount": 1,
    "required_departments": ["Medicina Preventiva/Sanità Pubblica"],
    "simulation_allowed": false,
  },
  {
    "id": 10,
    "name": "Chirurgia dell'orecchio e dell'udito",
    "description":
        "Interventi chirurgici per la risoluzione di patologie dell’orecchio che abbiano provocato una perdita uditiva (Surgical interventions for the resolution of ear pathologies causing hearing loss).",
    "min_required_amount": 15,
    "required_departments": ["Sala Operatoria (Chirurgia Otologica)"],
    "simulation_allowed": false,
  },
  {
    "id": 11,
    "name": "Chirurgia delle corde vocali e disfonie",
    "description":
        "Interventi per la correzione chirurgica di disfonie da patologia delle corde vocali e del tratto vocale (Surgical interventions for the correction of dysphonias due to vocal cord pathology).",
    "min_required_amount": 14,
    "required_departments": ["Sala Operatoria (Chirurgia Laringea)"],
    "simulation_allowed": false,
  },

  // Altri Inquadramenti Diagnostici
  {
    "id": 12,
    "name": "Inquadramento dei disturbi del linguaggio",
    "description":
        "Inquadramenti di disturbi del linguaggio (Diagnostic workup of language disorders).",
    "min_required_amount": 15,
    "required_departments": ["Ambulatorio Disturbi del Linguaggio"],
    "simulation_allowed": false,
  },
  {
    "id": 13,
    "name": "Inquadramento diagnostico DSA",
    "description":
        "Inquadramenti diagnostici dei Disturbi Specifici di Apprendimento (DSA) (Diagnostic workup of Specific Learning Disorders (DSA)).",
    "min_required_amount": 10,
    "required_departments": ["Ambulatorio DSA"],
    "simulation_allowed": false,
  },
  {
    "id": 14,
    "name": "Inquadramento dei disturbi della deglutizione",
    "description":
        "Inquadramenti diagnostici dei disturbi della deglutizione (Diagnostic workup of swallowing disorders).",
    "min_required_amount": 10,
    "required_departments": ["Ambulatorio Disfagia"],
    "simulation_allowed": false,
  },
  {
    "id": 15,
    "name": "Esami vestibolari e video-oculoscopia",
    "description":
        "Esami vestibolari (VideoOculoscopia) (Vestibular exams - VideoOculoscopy).",
    "min_required_amount": 20,
    "required_departments": ["Laboratorio Vestibolare"],
    "simulation_allowed": false,
  },

  // Attività Neonatale
  {
    "id": 16,
    "name": "Screening uditivo neonatale",
    "description":
        "Partecipazione a valutazioni uditive in ambito neonatale (screening) (Participation in neonatal hearing evaluations (screening)).",
    "min_required_amount": 45,
    "required_departments": ["Screening Neonatale"],
    "simulation_allowed": false,
  },
  {
    "id": 17,
    "name": "Diagnosi e terapia ipoacusia neonatale",
    "description":
        "Partecipazione a diagnosi di ipoacusia neonatale con prescrizione dell’iter terapeutico protesico e riabilitativo di cui almeno il **20 % con responsabilità diretta** (Participation in diagnosis of neonatal hearing loss with prescription of prosthetic and rehabilitative therapeutic plan, with at least 20% direct responsibility).",
    "min_required_amount": 20,
    "required_departments": ["Diagnosi Ipoacusia Neonatale"],
    "simulation_allowed": false,
  },
];
