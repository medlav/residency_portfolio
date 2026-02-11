// SPDX-License-Identifier: BSD-3-Clause
// Copyright (c) 2026 medlav

// AREA ANESTESIA RIANIMAZIONE, TERAPIA INTENSIVA E DEL DOLORE
const List<Map<String, dynamic>> kOfficialAnestesiaRianimazioneActivities = [
  // --- A. ANESTESIA E MEDICINA PERIOPERATORIA (Quantificate) ---
  {
    "id": 1,
    "name": "Visite preoperatorie",
    "description":
        "Aver partecipato alla discussione preoperatoria ed alla valutazione del rischio di casi clinici",
    "min_required_amount": 1000,
    "required_departments": ["Ambulatorio Pre-operatorio"],
  },
  {
    "id": 2,
    "name": "Trattamento preoperatorio complesso",
    "description":
        "Aver preso parte, anche collaborando con specialisti di altre discipline, al trattamento preoperatorio di casi affetti da patologie che possano procrastinare l'atto chirurgico di elezione",
    "min_required_amount": 50,
    "required_departments": ["Day Hospital/Reparto Medico"],
  },
  {
    "id": 3,
    "name": "Anestesia generale e specialistica",
    "description":
        "Aver trattato pazienti, compresi quelli in età neonatale e pediatrica ed in età molto avanzata (Totale casi trattati: 1000)",
    "min_required_amount": 1000,
    "required_departments": ["Sala Operatoria (SO)", "Area Anestesiologica"],
  },
  {
    "id": 4,
    "name": "Procedure di sedazione",
    "description": "Aver trattato pazienti (sub-attività): sedazioni",
    "min_required_amount": 50,
    "required_departments": ["SO", "NORA/MAC"],
  },
  {
    "id": 5,
    "name": "Anestesie generali",
    "description": "Aver trattato pazienti (sub-attività): anestesie generali",
    "min_required_amount": 500,
    "required_departments": ["SO"],
  },
  {
    "id": 6,
    "name": "Anestesie peridurali",
    "description":
        "Aver trattato pazienti (sub-attività): anestesie peridurali",
    "min_required_amount": 25,
    "required_departments": ["SO"],
  },
  {
    "id": 7,
    "name": "Anestesie subaracnoidee",
    "description":
        "Aver trattato pazienti (sub-attività): anestesie subaracnoidee",
    "min_required_amount": 50,
    "required_departments": ["SO"],
  },
  {
    "id": 8,
    "name": "Blocchi nervosi periferici",
    "description":
        "Aver trattato pazienti (sub-attività): blocchi nervosi periferici",
    "min_required_amount": 20,
    "required_departments": ["SO", "Terapia del Dolore"],
  },
  {
    "id": 9,
    "name": "Anestesia in Chirurgia Generale",
    "description": "Aver trattato pazienti (minimi per Chirurgia Generale)",
    "min_required_amount": 100,
    "required_departments": ["SO Chirurgia Generale"],
  },
  {
    "id": 10,
    "name": "Anestesia in Ostetricia e Ginecologia",
    "description":
        "Aver trattato pazienti (minimi per Ostetricia e Ginecologia, di cui almeno 10 parti cesarei)",
    "min_required_amount": 30,
    "required_departments": ["SO Ostetricia/Sala Parto"],
  },
  {
    "id": 11,
    "name": "Anestesia in Chirurgia Ortopedica",
    "description": "Aver trattato pazienti (minimi per Chirurgia ortopedica)",
    "min_required_amount": 30,
    "required_departments": ["SO Chirurgia Ortopedica"],
  },
  {
    "id": 12,
    "name": "Anestesia in Otorinolaringoiatria",
    "description": "Aver trattato pazienti (minimi per Otorinolaringoiatria)",
    "min_required_amount": 20,
    "required_departments": ["SO Otorinolaringoiatria"],
  },
  {
    "id": 13,
    "name": "Procedure in chirurgie specialistiche",
    "description":
        "Aver praticato procedure anestesiologiche distribuite tra Chirurgia Pediatrica, Neurochirurgia, Chirurgia toracico-cardio-vascolare, Oftalmochirurgia, Urologia, Chirurgia plastica",
    "min_required_amount": 100,
    "required_departments": ["SO Specialistiche"],
  },
  {
    "id": 14,
    "name": "Follow-up e dolore postoperatorio",
    "description":
        "Aver seguito il decorso postoperatorio di casi clinici, prevenendo e trattando correttamente il dolore acuto, la nausea/vomito postoperatorio, oltre che partecipando al follow-up postoperatorio e alla gestione delle criticità",
    "min_required_amount": 300,
    "required_departments": [
      "PACU (Post-Anaesthesia-Care Unit)",
      "Ambulatorio Post-Operatorio",
    ],
  },
  // --- A. ANESTESIA E MEDICINA PERIOPERATORIA (Qualitative, incomplete list in source text) ---
  {
    "id": 15,
    "name": "Gestione del rischio clinico e ANTS",
    "description":
        "Conoscere le strategie di gestione del rischio clinico, acquisendo skills e ANTS anche grazie all’utilizzo della simulazione, anche ad alta fedeltà. (*)",
    "min_required_amount": 0,
    "required_departments": ["Simulazione/Gestione del Rischio"],
  },

  // --- B. MEDICINA CRITICA E DI EMERGENZA (Quantificate) ---
  {
    "id": 16,
    "name": "RCP base adulto",
    "description":
        "Aver partecipato a rianimazioni cardiopolpolari (RCP) di base in soggetti adulti (*)",
    "min_required_amount": 20,
    "required_departments": ["Dipartimento di Emergenza/Urgenza"],
  },
  {
    "id": 17,
    "name": "RCP avanzata adulto",
    "description":
        "Aver partecipato a rianimazioni cardiopolmonari RCP avanzate in soggetti adulti (*)",
    "min_required_amount": 20,
    "required_departments": ["Dipartimento di Emergenza/Urgenza"],
  },
  {
    "id": 18,
    "name": "RCP base pediatrica",
    "description":
        "Aver partecipato a rianimazioni cardiopolmonari (RCP) di base in età pediatrica (*)",
    "min_required_amount": 5,
    "required_departments": ["Emergenza Pediatrica"],
  },
  {
    "id": 19,
    "name": "RCP avanzata pediatrica",
    "description":
        "Aver partecipato a rianimazioni cardiopolmonari RCP avanzate in età pediatrica (*)",
    "min_required_amount": 5,
    "required_departments": ["Emergenza Pediatrica"],
  },
  {
    "id": 20,
    "name": "Posizionamento CVC",
    "description":
        "Aver posizionato cateteri venosi centrali, anche con tecnica ecoguidata",
    "min_required_amount": 50,
    "required_departments": ["Rianimazione/Terapia Intensiva (TI)", "SO"],
  },
  {
    "id": 21,
    "name": "Accessi arteriosi ed emogasanalisi",
    "description":
        "Aver posizionato agocannule arteriose e interpretato emogasanalisi arteriose",
    "min_required_amount": 100,
    "required_departments": ["Rianimazione/TI", "SO"],
  },
  {
    "id": 22,
    "name": "Toracentesi e drenaggi toracici",
    "description":
        "Aver praticato toracentesi con posizionamento di tubi toracostomici (*)",
    "min_required_amount": 5,
    "required_departments": ["Rianimazione/TI"],
  },
  {
    "id": 23,
    "name": "Trasporto del paziente critico",
    "description":
        "Aver partecipato al trasferimento intra- ed inter-ospedaliero di pazienti critici",
    "min_required_amount": 10,
    "required_departments": ["Trasporto Critico"],
  },
  // --- B. MEDICINA CRITICA E DI EMERGENZA (Qualitative, incomplete list in source text) ---
  {
    "id": 24,
    "name": "Ecografia in urgenza-emergenza",
    "description":
        "Aver partecipato all’impiego clinico di strumenti ecografici ed acquisito conoscenze di base sulle tecniche ultrasonografiche in urgenza-emergenza(*)",
    "min_required_amount": 0,
    "required_departments": ["Ecografia in Urgenza"],
  },

  // --- C. RIANIMAZIONE E TERAPIA INTENSIVA POLIVALENTE (Quantificate) ---
  {
    "id": 25,
    "name": "Trattamento del paziente critico",
    "description":
        "Aver preso parte al trattamento di pazienti critici nei diversi settori specialistici e nelle principali condizioni di interesse intensivistico (riconoscimento e padronanza degli aspetti specifici del monitoraggio, accessi vascolari, supporto cardiocircolatorio, accesso vie aeree, gestione apparecchiature, CRRT e assistenza respiratoria)",
    "min_required_amount": 100,
    "required_departments": ["TI Polivalente", "TI Specialistiche"],
  },
  // --- C. RIANIMAZIONE E TERAPIA INTENSIVA POLIVALENTE (Qualitative, incomplete list in source text) ---
  {
    "id": 26,
    "name": "Attività in Terapia Intensiva",
    "description":
        "Al termine del corso lo specializzando deve aver effettuato almeno due anni di attività professionalizzante in Rianimazione e Terapia Intensiva polivalente e specialistica",
    "min_required_amount": 0,
    "required_departments": ["TI Polivalente", "TI Specialistiche"],
  },

  // --- D. MEDICINA E TERAPIA DEL DOLORE – CURE PALLIATIVE (Quantificate) ---
  {
    "id": 27,
    "name": "Gestione dolore acuto postoperatorio",
    "description":
        "Al termine del corso lo specializzando dovrà aver gestito pazienti con dolore acuto postoperatorio nei diversi ambiti chirurgici",
    "min_required_amount": 50,
    "required_departments": ["Servizio Terapia del Dolore Acuto (APS)"],
  },
  {
    "id": 28,
    "name": "Gestione dolore cronico",
    "description":
        "Al termine del corso lo specializzando dovrà aver gestito pazienti con dolore cronico (inquadramento diagnostico, impostazione del piano terapeutico, valutazione efficacia del trattamento, follow-up)",
    "min_required_amount": 10,
    "required_departments": ["Ambulatorio Terapia del Dolore Cronico"],
  },
  {
    "id": 29,
    "name": "Peridurali antalgiche",
    "description":
        "Al termine del corso lo specializzando dovrà aver eseguito peridurali antalgiche",
    "min_required_amount": 25,
    "required_departments": ["Ambulatorio Terapia del Dolore Cronico"],
  },
  {
    "id": 30,
    "name": "Accessi spinali antalgici",
    "description":
        "Al termine del corso lo specializzando dovrà aver eseguito accessi spinali",
    "min_required_amount": 10,
    "required_departments": ["Ambulatorio Terapia del Dolore Cronico"],
  },
  {
    "id": 31,
    "name": "Blocchi nervosi antalgici",
    "description":
        "Al termine del corso lo specializzando dovrà aver eseguito blocchi nervosi periferici",
    "min_required_amount": 10,
    "required_departments": ["Ambulatorio Terapia del Dolore Cronico"],
  },

  // --- D. GESTIONE MULTIDISCIPLINARE DEL DOLORE (Qualitative continuation - Section 7) ---
  {
    "id": 32,
    "name": "Normativa terapia del dolore e cure palliative",
    "description":
        "Conoscenza della normativa relativa alla terapia del dolore e alle cure palliative (Legge 38/2010, Protocollo Intesa 25 luglio 2012) e successive integrazioni.",
    "min_required_amount": 0,
    "required_departments": ["Normativa/Etica"],
  },
  {
    "id": 33,
    "name": "Reti e percorsi di terapia del dolore",
    "description":
        "Conoscenza delle caratteristiche della rete di terapia del dolore e dei percorsi diagnostico terapeutici che garantiscono la continuità assistenziale tra i nodi della rete.",
    "min_required_amount": 0,
    "required_departments": ["Rete Terapia del Dolore"],
  },
  {
    "id": 34,
    "name": "Interventi di base e specialistici in cure palliative",
    "description":
        "Conoscenza degli interventi di base e specialistici delle cure palliative.",
    "min_required_amount": 0,
    "required_departments": ["Cure Palliative"],
  },
  {
    "id": 35,
    "name": "Tecniche farmacologiche e loco-regionali",
    "description":
        "Capacità di gestione farmacologica e non (tecniche anestesia locoregionale) del dolore acuto postoperatorio.",
    "min_required_amount": 0,
    "required_departments": ["Servizio Terapia del Dolore Acuto"],
  },
  {
    "id": 36,
    "name": "Tecniche interventistiche nel dolore cronico",
    "description":
        "Capacità di gestione farmacologica e non (tecniche di neuromodulazione spinale, tecniche di termolesione…) del dolore cronico.",
    "min_required_amount": 0,
    "required_departments": ["Terapia del Dolore Cronico Interventistica"],
  },
  {
    "id": 37,
    "name": "Diagnostica fisiopatologica del dolore",
    "description":
        "Capacità di diagnosticare i meccanismi fisiopatologici di dolore cronico.",
    "min_required_amount": 0,
    "required_departments": ["Ambulatorio Terapia del Dolore Cronico"],
  },
  {
    "id": 38,
    "name": "Fisiopatologia delle malattie croniche evolutive",
    "description":
        "Conoscenze dei principi fisiopatologici delle patologie ad andamento cronico ed evolutivo, per le quali non esistono terapie o quando queste siano inadeguate o inefficaci ai fini della stabilizzazione della malattia o per garantire la sopravvivenza per un periodo significativo.",
    "min_required_amount": 0,
    "required_departments": ["Cure Palliative"],
  },
  {
    "id": 39,
    "name": "Gestione dei sintomi nel fine vita",
    "description":
        "Capacità di gestire e modulare in modo appropriato i sintomi di un paziente con malattia in fase terminale.",
    "min_required_amount": 0,
    "required_departments": ["Cure Palliative"],
  },
  {
    "id": 40,
    "name": "Gestione multidisciplinare del dolore",
    "description":
        "Capacità di interazione multidisciplinare e multiprofessionale nella gestione integrata del paziente con dolore cronico e del malato in cure palliative.",
    "min_required_amount": 0,
    "required_departments": ["Team Multidisciplinare"],
  },
  {
    "id": 41,
    "name": "Comunicazione nel dolore e cure palliative",
    "description":
        "Capacità di comunicazione con i familiari e con il paziente affetto da dolore cronico o in cure palliative.",
    "min_required_amount": 0,
    "required_departments": ["Comunicazione/Etica"],
  },

  // --- E. TERAPIA IPERBARICA (Quantificate) ---
  {
    "id": 42,
    "name": "Medicina e terapia iperbarica",
    "description":
        "Al termine del Corso lo Specializzando deve aver preso parte alla valutazione, preparazione e gestione del trattamento (iperbarico) di pazienti",
    "min_required_amount": 20,
    "required_departments": ["Centro Terapia Iperbarica (CTI)"],
  },

  // --- F. TOSSICOLOGIA D’URGENZA (Quantificate) ---
  {
    "id": 43,
    "name": "Tossicologia d'urgenza",
    "description":
        "Deve aver seguito l'itinerario diagnostico e terapeutico di casi clinici di intossicazioni acute o avvelenamenti con insufficienza delle funzioni vitali",
    "min_required_amount": 10,
    "required_departments": ["Centro Antiveleni/TI Tossicologica"],
  },

  // --- G. COMPETENZE NON TECNICHE ANESTESIOLOGICHE (ANTS) (Qualitative, incomplete list in source text) ---
  {
    "id": 44,
    "name": "Competenze non tecniche (ANTS)",
    "description":
        "Devono essere acquisiti, anche attraverso tecniche di simulazione in situ e/o ad alta fedeltà, i principi delle competenze non tecniche anestesiologiche (Anaesthesia Non Tecnichal Skills), relazionali, interpersonali e organizzative, nei molti contesti dello sviluppo professionale, soprattutto nelle situazioni di crisi a potenziale rapida evoluzione clinica (*)",
    "min_required_amount": 0,
    "required_departments": ["Simulazione/Formazione ANTS"],
  },

  // --- H. QUALITA’, GESTIONE ED ECONOMIA SANITARIA, RICERCA, ETICA, E SVILUPPO DELLA PROFESSIONALITA’ (Qualitative, incomplete list in source text) ---
  {
    "id": 45,
    "name": "Qualità, economia ed etica sanitaria",
    "description":
        "Durante il percorso formativo lo specializzando deve acquisire le competenze per assicurare la qualità del proprio lavoro, così come una appropriata conoscenza nell’economia sanitaria, comprendendo i concetti statistici di base, quelli etici e quelli economici.",
    "min_required_amount": 0,
    "required_departments": ["Amministrazione/Formazione"],
  },
];
