// SPDX-License-Identifier: BSD-3-Clause
// Copyright (c) 2026 medlav

// AREA OTORINOLARINGOIATRIA
const List<Map<String, dynamic>> kOfficialOtorinolaringoiatriaActivities = [
  // Attività quantificate con un numero minimo (N) - Chirurgia
  {
    "id": 1,
    "name": "Interventi di alta chirurgia ORL",
    "description":
        "Interventi di alta chirurgia di cui il 10% come primo operatore, il resto come secondo (High Surgery Procedures, of which 10% as first operator, the rest as second)",
    "min_required_amount": 30,
    "required_departments": ["Sala Operatoria Otorinolaringoiatrica"],
  },
  {
    "id": 2,
    "name": "Interventi di media chirurgia ORL",
    "description":
        "Interventi di media chirurgia di cui il 25% come primo operatore, il resto come secondo (Medium Surgery Procedures, of which 25% as first operator, the rest as second)",
    "min_required_amount": 80,
    "required_departments": ["Sala Operatoria Otorinolaringoiatrica"],
  },
  {
    "id": 3,
    "name": "Interventi di piccola e endoscopia ORL",
    "description":
        "Interventi di piccola chirurgia di cui il 40% come primo operatore (sono incluse le procedure di chirurgia endoscopica nonché quelle ambulatoriali e in D.H.), il resto come secondo (Small Surgery Procedures, of which 40% as first operator (including endoscopic and ambulatory/D.H. procedures), the rest as second)",
    "min_required_amount": 325,
    "required_departments": [
      "Chirurgia Endoscopica",
      "Chirurgia Ambulatoriale/D.H.",
    ],
  },
  {
    "id": 4,
    "name": "Totale interventi chirurgici ORL",
    "description":
        "Totale interventi (Total procedures) (Somma delle precedenti categorie)",
    "min_required_amount": 435,
    "required_departments": [],
  },

  // Attività quantificata con un numero minimo (N) - Pazienti
  {
    "id": 5,
    "name": "Assistenza clinica e gestione pazienti",
    "description":
        "Dimostrare di aver prestato assistenza diretta e responsabile, con relativi atti diagnostici e terapeutici, ad un adeguato numero di pazienti in elezione, critici e in emergenza/urgenza. (Il requisito N di 700 si riferisce al numero minimo di pazienti che la rete formativa deve gestire per ogni anno di specializzando, non il minimo per lo specializzando, ma è stato quantificato in N.) (Having provided direct and responsible assistance... to an adequate number of elective, critical and emergency/urgent patients. The N requirement of 700 refers to the minimum number of patients the training network must manage per specialist year, not the minimum for the specialist, but it has been quantified in N.)",
    "min_required_amount": 700,
    "required_departments": [
      "Pronto Soccorso Otorino",
      "Reparto Otorinolaringoiatria",
    ],
  },

  // Attività non quantificate con N, ma obbligatorie per l'addestramento (Durata)
  {
    "id": 6, "name": "Tirocinio in chirurgia generale e urgenza",
    "description":
        "Aver frequentato un reparto di chirurgia generale e di chirurgia d'urgenza e pronto soccorso per un periodo di due bimestri (4 mesi). (Having attended a general surgery and emergency surgery and emergency room ward for a period of two bimestri (4 months).)",
    "min_required_amount": 0, // Requisito basato sulla durata (2 bimestri).
    "required_departments": [
      "Chirurgia Generale",
      "Chirurgia d'Urgenza/Pronto Soccorso",
    ],
  },
];
