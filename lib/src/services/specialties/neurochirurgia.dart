// SPDX-License-Identifier: BSD-3-Clause
// Copyright (c) 2026 medlav

// AREA NEUROCHIRURGIA
const List<Map<String, dynamic>> kOfficialNeurochirurgiaActivities = [
  // Attività quantificate con un numero minimo (N)
  {
    "id": 1,
    "name": "Iter diagnostico e neuroradiologico",
    "description":
        "Partecipazione attiva all’itinerario diagnostico, anche mediante tecniche di diagnostica per immagini, di casi clinici di cui almeno 120 casi relativi a pazienti affetti da neoplasie o da altra patologia neurochirurgica (Active participation in the diagnostic pathway, including through diagnostic imaging techniques, of clinical cases, of which at least 120 cases related to patients affected by neoplasms or other neurosurgical pathology)",
    "min_required_amount": 400,
    "required_departments": ["Diagnostica per Immagini", "Neuroradiologia"],
  },
  {
    "id": 2,
    "name": "Interventi di alta neurochirurgia",
    "description":
        "Interventi di Alta Chirurgia di cui il 10% come primo operatore, il resto come secondo operatore (High Surgery Procedures, of which 10% as first operator, the rest as second operator)",
    "min_required_amount": 25,
    "required_departments": ["Sala Operatoria Neurochirurgica"],
  },
  {
    "id": 3,
    "name": "Interventi di media neurochirurgia",
    "description":
        "Interventi di Media Chirurgia di cui il 25% come primo operatore, il resto come secondo operatore (Medium Surgery Procedures, of which 25% as first operator, the rest as second operator)",
    "min_required_amount": 60,
    "required_departments": ["Sala Operatoria Neurochirurgica"],
  },
  {
    "id": 4,
    "name": "Interventi di piccola neurochirurgia",
    "description":
        "Interventi di Piccola Chirurgia di cui il 40% come primo operatore (sono incluse le procedure di chirurgia ambulatoriale e in D.H.), il resto come secondo operatore (Small Surgery Procedures, of which 40% as first operator (including ambulatory and D.H. procedures), the rest as second operator)",
    "min_required_amount": 300,
    "required_departments": [
      "Chirurgia Ambulatoriale",
      "Day Hospital Chirurgico",
    ],
  },
  {
    "id": 5,
    "name": "Totale interventi neurochirurgici",
    "description":
        "Totale interventi (Total procedures) (Somma delle precedenti categorie)",
    "min_required_amount": 385,
    "required_departments": [],
  },
  {
    "id": 6,
    "name": "Conduzione di ricerca clinica o di base",
    "description":
        "Partecipazione alla conduzione di ricerche controllate cliniche o di base (Participation in the conduct of controlled clinical or basic research)",
    "min_required_amount": 3,
    "required_departments": ["Ricerca Clinica/Base"],
  },
];
