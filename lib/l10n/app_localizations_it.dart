// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class AppLocalizationsIt extends AppLocalizations {
  AppLocalizationsIt([String locale = 'it']) : super(locale);

  @override
  String get appName => 'R Portfolio';

  @override
  String get appTitle => 'Portfolio SSM';

  @override
  String welcomeMessage(String username) {
    return 'Benvenuto $username';
  }

  @override
  String get progressSubtitle => 'Tieni traccia dei tuoi progressi e attività.';

  @override
  String get loadingData => 'Caricamento dati...';

  @override
  String get statProcedures => 'Procedure';

  @override
  String get statExams => 'Esami';

  @override
  String get statCredits => 'Crediti';

  @override
  String get drawerTooltip => 'Apri Menù';

  @override
  String get drawerProfile => 'Profilo';

  @override
  String get drawerPortfolio => 'Portfolio';

  @override
  String get drawerActivities => 'Attività';

  @override
  String get drawerCurriculum => 'Curriculum';

  @override
  String get drawerSettings => 'Impostazioni';

  @override
  String get drawerInfo => 'Informazioni';

  @override
  String drawerVersion(Object version) {
    return 'Versione $version';
  }

  @override
  String get infoScreenTitle => 'Informazioni sull\'App';

  @override
  String get infoSectionTitlePurpose => 'Scopo';

  @override
  String get infoSectionDescription =>
      'Questa applicazione gratuita e open-source è progettata esclusivamente per assistere i medici specializzandi nella registrazione, tracciamento e strutturazione digitale delle loro attività, procedure e obiettivi di apprendimento per il loro portfolio di specializzazione professionale.';

  @override
  String get infoSectionTitleLicense => 'Licenza e Disclaimer';

  @override
  String get disclaimerTitle => 'Disclaimer Semplificato BSD-3';

  @override
  String get disclaimerBody1 =>
      'Questo software è fornito \'così com\'è\' ed è gratuito da usare, modificare e distribuire. NON siamo responsabili per eventuali danni o perdite derivanti dall\'uso di questo software. Gli autori e i contributori NON forniscono alcuna garanzia, esplicita o implicita, riguardo alla sua funzionalità, accuratezza o idoneità per uno scopo particolare.';

  @override
  String get disclaimerBody2 =>
      'Questo software utilizza un database locale e la sua affidabilità non può essere garantita. L\'utente si assume la responsabilità esclusiva per tutti i dati inseriti e per la manutenzione delle impostazioni del profilo. In caso di perdita, corruzione dei dati o malfunzionamenti delle impostazioni del profilo, gli autori e i contributori non saranno ritenuti responsabili.';

  @override
  String get infoTileSourceCode => 'Codice Open Source (GitHub)';

  @override
  String get infoTilePrivacyPolicy => 'Politica sulla Privacy';

  @override
  String get buttonHomepage => 'Homepage';

  @override
  String get buttonHomepageTooltip => 'Torna alla Homepage';

  @override
  String get buttonViewActivities => 'Visualizza tutte le Attività';

  @override
  String get buttonLogActivity => 'Registra nuova Attività';

  @override
  String get settingsButtonTooltip => 'Impostazioni';

  @override
  String get settingsTitle => 'Impostazioni';

  @override
  String get settingsProfileSubtitle =>
      'Visualizza e modifica i tuoi dettagli personali';

  @override
  String get settingsProfilePlaceholderName => 'Utente Sconosciuto';

  @override
  String get settingsSectionPortfolio => 'Gestione Portfolio';

  @override
  String get settingsPortfolioTitle => 'Portfolio';

  @override
  String get settingsPortfolioSubtitle => 'Gestisci il Portfolio';

  @override
  String get settingsCategoriesTitle => 'Categorie Attività';

  @override
  String get settingsCategoriesSubtitle =>
      'Gestisci le categorie di attività (es. Esame, Procedura)';

  @override
  String get settingsSpecialtiesTitle => 'Specializzazioni';

  @override
  String get settingsSpecialtiesSubtitle =>
      'Controlla il portfolio richiesto per ogni specializzazione (e.g., Cardiologia, Radiologia)';

  @override
  String get settingsBackupDataTitle => 'Backup Dati';

  @override
  String get settingsBackupDataSubtitle =>
      'Esporta i dati del portfolio in un file (JSON, CSV)';

  @override
  String get settingsSectionAppearance => 'Aspetto';

  @override
  String get settingsDarkModeTitle => 'Modalità Scura';

  @override
  String get settingsDarkModeSubtitle =>
      'Attiva/disattiva il tema dell\'applicazione';

  @override
  String get settingsLanguageTitle => 'Cambia Lingua';

  @override
  String languageChangeConfirmTitle(Object languageName) {
    return 'Confermi il cambio in $languageName?';
  }

  @override
  String get languageChangeConfirmMessage =>
      'Il cambio di lingua richiede il riavvio dell\'applicazione. Continuare?';

  @override
  String get languageChangeConfirmButton => 'Conferma';

  @override
  String get buttonCancel => 'Annulla';

  @override
  String get restartingApp => 'Riavvio dell\'app...';

  @override
  String get settingsSectionAbout => 'Informazioni';

  @override
  String get settingsAppVersionTitle => 'Versione App';

  @override
  String get settingsExportFormatDialogTitle =>
      'Seleziona Formato di Esportazione';

  @override
  String get settingsExportJsonTitle => 'Esporta come JSON';

  @override
  String get settingsExportJsonSubtitle => 'Perfetto per l\'uso programmatico.';

  @override
  String get settingsExportCsvTitle => 'Esporta come CSV';

  @override
  String get settingsExportCsvSubtitle =>
      'Facile da visualizzare in Excel/Fogli.';

  @override
  String get settingsExportPdfTitle => 'Esporta come PDF';

  @override
  String get settingsExportPdfSubtitle =>
      'Per la stampa e la presentazione formale.';

  @override
  String settingsExportSnackBarMessage(String format) {
    return 'Avvio dell\'esportazione dei dati in $format...';
  }

  @override
  String get searchPlaceholder => 'Cerca attività, moduli o competenze';

  @override
  String get portfolioTabCurrentCurriculum => 'Curriculum Corrente';

  @override
  String get portfolioTabResidencyPortfolio => 'Portfolio di Specializzazione';

  @override
  String get portfolioTabOngoingActivities => 'Attività in Corso';

  @override
  String get portfolioTabToDoProgrammed => 'Attività Programmate';

  @override
  String get portfolioContentOngoing => 'Attività e Valutazioni in Corso';

  @override
  String get portfolioContentTodo => 'Da Fare / Programmate';

  @override
  String get portfolioTitle => 'Portfolio di Specializzazione';

  @override
  String get portfolioSectionSelectSpecialty =>
      'Seleziona la Specializzazione:';

  @override
  String get portfolioLabelSpecialty =>
      'Percorso di Specializzazione (Specialità)';

  @override
  String get portfolioNoCategoryError => 'Nessuna Categoria di Attività';

  @override
  String get portfolioNoSpecialtyData => 'Nessun Dato di Specializzazione';

  @override
  String portfolioSectionCurriculum(String specialty) {
    return 'Curriculum Minimo per $specialty:';
  }

  @override
  String portfolioNoCurriculumActivities(String specialty) {
    return 'Nessuna attività di curriculum minimo definita per $specialty.';
  }

  @override
  String get portfolioTableID => 'ID';

  @override
  String get portfolioTableActivityDescription => 'Descrizione Attività';

  @override
  String get portfolioTableMinUnits => 'Unità Minime';

  @override
  String get portfolioTableRequiredDept => 'Reparti e Dipartimenti';

  @override
  String get portfolioTableLog => 'Registra';

  @override
  String get portfolioLogActivityTooltip => 'Registra Attività';

  @override
  String portfolioLogActivitySnackbar(String activity) {
    return 'Registrazione attività: $activity';
  }

  @override
  String get portfolioFullDescription => 'Descrizione Completa:';

  @override
  String get portfolioAllRequiredDepartments => 'Tutti i Reparti Richiesti:';

  @override
  String get profileTitle => 'Modifica Profilo';

  @override
  String get profileLabelFullName => 'Nome Completo';

  @override
  String get profileLabelEmail => 'Indirizzo Email';

  @override
  String get profileLabelSpecialty =>
      'Specializzazione (es. Chirurgia, Pediatria)';

  @override
  String get profileLabelResidencyYear =>
      'Anno di Specializzazione (es. 1°, 2°)';

  @override
  String get profileLabelInstitution => 'Nome Istituzione/Programma';

  @override
  String get profileValidationNameRequired => 'Il nome è richiesto';

  @override
  String get profileValidationEmailInvalid => 'Inserisci un\'email valida';

  @override
  String get profileValidationSpecialtyRequired =>
      'La specializzazione è richiesta';

  @override
  String get profileValidationYearRequired => 'L\'anno è richiesto';

  @override
  String get profileValidationInstitutionRequired => 'L\'Istituto è richiesto';

  @override
  String get profileButtonSaveChanges => 'Salva Modifiche';

  @override
  String get profileSaveSuccess => 'Profilo Aggiornato con Successo!';

  @override
  String get profileSaveError => 'Errore durante il salvataggio: ';

  @override
  String get profileImagePickerTBD =>
      'Funzionalità di selezione immagine non implementata.';

  @override
  String get activityListTitle => 'Gestione Attività';

  @override
  String get activityListTotalCredits => 'Crediti/Ore Totali Registrate:';

  @override
  String get activityListEmptyState =>
      'Nessuna attività registrata. Tocca il + per iniziare!';

  @override
  String get activityListNewActivityButton => 'Nuova Attività';

  @override
  String activityListDeleteSnackbar(String activityName) {
    return '$activityName eliminata.';
  }

  @override
  String get activityListCreditsHoursLabel => 'Crediti/Ore';

  @override
  String activityListCategory(String category) {
    return 'Categoria: $category';
  }

  @override
  String activityListDate(String date) {
    return 'Data: $date';
  }

  @override
  String activityListNotes(String notes) {
    return 'Note: $notes';
  }

  @override
  String get activityListNotesPlaceholder => 'N/D';

  @override
  String get activityFormTitleEdit => 'Modifica Attività';

  @override
  String get activityFormTitleAdd => 'Aggiungi Nuova Attività';

  @override
  String get activityFormLabelName =>
      'Nome dell\'Attività (e.g. Iniezione endovenosa)';

  @override
  String get activityFormValidationNameRequired =>
      'Inserisci il nome dell\'attività.';

  @override
  String get activityFormLabelCategory => 'Categoria/Area di Attività';

  @override
  String get activityFormLabelCreditsHours => 'Crediti / Ore Registrate';

  @override
  String get activityFormValidationCreditsInvalid =>
      'Inserisci un numero valido.';

  @override
  String get activityFormValidationCreditsPositive =>
      'Il valore deve essere positivo.';

  @override
  String get activityFormLabelDate => 'Data dell\'Attività';

  @override
  String get activityFormLabelNotes =>
      'Note/Riflessioni (e.g., medico supervisore, contesto)';

  @override
  String get activityFormButtonSave => 'Salva Modifiche';

  @override
  String get activityFormButtonAdd => 'Aggiungi Attività';

  @override
  String get activityFormSuccessAdd => 'Attività aggiunta con successo!';

  @override
  String get activityFormSuccessUpdate => 'Attività aggiornata con successo!';

  @override
  String get activityFormErrorSave => 'Errore di salvataggio: ';

  @override
  String get activityFormCategory1 =>
      'Attività I: Area Clinica (Terapia Intensiva)';

  @override
  String get activityFormCategory2 => 'Attività II: Area Diagnostica';

  @override
  String get activityFormCategory3 => 'Attività III: Area Ricerca & Gestione';

  @override
  String get activityFormCategory4 =>
      'Attività IV: Area Didattica & Comunicazione';

  @override
  String get activityFormCategory5 => 'Attività V: Medicina del Lavoro';

  @override
  String get activityFormCategoryOther => 'Altro';

  @override
  String specialtySearchHeader(String specialty) {
    return 'Cerca Attività per $specialty:';
  }

  @override
  String get specialtySelectActivityHint => 'Cerca attività del portfolio';

  @override
  String get specialtySearchHint =>
      'e.g., \"Esame fisico\" o \"Appendicectomia\"';

  @override
  String get specialtyDetailHeader => 'Metadati dell\'Attività Selezionata:';

  @override
  String get specialtyDetailPesoLabel => 'Peso (Unità Minime)';

  @override
  String get specialtyDetailDepartmentLabel => 'Reparto/Settore Richiesto';

  @override
  String get specialtyDetailButtonSave => 'Salva Attività';

  @override
  String specialtyDetailButtonSaveSuccess(String activity, String specialty) {
    return 'Attività \'$activity\' gestita per $specialty!';
  }

  @override
  String errorLoadingCategories(String error) {
    return 'Errore nel caricamento delle categorie: $error';
  }

  @override
  String get noCategoriesAvailable =>
      'Nessuna categoria trovata. Usa il pulsante \'+\' per aggiungerne una.';

  @override
  String get categoryDescriptionLabel => 'Descrizione:';

  @override
  String get noDescriptionProvided => 'Nessuna descrizione fornita.';

  @override
  String get edit => 'Modifica';

  @override
  String get delete => 'Elimina';

  @override
  String get activityFormLabelDateEnd => 'Data di fine (Opzionale)';

  @override
  String get activityFormLabelDateEndEmpty => 'Seleziona data di fine';

  @override
  String get activityFormButtonClearDate => 'Cancella Data';

  @override
  String activityListDateRange(Object dateRange) {
    return 'Data: $dateRange';
  }

  @override
  String get deleteEntrySuccess => 'Voce eliminata con successo.';

  @override
  String get deleteEntryError => 'Errore durante l\'eliminazione della voce.';

  @override
  String get buttonDeleteActivity => 'Elimina Attività';

  @override
  String get dialogDeleteConfirmationTitle => 'Conferma Eliminazione';

  @override
  String get dialogDeleteConfirmationContent =>
      'Sei sicuro di voler eliminare definitivamente questa voce?';

  @override
  String get dialogSaveConfirmationTitle => 'Conferma Nuova Voce';

  @override
  String get dialogSaveConfirmationContent =>
      'Sei sicuro di voler salvare questa nuova attività?';

  @override
  String get dialogUpdateConfirmationTitle => 'Conferma Modifiche';

  @override
  String get dialogUpdateConfirmationContent =>
      'Sei sicuro di voler applicare queste modifiche alla voce esistente?';

  @override
  String get buttonConfirmSave => 'Salva';

  @override
  String get buttonConfirmUpdate => 'Aggiorna';

  @override
  String get settingsExportDbTitle => 'Database Grezzo (.db)';

  @override
  String get settingsExportDbSubtitle =>
      'Esporta il file di database SQLite grezzo per backup tecnico o migrazione.';

  @override
  String get activityFormLabelInstitution => 'Nome Istituzione';

  @override
  String get activityFormValidationInstitutionRequired =>
      'Il nome dell\'istituzione è obbligatorio.';

  @override
  String get activityFormLabelDepartments => 'Dipartimento/i';

  @override
  String get categoryDescriptionTitle => 'Descrizione Categoria';

  @override
  String get categoryDescriptionEmpty =>
      'Nessuna descrizione disponibile per questa categoria.';

  @override
  String get buttonClose => 'Chiudi';

  @override
  String get activityFormCategoryInfoTooltip =>
      'Visualizza descrizione categoria';

  @override
  String get portfolioContentCurriculumDashboard =>
      'Qui verrà visualizzata la dashboard con le attività completate e i progressi.';

  @override
  String get portfolioContentUpcomingEmpty =>
      'Nessuna attività programmata trovata. Pianifica i tuoi impegni futuri!';

  @override
  String get portfolioContentOngoingEmpty =>
      'Nessuna attività è attualmente contrassegnata come in corso.';

  @override
  String get noResultsFound => 'Nessun risultato';

  @override
  String get noData => 'Nessun Dato';

  @override
  String get duplicateEntryTooltip => 'Duplica l\'Attività';

  @override
  String get categoryFormTitleAdd => 'Aggiungi Categoria';

  @override
  String get categoryFormTitleEdit => 'Modifica Categoria';

  @override
  String get categoryFormLabelName => 'Nome Categoria';

  @override
  String get categoryFormLabelAmountType => 'Tipo di Quantità';

  @override
  String get categoryFormLabelMinAmount => 'Quantità Minima Richiesta';

  @override
  String get categoryFormLabelRequiredDepts =>
      'Reparti Richiesti (separati da virgola)';

  @override
  String get categoryFormLabelDescription => 'Descrizione';

  @override
  String get categoryFormValidationNameRequired => 'Inserisci un nome';

  @override
  String get categoryFormButtonSave => 'Salva Categoria';

  @override
  String get categoryFormButtonUpdate => 'Aggiorna Categoria';

  @override
  String get categoryFormSuccessAdd => 'Categoria aggiunta';

  @override
  String get categoryFormSuccessUpdate => 'Categoria aggiornata';

  @override
  String get categoryLabelId => 'ID';

  @override
  String get categoryLabelUnit => 'Unità';

  @override
  String categoryDeleteConfirmation(String name) {
    return 'Sei sicuro di voler eliminare \'$name\'?\nPremi Elimina per confermare o Annulla per tornare indietro.';
  }

  @override
  String get amountTypeNumber => 'numero';

  @override
  String get amountTypeHours => 'ore';

  @override
  String get amountTypeCredits => 'crediti';

  @override
  String get categoryResetTitle => 'Ripristinare le categorie?';

  @override
  String get categoryResetMessage =>
      'Questo cancellerà tutte le categorie personalizzate e ripristinerà quelle predefinite. L\'azione è irreversibile.';

  @override
  String get categoryResetButton => 'Ripristina tutto';

  @override
  String get categoryResetTooltip => 'Ripristina predefiniti';

  @override
  String get menuTooltip => 'Mostra menu';

  @override
  String get infoTitle => 'Informazioni';

  @override
  String get activityFormSuccessDuplicate =>
      'Voce duplicata. Stai modificando la copia.';

  @override
  String get privacyPolicyTitle => 'Informativa sulla Privacy';

  @override
  String get privacyHeader => 'Privacy e Sicurezza dei Dati';

  @override
  String get privacyLastUpdated => 'Ultimo aggiornamento: Febbraio 2026';

  @override
  String privacyVersion(Object version) {
    return 'Residency Portfolio v$version';
  }

  @override
  String get privacySection1Title => '1. Archiviazione dei Dati';

  @override
  String get privacySection1Content =>
      'Tutti i dati inseriti nell\'applicazione Residency Portfolio, inclusi attività, crediti e nomi delle istituzioni sono memorizzati localmente sul tuo dispositivo. Non utilizziamo server cloud esterni per ospitare dati del tuo portfolio.';

  @override
  String get privacySection2Title => '2. Informazioni Personali';

  @override
  String get privacySection2Content =>
      'Il tuo nome e l\'indirizzo email sono utilizzati esclusivamente per personalizzare la tua esperienza e generare il tuo Curriculum Vitae. Queste informazioni rimangono all\'interno dell\'applicazione.';

  @override
  String get privacySection3Title => '3. Generazione PDF';

  @override
  String get privacySection3Content =>
      'Quando esporti il tuo curriculum in formato PDF, il documento viene generato localmente. Nessun dato viene trasmesso ai nostri server durante questo processo.';

  @override
  String get privacySection4Title => '4. Accesso di Terze Parti';

  @override
  String get privacySection4Content =>
      'Non vendiamo, scambiamo o trasferiamo in alcun modo i dati della tua specializzazione a terze parti. I tuoi dati sono di tua proprietà personale.';

  @override
  String get privacySection5Title => '5. Sicurezza';

  @override
  String get privacySection5Content =>
      'Poiché i dati sono archiviati localmente, la sicurezza delle tue informazioni dipende dalla sicurezza del tuo dispositivo mobile. Ti consigliamo di utilizzare blocchi biometrici o codici di accesso sul tuo dispositivo.';

  @override
  String get exportPdf => 'Esporta PDF';

  @override
  String get curriculumHeaderTitle => 'Curriculum Professionale';

  @override
  String get curriculumHeaderSubtitle => 'Riepilogo Esperienze Certificate';

  @override
  String curriculumSummaryStats(String total, int count) {
    return '$total Crediti Totali su $count Attività';
  }

  @override
  String curriculumAggregatedSessions(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Aggregato da $count sessioni',
      one: 'Aggregato da 1 sessione',
    );
    return '$_temp0';
  }

  @override
  String get deleteImageTitle => 'Rimuovi Immagine Profilo';

  @override
  String get deleteImageConfirmation =>
      'Sicuro di voler rimuovere l\'immagine?';

  @override
  String get cancel => 'Indietro';

  @override
  String pdfFooterGeneratedOn(Object date) {
    return 'Generato via Residency Portfolio App in data $date';
  }

  @override
  String get specialtyChangeLockedTitle => 'Specializzazione Bloccata';

  @override
  String get specialtyChangeLockedContent =>
      'Sono presenti attività nel tuo portfolio. Per cambiare specializzazione, devi prima eliminare tutte le attività correnti per garantire la coerenza dei dati.';

  @override
  String get buttonOk => 'OK';

  @override
  String get activityFormLabelMinRequirement => 'Requisito Minimo Crediti/Ore';

  @override
  String get activityFormValidationMinRequired =>
      'Il requisito minimo per questa categoria è';

  @override
  String get importSuccess => 'Database ripristinato con successo!';

  @override
  String get importCancelled => 'Importazione annullata';

  @override
  String importError(String error) {
    return 'Importazione fallita: $error';
  }

  @override
  String get webNotSupported =>
      'Questa funzione non è disponibile nella versione web.';

  @override
  String get importInvalid =>
      'Il file selezionato non è un backup valido di Portfolio.';

  @override
  String get importConfirmTitle => 'Sovrascrivere i dati?';

  @override
  String get importConfirmMessage =>
      'Tutte le voci attuali verranno eliminate e sostituite con il backup. Continuare?';
}
