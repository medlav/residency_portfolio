// SPDX-License-Identifier: BSD-3-Clause
// Copyright (c) 2026 medlav

// AREA MEDICINA NUCLEARE
const List<Map<String, dynamic>> kOfficialMedicinaNucleareActivities = [
  // Attività quantificate con un numero minimo (N) - Diagnostica in vivo
  {
    "id": 1,
    "name": "Diagnostica in vivo e refertazione",
    "description":
        "Frequenza presso le sezioni di M.N. e collaborazione alla impostazione, effettuazione, refertazione ed archiviazione delle indagini diagnostiche in vivo riguardanti: sistema nervoso centrale; apparato cardio-vascolare; apparato osteoarticolare; apparato respiratorio; apparato urogenitale; apparato digerente; sistema endocrino; sistema ematopoietico e linfatico; processi neoplastici, infiammatori e degenerativi. Tali attività devono essere svolte in casi opportunamente distribuiti. (Attendance in Nuclear Medicine sections and collaboration in setting up, performing, reporting, and archiving in vivo diagnostic investigations across various clinical sectors. These activities must be distributed appropriately.)",
    "min_required_amount": 1000,
    "required_departments": ["Sezione Diagnostica in Vivo (MN)"],
  },

  // Attività non quantificate con N, ma obbligatorie per l'addestramento (Durata e Competenze)
  {
    "id": 2, "name": "Terapia radiometabolica e non-imaging",
    "description":
        "Lo specializzando deve frequentare per almeno **3 mesi** una sezione di Terapia radiometabolica ed effettuare un congruo numero di indagini di diagnostica non imaging con radionuclidi (The specialist must attend a radiometabolic therapy section for at least 3 months and perform an appropriate number of non-imaging diagnostic investigations with radionuclides).",
    "min_required_amount":
        0, // Requisito basato sulla durata (3 mesi) e numero congruo.
    "required_departments": [
      "Sezione Terapia Radiometabolica",
      "Diagnostica Non Imaging",
    ],
  },
];
