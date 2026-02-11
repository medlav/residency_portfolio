// SPDX-License-Identifier: BSD-3-Clause
// Copyright (c) 2026 medlav

// AREA MEDICA REUMATOLOGIA
const List<Map<String, dynamic>> kOfficialReumatologiaActivities = [
  {
    "id": 1,
    "name": "Clinica delle malattie reumatologiche",
    "description":
        "Acquisizione di competenze tecniche generali per la clinica delle malattie reumatologiche, seguendo personalmente casi di patologia reumatologica (Acquisition of general technical skills for the clinical practice of rheumatological diseases, personally following cases of rheumatological pathology)",
    "min_required_amount": 600,
    "required_departments": [],
  },
  {
    "id": 2,
    "name": "Gestione delle connettiviti sistemiche",
    "description":
        "Seguire casi di natura sistemica, partecipando attivamente alla raccolta dei dati anamnestici, effettuando l’esame obiettivo, proponendo la programmazione degli interventi diagnostici e terapeutici razionali, valutando criticamente i dati clinici (Following systemic cases, actively participating in the collection of anamnestic data, performing the objective examination, proposing the planning of rational diagnostic and therapeutic interventions, critically evaluating clinical data)",
    "min_required_amount": 200,
    "required_departments": [],
  },
  {
    "id": 3,
    "name": "Attività di reparto e guardie attive",
    "description":
        "Svolgere attività clinica in reparto di ricovero di Reumatologia effettuando turni di guardia attiva (Performing clinical activity in a Rheumatology inpatient ward, performing active on-call shifts)",
    "min_required_amount": 40,
    "required_departments": ["reparto di ricovero di Reumatologia"],
  },
  {
    "id": 4,
    "name": "Dimissioni e gestione clinica degenza",
    "description":
        "Svolgere attività clinica in reparto di ricovero di Reumatologia compilando lettere di dimissioni (co – firmate) (Performing clinical activity in a Rheumatology inpatient ward, compiling discharge letters (co-signed))",
    "min_required_amount": 40,
    "required_departments": ["reparto di ricovero di Reumatologia"],
  },
  {
    "id": 5,
    "name": "Attività ambulatoriale reumatologica",
    "description":
        "Svolgere attività clinica in ambulatorio di Reumatologia per esterni eseguendo visite (Performing clinical activity in a Rheumatology outpatient clinic for externals, performing visits)",
    "min_required_amount": 400,
    "required_departments": ["ambulatorio di Reumatologia"],
  },
  {
    "id": 6,
    "name": "Monitoraggio terapie con farmaci biologici",
    "description":
        "Svolgere attività clinica relativa alle procedure di inserimento in cura e monitoraggio di pazienti sottoposti a trattamento con farmaci biologici, seguiti per almeno un anno (Performing clinical activity related to the procedures for initiation and monitoring of patients undergoing biological drug treatment, followed for at least one year)",
    "min_required_amount": 20,
    "required_departments": [],
  },
  {
    "id": 7,
    "name": "Discussione e presentazione casi clinici",
    "description":
        "Acquisire la capacità di discutere casi clinici in modo documentato e analitico, esponendo casi di patologie reumatiche (Acquiring the ability to discuss clinical cases in a documented and analytical manner, presenting cases of rheumatic pathologies)",
    "min_required_amount": 5,
    "required_departments": [],
  },
  {
    "id": 8,
    "name": "Artrocentesi ed esame liquido sinoviale",
    "description":
        "Eseguire direttamente artrocentesi con relativo esame del liquido sinoviale (Directly performing arthrocentesis with relative synovial fluid examination)",
    "min_required_amount": 20,
    "required_departments": [],
  },
  {
    "id": 9,
    "name": "Infiltrazioni articolari e periarticolari",
    "description":
        "Eseguire direttamente infiltrazioni articolari e periarticolari a scopo terapeutico, di cui almeno 10 sotto guida ecografica (Directly performing articular and periarticular infiltrations for therapeutic purposes, of which at least 10 under ultrasound guidance)",
    "min_required_amount": 40,
    "required_departments": [],
  },
  {
    "id": 10,
    "name": "Laboratorio e profili autoanticorporali",
    "description":
        "Valutare criticamente i risultati di esami di laboratorio inerenti la patologia reumatologica, di cui almeno 100 profili autoanticorporali (Critically evaluating the results of laboratory tests concerning rheumatological pathology, including at least 100 autoantibody profiles)",
    "min_required_amount": 400,
    "required_departments": [],
  },
  {
    "id": 11,
    "name": "Istopatologia e conferenze cliniche",
    "description":
        "Acquisire la capacità di riconoscere i più comuni quadri istologici inerenti la patologia reumatologica attraverso la partecipazione a conferenze clinico – patologiche e il diretto coinvolgimento nella presentazione di almeno 1 caso (Acquiring the ability to recognize the most common histological pictures related to rheumatological pathology through participation in clinical-pathological conferences and direct involvement in the presentation of at least 1 case)",
    "min_required_amount": 5,
    "required_departments": [],
  },
  {
    "id": 12,
    "name": "Ecografia muscolo-scheletrica (MSUS)",
    "description":
        "Eseguire ecografie muscolo – tendinee e articolari, assistendo all’esecuzione di esami ecografici ed eseguendone personalmente almeno 40 in distretti plurimi, dimostrando, quindi, di saper interpretare correttamente i risultati (Performing musculoskeletal and articular ultrasounds, assisting in the execution of ultrasound examinations and personally performing at least 40 in multiple districts, thus demonstrating the ability to correctly interpret the results)",
    "min_required_amount": 100,
    "required_departments": [],
  },
  {
    "id": 13,
    "name": "Capillaroscopia periungueale",
    "description":
        "Eseguire capillaroscopie periungueali, assistendo all’esecuzione di capillaroscopie ed eseguendone personalmente almeno 20, dimostrando, quindi, di saper interpretare correttamente i risultati (Performing periungual capillaroscopies, assisting in the execution of capillaroscopies and personally performing at least 20, thus demonstrating the ability to correctly interpret the results)",
    "min_required_amount": 50,
    "required_departments": [],
  },
  {
    "id": 14,
    "name": "Densitometria ossea e metabolismo minerale",
    "description":
        "Acquisire la capacità di interpretare analiticamente e criticamente i risultati della densitometria ossea, anche in rapporto alla conoscenza delle modalità tecniche di esecuzione (Acquiring the ability to analytically and critically interpret the results of bone densitometry, also in relation to the knowledge of the technical execution modalities)",
    "min_required_amount": 0,
    "required_departments": [],
  },
  {
    "id": 15,
    "name": "Diagnostica per immagini in reumatologia",
    "description":
        "Acquisire la capacità di riconoscere e interpretare correttamente radiogrammi, scintigrafie, TC, RMN e tutte le altre tecniche di diagnostica per immagini inerenti la patologia reumatologica (Acquiring the ability to correctly recognize and interpret radiograms, scintigraphies, CT, MRI, and all other diagnostic imaging techniques related to rheumatological pathology)",
    "min_required_amount": 0,
    "required_departments": [],
  },
  {
    "id": 16,
    "name": "Clinimetria delle artropatie infiammatorie",
    "description":
        "Acquisire e interpretare i principali dati clinimetrici riguardanti in primo luogo i pazienti con malattie infiammatorie articolari croniche (Acquiring and interpreting the main clinimetric data primarily concerning patients with chronic inflammatory joint diseases)",
    "min_required_amount": 0,
    "required_departments": [],
  },
];
