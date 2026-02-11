// SPDX-License-Identifier: BSD-3-Clause
// Copyright (c) 2026 medlav

// AREA MEDICA PSICHIATRIA
const List<Map<String, dynamic>> kOfficialPsichiatriaActivities = [
  {
    "id": 1,
    "name": "Presa in carico e gestione clinica (Volontaria/TSO)",
    "description":
        "Aver preso in carico pazienti per i quali ha definito diagnosi e prognosi seguendoli in regime di ricovero volontario ed in Trattamento Sanitario Obbligatorio, in trattamento ambulatoriale e territoriale, comprese le visite domiciliari, acquisendo gradualmente competenze nei trattamenti psicofarmacologici, psicoterapeutici e riabilitativi (Having taken charge of patients for whom the diagnosis and prognosis were defined, following them in voluntary and Compulsory Health Treatment (TSO) inpatient settings, in outpatient and territorial treatment, including home visits, gradually acquiring skills in psychopharmacological, psychotherapeutic, and rehabilitative treatments)",
    "min_required_amount": 30,
    "required_departments": [
      "ricovero volontario e TSO",
      "trattamento ambulatoriale e territoriale",
    ],
  },
  {
    "id": 2,
    "name": "Psicoterapia continuativa supervisionata",
    "description":
        "Aver seguito nell’intero quadriennio casi in psicoterapia con supervisione (Having followed cases in psychotherapy with supervision throughout the four-year period)",
    "min_required_amount": 5,
    "required_departments": [],
  },
  {
    "id": 3,
    "name": "Riabilitazione psichiatrica e interventi territoriali",
    "description":
        "Aver seguito casi con programmi di riabilitazione psichiatrica concordati con l’equipe multiprofessionale nei vari setting quali domicilio, day hospital, centro Diurno, residenze riabilitative coinvolgendo anche i familiari nell’intervento riabilitativo (Having followed cases with psychiatric rehabilitation programs agreed upon with the multiprofessional team in various settings such as home, day hospital, Day Center, rehabilitation residences, also involving family members in the rehabilitation intervention)",
    "min_required_amount": 10,
    "required_departments": [
      "domicilio",
      "day hospital",
      "centro Diurno",
      "residenze riabilitative",
    ],
  },
  {
    "id": 4,
    "name": "Ricerca clinica e strumenti di valutazione",
    "description":
        "Aver partecipato alla conduzione, secondo le norme di buona pratica clinica, di ricerche cliniche per approfondire la metodologia della ricerca in psichiatria con l’acquisizione di competenze sull’impiego di strumenti valutativi specifici. Lo specializzando dovrà essere in grado di concorrere alla stesura e pubblicazione di lavori scientifici. (Having participated in the conduct of clinical research, according to good clinical practice norms, to deepen research methodology in psychiatry with the acquisition of skills on the use of specific evaluative tools. The specialist must be able to contribute to the drafting and publication of scientific papers.)",
    "min_required_amount": 3,
    "required_departments": [],
  },
  {
    "id": 5,
    "name": "Psichiatria di consultazione e collegamento",
    "description":
        "Aver effettuato, con la supervisione del tutor, interventi di psichiatria di consultazione e di collegamento (Having performed, with the tutor's supervision, consultation and liaison psychiatry interventions)",
    "min_required_amount": 20,
    "required_departments": [],
  },
  {
    "id": 6,
    "name": "Gestione dei disturbi del comportamento alimentare",
    "description":
        "Aver seguito casi con diagnosi di disturbo del comportamento alimentare (Having followed cases diagnosed with an eating disorder)",
    "min_required_amount": 5,
    "required_departments": [],
  },
  {
    "id": 7,
    "name": "Interventi in urgenza ed emergenza psichiatrica",
    "description":
        "Aver effettuato interventi, con la supervisione tutoriale, in condizione di urgenza/emergenza acquisendo progressivamente un alto grado di autonomia (Having performed interventions, with tutorial supervision, in urgency/emergency conditions, progressively acquiring a high degree of autonomy)",
    "min_required_amount": 20,
    "required_departments": [],
  },
  {
    "id": 8,
    "name": "Diagnostica integrata e neuroimaging",
    "description":
        "Aver impiegato sui pazienti strumenti che permettono di formulare la diagnosi categoriale e valutare la dimensione psicopatologica, cognitiva, del funzionamento sociale e del carico assistenziale dei suoi familiari, ed acquisire competenze nel campo dell’elettroencefalografia, del neuroimaging e della psicofisiologia (Having used tools on patients that allow for the formulation of categorical diagnosis and the evaluation of the psychopathological, cognitive, social functioning, and family caregiver burden dimensions, and acquiring skills in electroencephalography, neuroimaging, and psychophysiology)",
    "min_required_amount": 20,
    "required_departments": [],
  },
  {
    "id": 9,
    "name": "Psicogeriatria e disturbi dell'anziano",
    "description":
        "Aver seguito casi inerenti la psicogeriatria (Having followed cases related to psychogeriatrics)",
    "min_required_amount": 3,
    "required_departments": [],
  },
  {
    "id": 10,
    "name": "Psichiatria forense, etica e perizie",
    "description":
        "Avere acquisito esperienze pratiche relative ai problemi etici e giuridici dell’operare psichiatrico ed all’espletamento delle perizie psichiatriche (Having acquired practical experience related to the ethical and legal problems of psychiatric practice and the execution of psychiatric expert opinions)",
    "min_required_amount": 5,
    "required_departments": [],
  },
];
