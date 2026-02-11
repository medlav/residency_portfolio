// SPDX-License-Identifier: BSD-3-Clause
// Copyright (c) 2026 medlav

// AREA MEDICINA FISICA E RIABILITATIVA (FISIATRIA)
const List<Map<String, dynamic>>
kOfficialMedicinaFisicaRiabilitativaActivities = [
  // --- Requisiti Quantificati (N) ---
  {
    "id": 1,
    "name": "Diagnostica funzionale strumentale",
    "description":
        "Partecipare alla diagnostica funzionale con misure strumentali (Dinamometria, Elettrocinesiologia, Test posturali e baropodometrici, Analisi del cammino, Spirometria, Urodinamica, ecc.) condotta almeno per il **50% in prima persona** (Participation in functional diagnostics with instrumental measures, with at least 50% conducted personally).",
    "min_required_amount": 40,
    "required_departments": ["Laboratorio Diagnostica Funzionale"],
    "personal_responsibility_min": "50%",
  },
  {
    "id": 2,
    "name": "Valutazione psicometrica e neuropsicologica",
    "description":
        "Partecipare alla diagnostica funzionale con misure psicometriche (Bilanci mio-articolari, Test Neuropsicologici, Questionari quantitativi (scale) di Valutazione Funzionale, check-list strutturate (inclusi questionari ICF) condotta almeno per il **50% in prima persona** (Participation in functional diagnostics with psychometric measures, with at least 50% conducted personally).",
    "min_required_amount": 100,
    "required_departments": [
      "Ambulatorio di Valutazione Funzionale/Neuropsicologia",
    ],
    "personal_responsibility_min": "50%",
  },
  {
    "id": 3,
    "name": "Diagnostica biomedica e neurofisiologica",
    "description":
        "Partecipare alla diagnostica biomedica con misure strumentali quantitative o semi-quantitative (esami strumentali neurofisiologici, ecografici, osteo-densitometrici: riabilitativa strumentale) condotta almeno per il **50% in prima persona** (Participation in biomedical diagnostics with quantitative or semi-quantitative instrumental measures, with at least 50% conducted personally).",
    "min_required_amount": 40,
    "required_departments": ["Laboratorio Diagnostica Strumentale"],
    "personal_responsibility_min": "50%",
  },
  {
    "id": 4,
    "name": "Definizione Progetto Riabilitativo Individuale",
    "description":
        "Partecipazione attiva al team multi-professionale per la definizione di Progetti e Programmi Riabilitativi Individuali (impostazione, controllo, verifica) nei contesti sia di degenza ospedaliera sia ambulatoriale, e/o residenziale assistenziale, e/o territoriale /domiciliare e negli ambiti delle diverse età condotta almeno per il **50% in prima persona** (Active participation in the multi-professional team for defining Individual Rehabilitation Projects and Programs, with at least 50% conducted personally).",
    "min_required_amount": 200,
    "required_departments": [
      "Unità di Riabilitazione (Ospedaliera, Territoriale, Ambulatoriale)",
    ],
    "personal_responsibility_min": "50%",
  },
  {
    "id": 5,
    "name": "Prescrizione e collaudo ausili e protesi",
    "description":
        "Prescrizione e collaudo di Protesi, Ortesi ed Ausili condotta almeno per il **50% in prima persona** (Prescription and testing of Prosthetics, Orthotics, and Aids, with at least 50% conducted personally).",
    "min_required_amount": 30,
    "required_departments": ["Ambulatorio Protesica/Ortesica"],
    "personal_responsibility_min": "50%",
  },
  {
    "id": 6,
    "name": "Fisiatria interventistica e infiltrazioni",
    "description":
        "Interventi mini- o semi-invasivi effettuati personalmente e individualmente (quali procedure di medicina manuale, fibroscopie laringo-tracheali, infiltrazioni articolari e in generale procedure di fisiatria interventistica nelle sue diverse declinazioni) condotta almeno per il **50% in prima persona** (Mini- or semi-invasive interventions performed personally, with at least 50% conducted personally).",
    "min_required_amount": 50,
    "required_departments": ["Ambulatorio Fisiatria Interventistica"],
    "personal_responsibility_min": "50%",
  },

  // --- Requisiti di Frequenza (Mesi) ---
  {
    "id": 7,
    "name": "Tirocinio in Ortopedia e Traumatologia",
    "description":
        "Effettuare sei mesi di tirocinio in Dipartimenti, Unità Operative o Servizi specialistici, così distribuiti: **Ortopedia e Traumatologia (1 mese)** (6 months of internship in specialized departments, including 1 month in Orthopedics and Traumatology).",
    "min_required_amount": "1 mese",
    "required_departments": ["Ortopedia e Traumatologia"],
    "personal_responsibility_min": "N/A",
  },
  {
    "id": 8,
    "name": "Tirocinio in Neurologia",
    "description":
        "Effettuare sei mesi di tirocinio in Dipartimenti, Unità Operative o Servizi specialistici, così distribuiti: **Neurologia (1 mese)** (6 months of internship in specialized departments, including 1 month in Neurology).",
    "min_required_amount": "1 mese",
    "required_departments": ["Neurologia"],
    "personal_responsibility_min": "N/A",
  },
  {
    "id": 9,
    "name": "Tirocinio in Cardiologia",
    "description":
        "Effettuare sei mesi di tirocinio in Dipartimenti, Unità Operative o Servizi specialistici, così distribuiti: **Cardiologia (1 mese)** (6 months of internship in specialized departments, including 1 month in Cardiology).",
    "min_required_amount": "1 mese",
    "required_departments": ["Cardiologia"],
    "personal_responsibility_min": "N/A",
  },
  {
    "id": 10,
    "name": "Tirocinio in Pneumologia",
    "description":
        "Effettuare sei mesi di tirocinio in Dipartimenti, Unità Operative o Servizi specialistici, così distribuiti: **Pneumatologia (1 mese)** (6 months of internship in specialized departments, including 1 month in Pneumatology).",
    "min_required_amount": "1 mese",
    "required_departments": ["Pneumatologia"],
    "personal_responsibility_min": "N/A",
  },
  {
    "id": 11,
    "name": "Tirocinio in Dipartimento di Emergenza",
    "description":
        "Effettuare sei mesi di tirocinio in Dipartimenti, Unità Operative o Servizi specialistici, così distribuiti: **Dipartimento di Emergenza (1 mese)** (6 months of internship in specialized departments, including 1 month in Emergency Department).",
    "min_required_amount": "1 mese",
    "required_departments": ["Dipartimento di Emergenza"],
    "personal_responsibility_min": "N/A",
  },
  {
    "id": 12,
    "name": "Tirocinio in Medicina Territoriale",
    "description":
        "Effettuare sei mesi di tirocinio in Dipartimenti, Unità Operative o Servizi specialistici, così distribuiti: **Dipartimento delle attività Territoriali o equivalente (1 mese)** (6 months of internship in specialized departments, including 1 month in Territorial Activities Department or equivalent).",
    "min_required_amount": "1 mese",
    "required_departments": ["Dipartimento Territoriale"],
    "personal_responsibility_min": "N/A",
  },
];
