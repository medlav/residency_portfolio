// SPDX-License-Identifier: BSD-3-Clause
// Copyright (c) 2026 medlav

// AREA MEDICA MEDICINA DI COMUNITÀ E DELLE CURE PRIMARIE
const List<Map<String, dynamic>>
kOfficialMedicinaDiComunitaECurePrimarieActivities = [
  {
    "id": 1,
    "name": "Attività clinica in Area Medica e Specialistica",
    "description":
        "Avere svolto attività assistenziale nei reparti dell’Area Medica, delle classi di Medicina Generale, di Specialità Mediche, di Pediatria, e di Neuroscienze. Durante il suddetto periodo dovrà aver partecipato direttamente alle attività assistenziali riferite ai pazienti, compresi le valutazioni della situazione clinica complessiva, degli aspetti funzionali e di autonomia del paziente, anche in relazione al suo ambiente di vita (Having performed care activities in the departments of the Medical Area, General Medicine classes, Medical Specialties, Pediatrics, and Neurosciences. During this period, the specialist must have participated directly in patient care activities, including evaluations of the overall clinical situation, functional aspects, and patient autonomy, also in relation to their living environment)",
    "min_required_amount": 100,
    "required_departments": [
      "Area Medica",
      "Medicina Generale",
      "Specialità Mediche",
      "Pediatria",
      "Neuroscienze",
    ],
  },
  {
    "id": 2,
    "name": "Piani di dimissione protetta",
    "description":
        "Aver partecipato direttamente alle stesure di piani di dimissioni ospedaliere protette per pazienti con necessità di continuità assistenziale territoriale (Having participated directly in drafting protected hospital discharge plans for patients needing territorial continuity of care)",
    "min_required_amount": 20,
    "required_departments": [],
  },
  {
    "id": 3,
    "name": "Servizi di emergenza e continuità territoriale",
    "description":
        "Avere compiuto turni in servizi per l’urgenza ed emergenza come strutture di Pronto Soccorso medico-chirurgico, generale e/o pediatrico, nei servizi di 118 e di continuità assistenziale territoriale (Having completed shifts in urgency and emergency services such as medical-surgical, general and/or pediatric Emergency Room facilities, in 118 services, and territorial continuity of care services)",
    "min_required_amount": 20,
    "required_departments": [
      "Pronto Soccorso medico-chirurgico, generale e/o pediatrico",
      "servizi di 118",
      "continuità assistenziale territoriale",
    ],
  },
  {
    "id": 4,
    "name": "Assistenza presso MMG e cure domiciliari",
    "description":
        "Avere effettuato attività assistenziale presso studi di Medici di Medicina Generale, avendo partecipato personalmente alle attività di assistenza di pazienti, compreso: - l’esecuzione di almeno 120 visite domiciliari; - il coinvolgimento in almeno 80 piani di assistenza domiciliare integrata; - la partecipazione ad almeno 30 Unità Valutative Multidimensionali (Having performed care activities at General Practitioners' offices, having personally participated in patient care activities, including: - the execution of at least 120 home visits; - involvement in at least 80 integrated home care plans; - participation in at least 30 Multidimensional Evaluation Units)",
    "min_required_amount": 360,
    "required_departments": ["Studi di Medici di Medicina Generale"],
  },
  {
    "id": 5,
    "name": "Salute materno-infantile e pediatria di libera scelta",
    "description":
        "Avere effettuato attività assistenziale a favore di minori con bisogni speciali e famiglie vulnerabili e multiproblematiche, sia presso Strutture territoriali per la salute Materno-Infantile con presa in carico di almeno 30 pazienti affetti da malattie croniche, rare, disabilità e/o noti per condizioni di maltrattamento o scarsa tutela, sia presso gli studi dei Pediatri di Libera Scelta avendo seguito le attività assistenziali di almeno 20 pazienti pediatrici (Having performed care activities for minors with special needs and vulnerable and multi-problematic families, both at territorial structures for Maternal-Child health with management of at least 30 patients affected by chronic diseases, rare diseases, disabilities and/or known for conditions of abuse or poor protection, and at the offices of the Family Pediatricians having followed the care activities of at least 20 pediatric patients)",
    "min_required_amount": 50,
    "required_departments": [
      "Strutture territoriali per la salute Materno-Infantile",
      "studi dei Pediatri di Libera Scelta",
    ],
  },
  {
    "id": 6,
    "name": "Assistenza in strutture residenziali e semiresidenziali",
    "description":
        "Avere effettuato attività assistenziale presso strutture residenziali intermedie non ospedaliere e strutture semiresidenziali, quali ospedali di comunità, hospice, RSA, strutture riabilitative semiresidenziali, con presa in carico di pazienti (Having performed care activities at non-hospital intermediate residential structures and semi-residential structures, such as community hospitals, hospices, RSA, semi-residential rehabilitation structures, with patient management)",
    "min_required_amount": 50,
    "required_departments": [
      "ospedali di comunità",
      "hospice",
      "RSA",
      "strutture riabilitative semiresidenziali",
    ],
  },
  {
    "id": 7,
    "name": "Salute mentale e contrasto alle dipendenze",
    "description":
        "Avere effettuato attività assistenziale presso strutture per la salute mentale e di contrasto alle dipendenze, con la partecipazione alla presa in carico di pazienti (Having performed care activities at mental health and addiction counteraction structures, with participation in patient management)",
    "min_required_amount": 20,
    "required_departments": [
      "Strutture per la salute mentale",
      "Strutture di contrasto alle dipendenze",
    ],
  },
  {
    "id": 8,
    "name": "Assistenza presso strutture per disabili",
    "description":
        "Aver effettuato attività assistenziale presso strutture per disabili, con presa in carico di pazienti (Having performed care activities at structures for the disabled, with patient management)",
    "min_required_amount": 20,
    "required_departments": ["Strutture per disabili"],
  },
  {
    "id": 9,
    "name": "Gestione percorsi assistenziali pazienti complessi",
    "description":
        "Nello stesso periodo dovrà aver seguito i percorsi assistenziali di pazienti complessi (During the same period, the specialist must have followed the care pathways of complex patients)",
    "min_required_amount": 30,
    "required_departments": [],
  },
  {
    "id": 10,
    "name": "Pianificazione dimissioni ospedaliere protette",
    "description":
        "Lo specializzando deve inoltre acquisire esperienze nei seguenti ambiti professionali: - dimissioni ospedaliere protette: conoscenza approfondita e acquisizione dei metodi appropriati per organizzare, gestire e verificare interventi di dimissione ospedaliera di pazienti richiedenti continuità assistenziale sul territorio. A tal fine lo specializzando deve avere partecipato alla pianificazione di interventi di dimissione ospedaliera con accesso programmato in assistenza domiciliare o residenziale (The specialist must also acquire experience in the following professional areas: - protected hospital discharge: in-depth knowledge and acquisition of appropriate methods to organize, manage, and verify hospital discharge interventions for patients requiring continuity of care in the territory. To this end, the specialist must have participated in the planning of hospital discharge interventions with programmed access to home or residential care)",
    "min_required_amount": 20,
    "required_departments": [],
  },
  {
    "id": 11,
    "name": "Organizzazione Assistenza Domiciliare Integrata (ADI)",
    "description":
        "Lo specializzando deve inoltre acquisire esperienze nei seguenti ambiti professionali: - assistenza Domiciliare Integrata: conoscenza approfondita e acquisizione dei metodi appropriati per organizzare, gestire e verificare interventi di assistenza domiciliare medica, infermieristica e socio-assistenziale fra loro coordinati. A tal fine lo specializzando deve avere partecipato alla pianificazione di interventi di ADI socio-sanitaria (The specialist must also acquire experience in the following professional areas: - Integrated Home Care: in-depth knowledge and acquisition of appropriate methods to organize, manage, and verify coordinated medical, nursing, and social-assistance home care interventions. To this end, the specialist must have participated in the planning of integrated socio-sanitary home care interventions (ADI))",
    "min_required_amount": 10,
    "required_departments": [],
  },
  {
    "id": 12,
    "name": "Gestione reti territoriali per pazienti fragili",
    "description":
        "Lo specializzando deve inoltre acquisire esperienze nei seguenti ambiti professionali: - gestione dei pazienti complessi nella rete dei servizi: conoscenza approfondita e acquisizione dei metodi appropriati per organizzare, gestire e verificare attività integrate per la presa in carico globale di anziani, malati psichiatrici, disabili, famiglie multiproblematiche nella rete dei servizi territoriali, collegati al bisogno con l’ospedale. A tal fine lo specializzando deve avere partecipato alla pianificazione di interventi ed averne seguito l’evoluzione nel tempo (The specialist must also acquire experience in the following professional areas: - management of complex patients in the service network: in-depth knowledge and acquisition of appropriate methods to organize, manage, and verify integrated activities for the global management of the elderly, psychiatric patients, disabled individuals, multi-problematic families in the territorial service network, connected to the hospital as needed. To this end, the specialist must have participated in the planning of interventions and followed their evolution over time)",
    "min_required_amount": 10,
    "required_departments": ["rete dei servizi territoriali"],
  },
  {
    "id": 13,
    "name": "Implementazione qualità nei servizi primari",
    "description":
        "Lo specializzando deve inoltre acquisire esperienze nei seguenti ambiti professionali: - implementazione della qualità nei servizi primari: conoscenza e acquisizione dei metodi appropriati per programmare e attuare interventi di miglioramento della qualità di servizi primari domiciliari, ambulatoriali, semiresidenziali, residenziali. A tal fine lo specializzando deve avere partecipato alla pianificazione e sviluppo di interventi di sviluppo della Qualità (The specialist must also acquire experience in the following professional areas: - quality implementation in primary services: knowledge and acquisition of appropriate methods to program and implement quality improvement interventions for primary home, outpatient, semi-residential, and residential services. To this end, the specialist must have participated in the planning and development of Quality development interventions)",
    "min_required_amount": 5,
    "required_departments": [
      "servizi primari domiciliari, ambulatoriali, semiresidenziali, residenziali",
    ],
  },
  {
    "id": 14,
    "name": "Programmazione e verifica percorsi di cura",
    "description":
        "Aver partecipato ad attività di programmazione, organizzazione, gestione e verifica di percorsi di diagnostica, trattamento e presa in carico, centrati sul sistema delle cure primarie e sulla continuità assistenziale tra i diversi ambienti di cura e di vita. (Having participated in programming, organization, management, and verification activities for diagnostic, treatment, and management pathways, centered on the primary care system and continuity of care between different care and living environments.)",
    "min_required_amount": 0,
    "required_departments": ["sistema delle cure primarie"],
  },
  {
    "id": 15,
    "name": "Gestione flussi informativi e sistemi sanitari",
    "description":
        "Nello stesso periodo dovrà avere partecipato alla progettazione e gestione dei flussi informativi nell’ambito della rete delle cure primarie e dei sistemi informativi sanitari regionali (During the same period, the specialist must have participated in the design and management of information flows within the primary care network and regional health information systems)",
    "min_required_amount": 0,
    "required_departments": [
      "rete delle cure primarie",
      "sistemi informativi sanitari regionali",
    ],
  },
  {
    "id": 16,
    "name": "Management, budget ed educazione alla salute",
    "description":
        "Nello stesso periodo dovrà avere partecipato ad azioni atte alla gestione, valorizzazione e formazione del personale, alla stesura e discussione di piani di budget, piani di formazione e riorganizzazione dei servizi, a progetti tesi alla verifica e/o all’incremento della qualità degli interventi della rete di assistenza primaria, a progettazione, esecuzione e valutazione di interventi di educazione alla salute di tipo comunitario. (During the same period, the specialist must have participated in actions aimed at personnel management, enhancement, and training, the drafting and discussion of budget plans, training and service reorganization plans, projects aimed at verifying and/or increasing the quality of primary care network interventions, and the design, execution, and evaluation of community-based health education interventions.)",
    "min_required_amount": 0,
    "required_departments": ["rete di assistenza primaria"],
  },
];
