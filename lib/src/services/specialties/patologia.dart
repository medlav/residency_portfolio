// SPDX-License-Identifier: BSD-3-Clause
// Copyright (c) 2026 medlav

// AREA PATOLOGIA CLINICA E BIOCHIMICA CLINICA
const List<Map<String, dynamic>> kOfficialPatologiaClinicaActivities = [
  // Attività quantificate con un numero minimo (N) - Diagnostica e Prelievi
  {
    "id": 1,
    "name": "Analisi decisionale e auditing clinico",
    "description":
        "Partecipazione, per quanto concerne i dati di laboratorio, all’attività diagnostica, all’analisi decisionale o all’auditing di casi clinici (Participation, concerning laboratory data, in diagnostic activity, decision analysis, or auditing of clinical cases)",
    "min_required_amount": 100,
    "required_departments": ["Laboratorio Analisi"],
  },
  {
    "id": 2,
    "name": "Tecniche di prelievo biologico",
    "description":
        "Prelievo di liquidi fisiologici e di elementi cellulari. Tecniche del prelievo venoso, arterioso, capillare (adulti, bambini, neonati). Aver eseguito prelievi di sangue. (Collection of physiological fluids and cellular elements. Venous, arterial, capillary sampling techniques. Having performed blood samplings.)",
    "min_required_amount": 150,
    "required_departments": ["Area Prelievi"],
  },
  {
    "id": 3,
    "name": "Determinazioni emocromocitometriche",
    "description":
        "Aver eseguito determinazioni di emocromi (Conoscenza approfondita dei sistemi automatici per la emocromocitometria). (Having performed blood count determinations. (In-depth knowledge of automated systems for hemocytometry).)",
    "min_required_amount": 200,
    "required_departments": ["Laboratorio Ematologia"],
  },
  {
    "id": 4,
    "name": "Attività nel laboratorio delle urgenze",
    "description":
        "Frequenza nella sezione del laboratorio delle urgenze (corrispondente a 40 turni di guardia diurna e notturna). (Attendance in the emergency laboratory section (corresponding to 40 day and night shifts).)",
    "min_required_amount": 40,
    "required_departments": ["Laboratorio Urgenze"],
  },
  {
    "id": 5,
    "name": "Ematologia e citofluorimetria",
    "description":
        "Frequenza in laboratori di ematologia di laboratorio, inclusa la citofluorimetria, nonché la lettura al microscopio di preparati di sangue periferico e midollo osseo. (Attendance in laboratory hematology labs, including flow cytometry, as well as microscopic reading of peripheral blood and bone marrow smears).",
    "min_required_amount": 150,
    "required_departments": ["Laboratorio Ematologia", "Citofluorimetria"],
  },
  {
    "id": 6, "name": "Analisi urine e parassitologia feci",
    "description":
        "Aver eseguito letture dei sedimenti urinari al microscopio (200 letture) e esami funzionali e parassitologici delle feci (30 esami funzionali). (Having performed microscopic readings of urinary sediments and functional and parasitological stool examinations.)",
    "min_required_amount": 200, // Usato il numero maggiore (letture)
    "required_departments": ["Laboratorio Chimica delle Urine/Feci"],
  },
  {
    "id": 7,
    "name": "Diagnostica immunologica e autoimmunità",
    "description":
        "Preparazione ed interpretazione di campioni per la determinazione e la titolazione di autoanticorpi (diagnostica delle patologie autoimmuni) con tecniche di immunofluorescenza. (Preparation and interpretation of samples for the determination and titration of autoantibodies (diagnosis of autoimmune diseases) using immunofluorescence techniques.)",
    "min_required_amount": 50,
    "required_departments": ["Laboratorio Immunologia"],
  },
  {
    "id": 8,
    "name": "Tecniche separative (Elettroforesi/HPLC)",
    "description":
        "Teoria e pratica delle tecniche di analisi e separazione elettroforetica e cromatografica con esecuzione di determinazioni (elettroforesi, immunoelettroforesi, cromatografia su strato sottile, in scambio ionico, in gascromatografia o in HPLC). (Theory and practice of electrophoretic and chromatographic separation and analysis techniques with performance of determinations.)",
    "min_required_amount": 100,
    "required_departments": ["Laboratorio Separazioni Analitiche"],
  },
  {
    "id": 9,
    "name": "Biochimica e biologia molecolare clinica",
    "description":
        "Frequenza in laboratori di biochimica, biologia molecolare e biochimica genetica applicate alla clinica. (Attendance in laboratories of biochemistry, molecular biology, and clinical applied genetic biochemistry.)",
    "min_required_amount": 500,
    "required_departments": ["Laboratorio Biochimica Clinica/Molecolare"],
  },
  {
    "id": 10,
    "name": "Microbiologia e virologia clinica",
    "description":
        "Frequenza in laboratori di microbiologia e virologia clinica. (Attendance in clinical microbiology and virology laboratories.)",
    "min_required_amount": 100,
    "required_departments": ["Laboratorio Microbiologia"],
  },
  {
    "id": 11,
    "name": "Grandi automazioni e spettrometria",
    "description":
        "Frequenza in laboratori di grandi automazioni analitiche (spettrometria di massa, N.M.R., etc.). (Attendance in laboratories for large analytical automations (mass spectrometry, N.M.R., etc.).)",
    "min_required_amount": 20,
    "required_departments": ["Laboratorio Automazioni Analitiche"],
  },
  {
    "id": 12, "name": "Immunoematologia e compatibilità",
    "description":
        "Determinazioni di gruppi sanguigni (50) e di compatibilità trasfusionale (50). (Determinations of blood groups and transfusion compatibility.)",
    "min_required_amount": 50, // Usato il numero per una delle due attività
    "required_departments": ["Immunoematologia/Centro Trasfusionale"],
  },
  {
    "id": 13,
    "name": "Ricerca anticorpi anti-eritrociti/piastrine",
    "description":
        "Ricerche e identificazione di anticorpi anti eritrocitari, antipiastrinici e antigranulocitari. (Research and identification of anti-erythrocyte, anti-platelet, and anti-granulocyte antibodies.)",
    "min_required_amount": 50,
    "required_departments": ["Immunoematologia"],
  },
  {
    "id": 14,
    "name": "Percorso trasfusionale e aferesi",
    "description":
        "Conoscenza teorica e pratica del percorso di donazione di sangue intero, donazione di emocomponenti mediante tecniche di aferesi e di autotrasfusione, terapia trasfusionale. (Theoretical and practical knowledge of the pathway for whole blood donation, component donation via apheresis, autotransfusion, and transfusion therapy.)",
    "min_required_amount": 30,
    "required_departments": ["Centro Trasfusionale/Servizio di Aferesi"],
  },
  {
    "id": 15,
    "name": "Diagnostica della coagulazione",
    "description":
        "Conoscenza approfondita dei principi di funzionamento dei sistemi analitici per la valutazione dei parametri della coagulazione e fibrinolisi. Partecipazione all’attività diagnostica di casi clinici. (In-depth knowledge of analytical systems for coagulation and fibrinolysis parameters. Participation in diagnostic activity of clinical cases.)",
    "min_required_amount": 100,
    "required_departments": ["Laboratorio Coagulazione"],
  },
  {
    "id": 16,
    "name": "Esame del liquido cefalo-rachidiano",
    "description":
        "Lettura di esami del liquido cefalo-rachidiani. (Reading of cerebrospinal fluid examinations.)",
    "min_required_amount": 10,
    "required_departments": ["Laboratorio Analisi"],
  },
  {
    "id": 17,
    "name": "Esame del liquido seminale",
    "description":
        "Lettura di esami del liquido seminale. (Reading of seminal fluid examinations.)",
    "min_required_amount": 50,
    "required_departments": ["Laboratorio Analisi"],
  },
  {
    "id": 18, "name": "Preparazione e lettura citopatologica",
    "description":
        "Preparazione di campioni citologici. Osservazione ed interpretazione diagnostica di preparati di citopatologia mediante lettura al microscopio, sistemi multimediali e telediagnostica. (Preparation of cytological samples. Observation and diagnostic interpretation of cytopathology smears.)",
    "min_required_amount": 100, // Usato il numero di campioni citologici
    "required_departments": ["Laboratorio Citopatologia"],
  },

  // Attività non quantificate con N, ma obbligatorie per l'addestramento (Conoscenze e Competenze/Durata)
  {
    "id": 19,
    "name": "Fisiopatologia generale dei sistemi",
    "description":
        "Conoscenza approfondita dei principi di fisiopatologia degli apparati, con riferimento allo studio delle modificazioni delle funzione organiche nel corso di una qualsiasi condizione patologica. (In-depth knowledge of the principles of pathophysiology of the systems, with reference to the study of functional modifications during any pathological condition.)",
    "min_required_amount": 0,
    "required_departments": [],
  },
  {
    "id": 20,
    "name": "Frequenza in laboratorio centralizzato",
    "description":
        "Frequenza in laboratorio di grande automazione. (Attendance in large automation laboratory.)",
    "min_required_amount": 0,
    "required_departments": ["Laboratorio Centrale"],
  },
  {
    "id": 21,
    "name": "Marcatori tumorali e oncologia molecolare",
    "description":
        "Frequenza in laboratori di metodologie per l’analisi sierologica di marcatori tumorali e conoscenza delle tecniche di diagnostica molecolare per la ricerca di recettori e marcatori tumorali. (Attendance in laboratories for serological analysis of tumor markers and knowledge of molecular diagnostic techniques for receptors and tumor markers.)",
    "min_required_amount": 0,
    "required_departments": ["Laboratorio Oncologia Molecolare"],
  },
  {
    "id": 22,
    "name": "Servizio multidisciplinare di diagnosi molecolare",
    "description":
        "Frequenza in un Servizio di Diagnosi Molecolare multidisciplinare (teoria e pratica delle tecniche di analisi e preparazione di campioni per sequenziatori, analisi molecolare di microrganismi, patologia genetica e oncologica). (Attendance in a multidisciplinary Molecular Diagnosis Service (theory and practice of analysis techniques, sample preparation for sequencers, molecular analysis of microorganisms, genetic and oncological pathology).)",
    "min_required_amount": 0,
    "required_departments": ["Servizio Diagnosi Molecolare"],
  },
  {
    "id": 23,
    "name": "Identificazione cellule tumorali circolanti",
    "description":
        "Conoscenza delle metodologie per identificazione di cellule tumoriali circolanti e di altri tipi cellulari. (Knowledge of methodologies for identifying circulating tumor cells and other cell types.)",
    "min_required_amount": 0,
    "required_departments": ["Laboratorio Speciale"],
  },
  {
    "id": 24, "name": "Farmacologia clinica e tossicologia",
    "description":
        "Frequenza in laboratori di farmacologia clinica e tossicologia per 2 settimane (50 ore). (Attendance in clinical pharmacology and toxicology laboratories for 2 weeks (50 hours).)",
    "min_required_amount": 0, // Requisito basato sulla durata
    "required_departments": ["Laboratorio Farmacologia/Tossicologia"],
  },
  {
    "id": 25,
    "name": "Biochimica cellulare e colture",
    "description":
        "Frequenza in laboratori di biochimica cellulare e colture cellulari (allestimento e gestione di colture cellulari). (Attendance in cellular biochemistry and cell culture laboratories (setup and management of cell cultures).)",
    "min_required_amount": 0,
    "required_departments": ["Laboratorio Colture Cellulari"],
  },
  {
    "id": 26, "name": "Gestione del controllo di qualità (QC)",
    "description":
        "Controllo di qualità: partecipazione per un periodo di almeno tre mesi all’ impostazione del programma qualità, alla valutazione dei dati giornalieri e alle decisioni operative. (Quality Control: participation for a period of at least three months in setting up the quality program, evaluating daily data, and making operational decisions.)",
    "min_required_amount": 0, // Requisito basato sulla durata
    "required_departments": ["Controllo di Qualità"],
  },
  {
    "id": 27,
    "name": "Organizzazione e gestione di laboratorio",
    "description":
        "Acquisizione delle conoscenze finalizzate all’organizzazione e gestione di un laboratorio centralizzato e di laboratori specialistici di medicina molecolare, biotossicologia, citopatologia, di un centro trasfusionale e del laboratorio per la tipizzazione tissutale, compatibilità tissutale e per il monitoraggio dei trapianti. (Acquisition of knowledge aimed at the organization and management of a centralized laboratory and specialist laboratories.)",
    "min_required_amount": 0,
    "required_departments": ["Direzione Tecnica/Gestione"],
  },
];
