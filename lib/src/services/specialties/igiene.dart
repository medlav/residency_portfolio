// SPDX-License-Identifier: BSD-3-Clause
// Copyright (c) 2026 medlav

// AREA IGIENE E MEDICINA PREVENTIVA
const List<Map<String, dynamic>> kOfficialIgieneMedicinaPreventivaActivities = [
  // --- A. Statistiche e Indagini Epidemiologiche ---
  {
    "id": 1,
    "name": "Analisi di statistiche sanitarie",
    "description":
        "Aver collaborato all’analisi di statistiche sanitarie correnti, ed averne progettata e realizzata almeno **una in modo autonomo**.",
    "min_required_amount": 2,
    "required_departments": ["Statistica Sanitaria/Epidemiologia"],
  },
  {
    "id": 2,
    "name": "Progettazione indagini epidemiologiche",
    "description":
        "Aver partecipato alla progettazione e alla realizzazione di almeno **due indagini epidemiologiche**, ed averne progettata e realizzata almeno **una in modo autonomo**.",
    "min_required_amount": 2,
    "required_departments": ["Epidemiologia"],
  },

  // --- B. Organizzazione e Valutazione Sanitaria ---
  {
    "id": 3,
    "name": "Valutazione fabbisogno risorse",
    "description":
        "Aver collaborato ad analisi organizzative di strutture sanitarie, ed in particolare: almeno **una valutazione del fabbisogno di risorse**.",
    "min_required_amount": 1,
    "required_departments": ["Direzione Sanitaria/Management"],
  },
  {
    "id": 4,
    "name": "Valutazione appropriatezza e qualità",
    "description":
        "Valutazioni di appropriatezza di procedure (diagnostico-terapeutiche), di percorsi o di regimi assistenziali e di qualità dell’assistenza.",
    "min_required_amount": 2,
    "required_departments": ["Controllo di Gestione/Qualità"],
  },
  {
    "id": 5,
    "name": "Revisione percorsi assistenziali integrati",
    "description":
        "Aver collaborato ad almeno **un progetto di valutazione e revisione di percorsi assistenziali integrati** (cure primarie, territorio, ospedale).",
    "min_required_amount": 1,
    "required_departments": ["Organizzazione Sanitaria"],
  },
  {
    "id": 6,
    "name": "Valutazione performance risorse umane",
    "description":
        "Aver collaborato ad almeno **una valutazione delle performances delle risorse umane**.",
    "min_required_amount": 1,
    "required_departments": ["Risorse Umane/Direzione Sanitaria"],
  },
  {
    "id": 7,
    "name": "Valutazione esiti organizzazione sanitaria",
    "description":
        "Aver collaborato ad almeno **una valutazione degli esiti di una organizzazione sanitaria** o di una sua parte.",
    "min_required_amount": 1,
    "required_departments": ["Valutazione Esiti"],
  },

  // --- C. Prevenzione e Igiene Pubblica ---
  {
    "id": 8,
    "name": "Interventi di prevenzione e igiene pubblica",
    "description":
        "Aver collaborato alla predisposizione ed alla valutazione di almeno **tre fra**: interventi di informazione o educazione sanitaria, campagne di vaccinazione, indagini di sorveglianza dei rischi ambientali indoor/outdoor nelle comunità e/o gruppi a rischi, adeguatezza igienico-sanitaria di procedure produttive e/o di prestazioni di servizi, interventi di prevenzione in comunità.",
    "min_required_amount": 3,
    "required_departments": ["Dipartimento di Prevenzione (DP)"],
  },
  {
    "id": 9,
    "name": "Collaborazione a programmi di screening",
    "description": "Aver collaborato ad almeno **un programma di screening**.",
    "min_required_amount": 1,
    "required_departments": ["DP - Screening"],
  },
  {
    "id": 10,
    "name": "Gestione rischio professionale e sorveglianza",
    "description":
        "Aver collaborato ad almeno **un programma di valutazione e gestione del rischio professionale e di sorveglianza sanitaria**.",
    "min_required_amount": 1,
    "required_departments": ["Medicina del Lavoro"],
  },

  // --- D. Studi di Fattibilità e Valutazione Tecnologie ---
  {
    "id": 11,
    "name": "Studi di fattibilità per salute e organizzazione",
    "description":
        "Aver effettuato almeno **uno studio di fattibilità per la soluzione di problemi di salute di una comunità** ed **uno studio di fattibilità per la soluzione di problemi organizzativi di una istituzione**.",
    "min_required_amount": 2,
    "required_departments": ["Programmazione Sanitaria"],
  },
  {
    "id": 12,
    "name": "Valutazione tecnologie sanitarie (HTA)",
    "description":
        "Aver collaborato almeno ad **una valutazione di tecnologie sanitarie** sotto il profilo dell’affidabilità, della sicurezza, dei rapporti costi-beneficio, costi-efficacia, costi-utilità, aspetti etici e giuridici.",
    "min_required_amount": 1,
    "required_departments": ["Health Technology Assessment (HTA)"],
  },

  // --- E. Qualità e Gestione del Rischio Clinico ---
  {
    "id": 13,
    "name": "Programmi di miglioramento della qualità",
    "description":
        "Aver collaborato alla predisposizione ed alla valutazione di programmi di **miglioramento della qualità** ed averne progettato e realizzato almeno **uno in modo autonomo**.",
    "min_required_amount": 2,
    "required_departments": ["Gestione della Qualità"],
  },
  {
    "id": 14,
    "name": "Certificazione e accreditamento sanitario",
    "description":
        "Aver realizzato almeno **un intervento di valutazione della qualità dell’assistenza con metodi di certificazione e/o accreditamento**.",
    "min_required_amount": 1,
    "required_departments": ["Certificazione/Accreditamento"],
  },
  {
    "id": 15,
    "name": "Revisioni sistematiche e Meta-analisi",
    "description":
        "Aver partecipato alla revisione critica della letteratura scientifica, con almeno **una revisione sistematica con annessa meta-analisi**, inerente gli interventi di prevenzione, diagnosi e cura (EBM, EBHC, EBP, EBPH) e aver collaborato all’attuazione dei principi di efficacia, appropriatezza ed efficienza nel processo decisionale in Sanità Pubblica.",
    "min_required_amount": 1,
    "required_departments": ["Ricerca/EBM"],
  },
  {
    "id": 16,
    "name": "Gestione rischio clinico e HAI/AMR",
    "description":
        "Aver collaborato alla progettazione, realizzazione e valutazione di almeno **un programma di gestione del rischio clinico e della sicurezza del paziente** inclusa la prevenzione e controllo delle Healthcare Associated Infections (HAI) e di Anti Microbial Stewardship (AMR).",
    "min_required_amount": 1,
    "required_departments": ["Rischio Clinico/Controllo Infezioni"],
  },
  {
    "id": 17,
    "name": "Analisi RCA e FMEA",
    "description":
        "Aver collaborato alla realizzazione di almeno **una Root Cause Analysis (RCA)** ed **una Failure Mode Effect Analysis (FMEA)**.",
    "min_required_amount": 2,
    "required_departments": ["Gestione del Rischio"],
  },

  // --- F. Nutrizione, Formazione e Comunicazione ---
  {
    "id": 18,
    "name": "Sorveglianza nutrizionale e rischio alimentare",
    "description":
        "Aver partecipato ad almeno **una indagine epidemiologica di sorveglianza nutrizionale** nelle comunità e/o gruppi a rischio e ad almeno **una valutazione e categorizzazione di rischio alimentare**.",
    "min_required_amount": 2,
    "required_departments": ["Igiene degli Alimenti/Nutrizione"],
  },
  {
    "id": 19,
    "name": "Progettazione formazione per operatori",
    "description":
        "Aver collaborato alla progettazione ed alla realizzazione di almeno **un intervento di formazione di base o permanente per operatori dell’area sanitaria**.",
    "min_required_amount": 1,
    "required_departments": ["Formazione Sanitaria"],
  },
  {
    "id": 20,
    "name": "Comunicazione istituzionale alla popolazione",
    "description":
        "Aver collaborato ad almeno **un progetto di comunicazione con la popolazione**, direttamente o attraverso i mass media, relativi a problemi o emergenze sanitarie.",
    "min_required_amount": 1,
    "required_departments": ["Comunicazione Istituzionale"],
  },

  // --- G. Emergenza e Ricerca ---
  {
    "id": 21,
    "name": "Organizzazione interventi di emergenza",
    "description":
        "Aver collaborato all’organizzazione di interventi di emergenza sanitaria (reali o simulati).",
    "min_required_amount": 1,
    "required_departments": ["Gestione Emergenze"],
  },
  {
    "id": 22,
    "name": "Ricerca scientifica e pubblicazioni",
    "description":
        "Aver partecipato all’attività di ricerca scientifica con la **pubblicazione di almeno un articolo su riviste indicizzate** e/o una comunicazione o poster ad almeno un convegno nazionale/internazionale all’anno.",
    "min_required_amount": 1,
    "required_departments": ["Ricerca Scientifica"],
  },
  {
    "id": 23,
    "name": "Metodologia di ricerca qualitativa",
    "description":
        "Aver applicato la **metodologia di ricerca qualitativa** (reale o simulata).",
    "min_required_amount": 1,
    "required_departments": ["Ricerca Qualitativa"],
  },
  {
    "id": 24,
    "name": "Health Impact Assessment (HIA)",
    "description":
        "Aver partecipato ad attività di **Health Impact Assessment (HIA)** (reale o simulata).",
    "min_required_amount": 1,
    "required_departments": ["Valutazione Impatto sulla Salute"],
  },

  // --- H. Frequenze (Qualitative) ---
  {
    "id": 25,
    "name": "Frequenza Direzioni e Dipartimenti",
    "description":
        "Aver frequentato, per una durata da stabilire da parte del Consiglio della Scuola, **direzioni sanitarie** (ASL, Azienda ospedaliera, Presidio), **Distretti sanitari**, **Dipartimenti di Prevenzione**, **Agenzie Sanitarie** ed **Agenzie per l’ambiente**, partecipando a tutte le relative attività.",
    "min_required_amount": 0,
    "required_departments": ["Frequenza Istituzioni Sanitarie"],
  },
  {
    "id": 26,
    "name": "Frequenza Sicurezza e Rischio Biologico",
    "description":
        "Aver frequentato, per una durata da stabilire da parte del Consiglio della Scuola, soprattutto strutture ove sia prevalente il **rischio lavorativo biologico**, partecipando alle attività di prevenzione e protezione della salute operate dai locali medico competente e responsabile della sicurezza.",
    "min_required_amount": 0,
    "required_departments": ["Frequenza Igiene e Sicurezza sul Lavoro"],
  },
];
