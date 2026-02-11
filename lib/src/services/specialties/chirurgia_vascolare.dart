// SPDX-License-Identifier: BSD-3-Clause
// Copyright (c) 2026 medlav

// AREA CHIRURGIA VASCOLARE
const List<Map<String, dynamic>> kOfficialChirurgiaVascolareActivities = [
  // Attività quantificate con un numero minimo (N) - Diagnostica
  {
    "id": 1,
    "name": "Diagnostica vascolare non invasiva",
    "description":
        "Partecipazione alle attività di diagnostica vascolare non invasiva su casi clinici, di cui almeno il 50% in prima persona (Participation in non-invasive vascular diagnostic activities on clinical cases, of which at least 50% personally performed)",
    "min_required_amount": 200,
    "required_departments": ["Laboratorio Diagnostica Vascolare"],
  },
  {
    "id": 2,
    "name": "Diagnostica vascolare invasiva",
    "description":
        "Partecipazione all’attività di diagnostica vascolare invasiva su casi clinici (Participation in invasive vascular diagnostic activities on clinical cases)",
    "min_required_amount": 20,
    "required_departments": ["Radiologia Interventistica", "Sala Ibrida"],
  },

  // Attività quantificate con un numero minimo (N) - Chirurgia Generale
  {
    "id": 3,
    "name": "Media Chirurgia Generale",
    "description":
        "Attività Chirurgia Generale - Partecipazione a casi di Media Chirurgia (General Surgery Activity - Participation in Medium Surgery cases)",
    "min_required_amount": 10,
    "required_departments": ["Chirurgia Generale"],
  },
  {
    "id": 4,
    "name": "Piccola Chirurgia Generale",
    "description":
        "Attività Chirurgia Generale - Partecipazione a casi di Piccola Chirurgia (General Surgery Activity - Participation in Small Surgery cases)",
    "min_required_amount": 20,
    "required_departments": ["Chirurgia Generale"],
  },

  // Attività quantificate con un numero minimo (N) - Chirurgia Vascolare Aperta
  {
    "id": 5,
    "name": "Alta Chirurgia Vascolare Aperta",
    "description":
        "Attività Chirurgica Vascolare - Partecipazione a casi di Alta Chirurgia (5 interventi come primo operatore, 5 come secondo) (Vascular Surgical Activity - Participation in High Surgery cases (5 as first operator, 5 as second))",
    "min_required_amount": 10,
    "required_departments": ["Sala Operatoria Vascolare"],
  },
  {
    "id": 6,
    "name": "Media Chirurgia Vascolare Aperta",
    "description":
        "Attività Chirurgica Vascolare - Partecipazione a casi di Media Chirurgia (20 interventi come primo operatore, 30 come secondo) (Vascular Surgical Activity - Participation in Medium Surgery cases (20 as first operator, 30 as second))",
    "min_required_amount": 50,
    "required_departments": ["Sala Operatoria Vascolare"],
  },
  {
    "id": 7,
    "name": "Piccola Chirurgia Vascolare Aperta",
    "description":
        "Attività Chirurgica Vascolare - Partecipazione a casi di Piccola Chirurgia (40 interventi come primo operatore, 60 come secondo) (Vascular Surgical Activity - Participation in Small Surgery cases (40 as first operator, 60 as second))",
    "min_required_amount": 100,
    "required_departments": ["Sala Operatoria Vascolare"],
  },

  // Attività quantificate con un numero minimo (N) - Chirurgia Endovascolare
  {
    "id": 8,
    "name": "Alta Chirurgia Endovascolare",
    "description":
        "Attività Chirurgia Endovascolare - Partecipazione a casi di Alta Chirurgia (5 interventi come primo operatore, 10 come secondo) (Endovascular Surgery Activity - Participation in High Surgery cases (5 as first operator, 10 as second))",
    "min_required_amount": 15,
    "required_departments": ["Sala Ibrida/Radiologia Interventistica"],
  },
  {
    "id": 9,
    "name": "Media Chirurgia Endovascolare",
    "description":
        "Attività Chirurgia Endovascolare - Partecipazione a casi di Media Chirurgia (10 interventi come primo operatore, 20 come secondo) (Endovascular Surgery Activity - Participation in Medium Surgery cases (10 as first operator, 20 as second))",
    "min_required_amount": 30,
    "required_departments": ["Sala Ibrida/Radiologia Interventistica"],
  },
  {
    "id": 10,
    "name": "Piccola Chirurgia Endovascolare",
    "description":
        "Attività Chirurgia Endovascolare - Partecipazione a casi di Piccola Chirurgia (10 interventi come primo operatore, 20 come secondo) (Endovascular Surgery Activity - Participation in Small Surgery cases (10 as first operator, 20 as second))",
    "min_required_amount": 30,
    "required_departments": ["Sala Ibrida/Radiologia Interventistica"],
  },

  // Attività non quantificate con N, ma obbligatorie per l'addestramento (Durata)
  {
    "id": 11, "name": "Frequenza Chirurgia Generale e d'Urgenza",
    "description":
        "Attività Clinico-Diagnostica: Frequenza per un trimestre presso reparti di chirurgia generale e/o d’urgenza (Clinical-Diagnostic Activity: Attendance for one trimester in general and/or emergency surgery wards)",
    "min_required_amount": 0, // Requisito basato sulla durata (1 trimestre).
    "required_departments": ["Chirurgia Generale", "Chirurgia d’Urgenza"],
  },
  {
    "id": 12, "name": "Frequenza Rianimazione e Terapia Intensiva",
    "description":
        "Attività Clinico-Diagnostica: Frequenza per un Trimestre presso reparti di rianimazione, terapia intensiva e/o terapia intensiva post-operatoria cardio vascolare toracica (Clinical-Diagnostic Activity: Attendance for one trimester in resuscitation, intensive care, and/or cardiovascular thoracic post-operative intensive care wards)",
    "min_required_amount": 0, // Requisito basato sulla durata (1 trimestre).
    "required_departments": ["Rianimazione/Terapia Intensiva Post-Operatoria"],
  },
  {
    "id": 13, "name": "Frequenza Cardiochirurgia",
    "description":
        "Attività Clinico-Diagnostica: Frequenza per un Trimestre presso reparti di Cardiochirurgia (Clinical-Diagnostic Activity: Attendance for one trimester in Cardiac Surgery wards)",
    "min_required_amount": 0, // Requisito basato sulla durata (1 trimestre).
    "required_departments": ["Cardiochirurgia"],
  },
  {
    "id": 14, "name": "Frequenza Chirurgia Toracica",
    "description":
        "Attività Clinico-Diagnostica: Frequenza per un Trimestre presso reparti di Chirurgia Toracica (Clinical-Diagnostic Activity: Attendance for one trimester in Thoracic Surgery wards)",
    "min_required_amount": 0, // Requisito basato sulla durata (1 trimestre).
    "required_departments": ["Chirurgia Toracica"],
  },
];
