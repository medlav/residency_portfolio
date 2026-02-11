// SPDX-License-Identifier: BSD-3-Clause
// Copyright (c) 2026 medlav

// AREA MEDICA MEDICINA TERMALE
const List<Map<String, dynamic>> kOfficialMedicinaTermaleActivities = [
  {
    "id": 1,
    "name": "Percorso diagnostico clinico-termale",
    "description":
        "Acquisizione della capacità di individuare le malattie con indicazione alle terapie termali attraverso un percorso diagnostico completo (clinico, laboratoristico e strumentale) da realizzarsi in un Reparto di Medicina Interna seguendo personalmente i pazienti; per ciascun caso lo specializzando, sulla base dell’anamnesi, dell’esame obiettivo e dei dati laboratoristici e strumentali, deve compilare e firmare la relativa cartella clinica e proporre un indirizzo diagnostico e terapeutico anche termale; deve essere in grado di valutare altresì le controindicazioni alla crenoterapia (Acquisition of the ability to identify diseases with indication for thermal therapies through a complete diagnostic pathway (clinical, laboratory, and instrumental) to be carried out in an Internal Medicine Ward, personally following the patients)",
    "min_required_amount": 100,
    "required_departments": ["Reparto di Medicina Interna"],
  },
  {
    "id": 2,
    "name": "Discussione imaging radiologico",
    "description":
        "Discutere con un esperto esami di diagnostica per immagini (Discussing diagnostic imaging examinations with an expert)",
    "min_required_amount": 20,
    "required_departments": [],
  },
  {
    "id": 3,
    "name": "Discussione diagnostica di laboratorio",
    "description":
        "Discutere con un esperto dati di diagnostica laboratoristica relative ai casi trattati (Discussing laboratory diagnostic data related to treated cases with an expert)",
    "min_required_amount": 30,
    "required_departments": [],
  },
  {
    "id": 4,
    "name": "Consulenze internistiche specialistiche",
    "description":
        "Partecipare a consulenze internistiche presso reparti esterni specialistici (Participating in internal medicine consultations in external specialized departments)",
    "min_required_amount": 20,
    "required_departments": ["reparti esterni specialistici"],
  },
  {
    "id": 5,
    "name": "Turni di guardia divisionale",
    "description":
        "Partecipare a turni di guardia divisionale e interdivisionale (Participating in divisional and interdivisional on-call shifts)",
    "min_required_amount": 20,
    "required_departments": [],
  },
  {
    "id": 6, "name": "Indagini strumentali (ECG, Eco, Spiro)",
    "description":
        "Prescrizione, partecipazione all’esecuzione ed interpretazione di indagini strumentali: ecografia addome completo (n°20), elettrocardiogramma (n°50), ecocardiogramma (n°10), spirometria (n°20), emogasanalisi (n°20) (Prescription, participation in the execution, and interpretation of instrumental investigations: complete abdominal ultrasound (n°20), electrocardiogram (n°50), echocardiogram (n°10), spirometry (n°20), arterial blood gas analysis (n°20))",
    "min_required_amount": 120, // Sum of min activities
    "required_departments": [],
  },
  {
    "id": 7,
    "name": "Gestione clinica in stazione termale",
    "description":
        "Acquisizione con frequenza specifica presso Stazioni Termali di competenze tali da seguire i pazienti per l'intero ciclo di cura, redigere le cartelle cliniche termali dei curandi, formulare una prescrizione terapeutica termale, predisporre e controllare l'applicazione pratica del mezzo di cura termale, intervenire in caso di effetti collaterali e/o intolleranze alla cura stessa, far applicare le normative di legge relative ai controlli dei mezzi di cura termale e delle stazioni termali. (Acquisition of skills through specific attendance at Thermal Stations to follow patients for the entire cycle of care, draft thermal clinical records, formulate a thermal therapeutic prescription, prepare and monitor the practical application of the thermal treatment method, intervene in case of side effects and/or intolerances to the cure, and enforce legal regulations related to the control of thermal treatment methods and thermal stations.)",
    "min_required_amount": 300,
    "required_departments": ["Stazioni Termali"],
  },
  {
    "id": 8,
    "name": "Patologie osteoarticolari croniche",
    "description":
        "di cui delle malattie ad indicazione termale: 60 riguardano la patologia cronico-degenerativa osteoarticolare (of which diseases with thermal indication: 60 concern chronic-degenerative osteoarticular pathology)",
    "min_required_amount": 60,
    "required_departments": [],
  },
  {
    "id": 9,
    "name": "Patologie respiratorie termali",
    "description":
        "di cui delle malattie ad indicazione termale: 60 la patologia respiratoria (of which diseases with thermal indication: 60 concern respiratory pathology)",
    "min_required_amount": 60,
    "required_departments": [],
  },
  {
    "id": 10,
    "name": "Patologie digestive ed epatobiliari",
    "description":
        "di cui delle malattie ad indicazione termale: 60 la patologia digestiva ed epatobiliare (of which diseases with thermal indication: 60 concern digestive and hepatobiliary pathology)",
    "min_required_amount": 60,
    "required_departments": [],
  },
  {
    "id": 11,
    "name": "Patologie delle vie urinarie",
    "description":
        "di cui delle malattie ad indicazione termale: 60 la patologia delle vie urinarie (of which diseases with thermal indication: 60 concern urinary tract pathology)",
    "min_required_amount": 60,
    "required_departments": [],
  },
  {
    "id": 12,
    "name": "Patologie ORL, cutanee e metaboliche",
    "description":
        "di cui delle malattie ad indicazione termale: 60 le patologie ORL, vascolari, metaboliche, cutanee e ginecologiche (of which diseases with thermal indication: 60 concern ENT, vascular, metabolic, cutaneous, and gynecological pathologies)",
    "min_required_amount": 60,
    "required_departments": [],
  },
  {
    "id": 13,
    "name": "Conduzione di studi clinici termali",
    "description":
        "Elaborazione e conduzione di studi clinici controllati. (Elaboration and conduction of controlled clinical studies.)",
    "min_required_amount": 2,
    "required_departments": [],
  },
  {
    "id": 14,
    "name": "Competenze in reumoartropatie",
    "description":
        "Acquisizione di competenze diagnostiche e cliniche in ambito di reumoartropatie, tali da individuare con sicurezza le forme cliniche, in particolare osteoartrosi primaria e secondaria, la fibromialgia, la fase della malattia nella quale la cura termale va inserita (Acquisition of diagnostic and clinical competencies in the field of rheumoarthropathies, to safely identify clinical forms, particularly primary and secondary osteoarthritis, fibromyalgia, the stage of the disease in which the thermal cure should be included)",
    "min_required_amount": 0,
    "required_departments": [],
  },
  {
    "id": 15,
    "name": "Diagnostica disfunzioni apparato digerente",
    "description":
        "Acquisizione di capacità diagnostica nei confronti delle più comuni forme a prevalente patogenesi disfunzionale in ambito digestivo, dispepsia primitiva e secondaria, reflusso gastroesofageo, colon irritabile, stipsi cronica primitiva e discinesie biliari (Acquisition of diagnostic ability for the most common forms with prevalent dysfunctional pathogenesis in the digestive field, primary and secondary dyspepsia, gastroesophageal reflux, irritable bowel, chronic primary constipation, and biliary dyskinesia)",
    "min_required_amount": 0,
    "required_departments": [],
  },
  {
    "id": 16,
    "name": "Idropinoterapia e prevenzione urolitiasi",
    "description":
        "Capacità d’impostare programmi di cura e prevenzione secondaria con l’idropinoterapia nell’urolitiasi e nella gotta (Ability to set up cure and secondary prevention programs with hydrotherapy in urolithiasis and gout)",
    "min_required_amount": 0,
    "required_departments": [],
  },
  {
    "id": 17,
    "name": "Cura termale nella BPCO",
    "description":
        "Valutare l’inserimento della cura termale nei programmi terapeutici delle BPCO (Evaluating the inclusion of thermal cure in therapeutic programs for COPD)",
    "min_required_amount": 0,
    "required_departments": [],
  },
  {
    "id": 18,
    "name": "Prescrizione mezzi termali specialistici",
    "description":
        "Acquisizione di competenze prescrittive e applicative dei mezzi di cura termale in ambito specialistico (ORL, dermatologia, vascolare, ginecologia) (Acquisition of prescriptive and applicative competencies of thermal cure means in specialized fields (ENT, dermatology, vascular, gynecology))",
    "min_required_amount": 0,
    "required_departments": [],
  },
  {
    "id": 19,
    "name": "Tecniche riabilitative termali",
    "description":
        "Acquisizione di tecniche riabilitative con i mezzi di cura termale. (Acquisition of rehabilitative techniques with thermal cure means.)",
    "min_required_amount": 0,
    "required_departments": [],
  },
];
