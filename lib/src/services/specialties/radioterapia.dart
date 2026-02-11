// SPDX-License-Identifier: BSD-3-Clause
// Copyright (c) 2026 medlav

// AREA RADIOTERAPIA
const List<Map<String, dynamic>> kOfficialRadioterapiaActivities = [
  // Attività quantificate con un numero minimo (N) - Reparto e DH
  {
    "id": 1,
    "name": "Gestione clinica in degenza e Day Hospital",
    "description":
        "Reparti di degenza: lo specializzando deve seguire l'evoluzione della malattia ed eseguire personalmente i compiti affidatigli in casi clinici relativi a pazienti ricoverati nel reparto di degenza ordinaria e di day-hospital (Inpatient Wards: the specialist must follow the disease evolution and personally perform the assigned tasks in clinical cases related to hospitalized patients)",
    "min_required_amount": 60,
    "required_departments": ["Degenza Ordinaria", "Day Hospital Radioterapico"],
  },

  // Attività quantificate con un numero minimo (N) - Brachiterapia
  {
    "id": 2,
    "name": "Brachiterapia e radioterapia metabolica",
    "description":
        "Unità (Reparti) di brachiterapia: lo specializzando deve avere eseguito i compiti affidatigli su pazienti sottoposti a procedure di brachiterapia interstiziale, endocavitaria e radioterapia metabolica (Brachytherapy Units: the specialist must have performed the assigned tasks on patients undergoing interstitial, endocavitary brachytherapy, and metabolic radiotherapy procedures)",
    "min_required_amount": 8,
    "required_departments": ["Brachiterapia", "Radioterapia Metabolica"],
  },

  // Attività quantificate con un numero minimo (N) - Trattamento con Fasci Esterni
  {
    "id": 3,
    "name": "Trattamenti con fasci esterni (Linac)",
    "description":
        "Lo specializzando dovrà aver eseguito personalmente l'espletamento dei compiti affidatigli su pazienti trattati con radioterapia con fasci esterni (The specialist must have personally performed the assigned tasks on patients treated with external beam radiotherapy)",
    "min_required_amount": 75,
    "required_departments": ["Sala di Trattamento (Acceleratori Lineari)"],
  },
  {
    "id": 4,
    "name": "Follow-up e controllo post-trattamento",
    "description":
        "Lo specializzando dovrà aver eseguito personalmente l'espletamento dei compiti affidatigli su pazienti già trattati esaminati per controllo con impiego di immagini diagnostiche (The specialist must have personally performed the assigned tasks on previously treated patients examined for follow-up using diagnostic images)",
    "min_required_amount": 75,
    "required_departments": ["Ambulatorio Follow-up"],
  },

  // Attività quantificate con un numero minimo (N) - Simulazione e Imaging
  {
    "id": 5,
    "name": "Simulazione e centraggio (TC/Sim)",
    "description":
        "Lo specializzando dovrà aver eseguito personalmente l'espletamento dei compiti affidatigli su pazienti studiati con TC simulatore e se ritenuto necessario con simulatore (The specialist must have personally performed the assigned tasks on patients studied with CT simulator and, if deemed necessary, with conventional simulator)",
    "min_required_amount": 75,
    "required_departments": ["TC Simulatore/Simulatore Convenzionale"],
  },
  {
    "id": 6,
    "name": "Definizione volumi su imaging multimodale",
    "description":
        "Lo specializzando dovrà aver eseguito personalmente l'espletamento dei compiti affidatigli su pazienti con volumi di irradiazione definiti mediante TC, RM, PET o SPECT (The specialist must have personally performed the assigned tasks on patients with irradiation volumes defined using CT, MRI, PET, or SPECT)",
    "min_required_amount": 20,
    "required_departments": ["Fusioni Immagini/Definizione Volumi"],
  },

  // Attività quantificate con un numero minimo (N) - Pianificazione
  {
    "id": 7,
    "name": "Pianificazione con sistemi TPS",
    "description":
        "Lo specializzando dovrà aver eseguito personalmente l'espletamento dei compiti affidatigli su studi di piani di trattamento individuali con TPS (Treatment Planning Systems) (The specialist must have personally performed the assigned tasks on studies of individual treatment plans with TPS)",
    "min_required_amount": 50,
    "required_departments": ["Sala Piani di Trattamento (Dosimetria)"],
  },
  {
    "id": 8,
    "name": "Modelli di schermatura personalizzata",
    "description":
        "Lo specializzando dovrà aver eseguito personalmente l'espletamento dei compiti affidatigli su modelli di schermatura sagomata personalizzata (The specialist must have personally performed the assigned tasks on personalized shaped shielding models)",
    "min_required_amount": 5,
    "required_departments": ["Officina Meccanica/Laboratorio Dosimetria"],
  },

  // Attività quantificate con un numero minimo (N) - Tecniche Speciali e Pazienti Complessivi
  {
    "id": 9,
    "name": "Tecniche speciali (Radiochirurgia/TBI/IORT)",
    "description":
        "Lo specializzando dovrà aver eseguito personalmente l'espletamento dei compiti affidatigli su pazienti trattati con tecniche speciali (total body irradiation, radiochirurgia, radioterapia intraoperatoria, etc.) (The specialist must have personally performed the assigned tasks on patients treated with special techniques (total body irradiation, radiosurgery, intraoperative radiotherapy, etc.))",
    "min_required_amount": 15,
    "required_departments": ["Tecniche Speciali/Radiochirurgia"],
  },
  {
    "id": 10,
    "name": "Percorso assistenziale globale del paziente",
    "description":
        "Durante il corso lo specializzando deve aver seguito pazienti (ricovero, brachiterapia, terapia con fasci esterni, ambulatorio e follow-up). (During the course, the specialist must have followed patients (inpatient, brachytherapy, external beam therapy, outpatient clinic, and follow-up).)",
    "min_required_amount": 350,
    "required_departments": ["Ambulatorio/Follow-up"],
  },

  // Attività non quantificate con N, ma obbligatorie per l'addestramento (Durata e Competenze)
  {
    "id": 11, "name": "Tirocinio clinico in reparto e DH",
    "description":
        "Frequenza delle sezioni del reparto di radioterapia, collaborando all'attività clinica di radioterapia e assumendo crescenti responsabilità fino alla completa autonomia, per **mesi 18** del reparto di degenza in regime ordinario e di day hospital. (Attendance of radiotherapy ward sections, collaborating in clinical radiotherapy activity, assuming increasing responsibility up to complete autonomy, for **18 months** in the ordinary inpatient ward and day hospital.)",
    "min_required_amount": 0, // Requisito basato sulla durata (18 mesi).
    "required_departments": ["Degenza Ordinaria", "Day Hospital"],
  },
  {
    "id": 12, "name": "Tirocinio specialistico in brachiterapia",
    "description":
        "Frequenza delle sezioni del reparto di radioterapia per **mesi 2** della sezione (reparto) di brachiterapia. (Attendance of radiotherapy ward sections for **2 months** in the brachytherapy section.)",
    "min_required_amount": 0, // Requisito basato sulla durata (2 mesi).
    "required_departments": ["Brachiterapia"],
  },
  {
    "id": 13, "name": "Tirocinio in dosimetria e fasci esterni",
    "description":
        "Frequenza delle sezioni del reparto di radioterapia per **mesi 28** dei reparti di radioterapia con fasci esterni, dosimetria e piani di trattamento e ambulatorio. (Attendance of radiotherapy ward sections for **28 months** in external beam radiotherapy, dosimetry, treatment planning, and outpatient clinic wards.)",
    "min_required_amount": 0, // Requisito basato sulla durata (28 mesi).
    "required_departments": [
      "Radioterapia Fasci Esterni",
      "Dosimetria",
      "Piani di Trattamento",
    ],
  },
  {
    "id": 14,
    "name": "Preparazione ed esecuzione del trattamento",
    "description":
        "Partecipare attivamente a tutte le fasi di preparazione e di esecuzione di un trattamento radioterapico con fasci esterni (inclusi: acceleratori lineari, simulatore universale/TC simulatore, sezioni di TC, RM, PET e SPECT, officina meccanica per schermature sagomate, utilizzo di TPS, laboratorio di dosimetria). (Actively participate in all phases of preparation and execution of an external beam radiotherapy treatment (including Linacs, simulators, imaging, shielding, TPS, dosimetry lab).)",
    "min_required_amount": 0,
    "required_departments": [
      "Tutte le Sezioni Tecniche (Dosimetria, Trattamento, Simulazione)",
    ],
  },
  {
    "id": 15,
    "name": "Tecniche conformazionali e IMRT",
    "description":
        "Aver acquisito esperienza delle tecniche di trattamento conformazionale e con radioterapia ad intensità modulata (IMRT) e dei sistemi per la loro verifica. (Having acquired experience with conformal treatment techniques and Intensity-Modulated Radiation Therapy (IMRT) and their verification systems.)",
    "min_required_amount": 0,
    "required_departments": ["IMRT/Verifica Sistemi"],
  },
  {
    "id": 16,
    "name": "Sperimentazioni cliniche controllate",
    "description":
        "Aver partecipato personalmente alla conduzione di sperimentazioni cliniche controllate. (Having personally participated in the conduct of controlled clinical trials.)",
    "min_required_amount": 0,
    "required_departments": ["Ricerca Clinica"],
  },
];
