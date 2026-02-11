// SPDX-License-Identifier: BSD-3-Clause
// Copyright (c) 2026 medlav

// AREA CHIRURGIA GENERALE
const List<Map<String, dynamic>> kOfficialChirurgiaGeneraleActivities = [
  // Attività quantificate con un numero minimo (N)
  {
    "id": 1,
    "name": "Alta Chirurgia Generale",
    "description":
        "Interventi di Alta Chirurgia (il 10% come primo operatore, il resto come secondo operatore) (High Surgery Procedures (10% as first operator, the rest as second operator))",
    "min_required_amount": 30,
    "required_departments": [],
  },
  {
    "id": 2,
    "name": "Media Chirurgia Generale",
    "description":
        "Interventi di Media Chirurgia (il 25% come primo operatore, il resto come secondo operatore) (Medium Surgery Procedures (25% as first operator, the rest as second operator))",
    "min_required_amount": 80,
    "required_departments": [],
  },
  {
    "id": 3,
    "name": "Piccola Chirurgia e Chirurgia Ambulatoriale",
    "description":
        "Interventi di Piccola Chirurgia (il 40% come primo operatore, il resto come secondo operatore) (Small Surgery Procedures (40% as first operator, the rest as second operator) - includes ambulatory and D.H. procedures)",
    "min_required_amount": 325,
    "required_departments": [
      "Chirurgia Ambulatoriale",
      "Day Hospital Chirurgico",
    ],
  },
  {
    "id": 4,
    "name": "Totale interventi di chirurgia generale",
    "description":
        "Totale interventi (Total procedures) (Somma delle precedenti categorie)",
    "min_required_amount": 435,
    "required_departments": [],
  },

  // Attività non quantificate con N, ma obbligatorie per l'addestramento
  {
    "id": 5, "name": "Assistenza clinica pazienti critici ed emergenza",
    "description":
        "Prestare assistenza diretta e responsabile con relativi atti diagnostici e terapeutici in un adeguato numero di pazienti in elezione, critici e in emergenza/urgenza (Provide direct and responsible assistance with related diagnostic and therapeutic procedures in an adequate number of elective, critical, and emergency/urgent patients)",
    "min_required_amount":
        0, // Nessun N, il requisito è 'adeguato numero' e 'responsabilità diretta'.
    "required_departments": [
      "Chirurgia d'Urgenza",
      "Terapia Intensiva Chirurgica",
    ],
  },
  {
    "id": 6, "name": "Rotazioni in Urgenza, Rianimazione e Specialistiche",
    "description":
        "Prestare attività di assistenza diretta per almeno 2 semestri complessivi in chirurgia d’urgenza, pronto soccorso e del trauma, in anestesia e rianimazione e nelle chirurgie specialistiche (Provide direct assistance activity for at least 2 total semesters in emergency surgery, emergency room and trauma, anesthesia and resuscitation, and specialist surgeries)",
    "min_required_amount":
        0, // Nessun N, il requisito è la durata (2 semestri).
    "required_departments": [
      "Chirurgia d'Urgenza",
      "Pronto Soccorso/Trauma",
      "Anestesia e Rianimazione",
      "Chirurgie Specialistiche",
    ],
  },
  {
    "id": 7,
    "name": "Medicina operatoria su cadavere",
    "description":
        "Studio della medicina operatoria sul cadavere (ove possibile) (Study of operative medicine on cadavers (where possible))",
    "min_required_amount": 0,
    "required_departments": [],
  },
  {
    "id": 8,
    "name": "Simulazione e training laparoscopico",
    "description":
        "Frequenza di corsi di formazione con simulatori virtuali e box per l’esercizio in tecniche laparoscopiche (Attendance of training courses with virtual simulators and boxes for practice in laparoscopic techniques)",
    "min_required_amount": 0,
    "required_departments": [],
  },
  {
    "id": 9,
    "name": "Microchirurgia sperimentale di base",
    "description":
        "Apprendimento della tecnica di base della micro chirurgia sperimentale in laboratorio con un corso propedeutico (Learning the basic technique of experimental microsurgery in the laboratory with a preparatory course)",
    "min_required_amount": 0,
    "required_departments": ["Laboratorio Sperimentale"],
  },
];
