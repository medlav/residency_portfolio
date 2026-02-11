// SPDX-License-Identifier: BSD-3-Clause
// Copyright (c) 2026 medlav

// AREA ANATOMIA PATOLOGICA
const List<Map<String, dynamic>> kOfficialAnatomiaPatologicaActivities = [
  // Attività quantificate con un numero minimo (N)
  {
    "id": 1,
    "name": "Riscontri diagnostici necroscopici e studio istopatologico",
    "description":
        "Aver effettuato (e certificato) riscontri diagnostici necroscopici, ivi compreso il relativo studio istopatologico (Having performed (and certified) necroscopic diagnostic findings, including the related histopathological study)",
    "min_required_amount": 40,
    "required_departments": ["Sala Settoria"],
  },
  {
    "id": 2,
    "name": "Descrizione macroscopica e campionamento di pezzi operatori",
    "description":
        "Aver effettuato (e certificato) la descrizione macroscopica ed il campionamento di pezzi operatori (Having performed (and certified) the macroscopic description and sampling of surgical specimens)",
    "min_required_amount": 1200,
    "required_departments": ["Sala Macroscopia"],
  },
  {
    "id": 3,
    "name":
        "Diagnostica istopatologica (microscopia, immunoistochimica e biologia molecolare)",
    "description":
        "Aver effettuato (e certificato) la descrizione microscopica e la diagnosi istopatologica, con l'eventuale corredo di indagini istochimiche, immunoistochimiche, ultrastrutturali e di biologia molecolare, di casi (Having performed (and certified) the microscopic description and histopathological diagnosis, with the possible complement of histochemical, immunohistochemical, ultrastructural, and molecular biology investigations, of cases)",
    "min_required_amount": 4000,
    "required_departments": ["Microscopia Diagnostica", "Laboratorio Speciale"],
  },
  {
    "id": 4,
    "name": "Diagnostica citopatologica e citologia agoaspirativa (FNAC)",
    "description":
        "Aver effettuato (e certificato) la descrizione microscopica e la diagnosi citopatologica di casi, inclusi quelli di citologia aspirativa con ago sottile (Having performed (and certified) the microscopic description and cytopathological diagnosis of cases, including fine needle aspiration cytology cases)",
    "min_required_amount": 1600,
    "required_departments": ["Laboratorio Citopatologia"],
  },
  {
    "id": 5,
    "name": "Diagnostica intraoperatoria (esami estemporanei)",
    "description":
        "Aver effettuato (e certificato) la partecipazione all’allestimento e refertazione di casi di diagnosi intraoperatoria (Having performed (and certified) the participation in the preparation and reporting of intraoperative diagnosis cases)",
    "min_required_amount": 200,
    "required_departments": ["Diagnostica Intraoperatoria (Estemporanea)"],
  },
  {
    "id": 6,
    "name": "Diagnostica molecolare su lesioni tessutali",
    "description":
        "Aver effettuato (e certificato) la partecipazione all’allestimento e refertazione di casi di diagnosi molecolari su lesioni tessutali (Having performed (and certified) the participation in the preparation and reporting of molecular diagnosis cases on tissue lesions)",
    "min_required_amount": 50,
    "required_departments": ["Laboratorio Biologia Molecolare"],
  },

  // Attività non quantificate con N, ma obbligatorie per l'addestramento (Conoscenze e Competenze)
  {
    "id": 7,
    "name":
        "Correlazione clinico-morfologica e meccanismi dei processi morbosi",
    "description":
        "Possedere una conoscenza approfondita dei segni, sintomi e meccanismi dei processi morbosi, nonché della correlazione tra quadri clinici e morfologici. Conoscere il background scientifico della patologia in termini di meccanismi della malattia, criteri diagnostici e significato clinico (Possess in-depth knowledge of the signs, symptoms, and mechanisms of morbid processes, as well as the correlation between clinical and morphological pictures. Know the scientific background of pathology in terms of disease mechanisms, diagnostic criteria, and clinical significance)",
    "min_required_amount": 0,
    "required_departments": [],
  },
  {
    "id": 8,
    "name": "Documentazione macroscopica e iconografica dei campioni",
    "description":
        "Essere in grado di effettuare descrizioni macroscopiche dei campioni, documentando adeguatamente gli elementi diagnostici essenziali, ed utilizzando ove necessarie, tecniche di documentazione iconografica (Be able to perform macroscopic descriptions of samples, adequately documenting essential diagnostic elements, and using iconographic documentation techniques where necessary)",
    "min_required_amount": 0,
    "required_departments": ["Sala Macroscopia"],
  },
  {
    "id": 9,
    "name": "Campionatura di pezzi chirurgici secondo linee guida",
    "description":
        "Saper eseguire la campionatura dei pezzi chirurgici per l’esame istologico seguendo le linee guida riconosciute (Know how to sample surgical specimens for histological examination following recognized guidelines)",
    "min_required_amount": 0,
    "required_departments": ["Sala Macroscopia"],
  },
  {
    "id": 10,
    "name": "Integrazione clinico-patologica nell'esame dei preparati",
    "description":
        "Esaminare i preparati istologici e citologici con un approccio logico e coerente, prendendo in considerazione le notizie cliniche ed i quesiti specifici posti dal medico richiedente (Examine histological and cytological preparations with a logical and coherent approach, considering clinical information and specific questions posed by the requesting physician)",
    "min_required_amount": 0,
    "required_departments": ["Microscopia Diagnostica"],
  },
  {
    "id": 11,
    "name": "Redazione di referti istocitopatologici chiari e completi",
    "description":
        "Saper descrivere i quadri patologici in modo conciso e dettagliato, focalizzandosi sulle osservazioni finalizzate alla formulazione di un referto completo, chiaro e comprensibile (Know how to describe pathological pictures concisely and detailedly, focusing on observations aimed at formulating a complete, clear, and understandable report)",
    "min_required_amount": 0,
    "required_departments": ["Refertazione"],
  },
  {
    "id": 12,
    "name": "Patologia digitale e virtual imaging",
    "description":
        "Saper utilizzare le metodiche di digitalizzazione dei preparati istologici, ed essere consapevole delle applicazioni della virtual imaging nel campo delle consulenze diagnostiche esterne ed in ambito didattico (Know how to use methods for digitizing histological preparations, and be aware of the applications of virtual imaging in external diagnostic consultations and teaching)",
    "min_required_amount": 0,
    "required_departments": ["Patologia Digitale/Virtual Imaging"],
  },
  {
    "id": 13,
    "name":
        "Gestione e interpretazione di indagini supplementari (istochimica e biomolecolare)",
    "description":
        "Essere in grado di richiedere e di interpretare le appropriate indagini supplementari (colorazioni istochimiche, immunoistochimiche, indagini biomolecolari) qualora siano necessarie per la formulazione del referto (Be able to request and interpret appropriate supplementary investigations (histochemical stains, immunohistochemical stains, biomolecular investigations) when necessary for report formulation)",
    "min_required_amount": 0,
    "required_departments": ["Laboratorio Speciale"],
  },
  {
    "id": 14,
    "name": "Regolamentazione giuridica della medicina necroscopica",
    "description":
        "Conoscere ed applicare la regolamentazione giuridica della medicina necroscopica (Know and apply the legal regulation of necroscopic medicine)",
    "min_required_amount": 0,
    "required_departments": ["Medicina Legale"],
  },
  {
    "id": 15,
    "name": "Esecuzione autonoma di necroscopia e formulazione epicrisi",
    "description":
        "Essere in grado di eseguire in maniera autonoma un riscontro diagnostico necroscopico completo e di formulare una corretta epicrisi (Be able to autonomously perform a complete necroscopic diagnostic finding and formulate a correct epicrisis)",
    "min_required_amount": 0,
    "required_departments": ["Sala Settoria"],
  },
  {
    "id": 16,
    "name": "Aspetti medico-legali e protezione dati sensibili",
    "description":
        "Essere consapevole delle implicazioni medico-legali della custodia dei campioni e dei referti, nonché della protezione dei dati sensibili (Be aware of the medico-legal implications of sample and report custody, as well as the protection of sensitive data)",
    "min_required_amount": 0,
    "required_departments": ["Archivio/Segreteria"],
  },
  {
    "id": 17,
    "name": "Turni di diagnostica supervisionata nella rete formativa",
    "description":
        "L’attività professionalizzante prevede turni di diagnostica nel contesto della rete formativa della Scuola, con la supervisione dei docenti della disciplina. (Professionalizing activity involves diagnostic shifts within the School's training network, with the supervision of discipline professors.)",
    "min_required_amount": 0,
    "required_departments": [],
  },
  {
    "id": 18,
    "name": "Apprendimento pratico di diagnostica autoptica in sala settoria",
    "description":
        "L’apprendimento della diagnostica autoptica prevede la frequentazione della sala settoria e l’esecuzione di riscontri diagnostici autoptici con la supervisione del docente (Learning autoptic diagnostics involves attending the autopsy room and performing autoptic diagnostic findings under the professor's supervision)",
    "min_required_amount": 0,
    "required_departments": ["Sala Settoria"],
  },
];
