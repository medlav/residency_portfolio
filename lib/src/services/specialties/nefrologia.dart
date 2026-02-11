// SPDX-License-Identifier: BSD-3-Clause
// Copyright (c) 2026 medlav

// AREA MEDICA NEFROLOGIA
const List<Map<String, dynamic>> kOfficialNefrologiaActivities = [
  {
    "id": 1, "name": "Attività clinica in Emodialisi",
    "description":
        "Attività clinica per almeno 12 mesi in un Centro di Emodialisi: ogni specializzando deve prestare assistenza ai pazienti (Clinical activity for at least 12 months in a Hemodialysis Center: each specialist must provide patient assistance)",
    "min_required_amount": 2, // Minimo '2/turno'
    "required_departments": ["Centro di Emodialisi"],
  },
  {
    "id": 2,
    "name": "Gestione clinica nel reparto di Nefrologia",
    "description":
        "Attività clinica per almeno 12 mesi in un reparto di Nefrologia con accettazione di pazienti non selezionati: ogni specializzando deve prestare assistenza ad almeno 100 pazienti (Clinical activity for at least 12 months in a Nephrology ward with unselected patient acceptance: each specialist must provide assistance to at least 100 patients)",
    "min_required_amount": 100,
    "required_departments": ["reparto di Nefrologia"],
  },
  {
    "id": 3,
    "name": "Visite ambulatoriali nefrologiche",
    "description":
        "Attività clinica in un Ambulatorio di Nefrologia per pazienti esterni: ogni specializzando deve eseguire visite (Clinical activity in a Nephrology Outpatient Clinic for external patients: each specialist must perform visits)",
    "min_required_amount": 150,
    "required_departments": ["Ambulatorio di Nefrologia"],
  },
  {
    "id": 4,
    "name": "Follow-up e preparazione al trapianto renale",
    "description":
        "Attività clinica in un centro/ambulatorio per la preparazione ed il follow-up di trapianto di rene: ogni specializzando dovrà eseguire visite (Clinical activity in a center/outpatient clinic for preparation and follow-up of kidney transplantation: each specialist must perform visits)",
    "min_required_amount": 50,
    "required_departments": ["centro/ambulatorio per trapianto di rene"],
  },
  {
    "id": 5,
    "name": "Turni di guardia attiva in Nefrologia",
    "description":
        "Partecipazione a turni di guardia attiva in reparti di Nefrologia con accoglienza non selezionata (Participation in active on-call shifts in Nephrology wards with unselected admission)",
    "min_required_amount": 40,
    "required_departments": ["reparti di Nefrologia"],
  },
  {
    "id": 6,
    "name": "Trattamenti extracorporei d'urgenza",
    "description":
        "Esecuzione di trattamenti extracorporei di urgenza (Execution of emergency extracorporeal treatments)",
    "min_required_amount": 10,
    "required_departments": [],
  },
  {
    "id": 7,
    "name": "Discussione di casi istopatologici renali",
    "description":
        "Partecipazione a seminari con esame e discussione di casi istopatologici renali (Participation in seminars with examination and discussion of renal histopathological cases)",
    "min_required_amount": 30,
    "required_departments": [],
  },
  {
    "id": 8,
    "name": "Posizionamento cateteri venosi per dialisi",
    "description":
        "Posizionamento di cateteri venosi per emodialisi extracorporea (Placement of venous catheters for extracorporeal hemodialysis)",
    "min_required_amount": 5,
    "required_departments": [],
  },
  {
    "id": 9,
    "name": "Confezionamento fistole artero-venose",
    "description":
        "Partecipazione al confezionamento di fistole artero-venose (Participation in the creation of arteriovenous fistulas)",
    "min_required_amount": 5,
    "required_departments": [],
  },
  {
    "id": 10,
    "name": "Impianto di cateteri peritoneali",
    "description":
        "Partecipazione all’impianto di cateteri peritoneali (Participation in the implantation of peritoneal catheters)",
    "min_required_amount": 5,
    "required_departments": [],
  },
  {
    "id": 11,
    "name": "Terapia sostitutiva nel paziente critico",
    "description":
        "Trattamento del paziente in terapia intensiva, avendo seguito pazienti critici in terapia intensiva sottoposti a trattamento extracorporeo (Treatment of the intensive care patient, having followed critical patients in intensive care undergoing extracorporeal treatment)",
    "min_required_amount": 20,
    "required_departments": ["terapia intensiva"],
  },
];
