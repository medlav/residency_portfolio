// SPDX-License-Identifier: BSD-3-Clause
// Copyright (c) 2026 medlav

// AREA GENETICA MEDICA
const List<Map<String, dynamic>> kOfficialGeneticaMedicaActivities = [
  // --- A. Conoscenze (Qualitative) ---
  {
    "id": 1,
    "name": "Conoscenze teoriche di genetica e genomica",
    "description":
        "Conoscenze: meccanismi cellulari e molecolari alla base dell'eredità umana; embriologia e genetica dello sviluppo; farmacogenetica e farmacogenomica; epidemiologia genetica e biostatistica; genetica di popolazione; calcolo del rischio; bioinformatica; epigenetica; interazione tra geni e ambiente; storia della genetica.",
    "min_required_amount": 0,
    "required_departments": ["Attività Teorica/Seminari"],
  },

  // --- B. Competenze (Qualitative) ---
  {
    "id": 2,
    "name": "Competenze in diagnosi e gestione malattie rare",
    "description":
        "Competenze: diagnosi e gestione di pazienti con malattie rare e comuni e dei loro familiari; prescrizione terapeutica sostitutiva enzimatiche o di farmaci riclassificati nell'ambito di un team multidisciplinare; calcolo della definizione del rischio anche attraverso l'ausilio di programmi; genetica pediatrica incluso dismorfologia; malattie ad insorgenza nell'adulto e test presintomatici; genetica prenatale e effetto di teratogeni nello sviluppo fetale; programmi di screening genetico; terapia genica e future applicazioni; malattie comuni con componente genetica; disordini metabolici; neurogenetica e genetica neuromuscolare; genetica dei tumori, dei tessuti connettivi, delle sordità; genetica prenatale e riproduttiva; immunogenetica; genetica cardiovascolare, endocrinologica, dermatologica, gastrointestinale, ematologica, nefrologica, oftalmologica, psichiatrica, polmonare e scheletrica; questioni etico-legali e consenso informato e riservatezza; tecniche di laboratorio usate nella diagnosi genetica incluso SNP- e CGH-array, sequenziamento dell'esoma e del genoma.",
    "min_required_amount": 0,
    "required_departments": ["Attività Teorica/Consulenza Clinica"],
  },

  // --- C. Abilità (Qualitative) ---
  {
    "id": 3,
    "name": "Abilità cliniche, relazionali e interpretative",
    "description":
        "Abilità: essere in grado di raccogliere dettagliata anamnesi clinica e familiare e di costruire e interpretare l'albero genealogico; effettuare un esame obbiettivo e prescrivere e interpretare appropriati esami strumentali; interrogare database genetici e registri di malattie; gestire in maniera appropriata il tempo e prendere decisioni appropriate; effettuare prelievo di sangue e estrazione bulbo pilifero; fare fotografie cliniche; usare database di dismorfologia; riconoscere segni dismorfici e principali segni clinici neurologici e dei vari organi e apparati; condurre una consulenza genetica e comprendere e gestire le reazioni emotive e crisi familiari in relazione al processo diagnostico genetico; sviluppare buone capacità relazionali con le famiglie e i colleghi; interpretare i risultati di citogenetica, genetica molecolare e analisi genomiche quali SNP- e CGH-array, sequenziamento dell'esoma e del genoma.",
    "min_required_amount": 0,
    "required_departments": ["Consulenza Clinica/Laboratorio"],
  },

  // --- D. Attività Cliniche Quantificate (Consulenza Genetica) ---
  {
    "id": 4,
    "name": "Inquadramento diagnostico e consulenza post-natale",
    "description":
        "Esecuzione di inquadramento diagnostico di casi post-natali di patologie genetiche e relativa relazione di consulenza genetica e comunicazione di eventuali risultati di test genetici, contribuendo attivamente alla raccolta dei dati anamnestici, effettuando l’esame obiettivo, eseguendo ricerche su banche dati genomiche laddove opportuno, proponendo la programmazione degli interventi diagnostici razionali, e valutando criticamente i dati clinici. (*)",
    "min_required_amount": 250,
    "required_departments": ["Ambulatorio Genetica Post-Natale"],
  },
  {
    "id": 5,
    "name": "Consulenza per infertilità e poliabortività",
    "description":
        "Esecuzione di casi di consulenza genetica per infertilità di coppia o poliabortività e relativa relazione di consulenza genetica e comunicazione di eventuali risultati di test genetici, contribuendo attivamente alla raccolta dei dati anamnestici, eseguendo ricerche su banche dati genomiche laddove opportuno, proponendo la programmazione degli interventi diagnostici razionali, e valutando criticamente i dati clinici. (*)",
    "min_required_amount": 50,
    "required_departments": ["Ambulatorio Genetica Riproduttiva"],
  },
  {
    "id": 6,
    "name": "Consulenza genetica prenatale",
    "description":
        "Esecuzione di casi di consulenza genetica prenatale e relativa relazione e comunicazione di eventuali risultati di test genetici, contribuendo attivamente alla raccolta dei dati anamnestici, eseguendo ricerche su banche dati genomiche laddove opportuno, proponendo la programmazione degli interventi diagnostici razionali, e valutando criticamente i dati clinici. (*)",
    "min_required_amount": 100,
    "required_departments": ["Ambulatorio Genetica Prenatale"],
  },

  // --- E. Attività di Laboratorio Quantificate (Citogenetica e Citogenetica Molecolare) ---
  {
    "id": 7,
    "name": "Esecuzione tecnica di cariotipi e FISH",
    "description":
        "Frequenza in laboratorio di Citogenetica e Citogenetica Molecolare con partecipazione, in presenza di un esperto, all’esecuzione di cariotipi e/o esami FISH.",
    "min_required_amount": 15,
    "required_departments": ["Laboratorio di Citogenetica"],
  },
  {
    "id": 8,
    "name": "Refertazione di citogenetica e FISH",
    "description":
        "Frequenza in laboratorio di Citogenetica e Citogenetica Molecolare con interpretazione di dati analitici e partecipazione alla stesura di referti di almeno **30 cariotipi e/o esami FISH**.",
    "min_required_amount": 30,
    "required_departments": ["Laboratorio di Citogenetica"],
  },
  {
    "id": 9,
    "name": "Esecuzione tecnica analisi array (CGH/SNP)",
    "description":
        "Frequenza in laboratorio di Citogenetica e Citogenetica Molecolare con partecipazione all’esecuzione, in presenza di un esperto, di almeno **15 analisi per ricerca di riarrangiamenti genomici sbilanciati** con metodologie basate su array (array-CGH o array-SNP).",
    "min_required_amount": 15,
    "required_departments": ["Laboratorio di Citogenetica Molecolare"],
  },
  {
    "id": 10,
    "name": "Interpretazione e refertazione analisi array",
    "description":
        "Frequenza in laboratorio di Citogenetica e Citogenetica Molecolare con interpretazione di dati analitici e partecipazione alla stesura di referti di **analisi per ricerca di riarrangiamenti genomici sbilanciati** con metodologie basate su array (array-CGH o array-SNP).",
    "min_required_amount": 50,
    "required_departments": ["Laboratorio di Citogenetica Molecolare"],
  },

  // --- F. Attività di Laboratorio Quantificate (Genetica Molecolare) ---
  {
    "id": 11,
    "name": "Esecuzione test molecolari e NGS",
    "description":
        "Frequenza in laboratorio di Genetica Molecolare con partecipazione, in presenza di un esperto, all’esecuzione di esami di genetica molecolare per ricerca di mutazioni o varianti genetiche, inclusi test immunogenetici, con metodologie tradizionali di analisi diretta o indiretta e/o con metodiche di sequenziamento di nuova generazione.",
    "min_required_amount": 20,
    "required_departments": ["Laboratorio di Genetica Molecolare"],
  },
  {
    "id": 12,
    "name": "Refertazione genetica molecolare e immunogenetica",
    "description":
        "Frequenza in laboratorio di Genetica Molecolare con interpretazione di dati analitici e partecipazione alla stesura di referti di esami di genetica molecolare, inclusi test immunogenetici (**almeno 5 esami** di questa tipologia), con metodologie di analisi diretta o indiretta per ricerca di mutazioni o varianti genetiche note (**almeno 15 esami** di questa tipologia) e/o per individuazione di mutazioni responsabili di quadri clinici su presunta base genetica mediante screening dell’intera sequenza di uno o più geni (**almeno 10 esami** di questa tipologia).",
    "min_required_amount": 30,
    "required_departments": ["Laboratorio di Genetica Molecolare"],
  },
  {
    "id": 13,
    "name": "Analisi bioinformatica e refertazione NGS",
    "description":
        "Frequenza in laboratorio di Genetica Molecolare con interpretazione dei dati analitici (**inclusa analisi bioinformatica**) e partecipazione alla stesura di referti di esami effettuati con **metodiche di sequenziamento di nuova generazione**.",
    "min_required_amount": 15,
    "required_departments": [
      "Laboratorio di Genetica Molecolare / Bioinformatica",
    ],
  },
];
