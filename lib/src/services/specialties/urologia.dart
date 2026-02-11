// SPDX-License-Identifier: BSD-3-Clause
// Copyright (c) 2026 medlav

// AREA UROLOGIA
const List<Map<String, dynamic>> kOfficialUrologiaActivities = [
  // Attività quantificate con un numero minimo (N)
  {
    "id": 1,
    "name": "Diagnostica integrata e oncologia urologica",
    "description":
        "Partecipazione attiva all’itinerario diagnostico (Diagnostica per Immagini, Esami urodinamici, esami endoscopici) di casi clinici, di cui almeno 150 casi relativi a pazienti affetti da neoplasie (Active participation in the diagnostic pathway (Diagnostic Imaging, Urodynamic examinations, endoscopic examinations) of clinical cases, of which at least 150 cases related to patients affected by neoplasms)",
    "min_required_amount": 500,
    "required_departments": [
      "Diagnostica per Immagini",
      "Urodinamica",
      "Endoscopia Urologica",
      "Oncologia Urologica",
    ],
  },
  {
    "id": 2,
    "name": "Interventi di alta chirurgia urologica",
    "description":
        "Interventi di Alta Chirurgia di cui il 10% come primo operatore, il resto come secondo operatore (High Surgery Procedures, of which 10% as first operator, the rest as second operator)",
    "min_required_amount": 20,
    "required_departments": ["Sala Operatoria Urologica"],
  },
  {
    "id": 3,
    "name": "Interventi di media chirurgia urologica",
    "description":
        "Interventi di Media Chirurgia di cui il 20% come primo operatore, il resto come secondo operatore (Medium Surgery Procedures, of which 20% as first operator, the rest as second operator)",
    "min_required_amount": 50,
    "required_departments": ["Sala Operatoria Urologica"],
  },
  {
    "id": 4,
    "name": "Piccola chirurgia e procedure endoscopiche",
    "description":
        "Interventi di Piccola Chirurgia di cui il 30% come primo operatore (sono incluse le procedure di chirurgia ambulatoriale e in D.H.), il resto come secondo operatore (Small Surgery Procedures, of which 30% as first operator (including ambulatory and D.H. procedures), the rest as second operator)",
    "min_required_amount": 250,
    "required_departments": [
      "Chirurgia Ambulatoriale",
      "Day Hospital Chirurgico",
      "Endoscopia Urologica",
    ],
  },
  {
    "id": 5,
    "name": "Partecipazione a ricerca clinica o di base",
    "description":
        "Partecipazione a ricerche controllate cliniche o di base (Participation in controlled clinical or basic research)",
    "min_required_amount": 3,
    "required_departments": ["Ricerca Clinica/Base"],
  },
];
