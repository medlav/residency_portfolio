// SPDX-License-Identifier: BSD-3-Clause
// Copyright (c) 2026 medlav

// AREA MEDICA SCIENZA DELL’ALIMENTAZIONE
const List<Map<String, dynamic>> kOfficialScienzeDellAlimentazioneActivities = [
  {
    "id": 1, "name": "Valutazione dello stato nutrizionale e metabolico",
    "description":
        "Aver eseguito direttamente valutazioni dello stato nutrizionale mediante: valutazione clinica (anamnesi medica), valutazione dell’assunzione energetica e dei nutrienti, rilevamento delle abitudini alimentari, valutazione dei bisogni energetici, identificazione dei livelli raccomandati in energia e nutrienti, individuazione dei Dietary reference intanke, valutazione della composizione corporea, valutazione metabolica. (Having directly performed nutritional status assessments through: clinical evaluation, evaluation of energy and nutrient intake, dietary habit detection, evaluation of energy needs, identification of recommended energy and nutrient levels, identification of Dietary Reference Intakes, body composition assessment, metabolic evaluation.)",
    "min_required_amount": 100, // 100/anno
    "required_departments": [],
  },
  {
    "id": 2, "name": "Gestione cartelle cliniche e antropometria",
    "description":
        "Aver redatto e controfirmato cartelle cliniche dei pazienti ricoverati o ambulatoriali seguiti personalmente; le cartelle debbono riportare un esame obiettivo completo, gli esami di laboratorio del caso, la valutazione antropometrica, la valutazione impedenziometrica, le prove di forza, la valutazione pressoria (Having drafted and countersigned clinical records for inpatients or outpatients personally followed; the records must include a complete objective examination, the laboratory tests, anthropometric evaluation, impedentiometric evaluation, strength tests, and blood pressure assessment.)",
    "min_required_amount": 100, // 100/anno
    "required_departments": [],
  },
  {
    "id": 3, "name": "Interventi dietetici per patologie correlate",
    "description":
        "Aver predisposto direttamente almeno n.100/anno di interventi dietetico-nutrizionali personalizzati per le principali patologie correlate all’alimentazione (diabete mellito, dislipidemie, obesità, insufficienza epatica e renale, malnutrizione per difetto, disturbi del comportamento alimentare, ...) (Having directly prepared at least 100/year personalized dietetic-nutritional interventions for the main nutrition-related pathologies (diabetes mellitus, dyslipidemias, obesity, hepatic and renal insufficiency, malnutrition, eating disorders, ...))",
    "min_required_amount": 100, // 100/anno
    "required_departments": [],
  },
  {
    "id": 4, "name": "Nutrizione artificiale ospedaliera e domiciliare",
    "description":
        "Aver predisposto direttamente impostazione di regimi dietetici per via artificiale, ospedaliera e domiciliare (NAD), inclusa la valutazione dei fabbisogni, la prescrizione, la predisposizione delle linee di infusione e l'allestimento delle sacche, e il monitoraggio dell'intervento. (Having directly prepared diet regimes for artificial feeding, inpatient and home care (NAD), including needs assessment, prescription, preparation of infusion lines and bags, and intervention monitoring.)",
    "min_required_amount": 25, // 25/anno
    "required_departments": [],
  },
  {
    "id": 5, "name": "Prescrizione preparazioni galeniche nutrizionali",
    "description":
        "Aver prescritto preparazioni galeniche per la Nutrizione Artificiale (Having prescribed galenic preparations for Artificial Nutrition)",
    "min_required_amount": 5, // 5/anno
    "required_departments": [],
  },
  {
    "id": 6, "name": "Counselling nutrizionale e disturbi alimentari",
    "description":
        "Aver partecipato a counselling nutrizionali e dei disturbi del comportamento alimentare, in attività ambulatoriale (Having participated in nutritional and eating disorder counseling, in outpatient activity)",
    "min_required_amount": 5, // 5/anno
    "required_departments": ["attività ambulatoriale"],
  },
  {
    "id": 7, "name": "Piani dietetici basati sulla nutrigenomica",
    "description":
        "Aver predisposto direttamente piani dietetici personalizzati basati sull’interpretazione dei livelli di espressione dei geni coinvolti nello stato nutrizionale (nutrigenomica) (Having directly prepared personalized dietary plans based on the interpretation of gene expression levels involved in nutritional status (nutrigenomics))",
    "min_required_amount": 30, // 30/anno
    "required_departments": [],
  },
  {
    "id": 8, "name": "Piani dietetici basati sulla nutrigenetica",
    "description":
        "Aver predisposto direttamente piani dietetici personalizzati basati sull’interpretazione dei polimorfismi genetici coinvolti nello stato nutrizionale (nutrigenetica) (Having directly prepared personalized dietary plans based on the interpretation of genetic polymorphisms involved in nutritional status (nutrigenetics))",
    "min_required_amount": 30, // 30/anno
    "required_departments": [],
  },
  {
    "id": 9,
    "name": "Piani dietetici e analisi di tossicogenomica",
    "description":
        "Aver predisposto direttamente piani dietetici personalizzati basati sull’interpretazione di analisi di tossicogenomica (Having directly prepared personalized dietary plans based on the interpretation of toxicogenomic analyses)",
    "min_required_amount": 2,
    "required_departments": [],
  },
  {
    "id": 10, "name": "Utilizzo di dispositivi medici a base vegetale",
    "description":
        "Aver predisposto direttamente piani dietetici personalizzati che prevedano l’ utilizzo di dipositivi medici a base vegetale ( Reg. UE 47/2007, D.L. 37/2010) (Having directly prepared personalized dietary plans that include the use of plant-based medical devices)",
    "min_required_amount": 5, // 5/anno
    "required_departments": [],
  },
  {
    "id": 11, "name": "Utilizzo di prodotti per alimentazione particolare",
    "description":
        "Aver predisposto direttamente piani dietetici che prevedano utilizzo di prodotti destinati ad una alimentazione particolare, secondo le nuove normative che disciplinano le indicazioni nutrizionali ( Reg. UE 39/2009 e successive modifiche) (Having directly prepared dietary plans that include the use of products intended for particular nutrition, according to the new regulations governing nutritional indications)",
    "min_required_amount": 5, // 5/anno
    "required_departments": [],
  },
  {
    "id": 12, "name": "Integrazione di Novel Food nei piani dietetici",
    "description":
        "Aver predisposto direttamente piani dietetici che prevedano utilizzo di Novel Food, ovvero alimenti e ingredienti non ancora utilizzati “in misura significativa per il consumo umano”, ricadenti nelle categorie previste dal Reg. UE 258/97 (Having directly prepared dietary plans that include the use of Novel Foods, i.e., foods and ingredients not yet used 'to a significant extent for human consumption')",
    "min_required_amount": 5, // 5/anno
    "required_departments": [],
  },
  {
    "id": 13, "name": "Utilizzo di Botanicals nei piani dietetici",
    "description":
        "Aver predisposto direttamente piani dietetici personalizzati che prevedano l’ utilizzo dei Botanicals, secondo la normativa comunitaria vigente (Reg. UE 24/2004 e successive modifiche) (Having directly prepared personalized dietary plans that include the use of Botanicals, according to current community regulations)",
    "min_required_amount": 5, // 5/anno
    "required_departments": [],
  },
  {
    "id": 14, "name": "Analisi indici qualità ed etichettatura alimenti",
    "description":
        "Aver effettuato analisi degli Indici di Qualità Nutrizionale degli alimenti, dei piani dietetici e dei requisiti di composizione e di etichettatura degli alimenti (Having performed analysis of Nutritional Quality Indices of foods, dietary plans, and composition and labeling requirements of foods)",
    "min_required_amount": 100, // 100/anno
    "required_departments": [],
  },
  {
    "id": 15, "name": "Protocolli di epidemiologia della nutrizione",
    "description":
        "Preparazione di protocolli di studio di epidemiologia della nutrizione (Preparation of nutritional epidemiology study protocols)",
    "min_required_amount": 2, // 2/anno
    "required_departments": [],
  },
  {
    "id": 16, "name": "Determinazione capacità antiossidante totale",
    "description":
        "Aver interpretato determinazioni della capacità antiossidante totale (metodiche varie) su plasma e alimenti; 10/anno ciascuna (Having interpreted determinations of total antioxidant capacity (various methods) on plasma and foods; 10/year each)",
    "min_required_amount": 10, // 10/anno ciascuna
    "required_departments": [],
  },
  {
    "id": 17, "name": "Interpretazione test immunoenzimatici",
    "description":
        "Aver interpretato test di dosaggi immunoenzimatici (Having interpreted immunoenzymatic assay tests)",
    "min_required_amount": 10, // 10/anno
    "required_departments": [],
  },
  {
    "id": 18,
    "name": "Piani di allerta sicurezza alimentare (RASFF)",
    "description":
        "Avere allestito almeno un piano di allerta di sicurezza alimentare (secondo la rete RASFF) in conformità con il “pacchetto igiene” e con il Regolamento Europeo n. 16/2011 (Having prepared at least one food safety alert plan (according to the RASFF network) in conformity with the 'hygiene package' and European Regulation No. 16/2011)",
    "min_required_amount": 1,
    "required_departments": [],
  },
  {
    "id": 19,
    "name": "Piani di autocontrollo sistema HACCP",
    "description":
        "Avere predisposto piani di autocontrollo secondo il sistema HACCP- Hazard Analysis and Critical Control Point (HACCP Reg CE 852/2004) per assicurare un livello standardizzato di sicurezza dei prodotti alimentari (Having prepared self-control plans according to the HACCP system to ensure a standardized level of food safety)",
    "min_required_amount": 2,
    "required_departments": [],
  },
  {
    "id": 20,
    "name": "Sviluppo protocolli clinici sistema NHACCP",
    "description":
        "Avere allestito almeno n.1 protocollo clinico secondo un sistema NHACCP -Nutrient Hazard Analysis and Critical Control Point come definito dal Piano strategico per l’innovazione del Ministero delle Politiche Agricole Alimentari e Forestali (luglio 2014) (Having prepared at least one clinical protocol according to an NHACCP system - Nutrient Hazard Analysis and Critical Control Point)",
    "min_required_amount": 1,
    "required_departments": [],
  },
  {
    "id": 21,
    "name": "Conduzione di sperimentazioni cliniche",
    "description":
        "Aver seguito direttamente la conduzione, secondo le norme della buona pratica clinica, di sperimentazioni cliniche (Having directly followed the conduct of clinical trials, according to good clinical practice norms)",
    "min_required_amount": 4,
    "required_departments": [],
  },
  {
    "id": 22,
    "name": "Tracciabilità sementi e mangimi per uso umano",
    "description":
        "Avere allestito almeno n.1 protocollo per la tracciabilità di sementi e mangimi destinati ad animali per consumo umano (Having prepared at least one protocol for the traceability of seeds and feed intended for animals for human consumption)",
    "min_required_amount": 1,
    "required_departments": [],
  },
  {
    "id": 23,
    "name": "Gestione banche dati nutrizionali informatiche",
    "description":
        "Aver gestito una banca dati di carattere nutrizionale su sistema informatico (Having managed a nutritional database on an IT system)",
    "min_required_amount": 1,
    "required_departments": [],
  },
  {
    "id": 24,
    "name": "Sviluppo protocolli epidemiologici nutrizionali",
    "description":
        "Avere preparato protocolli di studio di epidemiologia della nutrizione (Having prepared nutritional epidemiology study protocols)",
    "min_required_amount": 2,
    "required_departments": [],
  },
];
