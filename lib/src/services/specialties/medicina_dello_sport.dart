// SPDX-License-Identifier: BSD-3-Clause
// Copyright (c) 2026 medlav

// AREA MEDICA MEDICINA DELLO SPORT E DELL’ESERCIZIO FISICO
const List<Map<String, dynamic>> kOfficialMedicinaDelloSportActivities = [
  {
    "id": 1,
    "name": "Certificazione di idoneità agonistica",
    "description":
        "Partecipazione alla valutazione di giudizi di idoneità, di cui 40 derivanti dalla valutazione integrativa di esami strumentali e/o di laboratorio per problemi in ambito cardiologico, internistico, ortopedico (Participation in the evaluation of suitability judgments, of which 40 derive from the integrated evaluation of instrumental and/or laboratory exams for problems in cardiology, internal medicine, and orthopedics)",
    "min_required_amount": 200,
    "required_departments": [],
  },
  {
    "id": 2,
    "name": "Riabilitazione e bendaggio funzionale",
    "description":
        "Partecipazione all’elaborazione e monitoraggio di protocolli di riabilitazione post-traumatica e post-chirurgia ortopedica ricostruttiva” nonché l’acquisizione delle differenti tecniche di bendaggio funzionale per traumi e/o patologie croniche da sport (Participation in the development and monitoring of post-traumatic and post-reconstructive orthopedic surgery rehabilitation protocols, as well as the acquisition of different functional bandaging techniques for sports injuries and/or chronic pathologies)",
    "min_required_amount": 20,
    "required_departments": [],
  },
  {
    "id": 3,
    "name": "Valutazione atleti con disabilità",
    "description":
        "Partecipazione a esperienze di valutazione clinica e funzionale in laboratorio e/o sul campo in atleti disabili fisici (Participation in clinical and functional evaluation experiences in the laboratory and/or on the field for physically disabled athletes)",
    "min_required_amount": 10,
    "required_departments": [],
  },
  {
    "id": 4,
    "name": "Test ergometrici e prescrizione esercizio",
    "description":
        "Effettuazione diretta ed autonoma di valutazioni funzionali ergometriche in pazienti con patologie croniche cardiovascolari, respiratorie e metaboliche, con indicazione dei relativi programmi d’allenamento (Direct and autonomous execution of ergometric functional evaluations in patients with chronic cardiovascular, respiratory, and metabolic pathologies, with indication of the relative training programs)",
    "min_required_amount": 30,
    "required_departments": [],
  },
  {
    "id": 5,
    "name": "Valutazione cardio-respiratoria clinica",
    "description":
        "Effettuazione diretta ed autonoma di valutazioni in soggetti con patologia cardiovascolare e/o respiratoria (Direct and autonomous execution of evaluations in subjects with cardiovascular and/or respiratory pathology)",
    "min_required_amount": 30,
    "required_departments": [],
  },
  {
    "id": 6,
    "name": "Programmazione dell'allenamento sportivo",
    "description":
        "Partecipazione alla formulazione di programmi di allenamento in 4 discipline sportive (2 a prevalente attività anaerobica e 2 a prevalente attività aerobica) (Participation in the formulation of training programs in 4 sports disciplines (2 with prevalent anaerobic activity and 2 with prevalent aerobic activity))",
    "min_required_amount": 10,
    "required_departments": [],
  },
  {
    "id": 7,
    "name": "Sperimentazioni fisiopatologiche e cliniche",
    "description":
        "Partecipazione alla conduzione, secondo le norme di buona pratica clinica,di sperimentazioni fisiopatologiche e/o cliniche controllate (Participation in the conduct of physiopathological and/or controlled clinical trials, according to the rules of good clinical practice)",
    "min_required_amount": 3,
    "required_departments": [],
  },
  {
    "id": 8, "name": "Tirocinio in Medicina d'Emergenza",
    "description":
        "Un periodo di frequenza di almeno 30 giorni in un Dipartimento di Emergenza (pronto soccorso) (A period of attendance of at least 30 days in an Emergency Department (emergency room))",
    "min_required_amount":
        0, // La misura è in giorni, non in volume di prestazioni, quindi 0.
    "required_departments": ["Dipartimento di Emergenza (pronto soccorso)"],
  },
];
