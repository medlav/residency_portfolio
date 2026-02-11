// SPDX-License-Identifier: BSD-3-Clause
// Copyright (c) 2026 medlav

// AREA MEDICA MEDICINA D’EMERGENZA-URGENZA
const List<Map<String, dynamic>> kOfficialMedicinaDiUrgenzaActivities = [
  {
    "id": 1,
    "name": "Attività clinica in Emergenza-Accettazione",
    "description":
        "Avere partecipato, per almeno 3 anni, all’attività medica - compresi i turni di guardia diurni, notturni e festivi - nelle strutture di Emergenza-Accettazione - e nelle strutture collegate- identificate nell’ambito della rete formativa (Having participated, for at least 3 years, in medical activity - including day, night, and holiday on-call shifts - in Emergency-Acceptance facilities and connected facilities identified within the training network)",
    "min_required_amount": 0,
    "required_departments": [
      "Strutture di Emergenza-Accettazione",
      "Strutture collegate",
    ],
  },
  {
    "id": 2,
    "name": "Gestione documentazione clinica d'urgenza",
    "description":
        "Avere redatto e firmato cartelle cliniche di pazienti delle strutture di Emergenza-Accettazione e nelle strutture collegate (Having written and signed clinical charts for patients in Emergency-Acceptance facilities and connected facilities)",
    "min_required_amount": 300,
    "required_departments": [
      "Strutture di Emergenza-Accettazione",
      "Strutture collegate",
    ],
  },
  {
    "id": 3,
    "name": "Gestione del Trauma Team e traumi maggiori",
    "description":
        "Avere partecipato attivamente alla gestione di traumatizzati maggiori e sapere gestire il “Trauma Team” (Having actively participated in the management of major trauma patients and knowing how to manage the “Trauma Team”)",
    "min_required_amount": 50,
    "required_departments": [],
  },
  {
    "id": 4,
    "name": "Turni di emergenza territoriale",
    "description":
        "Avere trascorso almeno 3 settimane all’anno in turni di emergenza territoriale (Having spent at least 3 weeks per year in territorial emergency shifts)",
    "min_required_amount": 0,
    "required_departments": ["Emergenza territoriale"],
  },
  {
    "id": 5,
    "name": "Manovre di disostruzione vie aeree",
    "description":
        "Avere eseguito disostruzioni delle vie aeree* (Having performed airway disobstruction*)",
    "min_required_amount": 10,
    "required_departments": [],
  },
  {
    "id": 6,
    "name": "Ventilazione con pallone di Ambu",
    "description":
        "Avere eseguito ventilazioni con pallone di Ambu* (Having performed ventilations with Ambu bag*)",
    "min_required_amount": 30,
    "required_departments": [],
  },
  {
    "id": 7,
    "name": "Intubazione oro-tracheale in urgenza",
    "description":
        "Avere eseguito intubazioni oro-tracheali in urgenza* (Having performed emergency oro-tracheal intubations*)",
    "min_required_amount": 20,
    "required_departments": [],
  },
  {
    "id": 8,
    "name": "Posizionamento cateteri venosi centrali",
    "description":
        "Avere posizionato cateteri venosi centrali (giugulare interna, succlavia e femorale)* (Having placed central venous catheters (internal jugular, subclavian, and femoral)*)",
    "min_required_amount": 20,
    "required_departments": [],
  },
  {
    "id": 9,
    "name": "Posizionamento accessi intraossei",
    "description":
        "Avere posizionato accessi intraossei* (Having placed intraosseous accesses*)",
    "min_required_amount": 10,
    "required_departments": [],
  },
  {
    "id": 10,
    "name": "Posizionamento agocannule arteriose",
    "description":
        "Avere posizionato agocannule arteriose (radiale e femorale)* (Having placed arterial cannulas (radial and femoral)*)",
    "min_required_amount": 10,
    "required_departments": [],
  },
  {
    "id": 11,
    "name": "Interpretazione emogasanalisi (EGA)",
    "description":
        "Avere interpretato emogasanalisi arteriose, con prelievo arterioso personalmente eseguito* (Having interpreted arterial blood gas analyses, with arterial sample personally taken*)",
    "min_required_amount": 100,
    "required_departments": [],
  },
  {
    "id": 12,
    "name": "Toracentesi e drenaggi toracostomici",
    "description":
        "Avere praticato toracentesi dirette ed ecoguidate, con posizionamento di aghi e tubi toracostomici* (Having performed direct and ultrasound-guided thoracentesis, with placement of needles and chest tubes*)",
    "min_required_amount": 5,
    "required_departments": [],
  },
  {
    "id": 13,
    "name": "Posizionamento sondini nasogastrici",
    "description":
        "Avere posizionato sondini nasograstrici, compreso il posizionamento nel paziente in coma* (Having placed nasogastric tubes, including placement in comatose patients*)",
    "min_required_amount": 20,
    "required_departments": [],
  },
  {
    "id": 14, "name": "Interpretazione imaging radiologico d'urgenza",
    "description":
        "Avere interpretato almeno 50 radiografie del torace, 20 radiogrammi diretti dell’addome, 50 radiogrammi ossei, 20 TC (cranio, cervicale, toracica, addominale) e 10 RMN del cranio (Having interpreted at least 50 chest X-rays, 20 plain abdominal X-rays, 50 bone X-rays, 20 CT scans (head, cervical, thoracic, abdominal) and 10 head MRIs)",
    "min_required_amount": 150, // Sum of minimums
    "required_departments": [],
  },
  {
    "id": 15,
    "name": "Ecografia clinica in emergenza (POCUS)",
    "description":
        "Avere praticato ed interpretato esami ecografici per le emergenze cardiache, toraciche ed addominali* (Having performed and interpreted ultrasound exams for cardiac, thoracic, and abdominal emergencies*)",
    "min_required_amount": 40,
    "required_departments": [],
  },
  {
    "id": 16,
    "name": "Esecuzione e interpretazione eco-Doppler",
    "description":
        "Avere praticato ed interpretato eco-Doppler venosi ed arteriosi* (Having performed and interpreted venous and arterial eco-Dopplers*)",
    "min_required_amount": 30,
    "required_departments": [],
  },
  {
    "id": 17,
    "name": "Esecuzione e interpretazione ECG",
    "description":
        "Avere eseguito ed interpretato ECG (Having performed and interpreted ECGs)",
    "min_required_amount": 200,
    "required_departments": [],
  },
  {
    "id": 18,
    "name": "Esecuzione di cardioversioni",
    "description":
        "Avere eseguito cardioversioni* (Having performed cardioversions*)",
    "min_required_amount": 20,
    "required_departments": [],
  },
  {
    "id": 19,
    "name": "Esecuzione di defibrillazioni elettriche",
    "description":
        "Avere eseguito defibrillazioni elettriche* (Having performed electric defibrillations*)",
    "min_required_amount": 20,
    "required_departments": [],
  },
  {
    "id": 20,
    "name": "Massaggio cardiaco e rianimazione",
    "description":
        "Avere praticato massaggi cardiaci esterni con applicazione delle manovre di rianimazione* (Having performed external cardiac massages with application of resuscitation maneuvers*)",
    "min_required_amount": 20,
    "required_departments": [],
  },
  {
    "id": 21,
    "name": "Gestione e posizionamento pace-maker",
    "description":
        "Avere posizionato pace-makers esterni e saper posizionare pace-makers trans venosi* (Having placed external pacemakers and knowing how to place transvenous pacemakers*)",
    "min_required_amount": 10,
    "required_departments": [],
  },
  {
    "id": 22,
    "name": "Sedazione e analgesia procedurale",
    "description":
        "Avere praticato sedazioni-analgesie per procedure (Having performed sedation-analgesia for procedures)",
    "min_required_amount": 10,
    "required_departments": [],
  },
  {
    "id": 23,
    "name": "Esecuzione di anestesie locali",
    "description":
        "Avere praticato anestesie locali (Having performed local anesthesias)",
    "min_required_amount": 20,
    "required_departments": [],
  },
  {
    "id": 24,
    "name": "Sutura e gestione ferite superficiali",
    "description":
        "Avere disinfettato e suturato ferite superficiali (Having disinfected and sutured superficial wounds)",
    "min_required_amount": 40,
    "required_departments": [],
  },
  {
    "id": 25,
    "name": "Immobilizzazione profilattica lesioni midollari",
    "description":
        "Avere praticato immobilizzazioni per la profilassi delle lesioni midollari e nelle fratture del bacino* (Having performed immobilizations for the prophylaxis of spinal cord injuries and in pelvic fractures*)",
    "min_required_amount": 5,
    "required_departments": [],
  },
  {
    "id": 26,
    "name": "Gestione dell'ictus in fase acuta",
    "description":
        "Aver partecipato attivamente alla gestione di ictus in fase acuta* (Having actively participated in the management of acute stroke*)",
    "min_required_amount": 20,
    "required_departments": [],
  },
  {
    "id": 27,
    "name": "Cateterismo vescicale e sovrapubico",
    "description":
        "Avere praticato cateterismi vescicali (catetere di Foley, sovrapubici)* (Having performed urinary catheterizations (Foley, suprapubic catheter)*)",
    "min_required_amount": 20,
    "required_departments": [],
  },
  {
    "id": 28,
    "name": "Valutazione urgenze oculistiche",
    "description":
        "Avere esaminato pazienti con urgenze oculistiche (Having examined patients with ophthalmic emergencies)",
    "min_required_amount": 10,
    "required_departments": [],
  },
  {
    "id": 29,
    "name": "Esecuzione e interpretazione otoscopie",
    "description":
        "Avere praticato ed interpretato otoscopie* (Having performed and interpreted otoscopies*)",
    "min_required_amount": 10,
    "required_departments": [],
  },
  {
    "id": 30,
    "name": "Tamponamento nasale per epistassi",
    "description":
        "Avere praticato tamponamenti anteriori e posteriori per il controllo dell’epistassi* (Having performed anterior and posterior tamponades for the control of epistaxis*)",
    "min_required_amount": 5,
    "required_departments": [],
  },
  {
    "id": 31,
    "name": "Assistenza al parto in emergenza",
    "description":
        "Avere partecipato attivamente a parti* (Having actively participated in deliveries*)",
    "min_required_amount": 10,
    "required_departments": [],
  },
  {
    "id": 32,
    "name": "Monitoraggio emodinamico e saturazione",
    "description":
        "Sapere attuare il monitoraggio elettrocardiografico, della pressione arteriosa non-cruenta e cruenta, della pressione venosa centrale, della saturazione arteriosa di ossigeno (Knowing how to perform electrocardiographic monitoring, non-invasive and invasive arterial pressure monitoring, central venous pressure, and arterial oxygen saturation monitoring)",
    "min_required_amount": 0,
    "required_departments": [],
  },
  {
    "id": 33,
    "name": "Accesso chirurgico d'urgenza (Cricotiroidotomia)",
    "description":
        "Sapere praticare l’accesso chirurgico d’emergenza alle vie aeree: cricotiroidotomia* (Knowing how to perform emergency surgical access to the airways: cricothyroidotomy*)",
    "min_required_amount": 0,
    "required_departments": [],
  },
  {
    "id": 34,
    "name": "Gestione ventilazione meccanica polmonare",
    "description":
        "Sapere eseguire la ventilazione invasiva e non-invasiva meccanica manuale e con ventilatori pressometrici e volumetrici* (Knowing how to perform invasive and non-invasive mechanical ventilation, manual and with pressure and volume ventilators*)",
    "min_required_amount": 0,
    "required_departments": [],
  },
  {
    "id": 35,
    "name": "Somministrazione di ossigenoterapia",
    "description":
        "Sapere somministrare le varie modalità di ossigenoterapia (Knowing how to administer the various modalities of oxygen therapy)",
    "min_required_amount": 0,
    "required_departments": [],
  },
  {
    "id": 36,
    "name": "Esecuzione di pericardiocentesi",
    "description":
        "Sapere eseguire pericardiocentesi* (Knowing how to perform pericardiocentesis*)",
    "min_required_amount": 0,
    "required_departments": [],
  },
  {
    "id": 37,
    "name": "Confezionamento splint e gessi",
    "description":
        "Sapere realizzare fasciature, splints e gessi per immobilizzazione di fratture ossee* (Knowing how to create bandages, splints, and casts for immobilization of bone fractures*)",
    "min_required_amount": 0,
    "required_departments": [],
  },
  {
    "id": 38,
    "name": "Riduzione di lussazioni",
    "description":
        "Sapere eseguire la riduzione di lussazioni* (Knowing how to perform reduction of dislocations*)",
    "min_required_amount": 0,
    "required_departments": [],
  },
  {
    "id": 39,
    "name": "Esecuzione di punture lombari",
    "description":
        "Sapere eseguire punture lombari* (Knowing how to perform lumbar punctures*)",
    "min_required_amount": 0,
    "required_departments": [],
  },
  {
    "id": 40,
    "name": "Procedure di decontaminazione tossicologica",
    "description":
        "Sapere eseguire le procedure di decontaminazione (cutanea e gastrica compreso il posizionamento dei sondini nasogastrici per eseguire il lavaggio gastrico ed intestinale)* (Knowing how to perform decontamination procedures (cutaneous and gastric, including the placement of nasogastric tubes for gastric and intestinal lavage)*)",
    "min_required_amount": 0,
    "required_departments": [],
  },
  {
    "id": 41,
    "name": "Gestione decisionale Centrale Operativa 118",
    "description":
        "Avere partecipato direttamente ai processi gestionali e decisionali della centrale operativa del 118 (Having directly participated in the management and decision-making processes of the 118 operational center)",
    "min_required_amount": 0,
    "required_departments": ["Centrale operativa del 118"],
  },
];
