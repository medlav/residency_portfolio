// SPDX-License-Identifier: BSD-3-Clause
// Copyright (c) 2026 medlav

// AREA MEDICA GERIATRIA
const List<Map<String, dynamic>> kOfficialGeriatriaActivities = [
  {
    "id": 1,
    "name": "Gestione cartelle cliniche geriatriche",
    "description":
        "Aver redatto e firmato cartelle cliniche di pazienti ricoverati o ambulatoriali (Having written and signed clinical records for hospitalized or outpatient patients)",
    "min_required_amount": 100,
    "required_departments": [],
  },
  {
    "id": 2,
    "name": "Esplorazioni rettali",
    "description":
        "Aver eseguito personalmente esplorazioni rettali (Having personally performed rectal examinations)",
    "min_required_amount": 20,
    "required_departments": [],
  },
  {
    "id": 3,
    "name": "Posizionamento linee venose periferiche",
    "description":
        "Aver eseguito personalmente posizionamento di linee venose periferiche (Having personally performed placement of peripheral venous lines)",
    "min_required_amount": 20,
    "required_departments": [],
  },
  {
    "id": 4,
    "name": "Posizionamento sondini naso-gastrici",
    "description":
        "Aver eseguito personalmente posizionamento di sondini naso-gastrici (Having personally performed placement of nasogastric tubes)",
    "min_required_amount": 10,
    "required_departments": [],
  },
  {
    "id": 5,
    "name": "Posizionamento cateteri vescicali",
    "description":
        "Aver eseguito personalmente posizionamento di cateteri vescicali (Having personally performed placement of urinary catheters)",
    "min_required_amount": 10,
    "required_departments": [],
  },
  {
    "id": 6,
    "name": "Toracentesi e paracentesi",
    "description":
        "Aver eseguito personalmente manovre invasive (esecuzione di 10 toracentesi e 10 paracentesi) (Having personally performed invasive procedures (execution of 10 thoracenteses and 10 paracenteses))",
    "min_required_amount": 20,
    "required_departments": [],
  },
  {
    "id": 7,
    "name": "Cura di piaghe da decubito e ulcere",
    "description":
        "Aver eseguito detersione e medicazione di piaghe da decubito, ulcere trofiche, lesioni in “piede diabetico” (Having performed cleansing and dressing of pressure ulcers, trophic ulcers, and lesions in 'diabetic foot')",
    "min_required_amount": 40,
    "required_departments": [],
  },
  {
    "id": 8,
    "name": "Bilancio idro-elettrolitico e nutrizionale",
    "description":
        "Aver eseguito il bilancio idro-elettrolitico e nutrizionale di pazienti (Having performed the hydro-electrolyte and nutritional balance of patients)",
    "min_required_amount": 20,
    "required_departments": [],
  },
  {
    "id": 9,
    "name": "Esecuzione e refertazione ECG",
    "description":
        "Aver eseguito e controfirmato esami elettrocardiografici (Having performed and counter-signed electrocardiographic examinations)",
    "min_required_amount": 50,
    "required_departments": [],
  },
  {
    "id": 10,
    "name": "Emogasanalisi arteriosa",
    "description":
        "Aver eseguito e controfirmato esami emogasanalitici arteriosi (Having performed and counter-signed arterial blood gas analyses)",
    "min_required_amount": 30,
    "required_departments": [],
  },
  {
    "id": 11,
    "name": "Rianimazione cardiopolmonare (BLS/ACLS)",
    "description":
        "Aver acquisito competenza sulle tecniche di base ed avanzate di rianimazione cardiopolmonare (BLS e ACLS) ed aver partecipato od eseguito manovre di rianimazione su paziente o manichino (Having acquired competence in basic and advanced cardiopulmonary resuscitation techniques (BLS and ACLS) and having participated in or performed resuscitation maneuvers on a patient or mannequin)",
    "min_required_amount": 10,
    "required_departments": [],
  },
  {
    "id": 12,
    "name": "Discussione esami ecocardiografici",
    "description":
        "Aver discusso con un esperto esami ecocardiografici (Having discussed echocardiographic examinations with an expert)",
    "min_required_amount": 20,
    "required_departments": [],
  },
  {
    "id": 13,
    "name": "Discussione esami angiografici",
    "description":
        "Aver discusso con un esperto esami angiografici (Having discussed angiographic examinations with an expert)",
    "min_required_amount": 10,
    "required_departments": [],
  },
  {
    "id": 14,
    "name": "Discussione TC/RMN encefalo",
    "description":
        "Aver discusso con un esperto TC o RMN encefalo (Having discussed head CT or MRI examinations with an expert)",
    "min_required_amount": 20,
    "required_departments": [],
  },
  {
    "id": 15,
    "name": "Discussione Rx torace",
    "description":
        "Aver discusso con un esperto Rx torace (Having discussed chest X-rays with an expert)",
    "min_required_amount": 50,
    "required_departments": [],
  },
  {
    "id": 16,
    "name": "Discussione imaging toraco-addominale",
    "description":
        "Aver discusso con un esperto Rx rachide, Tc torace e addome (Having discussed spine X-rays, chest CT, and abdominal CT with an expert)",
    "min_required_amount": 50,
    "required_departments": [],
  },
  {
    "id": 17,
    "name": "Valutazione Multidimensionale (VMD)",
    "description":
        "Aver partecipato a procedure di valutazione multidimensionale in diversi nodi della rete dei servizi (Distretto, RSA, Centro Diurno), imparando a gestire la continuità dell’assistenza al paziente geriatrico (Having participated in multi-dimensional assessment procedures in various nodes of the service network (Distretto, RSA, Centro Diurno), learning to manage continuity of care for the geriatric patient)",
    "min_required_amount": 50,
    "required_departments": ["Distretto", "RSA", "Centro Diurno"],
  },
  {
    "id": 18,
    "name": "Consulenze geriatriche di reparto",
    "description":
        "Aver eseguito consulenze geriatriche presso altri Reparti (Having performed geriatric consultations in other departments)",
    "min_required_amount": 20,
    "required_departments": ["Altri Reparti"],
  },
  {
    "id": 19,
    "name": "Discussione esami spirometrici",
    "description": "Aver discusso spirometrie (Having discussed spirometry)",
    "min_required_amount": 20,
    "required_departments": [],
  },
  {
    "id": 20,
    "name": "Partecipazione a trial clinici",
    "description":
        "Aver partecipato alla conduzione di sperimentazioni cliniche controllate (Having participated in the conduct of controlled clinical trials)",
    "min_required_amount": 2,
    "required_departments": [],
  },
  {
    "id": 21,
    "name": "Valutazione della malnutrizione",
    "description":
        "Aver acquisito esperienza nella valutazione clinica, strumentale e laboratoristica della malnutrizione calorico-proteica e degli interventi di nutrizione clinica (Having acquired experience in the clinical, instrumental, and laboratory evaluation of caloric-protein malnutrition and clinical nutrition interventions)",
    "min_required_amount": 0,
    "required_departments": [],
  },
  {
    "id": 22,
    "name": "Utilizzo strumentazione diagnostica pratica",
    "description":
        "Saper utilizzare strumenti diagnostici pratici quali l’elettrocardiografo, il pulsossimetro, il reflettometro, il dinamometro (Knowing how to use practical diagnostic instruments such as the electrocardiograph, pulse oximeter, reflectometer, and dynamometer)",
    "min_required_amount": 0,
    "required_departments": [],
  },
  {
    "id": 23,
    "name": "Esperienza in telemedicina geriatrica",
    "description":
        "Aver acquisito esperienza nella utilizzazione di programmi didattici riferibili alla telemedicina (Having acquired experience in the use of educational programs related to telemedicine)",
    "min_required_amount": 0,
    "required_departments": [],
  },
  {
    "id": 24, "name": "Rotazioni specialistiche geriatriche",
    "description":
        "Aver prestato servizio per almeno 2 settimane presso ciascuno dei seguenti ambulatori/servizi: demenza; Parkinson/disturbi del movimento; diabetologia; urodinamica; riabilitazione funzionale, con particolare riferimento ai disturbi dell’equilibrio e alle prevenzione delle cadute; osteoporosi; ecografia vascolare ed internistica; fisiopatologia respiratoria; terapia del dolore e terapia palliativa (Having served for at least 2 weeks in each of the following clinics/services: dementia; Parkinson's/movement disorders; diabetology; urodynamics; functional rehabilitation, with particular reference to balance disorders and fall prevention; osteoporosis; vascular and internal ultrasonography; respiratory pathophysiology; pain therapy and palliative care)",
    "min_required_amount": 0, // Original unit: 2 weeks per service
    "required_departments": [
      "demenza",
      "Parkinson/disturbi del movimento",
      "diabetologia",
      "urodinamica",
      "riabilitazione funzionale",
      "osteoporosi",
      "ecografia vascolare ed internistica",
      "fisiopatologia respiratoria",
      "terapia del dolore e terapia palliativa",
    ],
  },
];
