// SPDX-License-Identifier: BSD-3-Clause
// Copyright (c) 2026 medlav

// AREA MEDICINA LEGALE
const List<Map<String, dynamic>> kOfficialMedicinaLegaleActivities = [
  // --- A. Tanatologia e Autopsia ---
  {
    "id": 1,
    "name": "Sopralluoghi e constatazioni di decesso",
    "description":
        "Partecipazione a sopralluoghi e/o constatazioni di decesso, come da previsione del regolamento di polizia mortuaria o da disposizione, diretta o delegata, dell’autorità giudiziaria.",
    "min_required_amount": 5,
    "required_departments": ["Tanatologia/Autorità Giudiziaria"],
  },
  {
    "id": 2,
    "name": "Visite necroscopiche e certificazione",
    "description":
        "Aver partecipato a visite necroscopiche con relativa stesura di certificazione presso un obitorio comunale ovvero in ambito ospedaliero e/o territoriale.",
    "min_required_amount": 50,
    "required_departments": ["Obitorio/Servizio Necroscopico"],
  },
  {
    "id": 3,
    "name": "Autopsie giudiziarie ed esami esterni",
    "description":
        "Aver partecipato a accertamenti necroscopici completati dalla sezione cadaverica, eseguendone interamente e in prima persona (esame esterno, sezione e determinazione della/e causa/e di morte) almeno **20**.",
    "min_required_amount": 100,
    "required_departments": ["Sala Autopsie"],
  },
  {
    "id": 4,
    "name": "Partecipazione a esumazioni",
    "description": "Aver partecipato ad esumazione di cadavere.",
    "min_required_amount": 2,
    "required_departments": ["Tanatologia"],
  },

  // --- B. Consulenza e Valutazione del Danno (Quantificate) ---
  {
    "id": 5,
    "name": "Accertamenti di interesse penalistico",
    "description":
        "Aver partecipato ad accertamenti medico-legali di interesse **penalistico**.",
    "min_required_amount": 30,
    "required_departments": ["Sezione Penalistica"],
  },
  {
    "id": 6,
    "name": "Responsabilità medica e ambito civile",
    "description":
        "Aver partecipato ad accertamenti medico-legali di interesse **civilistico**, di cui almeno **30 in ambito di responsabilità professionale medica**.",
    "min_required_amount": 60,
    "required_departments": ["Sezione Civilistica/Responsabilità Medica"],
  },
  {
    "id": 7,
    "name": "Infortunistica e assicurativa privata",
    "description":
        "Aver partecipato ad accertamenti medico-legali di interesse **assicurativo privato**.",
    "min_required_amount": 30,
    "required_departments": ["Sezione Assicurativa Privata"],
  },
  {
    "id": 8,
    "name": "Previdenza e assicurativa sociale",
    "description":
        "Aver partecipato ad accertamenti medico-legali di interesse **assicurativo sociale**.",
    "min_required_amount": 30,
    "required_departments": ["Sezione Assicurativa Sociale"],
  },

  // --- C. Attività Giudiziarie e Forensi ---
  {
    "id": 9,
    "name": "Partecipazione a udienze giudiziarie",
    "description": "Aver partecipato ad udienze penali, civili o del lavoro.",
    "min_required_amount": 10,
    "required_departments": ["Tribunale/Udienze"],
  },
  {
    "id": 10,
    "name": "Criminologia e psicopatologia forense",
    "description":
        "Aver partecipato ad accertamenti e valutazioni su casistica **criminologica o di psicopatologia forense**.",
    "min_required_amount": 10,
    "required_departments": ["Psicopatologia Forense/Criminologia"],
  },
  {
    "id": 11,
    "name": "Mediazione e conciliazione (ADR)",
    "description":
        "Aver partecipato a procedure di **mediazione e/o conciliazione in tema di colpa medica**.",
    "min_required_amount": 3,
    "required_departments": ["Risoluzione Controversie (ADR)"],
  },
  {
    "id": 12,
    "name": "Istruttoria e sedute di Comitato Etico",
    "description":
        "Aver partecipato a sedute di **comitato etico**, seguendone i lavori sin dalla fase istruttoria.",
    "min_required_amount": 5,
    "required_departments": ["Comitato Etico"],
  },

  // --- D. Indagini Tecniche e Laboratorio ---
  {
    "id": 13,
    "name": "Interpretazione imaging forense",
    "description":
        "Aver partecipato all’interpretazione di indagini strumentali di natura **radiologica, ecografica, elettrodiagnostica**, etc.",
    "min_required_amount": 80,
    "required_departments": ["Diagnostica per Immagini/Strumentale"],
  },
  {
    "id": 14,
    "name": "Indagini istopatologiche forensi",
    "description": "Aver partecipato a **indagini istopatologiche**.",
    "min_required_amount": 100,
    "required_departments": ["Anatomia Patologica Forense"],
  },
  {
    "id": 15,
    "name": "Identificazione personale e resti ossei",
    "description":
        "Aver partecipato a indagini in tema di **identificazione personale**.",
    "min_required_amount": 5,
    "required_departments": ["Identificazione Forense"],
  },
  {
    "id": 16,
    "name": "Indagini di tossicologia forense",
    "description": "Aver partecipato a **indagini tossicologiche**.",
    "min_required_amount": 10,
    "required_departments": ["Laboratorio di Tossicologia Forense"],
  },
  {
    "id": 17,
    "name": "Indagini di genetica forense",
    "description": "Aver partecipato a **indagini genetiche**.",
    "min_required_amount": 10,
    "required_departments": ["Laboratorio di Genetica Forense"],
  },

  // --- E. Frequenze in Istituzioni e Servizi (Qualitative) ---
  {
    "id": 18,
    "name": "Frequenza istituzionale INPS",
    "description":
        "Aver frequentato, per almeno **2 mesi**, una sede **I.N.P.S**.",
    "min_required_amount": 0,
    "required_departments": ["Frequenza INPS"],
  },
  {
    "id": 19,
    "name": "Frequenza istituzionale INAIL",
    "description":
        "Aver frequentato, per almeno **2 mesi**, una sede **I.N.A.I.L**.",
    "min_required_amount": 0,
    "required_departments": ["Frequenza INAIL"],
  },
  {
    "id": 20,
    "name": "Frequenza Medicina Legale territoriale",
    "description":
        "Aver partecipato per almeno **2 mesi** alle attività di un **servizio di Medicina Legale in un’Azienda Sanitaria Locale**, prendendo parte a tutte le attività svolte di medicina legale e medicina sociale.",
    "min_required_amount": 0,
    "required_departments": ["Frequenza Servizio Medicina Legale ASL"],
  },
  {
    "id": 21,
    "name": "Risk management e medicina legale ospedaliera",
    "description":
        "Aver frequentato per almeno **4 mesi un servizio di Medicina Legale ospedaliera**, prendendo parte ad almeno **50 consulenze e/o accertamenti di Medicina Legale** (es. accertamento della morte a scopo di trapianto; IVG; TSO; consenso informato) e partecipando a tutte le fasi di **gestione e definizione dei casi di responsabilità sanitaria** (compresi comitati di gestione e valutazione sinistri) nonché alle attività di gestione del rischio clinico, accreditamento istituzionale e certificazione della qualità.",
    "min_required_amount": 0,
    "required_departments": ["Frequenza Medicina Legale Ospedaliera"],
  },

  // --- F. Altre Attività Caratterizzanti (Qualitative) ---
  {
    "id": 22,
    "name": "Approfondimenti in scienze forensi",
    "description":
        "Altre attività caratterizzanti dello specialista in formazione utili all’acquisizione di specifiche ed avanzate conoscenze nell’ambito della tipologia di Medicina Legale sono nell’area di: patologia medico-legale e tanatologia; rischio clinico; bioetica e deontologia medica; medicina e chirurgia applicata a fattispecie di diritto; laboratorio medico-legale; tossicologia forense e biochimica forense; genetica forense; radiologia forense; criminologia e psicopatologia forense; entomologia forense; valutazione del danno alla persona; attività ambulatoriale specialistica; medicina sociale; frequenza in centri e/o laboratori ad elevata competenza specifica sia nazionali sia internazionali.",
    "min_required_amount": 0,
    "required_departments": [
      "Aree di Competenza Avanzata/Formazione Specialistica",
    ],
  },
];
