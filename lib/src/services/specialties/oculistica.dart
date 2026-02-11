// SPDX-License-Identifier: BSD-3-Clause
// Copyright (c) 2026 medlav

// AREA OFTALMOLOGIA
const List<Map<String, dynamic>> kOfficialOftalmologiaActivities = [
  // Attività non quantificate con N, ma obbligatorie per l'addestramento (Durata)
  {
    "id": 1, "name": "Tirocinio in Chirurgia e Urgenza",
    "description":
        "Prestare attività di assistenza diretta in un reparto di chirurgia generale e di chirurgia d'urgenza e pronto soccorso per un periodo di un bimestre (2 mesi). (Provide direct assistance activity in a general surgery and emergency surgery and emergency room ward for a period of one bimester (2 months).)",
    "min_required_amount": 0, // Requisito basato sulla durata (1 bimestre).
    "required_departments": [
      "Chirurgia Generale",
      "Chirurgia d'Urgenza/Pronto Soccorso",
    ],
  },
  {
    "id": 2, "name": "Tirocinio in Medicina Interna",
    "description":
        "Prestare attività di assistenza diretta per un periodo di un bimestre in un reparto di medicina interna (2 mesi). (Provide direct assistance activity for a period of one bimester (2 months) in an internal medicine ward.)",
    "min_required_amount": 0, // Requisito basato sulla durata (1 bimestre).
    "required_departments": ["Medicina Interna"],
  },

  // Attività quantificate con un numero minimo (N) - Chirurgia e Procedure
  {
    "id": 3,
    "name": "Interventi di alta chirurgia oculistica",
    "description":
        "Interventi di Alta Chirurgia di cui il 10% come primo operatore, il resto come secondo (High Surgery Procedures, of which 10% as first operator, the rest as second)",
    "min_required_amount": 30,
    "required_departments": ["Sala Operatoria Oculistica"],
  },
  {
    "id": 4,
    "name": "Interventi di media chirurgia oculistica",
    "description":
        "Interventi di Media Chirurgia di cui il 25% come primo operatore, il resto come secondo (Medium Surgery Procedures, of which 25% as first operator, the rest as second)",
    "min_required_amount": 70,
    "required_departments": ["Sala Operatoria Oculistica"],
  },
  {
    "id": 5,
    "name": "Interventi di piccola chirurgia oculistica",
    "description":
        "Interventi di Piccola Chirurgia di cui il 40% come primo operatore, (sono incluse le procedure di chirurgia ambulatoriale e in D.H.), il resto come secondo operatore (Small Surgery Procedures, of which 40% as first operator (including ambulatory and D.H. procedures), the rest as second operator)",
    "min_required_amount": 150,
    "required_departments": [
      "Chirurgia Ambulatoriale",
      "Day Hospital Chirurgico",
    ],
  },
  {
    "id": 6,
    "name": "Trattamenti laser della retina",
    "description":
        "Interventi di trattamenti laser della retina (Retinal laser treatments)",
    "min_required_amount": 40,
    "required_departments": ["Laserterapia Oculistica"],
  },
  {
    "id": 7,
    "name": "Parachirurgia refrattiva e segmento anteriore",
    "description":
        "Interventi di parachirurgia dei vizi di refrazione e/o sul segmento anteriore (Parathyroid surgery procedures for refractive errors and/or on the anterior segment)",
    "min_required_amount": 40,
    "required_departments": ["Parachirurgia Oculistica"],
  },

  // Attività quantificata con un numero minimo (N) - Pazienti
  {
    "id": 8,
    "name": "Assistenza clinica e gestione pazienti",
    "description":
        "Dimostrare di aver prestato assistenza diretta e responsabile, con relativi atti diagnostici e terapeutici, a un adeguato numero di pazienti in elezione, critici e in emergenza/urgenza. (Il requisito N di 800 si riferisce al numero minimo di pazienti che la rete formativa deve gestire per ogni anno di specializzando, non il minimo per lo specializzando, ma è stato quantificato in N.) (Having provided direct and responsible assistance... to an adequate number of elective, critical and emergency/urgent patients. The N requirement of 800 refers to the minimum number of patients the training network must manage per specialist year, not the minimum for the specialist, but it has been quantified in N.)",
    "min_required_amount": 800,
    "required_departments": [
      "Pronto Soccorso Oculistico",
      "Reparto Oculistica",
    ],
  },
];
