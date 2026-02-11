// SPDX-License-Identifier: BSD-3-Clause
// Copyright (c) 2026 medlav

// AREA MEDICA PEDIATRIA
const List<Map<String, dynamic>> kOfficialPediatriaActivities = [
  // Curriculum Pediatrico di Base (Triennio) - Attività professionalizzanti obbligatorie
  {
    "id": 1,
    "name": "Gestione del neonato sano",
    "description":
        "Seguire con responsabilità diretta e crescente autonomia neonati sani (Following healthy newborns with direct responsibility and increasing autonomy)",
    "min_required_amount": 50,
    "required_departments": ["Neonatologia", "Sala Parto", "Nido"],
  },
  {
    "id": 2,
    "name": "Gestione del neonato patologico",
    "description":
        "Seguire con responsabilità diretta e crescente autonomia neonati patologici (Following pathological newborns with direct responsibility and increasing autonomy)",
    "min_required_amount": 50,
    "required_departments": ["Neonatologia"],
  },
  {
    "id": 3,
    "name": "Visite pediatriche d'urgenza",
    "description":
        "Eseguire con responsabilità diretta e crescente autonomia visite ambulatoriali per problemi acuti o d'urgenza (Performing outpatient visits for acute or emergency problems with direct responsibility and increasing autonomy)",
    "min_required_amount": 500,
    "required_departments": ["Ambulatorio", "Pronto Soccorso Pediatrico"],
  },
  {
    "id": 4,
    "name": "Visite pediatriche di prevenzione",
    "description":
        "Eseguire con responsabilità diretta e crescente autonomia visite ambulatoriali (di cui almeno 1/3 dedicate alla prevenzione e all'educazione sanitaria) (Performing outpatient visits with direct responsibility and increasing autonomy (at least 1/3 dedicated to prevention and health education))",
    "min_required_amount": 300,
    "required_departments": ["Ambulatorio"],
  },
  {
    "id": 5,
    "name": "Visite pediatriche specialistiche",
    "description":
        "Eseguire con responsabilità diretta e crescente autonomia visite specialistiche distribuite tra gli ambiti specialistici (Performing specialist visits with direct responsibility and increasing autonomy distributed among the specialist areas)",
    "min_required_amount": 500,
    "required_departments": ["Ambulatorio Specialistico"],
  },
  // Curriculum della Formazione Specifica (Biennio) – Pediatria Generale Cure Primarie
  {
    "id": 6,
    "name": "Gestione clinica pediatrica generale",
    "description":
        "Seguire con responsabilità crescente fino all’autonomia pazienti ricoverati e/o ambulatoriali per problemi di Pediatria generale e specialistica (Following patients with increasing responsibility up to autonomy, inpatients and/or outpatients for General and Specialist Paediatrics problems)",
    "min_required_amount": 150,
    "required_departments": ["Pediatria Generale", "Ambulatorio"],
  },
  {
    "id": 7,
    "name": "Gestione urgenze in regime ambulatoriale",
    "description":
        "Seguire con responsabilità crescente fino all’autonomia pazienti ambulatoriali per problemi acuti e/o urgenze (Following outpatients with increasing responsibility up to autonomy for acute problems and/or emergencies)",
    "min_required_amount": 150,
    "required_departments": ["Ambulatorio", "Pronto Soccorso Pediatrico"],
  },
  {
    "id": 8,
    "name": "Screening e educazione sanitaria",
    "description":
        "Seguire con responsabilità crescente fino all’autonomia pazienti che necessitano interventi di screening, prevenzione ed educazione sanitaria (Following patients with increasing responsibility up to autonomy who require screening, prevention, and health education interventions)",
    "min_required_amount": 150,
    "required_departments": [],
  },
  {
    "id": 9,
    "name": "Gestione cronicità e rischio sociale",
    "description":
        "Seguire con responsabilità crescente fino all’autonomia pazienti con problematiche di sviluppo, comportamento o psicosociali, oppure affetti da patologia croniche e/o da rischio sociale (Following patients with increasing responsibility up to autonomy with developmental, behavioral, or psychosocial issues, or affected by chronic disease and/or social risk)",
    "min_required_amount": 50,
    "required_departments": [],
  },
  {
    "id": 10,
    "name": "Triage e consulto telefonico",
    "description":
        "Eseguire con responsabilità crescente fino all’autonomia il consulto telefonico-triage telefonico (Performing telephone consultation-telephone triage with increasing responsibility up to autonomy)",
    "min_required_amount": 50,
    "required_departments": [],
  },
  {
    "id": 11,
    "name": "Esecuzione di vaccinazioni",
    "description":
        "Eseguire con responsabilità crescente fino all’autonomia le vaccinazioni (Performing vaccinations with increasing responsibility up to autonomy)",
    "min_required_amount": 20,
    "required_departments": [],
  },
  {
    "id": 12,
    "name": "Bilanci di salute (Well-child visits)",
    "description":
        "Eseguire con responsabilità crescente fino all’autonomia i bilanci di salute (Performing health check-ups with increasing responsibility up to autonomy)",
    "min_required_amount": 100,
    "required_departments": [],
  },
  {
    "id": 13,
    "name": "Bilanci di salute nel paziente cronico",
    "description":
        "Eseguire con responsabilità crescente fino all’autonomia i bilanci di salute al cronico (Performing health check-ups for chronic patients with increasing responsibility up to autonomy)",
    "min_required_amount": 20,
    "required_departments": [],
  },
  {
    "id": 14,
    "name": "Presa in carico del neonato",
    "description":
        "Eseguire con responsabilità crescente fino all’autonomia la presa in carico del neonato (Taking charge of the newborn with increasing responsibility up to autonomy)",
    "min_required_amount": 10,
    "required_departments": [],
  },
  {
    "id": 15,
    "name": "Prescrizione farmaceutica e diagnostica",
    "description":
        "Eseguire con responsabilità crescente fino all’autonomia le ricette per patologie o diagnostica (Issuing prescriptions for pathologies or diagnostics with increasing responsibility up to autonomy)",
    "min_required_amount": 100,
    "required_departments": [],
  },
  {
    "id": 16,
    "name": "Certificazioni e refertazione",
    "description":
        "Eseguire con responsabilità crescente fino all’autonomia certificati e referti (Issuing certificates and reports with increasing responsibility up to autonomy)",
    "min_required_amount": 50,
    "required_departments": [],
  },
  {
    "id": 17,
    "name": "Attività di self-help diagnostico",
    "description":
        "Eseguire con responsabilità crescente fino all’autonomia l’attività di self help diagnostico (Performing diagnostic self-help activity with increasing responsibility up to autonomy)",
    "min_required_amount": 50,
    "required_departments": [],
  },
  // Curriculum della Formazione Specifica (Biennio) – Pediatria Generale Cure Secondarie
  {
    "id": 18,
    "name": "Ricoveri per pediatria generale",
    "description":
        "Pazienti ricoverati per problemi di Pediatria generale e Specialistica (Inpatients for General and Specialist Paediatrics problems)",
    "min_required_amount": 200,
    "required_departments": ["Pediatria Generale", "Specialistica Pediatrica"],
  },
  {
    "id": 19,
    "name": "Ricoveri per pediatria specialistica",
    "description":
        "Pazienti ricoverati con patologia pediatrica specialistica (Inpatients with specialist pediatric pathology)",
    "min_required_amount": 150,
    "required_departments": ["Specialistica Pediatrica"],
  },
  {
    "id": 20,
    "name": "Urgenze pediatriche ambulatoriali",
    "description":
        "Pazienti ambulatoriali per problemi acuti od urgenze (Outpatients for acute problems or emergencies)",
    "min_required_amount": 150,
    "required_departments": ["Ambulatorio", "Pronto Soccorso Pediatrico"],
  },
  {
    "id": 21,
    "name": "Assistenza in sala parto e nido",
    "description":
        "Neonati sani (sala parto e nido) (Healthy newborns (delivery room and nursery))",
    "min_required_amount": 50,
    "required_departments": ["Sala Parto", "Nido"],
  },
  {
    "id": 22,
    "name": "Rianimazione neonatale in sala parto",
    "description":
        "Rianimazione in sala parto (Resuscitation in the delivery room)",
    "min_required_amount": 10,
    "required_departments": ["Sala Parto"],
  },
  {
    "id": 23,
    "name": "Cura del neonato patologico",
    "description": "Neonati patologici (Pathological newborns)",
    "min_required_amount": 50,
    "required_departments": ["Neonatologia"],
  },
  {
    "id": 24,
    "name": "Terapia intensiva neonatale (TIN)",
    "description":
        "Neonati sottoposti a cure intensive (Newborns undergoing intensive care)",
    "min_required_amount": 20,
    "required_departments": ["Terapia Intensiva Neonatale"],
  },
  // Curriculum della Formazione Specifica (Biennio) - Adolescentologia
  {
    "id": 25,
    "name": "Ambulatorio di adolescentologia",
    "description":
        "Adolescentologia: pazienti ambulatoriali (Adolescentology: outpatients)",
    "min_required_amount": 50,
    "required_departments": ["Ambulatorio di Adolescentologia"],
  },
  {
    "id": 26,
    "name": "Degenza in adolescentologia",
    "description":
        "Adolescentologia: pazienti ricoverati (Adolescentology: inpatients)",
    "min_required_amount": 20,
    "required_departments": ["Reparto di Adolescentologia"],
  },
  {
    "id": 27,
    "name": "Gestione disturbi alimentari (DCA)",
    "description":
        "Adolescentologia: pazienti con disturbi della condotta alimentare (Adolescentology: patients with eating disorders)",
    "min_required_amount": 10,
    "required_departments": ["Servizio per Disturbi Alimentari"],
  },
  {
    "id": 28,
    "name": "Malattie croniche dell'adolescente",
    "description":
        "Adolescentologia: pazienti con patologia cronica (Adolescentology: patients with chronic disease)",
    "min_required_amount": 10,
    "required_departments": [],
  },
  // Curriculum della Formazione Specifica (Biennio) - Allergologia
  {
    "id": 29,
    "name": "Ambulatorio di allergologia",
    "description":
        "Allergologia: pazienti ambulatoriali (Allergology: outpatients)",
    "min_required_amount": 80,
    "required_departments": ["Ambulatorio di Allergologia"],
  },
  {
    "id": 30,
    "name": "Degenza in allergologia",
    "description":
        "Allergologia: pazienti ricoverati (Allergology: inpatients)",
    "min_required_amount": 50,
    "required_departments": ["Reparto di Allergologia"],
  },
  {
    "id": 31,
    "name": "Esecuzione test allergologici",
    "description":
        "Allergologia: test allergologici (prick, patch, prick by prick) (Allergology: allergy tests)",
    "min_required_amount": 30,
    "required_departments": [],
  },
  {
    "id": 32,
    "name": "Test di scatenamento (cibi/farmaci)",
    "description":
        "Allergologia: test di scatenamento alimentari o a farmaci (Allergology: food or drug challenge tests)",
    "min_required_amount": 10,
    "required_departments": [],
  },
  {
    "id": 33,
    "name": "Esecuzione spirometrie",
    "description": "Allergologia: spirometrie (Allergology: spirometries)",
    "min_required_amount": 30,
    "required_departments": [],
  },
  {
    "id": 34,
    "name": "Test di broncodilatazione",
    "description":
        "Allergologia: test di broncodilatazione (Allergology: bronchodilation tests)",
    "min_required_amount": 20,
    "required_departments": [],
  },
  {
    "id": 35,
    "name": "Test da sforzo allergologico",
    "description": "Allergologia: test da sforzo (Allergology: stress tests)",
    "min_required_amount": 10,
    "required_departments": [],
  },
  // Curriculum della Formazione Specifica (Biennio) - Cardiologia
  {
    "id": 36,
    "name": "Ambulatorio di cardiologia pediatrica",
    "description":
        "Cardiologia: pazienti ambulatoriali (Cardiology: outpatients)",
    "min_required_amount": 100,
    "required_departments": ["Ambulatorio di Cardiologia"],
  },
  {
    "id": 37,
    "name": "Degenza in cardiologia pediatrica",
    "description": "Cardiologia: pazienti ricoverati (Cardiology: inpatients)",
    "min_required_amount": 10,
    "required_departments": ["Reparto di Cardiologia"],
  },
  {
    "id": 38,
    "name": "Refertazione ECG pediatrico",
    "description": "Cardiologia: ECG (Cardiology: ECGs)",
    "min_required_amount": 50,
    "required_departments": [],
  },
  {
    "id": 39,
    "name": "Ecocardiografia pediatrica",
    "description": "Cardiologia: ecocardiogrammi (Cardiology: echocardiograms)",
    "min_required_amount": 50,
    "required_departments": [],
  },
  {
    "id": 40,
    "name": "Assistenza cateterismo cardiaco",
    "description":
        "Cardiologia: cateterismi cardiaci (assistenza) (Cardiology: cardiac catheterizations (assistance))",
    "min_required_amount": 10,
    "required_departments": ["Cardiologia Interventistica"],
  },
  // Curriculum della Formazione Specifica (Biennio) - Endocrinologia e diabetologia
  {
    "id": 41,
    "name": "Ambulatorio endocrino-diabetologico",
    "description":
        "Endocrinologia e diabetologia: pazienti ambulatoriali (Endocrinology and Diabetology: outpatients)",
    "min_required_amount": 100,
    "required_departments": ["Ambulatorio di Endocrinologia/Diabetologia"],
  },
  {
    "id": 42,
    "name": "Iter diagnostico endocrinopatie",
    "description":
        "Endocrinologia e diabetologia: iter diagnostico di pazienti con possibile endocrinopatia (Endocrinology and Diabetology: diagnostic pathway for patients with possible endocrinopathy)",
    "min_required_amount": 50,
    "required_departments": [],
  },
  {
    "id": 43,
    "name": "Emergenze endocrinologiche",
    "description":
        "Endocrinologia e diabetologia: emergenza endocrinologica (Endocrinology and Diabetology: endocrine emergency)",
    "min_required_amount": 5,
    "required_departments": [],
  },
  {
    "id": 44,
    "name": "Gestione chetoacidosi diabetica",
    "description":
        "Endocrinologia e diabetologia: chetoacidosi diabetica (Endocrinology and Diabetology: diabetic ketoacidosis)",
    "min_required_amount": 5,
    "required_departments": [],
  },
  {
    "id": 45,
    "name": "Terapia della pubertà precoce",
    "description":
        "Endocrinologia e diabetologia: prescrizione della terapia nei pazienti con pubertà precoce (Endocrinology and Diabetology: prescription of therapy in patients with precocious puberty)",
    "min_required_amount": 5,
    "required_departments": [],
  },
  {
    "id": 46,
    "name": "Gestione del deficit di GH",
    "description":
        "Endocrinologia e diabetologia: pazienti con deficit di GH (Endocrinology and Diabetology: patients with GH deficiency)",
    "min_required_amount": 5,
    "required_departments": [],
  },
  {
    "id": 47,
    "name": "Induzione della pubertà",
    "description":
        "Endocrinologia e diabetologia: prescrizione della terapia per indurre la pubertà (Endocrinology and Diabetology: prescription of therapy to induce puberty)",
    "min_required_amount": 5,
    "required_departments": [],
  },

  {
    "id": 48,
    "name": "Test di funzionalità respiratoria",
    "description":
        "Pneumologia: Eseguire spirometria e altri test di funzionalità respiratoria (anche su manichino) (Pneumology: Performing spirometry and other respiratory function tests (even on a mannequin))",
    "min_required_amount": 50,
    "required_departments": [],
  },
  {
    "id": 49,
    "name": "Test di broncoprovocazione",
    "description":
        "Pneumologia: Eseguire test di broncoprovocazione (anche su manichino) (Pneumology: Performing bronchoprovocation tests (even on a mannequin))",
    "min_required_amount": 10,
    "required_departments": [],
  },
  {
    "id": 50,
    "name": "Assistenza in broncoscopia",
    "description":
        "Pneumologia: Eseguire broncoscopia (osservazione/assistenza) (Pneumology: Performing bronchoscopy (observation/assistance))",
    "min_required_amount": 10,
    "required_departments": [],
  },
  // Curriculum della Formazione Specifica (biennio) - Nefrologia
  {
    "id": 51,
    "name": "Ambulatorio di nefrologia pediatrica",
    "description":
        "Nefrologia: Pazienti ambulatoriali (Nephrology: Outpatients)",
    "min_required_amount": 50,
    "required_departments": ["Ambulatorio di Nefrologia"],
  },
  {
    "id": 52,
    "name": "Degenza in nefrologia pediatrica",
    "description": "Nefrologia: Pazienti ricoverati (Nephrology: Inpatients)",
    "min_required_amount": 10,
    "required_departments": ["Reparto di Nefrologia"],
  },
  {
    "id": 53,
    "name": "Gestione ipertensione arteriosa",
    "description":
        "Nefrologia: Ipertensione arteriosa (Nephrology: Arterial Hypertension)",
    "min_required_amount": 10,
    "required_departments": [],
  },
  {
    "id": 54,
    "name": "Esecuzione/assistenza biopsie renali",
    "description":
        "Nefrologia: Prelievi bioptici (assistenza/esecuzione) (Nephrology: Biopsy sampling (assistance/execution))",
    "min_required_amount": 5,
    "required_departments": [],
  },
  {
    "id": 55,
    "name": "Gestione dialisi peritoneale",
    "description":
        "Nefrologia: Dialisi peritoneale (assistenza/esecuzione) (Nephrology: Peritoneal dialysis (assistance/execution))",
    "min_required_amount": 5,
    "required_departments": [],
  },
  {
    "id": 56,
    "name": "Assistenza dialisi extracorporea",
    "description":
        "Nefrologia: Dialisi extracorporea (assistenza) (Nephrology: Extracorporeal dialysis (assistance))",
    "min_required_amount": 5,
    "required_departments": [],
  },
  // Curriculum della Formazione Specifica (biennio) - Neurologia
  {
    "id": 57,
    "name": "Ambulatorio di neurologia pediatrica",
    "description":
        "Neurologia: Pazienti ambulatoriali (Neurology: Outpatients)",
    "min_required_amount": 50,
    "required_departments": ["Ambulatorio di Neurologia"],
  },
  {
    "id": 58,
    "name": "Degenza in neurologia pediatrica",
    "description": "Neurologia: Pazienti ricoverati (Neurology: Inpatients)",
    "min_required_amount": 10,
    "required_departments": ["Reparto di Neurologia"],
  },
  {
    "id": 59,
    "name": "Gestione delle cefalee pediatriche",
    "description": "Neurologia: Cefalea (Neurology: Headache)",
    "min_required_amount": 10,
    "required_departments": [],
  },
  {
    "id": 60,
    "name": "Gestione dell'epilessia infantile",
    "description": "Neurologia: Epilessia (Neurology: Epilepsy)",
    "min_required_amount": 10,
    "required_departments": [],
  },
  {
    "id": 61,
    "name": "Malattie neuromuscolari infantili",
    "description":
        "Neurologia: Malattie neuromuscolari (Neurology: Neuromuscular diseases)",
    "min_required_amount": 5,
    "required_departments": [],
  },
  {
    "id": 62,
    "name": "Procedure di neurofisiopatologia",
    "description":
        "Neurologia: Esecuzione di procedure diagnostiche specialistiche (EEG, EMG, potenziali evocati, liquor) (almeno 1/3 in autonomia) (Neurology: Execution of specialist diagnostic procedures (at least 1/3 autonomously))",
    "min_required_amount": 50,
    "required_departments": ["Laboratorio di Neurofisiopatologia"],
  },
  // Curriculum della Formazione Specifica (biennio) - Gastroenterologia
  {
    "id": 63,
    "name": "Ambulatorio di gastroenterologia",
    "description":
        "Gastroenterologia: Pazienti ambulatoriali (Gastroenterology: Outpatients)",
    "min_required_amount": 100,
    "required_departments": ["Ambulatorio di Gastroenterologia"],
  },
  {
    "id": 64,
    "name": "Degenza in gastroenterologia",
    "description":
        "Gastroenterologia: Pazienti ricoverati (Gastroenterology: Inpatients)",
    "min_required_amount": 20,
    "required_departments": ["Reparto di Gastroenterologia"],
  },
  {
    "id": 65,
    "name": "Gestione MICI pediatriche",
    "description":
        "Gastroenterologia: Malattie infiammatorie croniche intestinali (Gastroenterology: Chronic inflammatory bowel diseases)",
    "min_required_amount": 5,
    "required_departments": [],
  },
  {
    "id": 66,
    "name": "Assistenza endoscopia digestiva",
    "description":
        "Gastroenterologia: Esecuzione di endoscopie (assistenza) (Gastroenterology: Execution of endoscopies (assistance))",
    "min_required_amount": 20,
    "required_departments": ["Endoscopia Pediatrica"],
  },
  {
    "id": 67,
    "name": "Assistenza biopsie intestinali",
    "description":
        "Gastroenterologia: Esecuzione di biopsie intestinali (assistenza) (Gastroenterology: Execution of intestinal biopsies (assistance))",
    "min_required_amount": 5,
    "required_departments": ["Endoscopia Pediatrica"],
  },
  {
    "id": 68,
    "name": "Esecuzione pH-metrie",
    "description":
        "Gastroenterologia: pH-metrie (assistenza/esecuzione) (Gastroenterology: pH-metries (assistance/execution))",
    "min_required_amount": 5,
    "required_departments": [],
  },
  {
    "id": 69,
    "name": "Assistenza ecografia addominale",
    "description":
        "Gastroenterologia: Ecografie addominali (assistenza) (Gastroenterology: Abdominal ultrasounds (assistance))",
    "min_required_amount": 50,
    "required_departments": ["Diagnostica per Immagini"],
  },
  // Curriculum della Formazione Specifica (biennio) - Malattie Infettive
  {
    "id": 70,
    "name": "Ambulatorio malattie infettive",
    "description":
        "Malattie Infettive: Pazienti ambulatoriali (Infectious Diseases: Outpatients)",
    "min_required_amount": 100,
    "required_departments": ["Ambulatorio di Malattie Infettive"],
  },
  {
    "id": 71,
    "name": "Degenza malattie infettive",
    "description":
        "Malattie Infettive: Pazienti ricoverati (Infectious Diseases: Inpatients)",
    "min_required_amount": 20,
    "required_departments": ["Reparto di Malattie Infettive"],
  },
  {
    "id": 72,
    "name": "Diagnosi malattie esantematiche",
    "description":
        "Malattie Infettive: Malattie esantematiche (Infectious Diseases: Exanthematous diseases)",
    "min_required_amount": 10,
    "required_departments": [],
  },
  {
    "id": 73,
    "name": "Patologie prevenibili da vaccino",
    "description":
        "Malattie Infettive: Malattie pediatriche prevenibili con vaccino (Infectious Diseases: Vaccine-preventable pediatric diseases)",
    "min_required_amount": 10,
    "required_departments": [],
  },
  {
    "id": 74,
    "name": "Gestione terapia antiretrovirale",
    "description":
        "Malattie Infettive: Terapia antiretrovirale (Infectious Diseases: Antiretroviral therapy)",
    "min_required_amount": 5,
    "required_departments": [],
  },
  {
    "id": 75,
    "name": "Assistenza al paziente con TBC",
    "description":
        "Malattie Infettive: Assistenza a malati di TBC (Infectious Diseases: Assistance to TB patients)",
    "min_required_amount": 5,
    "required_departments": [],
  },
  {
    "id": 76,
    "name": "Assistenza al paziente con HIV",
    "description":
        "Malattie Infettive: Assistenza a malati con infezione da HIV (Infectious Diseases: Assistance to patients with HIV infection)",
    "min_required_amount": 5,
    "required_departments": [],
  },
  // Curriculum della Formazione Specifica (biennio) - Immunologia, Reumatologia e Malattie del Metabolismo
  {
    "id": 77,
    "name": "Ambulatorio specialistico reumatologico",
    "description":
        "Immunologia/Reumatologia/Metabolismo: Pazienti ambulatoriali (Immunology/Rheumatology/Metabolism: Outpatients)",
    "min_required_amount": 100,
    "required_departments": ["Ambulatorio Specialistico"],
  },
  {
    "id": 78,
    "name": "Degenza specialistica metabolica",
    "description":
        "Immunologia/Reumatologia/Metabolismo: Pazienti ricoverati (Immunology/Rheumatology/Metabolism: Inpatients)",
    "min_required_amount": 20,
    "required_departments": ["Reparto Specialistico"],
  },
  {
    "id": 79,
    "name": "Diagnosi delle immunodeficienze",
    "description":
        "Immunologia/Reumatologia/Metabolismo: Diagnosi e terapia delle immunodeficienze (Diagnosis and therapy of immunodeficiencies)",
    "min_required_amount": 5,
    "required_departments": [],
  },
  {
    "id": 80,
    "name": "Terapia delle malattie reumatiche",
    "description":
        "Immunologia/Reumatologia/Metabolismo: Diagnosi e terapia delle malattie reumatiche (Diagnosis and therapy of rheumatic diseases)",
    "min_required_amount": 5,
    "required_departments": [],
  },
  {
    "id": 81,
    "name": "Diagnosi dei dismetabolismi",
    "description":
        "Immunologia/Reumatologia/Metabolismo: Diagnosi e terapia dei dismetabolismi (Diagnosis and therapy of dysmetabolisms)",
    "min_required_amount": 5,
    "required_departments": [],
  },
  {
    "id": 82,
    "name": "Esecuzione aspirato midollare",
    "description":
        "Immunologia/Reumatologia/Metabolismo: Aspirazione di midollo (Bone marrow aspiration)",
    "min_required_amount": 5,
    "required_departments": ["Ematologia"],
  },
  {
    "id": 83,
    "name": "Artrocentesi e infiltrazioni",
    "description":
        "Immunologia/Reumatologia/Metabolismo: Artrocentesi e/o infiltrazioni (assistenza/esecuzione) (Arthrocentesis and/or infiltrations (assistance/execution))",
    "min_required_amount": 5,
    "required_departments": ["Reumatologia"],
  },
  // Curriculum della Formazione Specifica (biennio) - Terapia Intensiva (Rianimazione)
  {
    "id": 84,
    "name": "Gestione ventilazione meccanica",
    "description":
        "Terapia Intensiva: Pazienti sottoposti a ventilazione meccanica (Intensive Care: Patients undergoing mechanical ventilation)",
    "min_required_amount": 50,
    "required_departments": ["Terapia Intensiva Pediatrica"],
  },
  {
    "id": 85,
    "name": "Intubazioni e aspirazioni tracheali",
    "description":
        "Terapia Intensiva: Intubazioni e/o aspirazioni tracheali (assistenza/esecuzione) (Intensive Care: Intubations and/or tracheal aspirations (assistance/execution))",
    "min_required_amount": 50,
    "required_departments": ["Terapia Intensiva Pediatrica"],
  },
  {
    "id": 86,
    "name": "Posizionamento CVC pediatrico",
    "description":
        "Terapia Intensiva: Posizionamento di cateteri venosi centrali (assistenza/esecuzione) (Intensive Care: Placement of central venous catheters (assistance/execution))",
    "min_required_amount": 10,
    "required_departments": ["Terapia Intensiva Pediatrica"],
  },
  {
    "id": 87,
    "name": "Posizionamento cateteri arteriosi",
    "description":
        "Terapia Intensiva: Posizionamento di cateteri arteriosi (assistenza/esecuzione) (Intensive Care: Placement of arterial catheters (assistance/execution))",
    "min_required_amount": 10,
    "required_departments": ["Terapia Intensiva Pediatrica"],
  },
  {
    "id": 88,
    "name": "Posizionamento drenaggi toracici",
    "description":
        "Terapia Intensiva: Posizionamento di drenaggi toracici (assistenza/esecuzione) (Intensive Care: Placement of chest tubes (assistance/execution))",
    "min_required_amount": 5,
    "required_departments": ["Terapia Intensiva Pediatrica"],
  },
  {
    "id": 89,
    "name": "Esecuzione pericardiocentesi",
    "description":
        "Terapia Intensiva: Esecuzione di pericardiocentesi (assistenza/esecuzione) (Intensive Care: Execution of pericardiocentesis (assistance/execution))",
    "min_required_amount": 2,
    "required_departments": ["Terapia Intensiva Pediatrica"],
  },
  // Curriculum della Formazione Specifica (biennio) - Terapia del Dolore e Cure Palliative
  {
    "id": 90,
    "name": "Team multidisciplinare cure palliative",
    "description":
        "Terapia del Dolore e Cure Palliative: Partecipazione a team multidisciplinari (Pain Therapy and Palliative Care: Participation in multidisciplinary teams)",
    "min_required_amount": 10,
    "required_departments": [],
  },
  {
    "id": 91,
    "name": "Gestione del dolore pediatrico",
    "description":
        "Terapia del Dolore e Cure Palliative: Gestione del paziente (Pain Therapy and Palliative Care: Patient management)",
    "min_required_amount": 5,
    "required_departments": [],
  },
  // Curriculum della Formazione Specifica (biennio) - Diagnostica per Immagini
  {
    "id": 92,
    "name": "Assistenza ecografia pediatrica",
    "description":
        "Diagnostica per Immagini: Assistenza a esami ecografici (Diagnostic Imaging: Assistance with ultrasound examinations)",
    "min_required_amount": 50,
    "required_departments": ["Radiologia Pediatrica"],
  },
  {
    "id": 93,
    "name": "Assistenza radiologia tradizionale",
    "description":
        "Diagnostica per Immagini: Assistenza a esami radiologici semplici (Diagnostic Imaging: Assistance with simple radiological examinations)",
    "min_required_amount": 50,
    "required_departments": ["Radiologia Pediatrica"],
  },
  {
    "id": 94,
    "name": "Interpretazione RX torace",
    "description":
        "Diagnostica per Immagini: Interpretazione di RX torace (Diagnostic Imaging: Interpretation of chest X-ray)",
    "min_required_amount": 50,
    "required_departments": ["Radiologia Pediatrica"],
  },
  {
    "id": 95,
    "name": "Interpretazione Eco encefalo/addome",
    "description":
        "Diagnostica per Immagini: Interpretazione di Eco encefalo/addome (Diagnostic Imaging: Interpretation of brain/abdomen ultrasound)",
    "min_required_amount": 20,
    "required_departments": ["Radiologia Pediatrica"],
  },
  // Curriculum della Formazione Specifica (biennio) - Neuropsichiatria Infantile (NPI)
  {
    "id": 96,
    "name": "Disturbi dell'apprendimento (DSA)",
    "description":
        "NPI: Diagnosi e terapia dei disturbi dell’apprendimento (Child Neuropsychiatry: Diagnosis and therapy of learning disabilities)",
    "min_required_amount": 10,
    "required_departments": ["NPI"],
  },
  {
    "id": 97,
    "name": "Disturbi del linguaggio",
    "description":
        "NPI: Diagnosi e terapia dei disturbi del linguaggio (Child Neuropsychiatry: Diagnosis and therapy of language disorders)",
    "min_required_amount": 10,
    "required_departments": ["NPI"],
  },
  {
    "id": 98,
    "name": "Disturbi dello sviluppo",
    "description":
        "NPI: Diagnosi e terapia dei disturbi dello sviluppo (Child Neuropsychiatry: Diagnosis and therapy of developmental disorders)",
    "min_required_amount": 10,
    "required_departments": ["NPI"],
  },
  {
    "id": 99,
    "name": "Disturbi psichiatrici infantili",
    "description":
        "NPI: Diagnosi e terapia dei disturbi psichiatrici (Child Neuropsychiatry: Diagnosis and therapy of psychiatric disorders)",
    "min_required_amount": 10,
    "required_departments": ["NPI"],
  },
  // Curriculum della Formazione Specifica (biennio) - Chirurgia e Ortopedia
  {
    "id": 100,
    "name": "Assistenza chirurgia pediatrica",
    "description":
        "Chirurgia/Ortopedia: Assistenza a interventi di chirurgia generale (Surgery/Orthopedics: Assistance with general surgery procedures)",
    "min_required_amount": 10,
    "required_departments": ["Chirurgia Pediatrica"],
  },
  {
    "id": 101,
    "name": "Assistenza ortopedia pediatrica",
    "description":
        "Chirurgia/Ortopedia: Assistenza a interventi di ortopedia (Surgery/Orthopedics: Assistance with orthopedic procedures)",
    "min_required_amount": 5,
    "required_departments": ["Ortopedia Pediatrica"],
  },
  // Curriculum della Formazione Specifica (biennio) - Otorinolaringoiatria e Oculistica
  {
    "id": 102,
    "name": "Valutazione visus e motilità",
    "description":
        "Otorino/Oculistica: Valutazione del visus e motilità oculare (Otorhino/Ophthalmology: Evaluation of visual acuity and ocular motility)",
    "min_required_amount": 10,
    "required_departments": [],
  },
  {
    "id": 103,
    "name": "Valutazione otoscopica",
    "description":
        "Otorino/Oculistica: Valutazione otoscopica (Otorhino/Ophthalmology: Otoscopic evaluation)",
    "min_required_amount": 10,
    "required_departments": [],
  },
];
