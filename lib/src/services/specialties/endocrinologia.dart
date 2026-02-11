// SPDX-License-Identifier: BSD-3-Clause
// Copyright (c) 2026 medlav

// AREA MEDICA ENDOCRINOLOGIA E MALATTIE DEL METABOLISMO
const List<Map<String, dynamic>>
kOfficialEndocrinologiaEmetabolismoActivities = [
  {
    "id": 1,
    "name": "Test dinamici di funzione ghiandolare",
    "description":
        "Esecuzione o valutazione di: Test dinamici di funzione ipofisaria, tiroidea, surrenalica, gonadica (Execution or evaluation of: Dynamic tests of pituitary, thyroid, adrenal, and gonadal function)",
    "min_required_amount": 20,
    "required_departments": ["Ambulatorio", "Day Hospital"],
  },
  {
    "id": 2,
    "name": "Ecografia tiroidea e paratiroidea",
    "description":
        "Esecuzione o valutazione di: Ecografia tiroidea/paratiroidea (Execution or evaluation of: Thyroid/parathyroid ultrasound)",
    "min_required_amount": 200,
    "required_departments": ["Ambulatorio", "Day Hospital"],
  },
  {
    "id": 3,
    "name": "Agoaspirato tiroideo ecoguidato (FNAB)",
    "description":
        "Esecuzione o valutazione di: Biopsia tiroidea ecoguidata (FNAB) (Execution or evaluation of: Ultrasound-guided thyroid biopsy (FNAB))",
    "min_required_amount": 20,
    "required_departments": ["Ambulatorio", "Day Hospital"],
  },
  {
    "id": 4,
    "name": "Ecografia surrenalica",
    "description":
        "Esecuzione o valutazione di: Ecografia surrenalica (Execution or evaluation of: Adrenal ultrasound)",
    "min_required_amount": 10,
    "required_departments": ["Ambulatorio", "Day Hospital"],
  },
  {
    "id": 5,
    "name": "Ecocolordoppler penieno",
    "description":
        "Esecuzione o valutazione di: Ecografia e/o doppler vascolare dei corpi cavernosi per la diagnostica della disfunzione erettile (Execution or evaluation of: Ultrasound and/or vascular doppler of the corpus cavernosum for the diagnosis of erectile dysfunction)",
    "min_required_amount": 10,
    "required_departments": ["Ambulatorio", "Day Hospital"],
  },
  {
    "id": 6,
    "name": "Mineralometria Ossea (MOC) e morfometria",
    "description":
        "Esecuzione o valutazione di: MOC (Mineralometria Ossea Computerizzata) e lettura di esami di morfometria vertebrale (Execution or evaluation of: DEXA (Dual-energy X-ray Absorptiometry) and reading of vertebral morphometry exams)",
    "min_required_amount": 100,
    "required_departments": ["Ambulatorio", "Day Hospital"],
  },
  {
    "id": 7,
    "name": "Refertazione scintigrafie e Octreoscan",
    "description":
        "Esecuzione o valutazione di: Lettura di esami di scintigrafia tiroidea, paratiroidea, surrenalica, octreoscan (Execution or evaluation of: Reading of thyroid, parathyroid, adrenal, octreoscan scintigraphy exams)",
    "min_required_amount": 30,
    "required_departments": ["Medicina Nucleare"],
  },
  {
    "id": 8,
    "name": "Diagnostica dinamica di diabete e dislipidemie",
    "description":
        "Esecuzione o valutazione di: Test dinamici di laboratorio per l’inquadramento del diabete mellito, per la diagnostica delle ipoglicemie, per lo studio delle dislipidemie (curva da carico di glucosio e/o mista, clamp euglicemico/iperglicemico, etc.) (Execution or evaluation of: Dynamic laboratory tests for the classification of diabetes mellitus, for the diagnosis of hypoglycemia, for the study of dyslipidemias (glucose and/or mixed tolerance test, euglycemic/hyperglycemic clamp, etc.))",
    "min_required_amount": 50,
    "required_departments": ["Ambulatorio", "Day Hospital", "Laboratorio"],
  },
  {
    "id": 9,
    "name": "Gestione microinfusori insulinici",
    "description":
        "Esecuzione o valutazione di: Terapia insulinica con sistemi a infusione continua (microinfusore) nel diabete mellito (Execution or evaluation of: Insulin therapy with continuous infusion systems (insulin pump) in diabetes mellitus)",
    "min_required_amount": 10,
    "required_departments": ["Ambulatorio", "Day Hospital"],
  },
  {
    "id": 10,
    "name": "Gestione clinica patologie ghiandolari complesse",
    "description":
        "Partecipazione diretta a: Discussione e gestione clinica di casi complessi di patologia ipofisaria, tiroidea, paratiroidea, surrenalica, gonadica, disturbi del metabolismo calcio-fosforico e osteoporosi (Direct participation in: Discussion and clinical management of complex cases of pituitary, thyroid, parathyroid, adrenal, gonadal pathology, calcium-phosphorus metabolism disorders, and osteoporosis)",
    "min_required_amount": 200,
    "required_departments": ["Reparto Degenza Ordinaria", "Day Hospital"],
  },
  {
    "id": 11,
    "name": "Gestione clinica diabete e malattie metaboliche",
    "description":
        "Partecipazione diretta a: Discussione e gestione clinica di casi complessi di diabete mellito e sue complicanze, obesità, dislipidemie e malattie metaboliche rare (Direct participation in: Discussion and clinical management of complex cases of diabetes mellitus and its complications, obesity, dyslipidemias, and rare metabolic diseases)",
    "min_required_amount": 200,
    "required_departments": ["Reparto Degenza Ordinaria", "Day Hospital"],
  },
  {
    "id": 12,
    "name": "Gestione urgenze ed emergenze endocrine",
    "description":
        "Partecipazione diretta a: Gestione delle urgenze/emergenze endocrino-metaboliche in regime di ricovero (es. coma diabetico, crisi tireotossica, crisi surrenalica, ipoglicemia grave) (Direct participation in: Management of endocrine-metabolic emergencies/urgencies in inpatient settings (e.g., diabetic coma, thyroid storm, adrenal crisis, severe hypoglycemia))",
    "min_required_amount": 50,
    "required_departments": [
      "Reparto Degenza Ordinaria",
      "Terapia Intensiva",
      "Sub-Intensiva",
    ],
  },
];
