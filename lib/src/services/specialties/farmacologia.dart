// SPDX-License-Identifier: BSD-3-Clause
// Copyright (c) 2026 medlav

// AREA FARMACOLOGIA E TOSSICOLOGIA CLINICA
const List<Map<String, dynamic>>
kOfficialFarmacologiaTossicologiaClinicaActivities = [
  // --- Requisiti Quantificati (N) ---
  {
    "id": 1,
    "name": "Progetti di sperimentazione farmaco-tossicologica preclinica",
    "description":
        "Impostazione ed allestimento di progetti di sperimentazione farmaco-tossicologica, preclinica, per la valutazione di farmaci, chemioterapici e sostanze xenobiotiche.",
    "min_required_amount": 25,
    "required_departments": ["Laboratorio di Farmacologia Preclinica"],
  },
  {
    "id": 2,
    "name": "Valutazione efficacia e tollerabilità nuovi farmaci",
    "description":
        "Partecipazione a procedure di valutazione di efficacia e tollerabilità di sostanze di interesse farmaco-tossicologico, anche ai fini della ricerca e sviluppo di nuovi farmaci.",
    "min_required_amount": 50,
    "required_departments": ["Unità di Ricerca Clinica"],
  },
  {
    "id": 3,
    "name": "Interventi clinici in intossicazioni acute e croniche",
    "description":
        "Esecuzione di almeno **50 interventi clinici in casi di intossicazioni acute** e di **30 interventi clinici in casi di intossicazioni croniche**, con riguardo anche alla diagnostica di laboratorio. I suddetti interventi devono essere stati condotti con **piena autonomia professionale**.",
    "min_required_amount": 80,
    "required_departments": [
      "Centro Antiveleni (CAV) / Pronto Soccorso Tossicologico",
    ],
  },
  {
    "id": 4,
    "name": "Monitoraggio terapeutico e analisi farmacogenetiche",
    "description":
        "Partecipazione alle attività dei laboratori dei Servizi di Farmacologia Clinica: monitoraggio di trattamenti farmacologici (**100 determinazioni** delle concentrazioni di farmaci nei liquidi biologici), monitoraggio di sostanze d’abuso ed analisi farmacogenetiche (**10 casi clinici**).",
    "min_required_amount": 110,
    "required_departments": ["Laboratorio di Farmacologia Clinica"],
  },
  {
    "id": 5,
    "name": "Prontuari terapeutici e linee guida prevenzione ADR",
    "description":
        "Collaborazione all'allestimento di Prontuari Terapeutici, alla pianificazione di protocolli per la valutazione dell'impiego dei farmaci, all'elaborazione di linee guida per la prevenzione degli effetti avversi dei farmaci.",
    "min_required_amount": 0,
    "required_departments": ["Comitati Terapeutici/Farmacia Ospedaliera"],
  },
  {
    "id": 6,
    "name": "Gestione banche dati e informazione sul farmaco",
    "description":
        "Partecipazione all'attività di reperimento dell'informazione sui trattamenti farmacologici anche attraverso la costituzione e l'impiego di banche dati ed altre risorse documentali per mezzo di strumentazione informatica.",
    "min_required_amount": 0,
    "required_departments": ["Servizio Informazione sul Farmaco"],
  },
  {
    "id": 7,
    "name": "Gestione clinica delle tossicodipendenze e co-morbilità",
    "description":
        "Conduzione dell’itinerario diagnostico-terapeutico di casi clinici di pazienti affetti da dipendenza da principali sostanze d’abuso, con particolare riguardo all’applicazione di protocolli integrati e alla co-morbilità psichiatrica in strutture dedicate (compresi i Servizi Territoriali per le Tossicodipendenze - SerT).",
    "min_required_amount": 50,
    "required_departments": ["SerT / Tossicodipendenze Cliniche"],
  },
  {
    "id": 8,
    "name": "Interventi tossicologici in Terapia Intensiva ed Emergenza",
    "description":
        "Partecipazione a interventi clinico-tossicologici presso Servizi di Terapia Intensiva o in altre strutture dedicate alla gestione dell’urgenza-emergenza, compresi i Centri Antiveleni (CAV).",
    "min_required_amount": 30,
    "required_departments": ["Terapia Intensiva / Emergenza"],
  },
  {
    "id": 9,
    "name": "Protocolli per abuso e misuso di farmaci",
    "description":
        "Partecipazione alla elaborazione e gestione di protocolli terapeutici per il trattamento dell'abuso e/o misuso di farmaci.",
    "min_required_amount": 10,
    "required_departments": ["Farmacologia/Tossicologia Clinica"],
  },
  {
    "id": 10,
    "name": "Attività di consultazione presso Centri Antiveleni e 118",
    "description":
        "Permanenza per un periodo continuativo di addestramento presso Servizi di Pronto Soccorso o in Servizi Territoriali del “118” e attività presso un Centro Antiveleni, all’interno del quale deve aver effettuato **autonomamente interventi di tossicologia clinica di consultazione**.",
    "min_required_amount": 50,
    "required_departments": ["CAV / 118 / Pronto Soccorso"],
  },
  {
    "id": 11,
    "name": "Farmacovigilanza e sperimentazioni di Fase IV",
    "description":
        "Partecipazione ad attività di Farmacovigilanza, anche nell'ambito di sperimentazioni di Fase IV.",
    "min_required_amount": 10,
    "required_departments": ["Farmacovigilanza"],
  },
  {
    "id": 12,
    "name": "Protocolli di sperimentazione clinica (Fase 1-2-3)",
    "description":
        "Partecipazione all'allestimento di protocolli di sperimentazione clinica di Fase 1, 2 e 3, anche in riferimento ai compiti e alle attività conferiti ai Comitati Etici per la sperimentazione dei farmaci.",
    "min_required_amount": 20,
    "required_departments": [
      "Comitato Etico / Centro Sperimentazioni Cliniche",
    ],
  },
  {
    "id": 13,
    "name": "Aggiornamento Prontuari Terapeutici Ospedalieri",
    "description":
        "Collaborazione all'aggiornamento di Prontuari Terapeutici delle Aziende Ospedaliere.",
    "min_required_amount": 0,
    "required_departments": ["Farmacia Ospedaliera / Comitati Terapeutici"],
  },
  {
    "id": 14,
    "name": "Consulenza multidisciplinare in casi complessi",
    "description":
        "Discussione con gli specialisti medici di altre discipline della condotta terapeutica integrata in casi tossicologici complessi.",
    "min_required_amount": 10,
    "required_departments": ["Consulenza Multidisciplinare"],
  },
  {
    "id": 15,
    "name": "Gestione ambulatoriale di patologie tossicologiche",
    "description":
        "Conduzione e risoluzione in **piena autonomia** di casi di pazienti in trattamento ambulatoriale per patologie tossicologiche complesse.",
    "min_required_amount": 50,
    "required_departments": ["Ambulatorio Tossicologia Clinica"],
  },
  {
    "id": 16,
    "name": "Consulenza e diagnostica in Tossicologia Perinatale",
    "description":
        "Esecuzione di consulenze telefoniche ed eventuali visite per problematiche di **Tossicologia Perinatale**.",
    "min_required_amount": 10,
    "required_departments": ["Servizio Tossicologia Perinatale"],
  },
  {
    "id": 17,
    "name": "Uso razionale dei dispositivi medici",
    "description":
        "Partecipazione alla impostazione razionale dell’uso dei dispositivi medici in patologie acute e croniche.",
    "min_required_amount": 0,
    "required_departments": ["Valutazione Dispositivi Medici"],
  },
  {
    "id": 18,
    "name": "Governo clinico del farmaco e del dispositivo medico",
    "description":
        "Partecipazione al governo clinico del farmaco e del dispositivo medico a livello ospedaliero e territoriale.",
    "min_required_amount": 0,
    "required_departments": ["Governo Clinico"],
  },
  {
    "id": 19,
    "name": "Diagnostica biomolecolare e appropriatezza terapeutica",
    "description":
        "Partecipazione ad attività diagnostiche-terapeutiche biomolecolari, recettoriali e farmacogenetiche, per la definizione di appropriatezza terapeutica.",
    "min_required_amount": 0,
    "required_departments": ["Laboratorio di Farmacogenetica"],
  },
  {
    "id": 20,
    "name": "Formazione specialistica e aggiornamento continuo",
    "description":
        "Partecipazione a corsi di aggiornamento, seminari, dimostrazioni, conferenze e congressi con tematiche direttamente pertinenti o comunque di completamento al percorso formativo in Farmacologia e Tossicologia clinica.",
    "min_required_amount": 0,
    "required_departments": ["Formazione e Aggiornamento"],
  },
  {
    "id": 21,
    "name": "Farmacoeconomia e farmaco-epidemiologia comparativa",
    "description":
        "Partecipazione alla progettazione e all'esecuzione di valutazioni comparative di efficacia, tollerabilità e costi di trattamenti farmacologici alternativi (es. Partecipazione all’allestimento (od alla valutazione) di 5 protocolli di studi di farmaco-utilizzazione, farmaco-epidemiologia e farmaco-economia; Partecipazione all’allestimento (od alla valutazione) di 5 protocolli di studi con dispositivi medici).",
    "min_required_amount": 10,
    "required_departments": ["Farmacoeconomia/Farmacoepidemiologia"],
  },

  // --- Attività Specifiche per i Laureati in Medicina e Chirurgia ---
  {
    "id": 22,
    "name": "Attività diagnostica in reparti specialistici",
    "description":
        "Attività specifiche per i laureati in Medicina e Chirurgia: Partecipazione ad attività diagnostiche e terapeutiche presso reparti di medicina generale, medicina specialistica (cardiologia, endocrinologia, geriatria, ginecologia, medicina interna, malattie infettive, medicina d’urgenza, pediatria, oncologia medica, pneumologia, nefrologia, neurologia, pneumologia, psichiatria e reumatologia, terapia intensiva e tossicologia medica).",
    "min_required_amount": 0,
    "required_departments": ["Reparti Medici e Specialità"],
  },
  {
    "id": 23, "name": "Orientamento diagnostico-terapeutico internistico",
    "description":
        "Attività specifiche per i laureati in Medicina e Chirurgia: Raccolta e interpretazione di dati anamnestici e di dati di diagnostica funzionale e strumentale ai fini dell'orientamento diagnostico e delle decisioni terapeutiche relative al trattamento farmacologico di patologie in campo internistico e specialistico (cardiologia, endocrinologia, gastroenterologia, geriatria, malattie infettive, medicina interna, nefrologia, neuro-psichiatria, pneumologia, psichiatria, oncologia, reumatologia).",
    "min_required_amount": 50, // Casi clinici
    "required_departments": ["Ambulatorio/Reparto Medico"],
  },
  {
    "id": 24,
    "name": "Prevenzione e monitoraggio nei servizi SerT",
    "description":
        "Attività specifiche per i laureati in Medicina e Chirurgia: Partecipazione ad attività diagnostiche, terapeutiche di prevenzione, accertamento e monitoraggio nei servizi per le tossicodipendenze.",
    "min_required_amount": 0,
    "required_departments": ["SerT / Reparti Tossicodipendenze"],
  },
  {
    "id": 25,
    "name": "Valutazione etica e clinica di sostanze xenobiotiche",
    "description":
        "Attività specifiche per i laureati in Medicina e Chirurgia: Partecipazione all'allestimento di protocolli di sperimentazione farmaco-tossicologica, clinica, per la valutazione di farmaci, chemioterapici e sostanze xenobiotiche, anche in riferimento ai compiti conferiti ai Comitati Etici per la sperimentazione dei farmaci nell'uomo.",
    "min_required_amount": 10,
    "required_departments": ["Sperimentazione Clinica / Comitato Etico"],
  },
  {
    "id": 26, "name": "Consulenza e segnalazione reazioni avverse (ADR)",
    "description":
        "Attività specifiche per i laureati in Medicina e Chirurgia: Partecipazione ad attività di consulenza farmaco-tossicologica (**100 ore di attività**). Valutazione di segnalazioni di reazioni avverse a farmaci, anche nell'ambito di sperimentazioni di fase IV.",
    "min_required_amount": 10, // Casi di reazioni avverse
    "required_departments": ["Farmacovigilanza / Consulenza"],
  },
  {
    "id": 27, "name": "Individualizzazione delle terapie e monitoraggio",
    "description":
        "Attività specifiche per i laureati in Medicina e Chirurgia: Partecipazione alle attività di valutazione dei trattamenti farmacologici, monitoraggio terapeutico, analisi farmacogenetica, controllo e individualizzazione delle terapie presso reparti di degenza ospedaliera e/o servizi di farmacologia e/o tossicologia clinica.",
    "min_required_amount": 50, // Casi
    "required_departments": ["Monitoraggio Terapeutico / Reparti Ospedalieri"],
  },
  {
    "id": 28, "name": "Itinerari diagnostici in degenza ospedaliera",
    "description":
        "Attività specifiche per i laureati in Medicina e Chirurgia: Partecipazione alle attività diagnostiche e terapeutiche presso reparti di medicina generale e medicina specialistica allo scopo di seguire l'itinerario diagnostico e terapeutico di pazienti in trattamento farmacologico.",
    "min_required_amount": 20, // Casi
    "required_departments": ["Reparti Medici"],
  },
  {
    "id": 29, "name": "Interpretazione monitoraggi farmaco-tossicologici",
    "description":
        "Attività specifiche per i laureati in Medicina e Chirurgia: Partecipazione all'interpretazione di monitoraggi farmaco-tossicologici durante cicli di terapia farmacologica.",
    "min_required_amount": 10, // Casi
    "required_departments": ["Laboratorio di Tossicologia Clinica"],
  },
  {
    "id": 30,
    "name": "Simulazione pronto soccorso e rianimazione (BLS/ALS)",
    "description":
        "Esecuzione su manichini di prove di simulazione di pronto soccorso e rianimazione cardiopolmonare e partecipazione ad attività di soccorso extra-ospedaliero e di trasferimento intra- ed inter-ospedaliero di pazienti critici.",
    "min_required_amount": 0,
    "required_departments": ["Emergenza/Soccorso"],
  },
  {
    "id": 31,
    "name": "Identificazione dei pazienti non-responders",
    "description":
        "I percorsi formativi per i laureati in Medicina e Chirurgia, saranno strutturati per formare specialisti atti a: Partecipare alle attività assistenziali dei Servizi Sanitari attraverso il monitoraggio e la valutazione delle risposte ai farmaci nell'uomo (identificazione dei non responders).",
    "min_required_amount": 0,
    "required_departments": ["Monitoraggio Farmaci"],
  },
  {
    "id": 32,
    "name": "Identificazione effetti terapeutici sfavorevoli",
    "description":
        "I percorsi formativi per i laureati in Medicina e Chirurgia, saranno strutturati per formare specialisti atti a: Partecipare alla identificazione degli effetti terapeutici sfavorevoli e avversi dei farmaci.",
    "min_required_amount": 0,
    "required_departments": ["Farmacovigilanza"],
  },
  {
    "id": 33,
    "name": "Impostazione razionale interventi farmacoterapeutici",
    "description":
        "I percorsi formativi per i laureati in Medicina e Chirurgia, saranno strutturati per formare specialisti atti a: Partecipare alla impostazione razionale di interventi farmaco-terapeutici in condizioni patologiche sia acute che croniche.",
    "min_required_amount": 0,
    "required_departments": ["Consulenza Farmacoterapeutica"],
  },
  {
    "id": 34,
    "name": "Caratterizzazione clinica di nuovi farmaci (Fase Early)",
    "description":
        "I percorsi formativi per i laureati in Medicina e Chirurgia, saranno strutturati per formare specialisti atti a: Prendere parte attiva alla caratterizzazione e valutazione degli effetti di nuovi farmaci, soprattutto nelle fasi iniziali della loro sperimentazione clinica.",
    "min_required_amount": 0,
    "required_departments": ["Sperimentazione Clinica (Fase Iniziale)"],
  },
  {
    "id": 35,
    "name": "Supporto clinico CAV e Tossicologia Perinatale",
    "description":
        "I percorsi formativi per i laureati in Medicina e Chirurgia, saranno strutturati per formare specialisti atti a: Partecipare alle attività dei CAV e dei Servizi di Tossicologia Perinatale.",
    "min_required_amount": 0,
    "required_departments": ["CAV/Tossicologia Perinatale"],
  },
  {
    "id": 36,
    "name": "Consulenza specialistica DEA/Pronto Soccorso",
    "description":
        "I percorsi formativi per i laureati in Medicina e Chirurgia, saranno strutturati per formare specialisti atti a: Operare come consulenti nei Dipartimenti Emergenza-Urgenza.",
    "min_required_amount": 0,
    "required_departments": ["Consulenza Emergenza-Urgenza"],
  },
  {
    "id": 37,
    "name": "Operatività clinica nei servizi territoriali SerT",
    "description":
        "I percorsi formativi per i laureati in Medicina e Chirurgia, saranno strutturati per formare specialisti atti a: Operare nei Servizi Territoriali per le farmaco-tossicodipendenze (SerT).",
    "min_required_amount": 0,
    "required_departments": ["SerT"],
  },
  {
    "id": 38,
    "name": "Gestione maxi-emergenze e catastrofi chimiche",
    "description":
        "Altre attività dello studente sono quelle utili ad acquisire specifiche e avanzate conoscenze correlate alla valutazione del rischio da agenti chimici, al monitoraggio biologico di farmaci e tossici, alla gestione sanitaria delle maxi-emergenze e alla medicina delle catastrofi chimiche. Le relative conoscenze sono acquisite con attività condotte in servizi di analisi chimico-farmaco-tossicologiche e di medicina di laboratorio, in centri di farmacologia, farmacogenetica e tossicologia clinica e ambientale, di farmaco-tossico-dipendenze, di farmacoepidemiologia, di farmacoeconomia e nei servizi territoriali del “118”.",
    "min_required_amount": 0,
    "required_departments": ["Formazione Avanzata"],
  },
];
