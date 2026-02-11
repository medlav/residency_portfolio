// SPDX-License-Identifier: BSD-3-Clause
// Copyright (c) 2026 medlav

// AREA CHIRURGIA TORACICA
const List<Map<String, dynamic>> kOfficialChirurgiaToracicaActivities = [
  // Attività quantificate con un numero minimo (N) - In specialità affini
  {
    "id": 1,
    "name": "Interventi di Chirurgia Generale",
    "description":
        "Attività di chirurgia generale: svolta nell’arco di sei mesi, partecipazione come operatore a interventi ripartiti tra alta e media chirurgia (General surgery activity: performed over six months, participation as operator in procedures split between high and medium surgery)",
    "min_required_amount": 35,
    "required_departments": ["Chirurgia Generale"],
  },
  {
    "id": 2,
    "name": "Interventi di Cardiochirurgia",
    "description":
        "Attività di cardiochirurgia: svolta nell’arco di 3 mesi, partecipazione a interventi di cardiochirurgia (Cardiac surgery activity: performed over 3 months, participation in cardiac surgery procedures)",
    "min_required_amount": 30,
    "required_departments": ["Cardiochirurgia"],
  },
  {
    "id": 3,
    "name": "Interventi di Chirurgia Vascolare",
    "description":
        "Attività di chirurgia vascolare: svolta nell’arco di 3 mesi, partecipazione a interventi di chirurgia vascolare (Vascular surgery activity: performed over 3 months, participation in vascular surgery procedures)",
    "min_required_amount": 30,
    "required_departments": ["Chirurgia Vascolare"],
  },

  // Attività quantificate con un numero minimo (N) - Chirurgia Toracica specifica
  {
    "id": 4,
    "name": "Interventi di Chirurgia Toracica specialistica",
    "description":
        "Attività di chirurgia toracica: partecipazione come operatore a interventi di chirurgia toracica di cui almeno 10 di alta chirurgia come primo operatore, 30 di media chirurgia come primo operatore, 80 di piccola chirurgia come primo operatore (Thoracic surgery activity: participation as operator in thoracic surgery procedures, of which at least 10 high surgery as first operator, 30 medium surgery as first operator, 80 small surgery as first operator)",
    "min_required_amount": 250,
    "required_departments": ["Sala Operatoria Chirurgia Toracica"],
  },
];


// AREA CHIRURGIA PLASTICA, RICOSTRUTTIVA ED ESTETICA


// AREA CHIRURGIA TORACICA
