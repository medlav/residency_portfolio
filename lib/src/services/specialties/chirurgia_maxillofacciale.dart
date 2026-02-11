// SPDX-License-Identifier: BSD-3-Clause
// Copyright (c) 2026 medlav

// AREA CHIRURGIA MAXILLO-FACCIALE
const List<Map<String, dynamic>> kOfficialChirurgiaMaxilloFaccialeActivities = [
  // Attività quantificate con un numero minimo (N)
  {
    "id": 1,
    "name": "Alta Chirurgia Maxillo-Facciale",
    "description":
        "Interventi di Alta Chirurgia di cui il 10% come primo operatore, il resto come secondo operatore (High Surgery Procedures, of which 10% as first operator, the rest as second operator)",
    "min_required_amount": 50,
    "required_departments": ["Sala Operatoria Maxillo-Facciale"],
  },
  {
    "id": 2,
    "name": "Media Chirurgia Maxillo-Facciale",
    "description":
        "Interventi di Media Chirurgia di cui il 25% come primo operatore, il resto come secondo operatore (Medium Surgery Procedures, of which 25% as first operator, the rest as second operator)",
    "min_required_amount": 100,
    "required_departments": ["Sala Operatoria Maxillo-Facciale"],
  },
  {
    "id": 3,
    "name": "Piccola Chirurgia e Chirurgia Ambulatoriale",
    "description":
        "Interventi di Piccola Chirurgia di cui il 40% come primo operatore, (sono incluse le procedure di chirurgia laparoscopica nonché quelle ambulatoriale e in D.H.), il resto come secondo operatore (Small Surgery Procedures, of which 40% as first operator (including laparoscopic, ambulatory and D.H. procedures), the rest as second operator)",
    "min_required_amount": 250,
    "required_departments": [
      "Chirurgia Ambulatoriale",
      "Day Hospital Chirurgico",
    ],
  },
  {
    "id": 4,
    "name": "Totale interventi chirurgici",
    "description":
        "Totale interventi (Total procedures) (Somma delle precedenti categorie)",
    "min_required_amount": 400,
    "required_departments": [],
  },
  {
    "id": 5,
    "name": "Assistenza clinica e gestione pazienti",
    "description":
        "Aver prestato assistenza diretta e responsabile, con relativi atti diagnostici e terapeutici, a un adeguato numero di pazienti in elezione, critici e in emergenza/urgenza. (Il requisito N di 1.000 si riferisce al numero minimo di pazienti che la rete formativa deve gestire per ogni anno di specializzando, non il minimo per lo specializzando, ma è stato quantificato in N.) (Having provided direct and responsible assistance... to an adequate number of elective, critical and emergency/urgent patients. The N requirement of 1,000 refers to the minimum number of patients the training network must manage per specialist year, not the minimum for the specialist, but it has been quantified in N.)",
    "min_required_amount": 1000,
    "required_departments": ["Chirurgia d'Urgenza", "Pronto Soccorso"],
  },

  // Attività non quantificate con N, ma obbligatorie per l'addestramento
  {
    "id": 6, "name": "Frequenza Chirurgia Generale e d'Urgenza",
    "description":
        "Prestare attività di assistenza diretta per due bimestri in Chirurgia generale e in Chirurgia d’urgenza e Pronto soccorso. (Provide direct assistance activity for two bimestri (4 months) in General Surgery and in Emergency Surgery and Emergency Room.)",
    "min_required_amount": 0, // Requisito basato sulla durata (2 bimestri).
    "required_departments": [
      "Chirurgia Generale",
      "Chirurgia d'Urgenza/Pronto Soccorso",
    ],
  },
];
