// SPDX-License-Identifier: BSD-3-Clause
// Copyright (c) 2026 medlav

// AREA MEDICA NEUROLOGIA
const List<Map<String, dynamic>> kOfficialNeurologiaActivities = [
  {
    "id": 1,
    "name": "Protocolli diagnostici clinici",
    "description":
        "Protocolli diagnostici clinici eseguiti personalmente (Clinical diagnostic protocols personally executed)",
    "min_required_amount": 100,
    "required_departments": [],
  },
  {
    "id": 2,
    "name": "Gestione clinica di patologie neurologiche",
    "description":
        "Casi clinici, dei quali 100 seguiti in prima persona, inclusivi delle classiche malattie neurologiche croniche, delle urgenze neurologiche, malattie cerebrovascolari, malattie neurologiche rare, sindromi dolorose acute e croniche, discutendo impostazione e conduzione con lo specialista strutturato e/o il responsabile del reparto clinico (Clinical cases, 100 of which personally followed, including classic chronic neurological diseases, neurological emergencies, cerebrovascular diseases, rare neurological diseases, acute and chronic pain syndromes, discussing setup and conduction with the staff specialist and/or the clinical ward manager)",
    "min_required_amount": 250,
    "required_departments": ["reparto clinico"],
  },
  {
    "id": 3,
    "name": "Sperimentazioni cliniche controllate (GCP)",
    "description":
        "Partecipazione alla conduzione, secondo le norme di buona pratica clinica, di sperimentazioni cliniche controllate (Participation in the conduct of controlled clinical trials, according to good clinical practice norms)",
    "min_required_amount": 3,
    "required_departments": [],
  },
  {
    "id": 4,
    "name": "Interpretazione di neuroradiologia",
    "description":
        "Interpretazione e discussione di esami neuroradiologici e di neuroimmagini delle principali patologie, discussi direttamente con personale esperto (Interpretation and discussion of neuroradiological and neuroimaging examinations of the main pathologies, discussed directly with expert staff)",
    "min_required_amount": 200,
    "required_departments": [],
  },
  {
    "id": 5,
    "name": "Interpretazione di neurofisiologia",
    "description":
        "Interpretazione e discussione di esami neurofisiologici (elettroencefalogrammi; potenziali evocati; elettromiografie e neurografie; EcoDoppler) delle principali malattie neurologiche, discussi direttamente con personale esperto (Interpretation and discussion of neurophysiological examinations (electroencephalograms; evoked potentials; electromyography and neurography; EcoDoppler) of the main neurological diseases, discussed directly with expert staff)",
    "min_required_amount": 200,
    "required_departments": [],
  },
  {
    "id": 6,
    "name": "Accertamento di morte cerebrale",
    "description":
        "Valutazione e discussione con lo specialista strutturato di esami eseguiti in centri di rianimazione a scopo di sospetto e/o accertamento della morte cerebrale (Evaluation and discussion with the staff specialist of examinations performed in resuscitation centers for the purpose of suspicion and/or ascertainment of brain death)",
    "min_required_amount": 20,
    "required_departments": ["centri di rianimazione"],
  },
  {
    "id": 7,
    "name": "Valutazione funzionale della disabilità",
    "description":
        "Valutazione della disabilità utilizzando appropriate scale funzionali e identificazione delle possibilità e degli strumenti di recupero, discutendo impostazione e conduzione con personale esperto (Disability assessment using appropriate functional scales and identification of recovery possibilities and tools, discussing setup and conduction with expert staff)",
    "min_required_amount": 50,
    "required_departments": [],
  },
  {
    "id": 8,
    "name": "Valutazione del decadimento cognitivo",
    "description":
        "Valutazione del decadimento mentale mediante esami neurocognitivi, discutendo impostazione e conduzione con personale esperto (Assessment of mental decline through neurocognitive examinations, discussing setup and conduction with expert staff)",
    "min_required_amount": 50,
    "required_departments": [],
  },
  {
    "id": 9,
    "name": "Discussione di esami neuropatologici",
    "description":
        "Esami neuropatologici, includenti anche biopsie di muscolo o di nervo, discussi direttamente con personale esperto (Neuropathological examinations, also including muscle or nerve biopsies, discussed directly with expert staff)",
    "min_required_amount": 20,
    "required_departments": [],
  },
  {
    "id": 10,
    "name": "Rachicentesi e analisi del liquor",
    "description":
        "Prelievo di liquor eseguiti personalmente e relativa discussione su rilievi e risultati con personale esperto (Cerebrospinal fluid collection personally performed and related discussion on findings and results with expert staff)",
    "min_required_amount": 30,
    "required_departments": [],
  },
];
