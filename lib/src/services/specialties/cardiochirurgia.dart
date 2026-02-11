// SPDX-License-Identifier: BSD-3-Clause
// Copyright (c) 2026 medlav

// AREA CARDIOCHIRURGIA
const List<Map<String, dynamic>> kOfficialCardiochirurgiaActivities = [
  // Attività quantificate con un numero minimo (N) - Chirurgia Generale
  {
    "id": 1,
    "name": "Alta Chirurgia Generale (I operatore)",
    "description":
        "Attività Chirurgica Generale - Partecipazione come primo a casi di Alta Chirurgia (General Surgical Activity - Participation as first operator in High Surgery cases)",
    "min_required_amount": 10,
    "required_departments": ["Chirurgia Generale"],
  },
  {
    "id": 2,
    "name": "Media Chirurgia Generale (I operatore)",
    "description":
        "Attività Chirurgica Generale - Partecipazione come primo a casi di Media Chirurgia (General Surgical Activity - Participation as first operator in Medium Surgery cases)",
    "min_required_amount": 15,
    "required_departments": ["Chirurgia Generale"],
  },
  {
    "id": 3,
    "name": "Piccola Chirurgia Generale (I operatore)",
    "description":
        "Attività Chirurgica Generale - Partecipazione come primo a casi di Piccola Chirurgia (General Surgical Activity - Participation as first operator in Small Surgery cases)",
    "min_required_amount": 30,
    "required_departments": ["Chirurgia Generale"],
  },

  // Attività quantificate con un numero minimo (N) - Chirurgia Toraco-Vascolare
  {
    "id": 4,
    "name": "Alta Chirurgia Toraco-Vascolare",
    "description":
        "Attività Chirurgica Toraco-Vascolare - Partecipazione come operatore a casi di Alta Chirurgia (Thoracic-Vascular Surgical Activity - Participation as operator in High Surgery cases)",
    "min_required_amount": 10,
    "required_departments": ["Chirurgia Toracica", "Chirurgia Vascolare"],
  },
  {
    "id": 5,
    "name": "Media Chirurgia Toraco-Vascolare",
    "description":
        "Attività Chirurgica Toraco-Vascolare - Partecipazione come operatore a casi di Media Chirurgia (Thoracic-Vascular Surgical Activity - Participation as operator in Medium Surgery cases)",
    "min_required_amount": 15,
    "required_departments": ["Chirurgia Toracica", "Chirurgia Vascolare"],
  },
  {
    "id": 6,
    "name": "Piccola Chirurgia Toraco-Vascolare",
    "description":
        "Attività Chirurgica Toraco-Vascolare - Partecipazione come operatore a casi di Piccola Chirurgia (Thoracic-Vascular Surgical Activity - Participation as operator in Small Surgery cases)",
    "min_required_amount": 30,
    "required_departments": ["Chirurgia Toracica", "Chirurgia Vascolare"],
  },

  // Attività quantificate con un numero minimo (N) - Chirurgia Cardiaca
  {
    "id": 7,
    "name": "Alta Chirurgia Cardiaca (I e II operatore)",
    "description":
        "Attività Chirurgica Cardiaca - Partecipazione a casi di Alta Chirurgia (di cui 10 come primo operatore, e 50 come secondo operatore) (Cardiac Surgical Activity - Participation in High Surgery cases (10 as first operator, 50 as second operator))",
    "min_required_amount": 60,
    "required_departments": ["Sala Operatoria Cardiochirurgica"],
  },
  {
    "id": 8,
    "name": "Media Chirurgia Cardiaca (I e II operatore)",
    "description":
        "Attività Chirurgica Cardiaca - Partecipazione a casi di Media Chirurgia (di cui 20 come primo operatore e 80 come secondo operatore) (Cardiac Surgical Activity - Participation in Medium Surgery cases (20 as first operator, 80 as second operator))",
    "min_required_amount": 100,
    "required_departments": ["Sala Operatoria Cardiochirurgica"],
  },
  {
    "id": 9,
    "name": "Piccola Chirurgia Cardiaca (I e II operatore)",
    "description":
        "Attività Chirurgica Cardiaca - Partecipazione a casi di Piccola Chirurgia (di cui 100 come primo operatore e 200 come secondo operatore) (Cardiac Surgical Activity - Participation in Small Surgery cases (100 as first operator, 200 as second operator))",
    "min_required_amount": 300,
    "required_departments": ["Sala Operatoria Cardiochirurgica"],
  },

  // Attività non quantificate con N, ma obbligatorie per l'addestramento (Durata)
  {
    "id": 10, "name": "Rotazione Chirurgia Generale/Urgenza",
    "description":
        "Attività Clinica - Frequenza per almeno un trimestre in reparti di chirurgia generale e/o d’urgenza (Clinical Activity - Attendance for at least one trimester in general and/or emergency surgery wards)",
    "min_required_amount": 0, // Requisito basato sulla durata (1 trimestre).
    "required_departments": ["Chirurgia Generale", "Chirurgia d’Urgenza"],
  },
  {
    "id": 11, "name": "Rotazione Chirurgia Toracica e Vascolare",
    "description":
        "Attività Clinica - Frequenza per almeno un trimestre in reparti di chirurgia toracica e di chirurgia vascolare (Clinical Activity - Attendance for at least one trimester in thoracic surgery and vascular surgery wards)",
    "min_required_amount": 0, // Requisito basato sulla durata (1 trimestre).
    "required_departments": ["Chirurgia Toracica", "Chirurgia Vascolare"],
  },
  {
    "id": 12, "name": "Rotazione Cardiochirurgia Pediatrica",
    "description":
        "Attività Chirurgica Cardiaca - Frequenza per almeno un trimestre in Reparto di Cardiochirurgia pediatrica (Cardiac Surgical Activity - Attendance for at least one trimester in Pediatric Cardiac Surgery Ward)",
    "min_required_amount": 0, // Requisito basato sulla durata (1 trimestre).
    "required_departments": ["Cardiochirurgia Pediatrica"],
  },
  {
    "id": 13, "name": "Trapianti e Assistenza Meccanica (MCS)",
    "description":
        "Attività Chirurgica Cardiaca - Frequenza per almeno un trimestre in Centro con attività di trapianto cardiaco e assistenza meccanica cardiocircolatoria (Cardiac Surgical Activity - Attendance for at least one trimester in a Center with heart transplant activity and mechanical circulatory assistance)",
    "min_required_amount": 0, // Requisito basato sulla durata (1 trimestre).
    "required_departments": ["Trapianto Cardiaco/Assistenza Meccanica"],
  },
  {
    "id": 14, "name": "Terapia Transcatetere e Mini-invasiva",
    "description":
        "Attività Chirurgica Cardiaca - Frequenza per almeno un trimestre in attività di Terapia valvolare transcatetere e chirurgia valvolare mini-invasiva (Cardiac Surgical Activity - Attendance for at least one trimester in transcatheter valve therapy and minimally invasive valve surgery activities)",
    "min_required_amount": 0, // Requisito basato sulla durata (1 trimestre).
    "required_departments": [
      "Cardiologia Interventistica",
      "Chirurgia Mini-Invasiva",
    ],
  },
];
