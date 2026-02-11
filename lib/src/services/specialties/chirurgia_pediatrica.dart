// SPDX-License-Identifier: BSD-3-Clause
// Copyright (c) 2026 medlav

// AREA CHIRURGIA PEDIATRICA
const List<Map<String, dynamic>> kOfficialChirurgiaPediatricaActivities = [
  // Attività quantificate con un numero minimo (N)
  {
    "id": 1,
    "name": "Alta Chirurgia Pediatrica",
    "description":
        "Interventi di Alta Chirurgia (di cui il 10% come primo operatore, il resto come secondo) (High Surgery Procedures (10% as first operator, the rest as second))",
    "min_required_amount": 50,
    "required_departments": [],
  },
  {
    "id": 2,
    "name": "Media Chirurgia Pediatrica",
    "description":
        "Interventi di Media Chirurgia (di cui il 25% come primo operatore, il resto come secondo operatore) (Medium Surgery Procedures (25% as first operator, the rest as second operator))",
    "min_required_amount": 100,
    "required_departments": [],
  },
  {
    "id": 3,
    "name": "Piccola Chirurgia e Chirurgia Mini-invasiva",
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
    "name": "Totale interventi chirurgici pediatrici",
    "description":
        "Totale interventi (Total procedures) (Somma delle precedenti categorie)",
    "min_required_amount": 400,
    "required_departments": [],
  },

  // Attività non quantificate con N, ma obbligatorie per l'addestramento
  {
    "id": 5, "name": "Rotazioni in Chirurgia Generale, Urgenza e Rianimazione",
    "description":
        "Prestare assistenza diretta per almeno due semestri complessivi in chirurgia generale, d’urgenza, pronto soccorso e del trauma, in anestesia e rianimazione e nelle chirurgie specialistiche previste (Provide direct assistance for at least two total semesters in general surgery, emergency, emergency room and trauma, anesthesia and resuscitation, and required specialist surgeries)",
    "min_required_amount": 0, // Requisito basato sulla durata (2 semestri).
    "required_departments": [
      "Chirurgia Generale",
      "Chirurgia d’Urgenza/Trauma",
      "Anestesia e Rianimazione",
      "Chirurgie Specialistiche",
    ],
  },
];
