// SPDX-License-Identifier: BSD-3-Clause
// Copyright (c) 2026 medlav

// AREA RADIODIAGNOSTICA
const List<Map<String, dynamic>> kOfficialRadiodiagnosticaActivities = [
  // Attività quantificate con un numero minimo (N) - Ecotomografia/Eco-Doppler
  {
    "id": 1,
    "name": "Ecotomografia ed Eco-Doppler",
    "description":
        "Per **mesi 2**, partecipazione alla esecuzione tecnica e metodologica di indagini di **ecotomografia**, compresi gli esami di **eco-Doppler**. (Participation in the technical and methodological execution of **ultrasound** investigations, including **eco-Doppler** exams, for **2 months**.)",
    "min_required_amount": 250,
    "required_departments": ["Ecotomografia", "Eco-Doppler"],
  },

  // Attività quantificate con un numero minimo (N) - TC e Ibride
  {
    "id": 2,
    "name": "Tomografia Computerizzata e sistemi ibridi",
    "description":
        "Per **mesi 2**, partecipazione alla esecuzione tecnica e metodologica di indagini di **tomografia computerizzata (TC)** e di esami in macchine ibride. (Participation in the technical and methodological execution of **Computed Tomography (CT)** investigations and hybrid machine exams, for **2 months**.)",
    "min_required_amount": 250,
    "required_departments": [
      "Tomografia Computerizzata (TC)",
      "Macchine Ibride",
    ],
  },

  // Attività quantificate con un numero minimo (N) - Risonanza Magnetica
  {
    "id": 3,
    "name": "Risonanza Magnetica (RM)",
    "description":
        "Per **mesi 2**, partecipazione alla esecuzione tecnica e metodologica di esami di **Risonanza Magnetica (RM)**. (Participation in the technical and methodological execution of **Magnetic Resonance (MR)** exams, for **2 months**.)",
    "min_required_amount": 200,
    "required_departments": ["Risonanza Magnetica (RM)"],
  },

  // Attività quantificate con un numero minimo (N) - Radiologia Convenzionale
  {
    "id": 4,
    "name": "Radiologia convenzionale e MOC",
    "description":
        "Per **mesi 8**, partecipazione alla esecuzione ed alla interpretazione di indagini di **radiologia convenzionale** dell'apparato respiratorio, scheletrico, gastroenterico, urinario, compresa l'attività odontoiatrica e maxillofaciale e di mineralometria ossea. (Participation in the execution and interpretation of **conventional radiology** investigations of the respiratory, skeletal, gastrointestinal, urinary apparatus, including dental and maxillofacial activity and bone densitometry, for **8 months**.)",
    "min_required_amount": 1500,
    "required_departments": ["Radiologia Convenzionale"],
  },

  // Attività quantificate con un numero minimo (N) - Immagine Integrato (Torace, Addome, Uro-genitale)
  {
    "id": 5,
    "name": "Diagnostica integrata toraco-addominale",
    "description":
        "Per **mesi 8**, partecipazione alla esecuzione ed alla interpretazione nell'ambito dell'immagine integrato di indagini degli apparati respiratorio, gastroenterico e genitourinario. (Participation in the execution and interpretation within the integrated imaging of investigations of the respiratory, gastrointestinal, and genitourinary systems, for **8 months**.)",
    "min_required_amount": 800,
    "required_departments": [
      "Diagnostica Integrata Torace/Addome/Uro-genitale",
    ],
  },

  // Attività quantificate con un numero minimo (N) - Neuroradiologia
  {
    "id": 6,
    "name": "Neuroradiologia diagnostica",
    "description":
        "Per **mesi 4**, partecipazione alla esecuzione ed alla interpretazione di indagini di **Neuroradiologia**. (Participation in the execution and interpretation of **Neuroradiology** investigations, for **4 months**.)",
    "min_required_amount": 300,
    "required_departments": ["Neuroradiologia"],
  },

  // Attività quantificate con un numero minimo (N) - Radiologia Cardiovascolare e Interventistica
  {
    "id": 7,
    "name": "Radiologia cardiovascolare e interventistica",
    "description":
        "Per **mesi 6**, partecipazione alla esecuzione ed alla interpretazione di indagini di **radiologia cardiovascolare ed interventistica**. (Participation in the execution and interpretation of **cardiovascular and interventional radiology** investigations, for **6 months**.)",
    "min_required_amount": 400,
    "required_departments": ["Radiologia Cardiovascolare/Interventistica"],
  },

  // Attività quantificate con un numero minimo (N) - Radiologia di Urgenza
  {
    "id": 8,
    "name": "Radiologia d'urgenza e pronto soccorso",
    "description":
        "Per **mesi 5**, partecipazione alla esecuzione ed alla interpretazione di indagini di **radiologia di urgenza e pronto soccorso**. (Participation in the execution and interpretation of **emergency and emergency room radiology** investigations, for **5 months**.)",
    "min_required_amount": 500,
    "required_departments": ["Radiologia d'Urgenza/Pronto Soccorso"],
  },

  // Attività quantificate con un numero minimo (N) - Radiologia Senologica
  {
    "id": 9,
    "name": "Radiologia senologica (Mammografia/Eco)",
    "description":
        "Per **mesi 5**, partecipazione alla esecuzione ed alla interpretazione di indagini di **radiologia senologica**. (Participation in the execution and interpretation of **breast radiology** investigations, for **5 months**.)",
    "min_required_amount": 500,
    "required_departments": ["Radiologia Senologica"],
  },

  // Attività quantificate con un numero minimo (N) - Radiologia Pediatrica
  {
    "id": 10,
    "name": "Radiologia pediatrica e neonatologica",
    "description":
        "Per **mesi 2**, partecipazione alla esecuzione ed alla interpretazione di indagini di **radiologia pediatrica e neonatologica**. (Participation in the execution and interpretation of **pediatric and neonatal radiology** investigations, for **2 months**.)",
    "min_required_amount": 200,
    "required_departments": ["Radiologia Pediatrica/Neonatologica"],
  },

  // Attività non quantificate con N, ma obbligatorie per l'addestramento (Generale)
  {
    "id": 11, "name": "Attività di refertazione e diagnostica generale",
    "description":
        "La frequenza delle Unità Operative, dei Servizi Generali e Speciali dei Reparti di Diagnostica per Immagini avendo collaborato alla realizzazione ed alla refertazione di esami di diagnostica e di radiologia interventistica. (Attendance of the Operating Units, General and Special Services of the Diagnostic Imaging Departments, having collaborated in the execution and reporting of diagnostic and interventional radiology exams.)",
    "min_required_amount": 0, // Requisito di frequenza generale
    "required_departments": [
      "Unità Operative/Servizi di Diagnostica per Immagini",
    ],
  },
];
