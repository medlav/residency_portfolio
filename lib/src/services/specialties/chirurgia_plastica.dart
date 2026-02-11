// SPDX-License-Identifier: BSD-3-Clause
// Copyright (c) 2026 medlav

// AREA CHIRURGIA PLASTICA, RICOSTRUTTIVA ED ESTETICA
const List<Map<String, dynamic>> kOfficialChirurgiaPlasticaActivities = [
  // Attività quantificate con un numero minimo (N)
  {
    "id": 1,
    "name": "Interventi di Chirurgia Generale",
    "description":
        "Interventi di Alta Chirurgia (di cui il 10% come primo operatore, il resto come secondo) (High Surgery Procedures (10% as first operator, the rest as second))",
    "min_required_amount": 50,
    "required_departments": [],
  },
  {
    "id": 2,
    "name": "Interventi di Cardiochirurgia",
    "description":
        "Interventi di Media Chirurgia (di cui il 25% come primo operatore, il resto come secondo) (Medium Surgery Procedures (25% as first operator, the rest as second))",
    "min_required_amount": 100,
    "required_departments": [],
  },
  {
    "id": 3,
    "name": "Interventi di Chirurgia Vascolare",
    "description":
        "Interventi di Piccola Chirurgia (di cui il 40% come primo operatore, il resto come secondo) (include procedure laparoscopiche, ambulatoriali e in D.H.) (Small Surgery Procedures (40% as first operator, the rest as second) - includes laparoscopic, ambulatory, and D.H. procedures)",
    "min_required_amount": 250,
    "required_departments": [
      "Chirurgia Ambulatoriale",
      "Day Hospital Chirurgico",
      "Chirurgia Laparoscopica",
    ],
  },
  {
    "id": 4,
    "name": "Interventi di Chirurgia Toracica specialistica",
    "description":
        "Totale interventi (Total procedures) (Somma delle precedenti categorie)",
    "min_required_amount": 400,
    "required_departments": [],
  },
  {
    "id": 5,
    "name": "Sperimentazioni cliniche controllate",
    "description":
        "Aver partecipato alla conduzione, secondo le norme di buona pratica clinica, di sperimentazioni cliniche controllate. (Having participated in the conduct of controlled clinical trials, according to good clinical practice guidelines.)",
    "min_required_amount": 3,
    "required_departments": ["Ricerca Clinica"],
  },

  // Attività non quantificate con N, ma obbligatorie per l'addestramento
  {
    "id": 6, "name": "Assistenza clinica pazienti critici ed emergenza",
    "description":
        "Prestare assistenza diretta e responsabile, con relativi atti diagnostici e terapeutici in un adeguato numero di pazienti in elezione, critici e in emergenza/urgenza (Provide direct and responsible assistance with related diagnostic and therapeutic procedures in an adequate number of elective, critical, and emergency/urgent patients)",
    "min_required_amount":
        0, // Nessun N, il requisito è 'adeguato numero' e 'responsabilità diretta'.
    "required_departments": [
      "Chirurgia d'Urgenza",
      "Terapia Intensiva Chirurgica",
    ],
  },
  {
    "id": 7, "name": "Rotazioni cliniche multidisciplinari",
    "description":
        "Prestare attività d’assistenza diretta per 3 semestri complessivi in chirurgia generale, chirurgia d’urgenza e pronto soccorso, anestesia e rianimazione e nelle chirurgie specialistiche previste (Provide direct assistance activity for 3 total semesters in general surgery, emergency surgery and emergency room, anesthesia and resuscitation, and required specialist surgeries)",
    "min_required_amount": 0, // Requisito basato sulla durata (3 semestri).
    "required_departments": [
      "Chirurgia Generale",
      "Chirurgia d’Urgenza/Pronto Soccorso",
      "Anestesia e Rianimazione",
      "Chirurgie Specialistiche",
    ],
  },
];


// AREA CHIRURGIA PLASTICA, RICOSTRUTTIVA ED ESTETICA


// AREA CHIRURGIA TORACICA
