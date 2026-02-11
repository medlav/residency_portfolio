// SPDX-License-Identifier: BSD-3-Clause
// Copyright (c) 2026 medlav

// AREA ORTOPEDIA E TRAUMATOLOGIA
const List<Map<String, dynamic>> kOfficialOrtopediaTraumatologiaActivities = [
  // Attività quantificate con un numero minimo (N)
  {
    "id": 1,
    "name": "Interventi ortopedici conservativi",
    "description":
        "Aver partecipato a interventi ortopedici conservativi di cui almeno 200 eseguiti in prima persona (Having participated in conservative orthopedic procedures, of which at least 200 performed personally)",
    "min_required_amount": 500,
    "required_departments": [
      "Ambulatorio",
      "Sala Gessi/Medicina Riabilitativa",
    ],
  },
  {
    "id": 2,
    "name": "Interventi di alta chirurgia ortopedica",
    "description":
        "Interventi di Alta Chirurgia di cui almeno il 10% come primo operatore, il resto come secondo (High Surgery Procedures, of which at least 10% as first operator, the rest as second)",
    "min_required_amount": 15,
    "required_departments": ["Sala Operatoria Ortopedica/Traumatologica"],
  },
  {
    "id": 3,
    "name": "Interventi di media chirurgia ortopedica",
    "description":
        "Interventi di Media Chirurgia di cui il 25% come primo operatore, il resto come secondo (Medium Surgery Procedures, of which at least 25% as first operator, the rest as second)",
    "min_required_amount": 40,
    "required_departments": ["Sala Operatoria Ortopedica/Traumatologica"],
  },
  {
    "id": 4,
    "name": "Interventi di piccola chirurgia ortopedica",
    "description":
        "Interventi di Piccola Chirurgia di cui il 40% come primo operatore, il resto come secondo (Small Surgery Procedures, of which at least 40% as first operator, the rest as second)",
    "min_required_amount": 150,
    "required_departments": [
      "Sala Operatoria Ortopedica/Traumatologica",
      "Chirurgia Ambulatoriale",
    ],
  },
  {
    "id": 5,
    "name": "Partecipazione a sessioni di cadaver-lab",
    "description":
        "Partecipazione a sessioni di cadaverlab (Participation in cadaverlab sessions)",
    "min_required_amount": 2,
    "required_departments": ["Laboratorio Anatomico/Sperimentale"],
  },

  // Attività non quantificate con N, ma obbligatorie per l'addestramento
  {
    "id": 6, "name": "Tirocinio in urgenza e pronto soccorso",
    "description":
        "Aver prestato attività di assistenza diretta per almeno un'annualità in chirurgia d'urgenza e Pronto soccorso e nelle Specialità Chirurgiche Integrative previste (Having provided direct assistance activity for at least one year in emergency surgery and Emergency Room and in the required Integrative Surgical Specialties)",
    "min_required_amount":
        0, // Requisito basato sulla durata (un'annualità/12 mesi).
    "required_departments": [
      "Chirurgia d'Urgenza",
      "Pronto Soccorso",
      "Specialità Chirurgiche Integrative",
    ],
  },
];
