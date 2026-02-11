// SPDX-License-Identifier: BSD-3-Clause
// Copyright (c) 2026 medlav

// AREA GINECOLOGIA ED OSTETRICIA
const List<Map<String, dynamic>> kOfficialGinecologiaOstetriciaActivities = [
  // Attività quantificate con un numero minimo (N)
  {
    "id": 1,
    "name": "Diagnostica prenatale e patologia gravidica",
    "description":
        "Attività di diagnostica prenatale, prevenzione e trattamento delle patologie gravidiche (Prenatal diagnostics, prevention and treatment of pregnancy pathologies)",
    "min_required_amount": 250,
    "required_departments": ["Diagnostica Prenatale", "Ambulatorio Ostetrico"],
  },
  {
    "id": 2,
    "name": "Assistenza al travaglio e al parto",
    "description":
        "Assistenza a travaglio e parto fisiologico e operativo (Assistance to labor and physiological and operative delivery)",
    "min_required_amount": 100,
    "required_departments": ["Sala Parto"],
  },
  {
    "id": 3,
    "name": "Esecuzione di tagli cesarei",
    "description":
        "Tagli cesarei (di cui il 25% come primo operatore in attività chirurgica) (Cesarean sections (25% as first operator in surgical activity))",
    "min_required_amount": 30,
    "required_departments": ["Sala Operatoria Ostetrica"],
  },
  {
    "id": 4,
    "name": "Fisiopatologia ed oncologia ginecologica",
    "description":
        "Attività di diagnostica ginecologica, di fisiopatologia, di oncologia ginecologica e di ginecologia endocrinologica (Gynecological diagnostics, pathophysiology, gynecological oncology and endocrinological gynecology activities)",
    "min_required_amount": 250,
    "required_departments": [
      "Ambulatorio Ginecologico",
      "Oncologia Ginecologica",
    ],
  },
  {
    "id": 5,
    "name": "Interventi di alta chirurgia ginecologica",
    "description":
        "Interventi di Alta Chirurgia (di cui il 10% come primo operatore) (High Surgery Procedures (10% as first operator))",
    "min_required_amount": 50,
    "required_departments": ["Chirurgia Ginecologica"],
  },
  {
    "id": 6,
    "name": "Interventi di media chirurgia ginecologica",
    "description":
        "Interventi di Media Chirurgia (di cui il 25% come primo operatore, il resto come secondo) (Medium Surgery Procedures (25% as first operator, the rest as second))",
    "min_required_amount": 100,
    "required_departments": ["Chirurgia Ginecologica"],
  },
  {
    "id": 7,
    "name": "Piccola chirurgia ed endoscopia",
    "description":
        "Interventi di Piccola Chirurgia (di cui il 40% come primo operatore - incluse procedure di chirurgia endoscopica, ambulatoriali e in D.H. - il resto come secondo) (Small Surgery Procedures (40% as first operator - includes endoscopic, ambulatory, and D.H. procedures - the rest as second))",
    "min_required_amount": 250,
    "required_departments": [
      "Chirurgia Endoscopica",
      "Chirurgia Ambulatoriale/D.H.",
    ],
  },
  {
    "id": 8,
    "name": "Totale interventi chirurgici eseguiti",
    "description":
        "Totale interventi (Total procedures) (Somma delle categorie chirurgiche Alta, Media, Piccola)",
    "min_required_amount": 400,
    "required_departments": [],
  },

  // Attività non quantificate con N, ma obbligatorie per l'addestramento
  {
    "id": 9, "name": "Attività clinica in elezione e urgenza",
    "description":
        "Attività ambulatoriali, in regime di ricovero, di elezione e di urgenza, sia nell’ostetricia che nella ginecologia, comprese anche specificità precedentemente considerate 'caratterizzanti elettive a scelta'. (Ambulatory activities, inpatient, elective and emergency, in both obstetrics and gynecology, including specificities previously considered 'elective characterizing at choice'.)",
    "min_required_amount":
        0, // Nessun N, il requisito è la tipologia di attività.
    "required_departments": ["Ambulatorio", "Reparto"],
  },
  {
    "id": 10, "name": "Integrazione chirurgica ostetrica",
    "description":
        "L’attività di ostetricia verrà ricompresa per la componente operatoria anche nelle procedure chirurgiche dei vari livelli secondo la valutazione del tutor. (Obstetric activity, for the surgical component, will also be included in the surgical procedures of the various levels according to the tutor's evaluation.)",
    "min_required_amount":
        0, // Nessun N, nota esplicativa sull'inclusione delle procedure.
    "required_departments": [],
  },
];
