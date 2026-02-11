// SPDX-License-Identifier: BSD-3-Clause
// Copyright (c) 2026 medlav

// AREA DEI SERVIZI: MEDICINA DEL LAVORO
const List<Map<String, dynamic>> kOfficialMedicinaDelLavoroActivities = [
  {
    "id": 1,
    "name": "Sopralluoghi",
    "description": "Sopralluoghi",
    "min_required_amount": 6,
    "required_departments": ["Medicina del Lavoro (UNICA, AOU, PISQ)"],
  },
  {
    "id": 2,
    "name": "Indagini ambientali",
    "description": "Indagini ambientali",
    "min_required_amount": 2,
    "required_departments": ["Medicina del Lavoro (PISQ, RO-RO)"],
  },
  {
    "id": 3,
    "name": "Valutazione del rischio",
    "description": "Valutazioni del rischio",
    "min_required_amount": 2,
    "required_departments": [
      "Medicina del Lavoro (UNICA, AOU, Ferrovie, MC esterni, SPP)",
    ],
  },
  {
    "id": 4,
    "name": "Piani sorveglianza sanitaria",
    "description": "Piani di sorveglianza sanitaria",
    "min_required_amount": 2,
    "required_departments": [
      "Medicina del Lavoro (UNICA, AOU, Ferrovie, MC esterni)",
    ],
  },
  {
    "id": 5,
    "name": "Analisi stat. epidemiologiche",
    "description":
        "Analisi statistico-epidemiologiche relative relazioni sanitarie su dati anonimi collettivi",
    "min_required_amount": 2,
    "required_departments": ["Medicina del Lavoro (UNICA, INFN, PISQ)"],
  },
  {
    "id": 6,
    "name": "Formazione e informazione",
    "description": "Iniziative di informazione e formazione",
    "min_required_amount": 2,
    "required_departments": ["Medicina del Lavoro (UNICA, AOU, INFN, PISQ)"],
  },
  {
    "id": 7,
    "name": "Rischio infortunistico",
    "description": "Valutazioni del rischio infortunistico",
    "min_required_amount": 2,
    "required_departments": [
      "Medicina del Lavoro (UNICA, AOU, Ferrovie, MC esterni, SPP)",
    ],
  },
  {
    "id": 8,
    "name": "Diagnostica per immagini",
    "description":
        "Diagnostica per immagini: partecipazione alla valutazione di esami",
    "min_required_amount": 60,
    "required_departments": [
      "Medicina del Lavoro (UNICA, AOU, Ferrovie, MC esterni)",
      "Medicina dello Sport",
      "Dermatologia",
      "Fisatria",
    ],
  },
  {
    "id": 9,
    "name": "Fisiopatologia cardiocircolatoria",
    "description":
        "Fisiopatologia cardiocircolatoria: partecipazione all'esecuzione e alla valutazione di esami",
    "min_required_amount": 90,
    "required_departments": [
      "Medicina dello Sport",
      "Medicina del Lavoro (solo effettuazione ECG)",
    ],
  },
  {
    "id": 10,
    "name": "Fisiopatologia respiratoria",
    "description":
        "Fisiopatologia respiratoria: partecipazione all'esecuzione e alla valutazione di esami",
    "min_required_amount": 90,
    "required_departments": [
      "Medicina dello Sport",
      "Allergologia",
      "Medicina del Lavoro (UNICA, AOU, Ferrovie, MC esterni)",
    ],
  },
  {
    "id": 11,
    "name": "Audiologia",
    "description":
        "Audiologia: partecipazione all'esecuzione ed alla valutazione di esami",
    "min_required_amount": 80,
    "required_departments": [
      "Medicina del Lavoro (UNICA, AOU, Ferrovie, MC esterni)",
      "Audiologia",
    ],
  },
  {
    "id": 12,
    "name": "Allergologia",
    "description":
        "Allergologia: partecipazione all'esecuzione ed alla valutazione di esami",
    "min_required_amount": 60,
    "required_departments": ["Allergologia"],
  },
  {
    "id": 13,
    "name": "Clinica Medicina del Lavoro",
    "description":
        "Attività clinico-diagnostica di Medicina del Lavoro: partecipazione all'esecuzione di visite in reparto clinico, Day Hospital od ambulatori",
    "min_required_amount": 120,
    "required_departments": ["Medicina del Lavoro (Ambulatorio esterni)"],
  },
  {
    "id": 14,
    "name": "Sorveglianza sanitaria",
    "description":
        "Sorveglianza sanitaria: partecipazione all'esecuzione di visite",
    "min_required_amount": 80,
    "required_departments": [
      "Medicina del Lavoro (UNICA, AOU, Ferrovie, MC esterni)",
    ],
  },
  {
    "id": 15,
    "name": "Ergoftalmologia",
    "description":
        "Ergoftalmologia: partecipazione all'esecuzione ed alla valutazione di esami",
    "min_required_amount": 60,
    "required_departments": [
      "Medicina del Lavoro (UNICA, AOU, Ferrovie, MC esterni)",
    ],
  },
  {
    "id": 16,
    "name": "Clinica Specialistica",
    "description":
        "Attività clinico-diagnostica medico-chirurgica e specialistica: partecipazione alla valutazione di pazienti, in regime di Day Hospital o degenza in reparti clinici.",
    "min_required_amount": 120,
    "required_departments": ["Psichiatria", "Dermatologia"],
  },
  {
    "id": 17,
    "name": "Riabilitazione",
    "description":
        "Riabilitazione: partecipazione alla valutazione ed al trattamento riabilitativo di pazienti",
    "min_required_amount": 15,
    "required_departments": ["Fisatria"],
  },
  {
    "id": 18,
    "name": "Tossicologia & Neurofisiologia",
    "description":
        "Partecipazione all'esecuzione di attività di tossicologia occupazionale (monitoraggio biologico), patologia clinica, neurofisiologia e neuroradiologia",
    "min_required_amount": 120,
    "required_departments": [
      "Medicina del Lavoro (UNICA, AOU, Ferrovie, MC esterni)",
    ],
  },
  {
    "id": 19,
    "name": "Attività clinica (biennio)",
    "description":
        "Attività clinica, che deve essere svolta per almeno due anni presso l'Azienda di riferimento (2 aa)",
    "min_required_amount": 2,
    "required_departments": [
      "Medicina del Lavoro (UNICA, AOU, Ferrovie, MC esterni)",
    ],
  },
  {
    "id": 20,
    "name": "Stage Pronto Soccorso",
    "description":
        "Emergenza e Pronto soccorso: seguire pazienti per emergenze di medicina, cardiologia, oftalmologia con stage di due mesi (2 mm).",
    "min_required_amount": 2,
    "required_departments": ["Chirurgia"],
  },
  {
    "id": 21,
    "name": "Stress lavoro-correlato",
    "description":
        "Partecipazione alla valutazione di dati aziendali, questionari e check-list per la valutazione dello stress lavoro-correlato.",
    "min_required_amount": 2,
    "required_departments": [
      "Medicina del Lavoro (UNICA, AOU, Ferrovie, MC esterni, SPP)",
    ],
  },
  {
    "id": 22,
    "name": "Protocolli promozione salute",
    "description":
        "Partecipazione alla predisposizione ed implementazione di protocolli aziendali di promozione della salute, con particolare riferimento all'abuso di sostanze nocive (alcol e droghe) in ambito lavorativo per le mansioni rischio.",
    "min_required_amount": 0,
    "required_departments": [
      "Medicina del Lavoro (UNICA, AOU, Ferrovie, MC esterni)",
    ],
  },
  {
    "id": 23,
    "name": "Educazione Sanitaria",
    "description":
        "Educazione sanitaria e promozione della salute nei luoghi di lavoro. Obiettivi: 1- Promuovere la salute nei luoghi di lavoro, ovvero implementare un processo continuo per migliorare la qualità della vita lavorativa, della salute e del benessere nei luoghi di lavoro attraverso il miglioramento dell'ambiente di lavoro fisico, sociale e organizzativo. 2- Sostenere e promuovere alcuni aspetti della promozione della salute nei luoghi di lavoro, come il coinvolgimento attivo e la consultazione dei lavoratori nel migliorare il loro ambiente di lavoro e la loro organizzazione.",
    "min_required_amount": 0,
    "required_departments": [
      "Collaborazione con RLS AOUCA, attività promozione della salute AM e studi scientifici su promozione della salute. 2- Attività valutazione e gestione stress lavoro correlato AM e sanità",
    ],
  },
  {
    "id": 24,
    "name": "Formazione Lavoratori",
    "description":
        "Programmare e fornire informazione, formazione e addestramento ai lavoratori ed ai soggetti equiparati in materia di salute e sicurezza nei luoghi di lavoro.",
    "min_required_amount": 0,
    "required_departments": ["Affiancamento formazione AOUCA-AM"],
  },
  {
    "id": 25,
    "name": "Gestione Emergenze PS",
    "description":
        "Collaborare alle attività di organizzazione del servizio di primo soccorso considerando i particolari tipi di lavorazione ed esposizione e le peculiari modalità organizzative del lavoro nonché alla gestione delle emergenze.",
    "min_required_amount": 0,
    "required_departments": ["Affiancamento formazione PS AOUCA-AM"],
  },
  {
    "id": 26,
    "name": "Gestione Infortuni",
    "description": "Gestione infortuni sul luogo di lavoro.",
    "min_required_amount": 0,
    "required_departments": ["Affiancamento formazione PS AOUCA-AM"],
  },
  {
    "id": 27,
    "name": "Gestione Informazioni",
    "description":
        "Utilizzare adeguatamente ed efficacemente i software dedicati alle attività di sorveglianza sanitaria per raccogliere i dati clinici.",
    "min_required_amount": 0,
    "required_departments": ["AM-AOUCA-altre ditte"],
  },
  {
    "id": 28,
    "name": "Management & QI",
    "description":
        "Managment, governo clinico e Quality Improvement. Obiettivi: 1 - Organizzare le attività da svolgere, definire gli obiettivi e fissare i criteri con cui eseguire il monitoraggio. 2 - Saper valutare con obiettività i risultati ottenuti, al fine di stabilire in quale misura i criteri prefissati siano stati soddisfatti o meno. 3 - Prevedere periodici momenti di rivalutazione.",
    "min_required_amount": 0,
    "required_departments": [
      "RSA AM e AOUCA (e altre ditte). Sorveglianza covid e gestione emergenze covid e sanitaria PISQ",
    ],
  },
  {
    "id": 29,
    "name": "Ricerca scientifica",
    "description":
        "Realizzare attività di Ricerca scientifica, includendo la partecipazione a corsi di formazione frontale, Journal Club e la partecipazione al processo di valutazione del processo di apprendimento e di didattica.",
    "min_required_amount": 0,
    "required_departments": ["TUTTE"],
  },
  {
    "id": 30,
    "name": "Insegnamento",
    "description":
        "Realizzare un adeguato ed efficace intervento formativo, includendo il processo di valutazione del processo di apprendimento e di didattica.",
    "min_required_amount": 0,
    "required_departments": [
      "Lezioni frontali, seminari interni, altri corsi professionalizzanti",
    ],
  },
  {
    "id": 31,
    "name": "Formazione ECM",
    "description":
        "Formazione professionale personale (educazione continua in Medicina). Obiettivi: Riconoscere l'importanza della formazione continua, valutare l'offerta formativa per la formazione specialistica, conoscere la normativa vigente in tema di formazione post specialistica. Dimostrare la volontà di mantenersi costantemente aggiornato.",
    "min_required_amount": 0,
    "required_departments": [
      "Affiancamento corsi formazione ecm docenti - partecipazione e organizzazione convegni e seminari",
    ],
  },
  {
    "id": 32,
    "name": "Etica e Normative",
    "description":
        "Garantire che la conoscenza e le abilità professionali propri della disciplina della Medicina del Lavoro siano messe in pratica nel rispetto dei principi normativi ed etici.",
    "min_required_amount": 0,
    "required_departments": [
      "Partecipazione a corso specifico sul CE e buon esempio",
    ],
  },
  {
    "id": 33,
    "name": "Comunicazione",
    "description":
        "Comunicare in modo efficace con i pazienti, i datori di lavoro e le figure preposte nel rispetto dei termini previsti dalla normativa vigente. Comunicare efficacemente con i colleghi e con gli specialisti.",
    "min_required_amount": 0,
    "required_departments": [
      "Affiancamento in attività di consulenza dei docenti MC della Scuola, partecipazione a riunioni, consulenze, ecc",
    ],
  },
  {
    "id": 34,
    "name": "Team working & Leadership",
    "description":
        "Team working e leadership. Lavorare come parte attiva di un servizio composto da numerose figure professionali con differenti competenze. Lavori di gruppo (VDR sanità, RSA, ricerca, ecc.) sia come coordinati (primi anni) che come coordinatori (ultimi anni).",
    "min_required_amount": 0,
    "required_departments": ["TUTTE"],
  },
];
