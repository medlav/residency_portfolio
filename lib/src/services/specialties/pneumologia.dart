// SPDX-License-Identifier: BSD-3-Clause
// Copyright (c) 2026 medlav

// AREA MEDICA PNEUMOLOGIA
const List<Map<String, dynamic>> kOfficialPneumologiaActivities = [
  {
    "id": 1,
    "name": "Gestione clinica e cartelle in degenza/DH",
    "description":
        "Avere seguito casi di patologia respiratoria in reparti di degenza o in DH, avendo redatto personalmente e controfirmato sia la cartella clinica (anamnesi, esame obiettivo, programmazione degli interventi diagnostici e terapeutici) che la relazione di dimissione (epicrisi), con presentazione di almeno 10 casi negli incontri formali della scuola (Having followed cases of respiratory pathology in inpatient or DH units, having personally written and countersigned both the clinical chart (anamnesis, objective examination, planning of diagnostic and therapeutic interventions) and the discharge summary (epicrisis), with presentation of at least 10 cases in formal school meetings)",
    "min_required_amount": 150,
    "required_departments": ["Reparti di degenza o in DH"],
  },
  {
    "id": 2,
    "name": "Attività ambulatoriale e immuno-allergologia",
    "description":
        "Avere seguito casi di patologia respiratoria in ambulatorio con esecuzione, quando indicati, dei più comuni esami funzionali ed immuno-allergologici (Having followed cases of respiratory pathology in the outpatient clinic with execution, when indicated, of the most common functional and immuno-allergological tests)",
    "min_required_amount": 100,
    "required_departments": ["Ambulatorio"],
  },
  {
    "id": 3,
    "name": "Consulenze specialistiche pneumologiche",
    "description":
        "Avere partecipato attivamente a visite di consulenza specialistica (Having actively participated in specialist consultation visits)",
    "min_required_amount": 100,
    "required_departments": [],
  },
  {
    "id": 4,
    "name": "Turni di guardia e responsabilità clinica",
    "description":
        "Avere partecipato a turni di guardia/sottoguardia, assumendo la responsabilità in prima persona nei turni degli ultimi 2 anni (consultazione tutor) (Having participated in on-call/sub-call shifts, taking personal responsibility in the shifts of the last 2 years (tutor consultation))",
    "min_required_amount": 70,
    "required_departments": [],
  },
  {
    "id": 5,
    "name": "Pneumologia interventistica e videoendoscopia",
    "description":
        "Avere seguito in videoendoscopia sedute di Pneumologia interventistica e ne ha eseguite personalmente almeno 30 (Having followed interventional Pulmonology sessions via videoendoscopy and personally performed at least 30)",
    "min_required_amount": 80,
    "required_departments": [],
  },
  {
    "id": 6,
    "name": "Esami funzionali della respirazione",
    "description":
        "Avere eseguito e correttamente interpretato esami funzionali completi della respirazione (Having performed and correctly interpreted complete respiratory functional tests)",
    "min_required_amount": 200,
    "required_departments": [],
  },
  {
    "id": 7,
    "name": "Gestione insufficienza respiratoria grave",
    "description":
        "Avere partecipato attivamente alla gestione di casi di insufficienza respiratoria cronica grave nelle sue varie fasi clinico-evolutive con acquisizione delle relative pratiche terapeutiche, comprese quelle della terapia intensiva, e semi-intensiva (Having actively participated in the management of cases of severe chronic respiratory failure in its various clinical-evolutionary phases with acquisition of the relative therapeutic practices, including those of intensive and semi-intensive care)",
    "min_required_amount": 50,
    "required_departments": ["Terapia intensiva", "Terapia semi-intensiva"],
  },
  {
    "id": 8,
    "name": "Partecipazione a trial clinici randomizzati",
    "description":
        "Avere partecipato alla esecuzione di trial clinici randomizzati (Having participated in the execution of randomized clinical trials)",
    "min_required_amount": 3,
    "required_departments": [],
  },
  {
    "id": 9,
    "name": "Gestione clinica in pneumo-oncologia",
    "description":
        "Avere partecipato attivamente alla gestione di casi di pneumo-oncologia incluse le fasi della chemioterapia, radio-terapia, terapie biologiche (Having actively participated in the management of pneumo-oncology cases including the phases of chemotherapy, radiotherapy, biological therapies)",
    "min_required_amount": 30,
    "required_departments": [],
  },
  {
    "id": 10,
    "name": "Interpretazione imaging toracico avanzato",
    "description":
        "Imaging Toracico (RX, TC, RMN, PET): Interpretazione e discussione con il Tutor di casi paradigmatici (Thoracic Imaging (X-ray, CT, MRI, PET): Interpretation and discussion of paradigmatic cases with the Tutor)",
    "min_required_amount": 70,
    "required_departments": [],
  },
  {
    "id": 11,
    "name": "Test di reversibilità e broncostimolazione",
    "description":
        "Test di reversibilità e di broncostimolazione da eseguire in autonomia (Reversibility and bronchostimulation tests to be performed independently)",
    "min_required_amount": 50,
    "required_departments": [],
  },
  {
    "id": 12,
    "name": "Esecuzione emogasanalisi arteriosa",
    "description": "Emogasanalisi arteriosa (Arterial blood gas analysis)",
    "min_required_amount": 200,
    "required_departments": [],
  },
  {
    "id": 13,
    "name": "Monitoraggi non invasivi della saturimetria",
    "description":
        "Monitoraggi incruenti della saturimetria (Non-invasive monitoring of oximetry)",
    "min_required_amount": 150,
    "required_departments": [],
  },
  {
    "id": 14,
    "name": "Esecuzione e refertazione 6MWT",
    "description":
        "6-min walking test da eseguire in autonomia (esecuzione e refertazione) (6-min walking test to be performed independently (execution and reporting))",
    "min_required_amount": 40,
    "required_departments": [],
  },
  {
    "id": 15,
    "name": "Polisonnografia e medicina del sonno",
    "description":
        "Polisonnografie in autonomia ( esecuzione, estrapolazione tracciati, interpretazione e refertazione) (Polysomnography independently (execution, tracing extrapolation, interpretation, and reporting))",
    "min_required_amount": 30,
    "required_departments": [],
  },
  {
    "id": 16,
    "name": "Test Mantoux e diagnostica tubercolosi",
    "description":
        "Intradermoreazioni alla Mantoux o test biologici indicatori di infezione tbc (da eseguire e valutare in autonomia) (Mantoux intradermal reactions or biological tests indicating TBC infection (to be performed and evaluated independently))",
    "min_required_amount": 30,
    "required_departments": [],
  },
  {
    "id": 17,
    "name": "Toracentesi e toracoscopie mediche",
    "description":
        "Punture pleuriche esplorative/toracentesi anche in eco guida/toracoscopie mediche (Exploratory pleural punctures/thoracentesis also with ultrasound guidance/medical thoracoscopies)",
    "min_required_amount": 15,
    "required_departments": [],
  },
  {
    "id": 18,
    "name": "Esecuzione ecografie toraciche",
    "description": "Ecografie toraciche (Thoracic ultrasounds)",
    "min_required_amount": 30,
    "required_departments": [],
  },
  {
    "id": 19,
    "name": "Posizionamento drenaggi pleurici",
    "description":
        "Posizionamenti di drenaggi pleurici in assistenza (Placement of pleural drains with assistance)",
    "min_required_amount": 10,
    "required_departments": [],
  },
  {
    "id": 20,
    "name": "Test da sforzo cardiopolmonare (CPET)",
    "description":
        "Test da sforzo cardiopolmonare (Cardiopulmonary exercise testing)",
    "min_required_amount": 5,
    "required_departments": [],
  },
];
