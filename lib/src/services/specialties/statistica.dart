// SPDX-License-Identifier: BSD-3-Clause
// Copyright (c) 2026 medlav

// AREA STATISTICA SANITARIA E BIOMETRIA
const List<Map<String, dynamic>> kOfficialStatisticaSanitariaActivities = [
  // --- A. Analisi Statistica e Ricerca ---
  {
    "id": 1,
    "name": "Analisi statistica di indagini cliniche",
    "description":
        "Avere eseguito personalmente ed autonomamente l’**analisi statistica completa di indagini cliniche o epidemiologiche**.",
    "min_required_amount": 2,
    "required_departments": ["Laboratorio di Biometria/Statistica"],
  },
  {
    "id": 2,
    "name": "Stesura protocolli e studi di fattibilità",
    "description":
        "Avere eseguito personalmente ed autonomamente la **stesura di protocolli di ricerca clinica o epidemiologica o di organizzazione sanitaria** e condotto il relativo **studio di fattibilità**.",
    "min_required_amount": 2,
    "required_departments": ["Ufficio Protocolli di Ricerca/Epidemiologia"],
  },
  {
    "id": 3,
    "name": "Pubblicazioni e presentazioni scientifiche",
    "description":
        "Avere eseguito personalmente ed autonomamente la stesura di **articoli scientifici o presentazioni a congressi nazionali o internazionali** con pubblicazione degli atti, nell’ambito della ricerca clinica o epidemiologica o di organizzazione sanitaria.",
    "min_required_amount": 2,
    "required_departments": ["Ricerca Scientifica"],
  },

  // --- B. Sistemi Informativi e Gestione Dati ---
  {
    "id": 4,
    "name": "Gestione di sistemi informativi sanitari",
    "description":
        "Aver svolto l’**organizzazione, l’attivazione o la gestione di un sistema informativo sanitario**.",
    "min_required_amount": 1,
    "required_departments": ["Sistemi Informativi Sanitari (SIS)"],
  },
  {
    "id": 5,
    "name": "Attività in Osservatori e Registri di malattia",
    "description":
        "Aver completato almeno **4 delle seguenti tipologie di attività all’interno del SSR**: (frequenza per almeno quattro mesi di: un istituto/centro di elaborazione dati sanitari, un osservatorio epidemiologico/servizio statistico-epidemiologico, strutture con registri di malattia, strutture di management sanitario/valutazione economica, osservatori epidemiologici di medicina veterinaria/istituto zooprofilattico, osservatori nazionali/regionali sui farmaci; oppure aver svolto un programma di valutazione delle qualità di metodi di accertamento diagnostico o di screening).",
    "min_required_amount": 3,
    "required_departments": ["Osservatori Epidemiologici/Servizi Statistici"],
  },

  // --- C. Etica e Monitoraggio ---
  {
    "id": 6,
    "name": "Partecipazione istruttoria Comitato Etico",
    "description":
        "Aver partecipato a sedute di **comitato etico**, seguendo le procedure di emissione dei pareri sin dalla fase istruttoria.",
    "min_required_amount": 5,
    "required_departments": ["Comitato Etico"],
  },
  {
    "id": 7,
    "name": "Monitoraggio servizi e follow-up pazienti",
    "description":
        "Avere eseguito personalmente ed autonomamente il **monitoraggio per almeno un anno di Servizi Sanitari o il follow-up di pazienti ospedalieri o ambulatoriali**.",
    "min_required_amount": 0,
    "required_departments": ["Monitoraggio Servizi/Follow-up Pazienti"],
  },
];
