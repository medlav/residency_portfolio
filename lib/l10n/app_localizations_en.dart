// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appName => 'R Portfolio';

  @override
  String get appTitle => 'Residency Portfolio';

  @override
  String welcomeMessage(String username) {
    return 'Welcome $username';
  }

  @override
  String get progressSubtitle => 'Track your progress and activities.';

  @override
  String get loadingData => 'Loading data...';

  @override
  String get statProcedures => 'Procedures';

  @override
  String get statExams => 'Exams';

  @override
  String get statCredits => 'Credits';

  @override
  String get drawerTooltip => 'Open Drawer';

  @override
  String get drawerProfile => 'Profile';

  @override
  String get drawerPortfolio => 'Portfolio';

  @override
  String get drawerActivities => 'Activities';

  @override
  String get drawerCurriculum => 'Curriculum';

  @override
  String get drawerSettings => 'Settings';

  @override
  String get drawerInfo => 'Info';

  @override
  String drawerVersion(Object version) {
    return 'Version $version';
  }

  @override
  String get infoScreenTitle => 'About This App';

  @override
  String get infoSectionTitlePurpose => 'Purpose';

  @override
  String get infoSectionDescription =>
      'This free, open-source application is designed exclusively to assist medical residents in digitally logging, tracking, and structuring their activities, procedures, and learning goals for their professional residency portfolio.';

  @override
  String get infoSectionTitleLicense => 'License & Disclaimer';

  @override
  String get disclaimerTitle => 'BSD-3 Clause Simplified Disclaimer';

  @override
  String get disclaimerBody1 =>
      'This software is provided \'as is,\' is free to use, modify, and distribute. We are NOT liable for any damages or losses related to its use. The authors and contributors provide NO warranty, express or implied, regarding its functionality, accuracy, or fitness for a particular purpose.';

  @override
  String get disclaimerBody2 =>
      'This software utilizes a local database, and its reliability cannot be guaranteed. The user assumes sole responsibility for all data entered and the maintenance of profile settings. In the event of data loss, corruption, or profile setting malfunctions, the authors and contributors shall not be held liable.';

  @override
  String get infoTileSourceCode => 'Source Code (GitHub)';

  @override
  String get infoTilePrivacyPolicy => 'Privacy Policy';

  @override
  String get buttonHomepage => 'Homepage';

  @override
  String get buttonHomepageTooltip => 'Go to Homepage';

  @override
  String get buttonViewActivities => 'View all the Activities';

  @override
  String get buttonLogActivity => 'Log new Activity';

  @override
  String get settingsButtonTooltip => 'Settings';

  @override
  String get settingsTitle => 'Settings';

  @override
  String get settingsProfileSubtitle => 'View & edit your personal details';

  @override
  String get settingsProfilePlaceholderName => 'Unregistered User';

  @override
  String get settingsSectionPortfolio => 'Portfolio Management';

  @override
  String get settingsPortfolioTitle => 'Portfolio';

  @override
  String get settingsPortfolioSubtitle => 'Manage Portfolio';

  @override
  String get settingsCategoriesTitle => 'Categories';

  @override
  String get settingsCategoriesSubtitle =>
      'Manage activity categories (e.g., Exam, Procedure)';

  @override
  String get settingsSpecialtiesTitle => 'Specialties';

  @override
  String get settingsSpecialtiesSubtitle =>
      'Check the portfolio required for every Specialty (e.g., Cardiology, Radiology)';

  @override
  String get settingsBackupDataTitle => 'Backup Data';

  @override
  String get settingsBackupDataSubtitle =>
      'Export portfolio data to a file (JSON, CSV)';

  @override
  String get settingsSectionAppearance => 'Appearance';

  @override
  String get settingsDarkModeTitle => 'Dark Mode';

  @override
  String get settingsDarkModeSubtitle => 'Toggle application theme';

  @override
  String get settingsLanguageTitle => 'Change Language';

  @override
  String languageChangeConfirmTitle(Object languageName) {
    return 'Confirm Language Change to $languageName?';
  }

  @override
  String get languageChangeConfirmMessage =>
      'Changing the language requires the app to restart. Continue?';

  @override
  String get languageChangeConfirmButton => 'Confirm';

  @override
  String get buttonCancel => 'Cancel';

  @override
  String get restartingApp => 'Restarting app...';

  @override
  String get settingsSectionAbout => 'About';

  @override
  String get settingsAppVersionTitle => 'App Version';

  @override
  String get settingsExportFormatDialogTitle => 'Select Export Format';

  @override
  String get settingsExportJsonTitle => 'Export as JSON';

  @override
  String get settingsExportJsonSubtitle => 'Perfect for programmatic use.';

  @override
  String get settingsExportCsvTitle => 'Export as CSV';

  @override
  String get settingsExportCsvSubtitle => 'Easy to view in Excel/Sheets.';

  @override
  String get settingsExportPdfTitle => 'Export as PDF';

  @override
  String get settingsExportPdfSubtitle => 'For printing and formal submission.';

  @override
  String settingsExportSnackBarMessage(String format) {
    return 'Starting export of data to $format...';
  }

  @override
  String get searchPlaceholder => 'Search activities, modules, or competences';

  @override
  String get portfolioTabCurrentCurriculum => 'Current Curriculum';

  @override
  String get portfolioTabResidencyPortfolio => 'Residency Portfolio';

  @override
  String get portfolioTabOngoingActivities => 'Ongoing Activities';

  @override
  String get portfolioTabToDoProgrammed => 'Programmed Activities';

  @override
  String get portfolioContentOngoing => 'Ongoing Activities and Assessments';

  @override
  String get portfolioContentTodo => 'To Do / Programmed';

  @override
  String get portfolioTitle => 'Residency Curriculum';

  @override
  String get portfolioSectionSelectSpecialty => 'Select Residency Specialty:';

  @override
  String get portfolioLabelSpecialty => 'Residency Track';

  @override
  String get portfolioNoCategoryError => 'No Category Data';

  @override
  String get portfolioNoSpecialtyData => 'No Specialty Data';

  @override
  String portfolioSectionCurriculum(String specialty) {
    return 'Minimum Curriculum for $specialty:';
  }

  @override
  String portfolioNoCurriculumActivities(String specialty) {
    return 'No minimum curriculum activities defined for $specialty.';
  }

  @override
  String get portfolioTableID => 'ID';

  @override
  String get portfolioTableActivityDescription => 'Activity Description';

  @override
  String get portfolioTableMinUnits => 'Min Units';

  @override
  String get portfolioTableRequiredDept => 'Required Departments';

  @override
  String get portfolioTableLog => 'Log';

  @override
  String get portfolioLogActivityTooltip => 'Log Activity';

  @override
  String portfolioLogActivitySnackbar(String activity) {
    return 'Logging activity: $activity';
  }

  @override
  String get portfolioFullDescription => 'Full Description:';

  @override
  String get portfolioAllRequiredDepartments => 'All Required Departments:';

  @override
  String get profileTitle => 'Edit Profile';

  @override
  String get profileLabelFullName => 'Full Name';

  @override
  String get profileLabelEmail => 'Email Address';

  @override
  String get profileLabelSpecialty => 'Specialty (e.g., Surgery, Peds)';

  @override
  String get profileLabelResidencyYear => 'Residency Year (e.g., PGY-3, R-2)';

  @override
  String get profileLabelInstitution => 'Institution/Program Name';

  @override
  String get profileValidationNameRequired => 'Name is required';

  @override
  String get profileValidationEmailInvalid => 'Enter a valid email';

  @override
  String get profileValidationSpecialtyRequired => 'Specialty is required';

  @override
  String get profileValidationYearRequired => 'Year is required';

  @override
  String get profileValidationInstitutionRequired => 'Institution is required';

  @override
  String get profileButtonSaveChanges => 'Save Changes';

  @override
  String get profileSaveSuccess => 'Profile updated successfully';

  @override
  String get profileSaveError => 'Error saving profile: ';

  @override
  String get profileImagePickerTBD => 'Image picker functionality TBD.';

  @override
  String get activityListTitle => 'Activities Tracker';

  @override
  String get activityListTotalCredits => 'Total Credits/Hours Logged:';

  @override
  String get activityListEmptyState =>
      'No activities logged yet. Tap the + to begin!';

  @override
  String get activityListNewActivityButton => 'New Activity';

  @override
  String activityListDeleteSnackbar(String activityName) {
    return '$activityName deleted.';
  }

  @override
  String get activityListCreditsHoursLabel => 'Credits/Hrs';

  @override
  String activityListCategory(String category) {
    return 'Category: $category';
  }

  @override
  String activityListDate(String date) {
    return 'Date: $date';
  }

  @override
  String activityListNotes(String notes) {
    return 'Notes: $notes';
  }

  @override
  String get activityListNotesPlaceholder => 'N/A';

  @override
  String get activityFormTitleEdit => 'Edit Activity';

  @override
  String get activityFormTitleAdd => 'Add New Activity';

  @override
  String get activityFormLabelName =>
      'Activity Name (e.g. Intravenous injection)';

  @override
  String get activityFormValidationNameRequired =>
      'Please enter the activity name.';

  @override
  String get activityFormLabelCategory => 'Category/Activity Area';

  @override
  String get activityFormLabelCreditsHours => 'Credits / Hours Logged';

  @override
  String get activityFormValidationCreditsInvalid =>
      'Please enter a valid number.';

  @override
  String get activityFormValidationCreditsPositive =>
      'The value must be positive.';

  @override
  String get activityFormLabelDate => 'Activity Date';

  @override
  String get activityFormLabelNotes =>
      'Notes/Reflections (e.g., supervising physician, context)';

  @override
  String get activityFormButtonSave => 'Save Changes';

  @override
  String get activityFormButtonAdd => 'Add Activity';

  @override
  String get activityFormSuccessAdd => 'Activity added successfully!';

  @override
  String get activityFormSuccessUpdate => 'Activity updated successfully!';

  @override
  String get activityFormErrorSave => 'Save error: ';

  @override
  String get activityFormCategory1 =>
      'Activity I: Clinical Area (Intensive Care)';

  @override
  String get activityFormCategory2 => 'Activity II: Diagnostic Area';

  @override
  String get activityFormCategory3 =>
      'Activity III: Research & Management Area';

  @override
  String get activityFormCategory4 =>
      'Activity IV: Teaching & Communication Area';

  @override
  String get activityFormCategory5 => 'Activity V: Occupational Medicine';

  @override
  String get activityFormCategoryOther => 'Other';

  @override
  String specialtySearchHeader(String specialty) {
    return 'Search Activities for $specialty:';
  }

  @override
  String get specialtySelectActivityHint => 'Search portfolio activity';

  @override
  String get specialtySearchHint =>
      'e.g., \"Physical examination\" or \"Appendectomy\"';

  @override
  String get specialtyDetailHeader => 'Selected Activity Metadata:';

  @override
  String get specialtyDetailPesoLabel => 'Peso (Min Units)';

  @override
  String get specialtyDetailDepartmentLabel => 'Required Department/Sector';

  @override
  String get specialtyDetailButtonSave => 'Save Activity';

  @override
  String specialtyDetailButtonSaveSuccess(String activity, String specialty) {
    return 'Activity \'$activity\' managed for $specialty!';
  }

  @override
  String errorLoadingCategories(String error) {
    return 'Failed to load categories: $error';
  }

  @override
  String get noCategoriesAvailable =>
      'No categories found. Use the \'+\' button to add one.';

  @override
  String get categoryDescriptionLabel => 'Description:';

  @override
  String get noDescriptionProvided => 'No description provided.';

  @override
  String get edit => 'Edit';

  @override
  String get delete => 'Delete';

  @override
  String get activityFormLabelDateEnd => 'End Date (Optional)';

  @override
  String get activityFormLabelDateEndEmpty => 'Select end date';

  @override
  String get activityFormButtonClearDate => 'Clear Date';

  @override
  String activityListDateRange(Object dateRange) {
    return 'Date: $dateRange';
  }

  @override
  String get deleteEntrySuccess => 'Entry deleted successfully.';

  @override
  String get deleteEntryError => 'Failed to delete entry.';

  @override
  String get buttonDeleteActivity => 'Delete Activity';

  @override
  String get dialogDeleteConfirmationTitle => 'Confirm Deletion';

  @override
  String get dialogDeleteConfirmationContent =>
      'Are you sure you want to permanently delete this entry?';

  @override
  String get dialogSaveConfirmationTitle => 'Confirm New Entry';

  @override
  String get dialogSaveConfirmationContent =>
      'Are you sure you want to save this new activity?';

  @override
  String get dialogUpdateConfirmationTitle => 'Confirm Changes';

  @override
  String get dialogUpdateConfirmationContent =>
      'Are you sure you want to apply these changes to the existing entry?';

  @override
  String get buttonConfirmSave => 'Save';

  @override
  String get buttonConfirmUpdate => 'Update';

  @override
  String get settingsExportDbTitle => 'Raw Database (.db)';

  @override
  String get settingsExportDbSubtitle =>
      'Export the raw SQLite database file for technical backup or migration.';

  @override
  String get activityFormLabelInstitution => 'Institution Name';

  @override
  String get activityFormValidationInstitutionRequired =>
      'Institution name is required.';

  @override
  String get activityFormLabelDepartments => 'Department(s)';

  @override
  String get categoryDescriptionTitle => 'Category Description';

  @override
  String get categoryDescriptionEmpty =>
      'No description available for this category.';

  @override
  String get buttonClose => 'Close';

  @override
  String get activityFormCategoryInfoTooltip => 'View category description';

  @override
  String get portfolioContentCurriculumDashboard =>
      'Dashboard view of completed activities and progress will go here.';

  @override
  String get portfolioContentUpcomingEmpty =>
      'No programmed activities found. Plan your future tasks!';

  @override
  String get portfolioContentOngoingEmpty =>
      'No activities are currently marked as ongoing.';

  @override
  String get noResultsFound => 'No Results Found';

  @override
  String get noData => 'No Data';

  @override
  String get duplicateEntryTooltip => 'Duplicate Entry';

  @override
  String get categoryFormTitleAdd => 'Add Category';

  @override
  String get categoryFormTitleEdit => 'Edit Category';

  @override
  String get categoryFormLabelName => 'Category Name';

  @override
  String get categoryFormLabelAmountType => 'Amount Type';

  @override
  String get categoryFormLabelMinAmount => 'Min Required Amount';

  @override
  String get categoryFormLabelRequiredDepts =>
      'Required Departments (comma separated)';

  @override
  String get categoryFormLabelDescription => 'Description';

  @override
  String get categoryFormValidationNameRequired => 'Enter a name';

  @override
  String get categoryFormButtonSave => 'Save Category';

  @override
  String get categoryFormButtonUpdate => 'Update Category';

  @override
  String get categoryFormSuccessAdd => 'Category added';

  @override
  String get categoryFormSuccessUpdate => 'Category updated';

  @override
  String get categoryLabelId => 'ID';

  @override
  String get categoryLabelUnit => 'Unit';

  @override
  String categoryDeleteConfirmation(String name) {
    return 'Are you sure you want to delete \'$name\'?\nPress Delete if you\'re sure or press Cancel to go back.';
  }

  @override
  String get amountTypeNumber => 'number';

  @override
  String get amountTypeHours => 'hours';

  @override
  String get amountTypeCredits => 'credits';

  @override
  String get categoryResetTitle => 'Reset Categories?';

  @override
  String get categoryResetMessage =>
      'This will delete all custom categories and restore the defaults. This action cannot be undone.';

  @override
  String get categoryResetButton => 'Reset Everything';

  @override
  String get categoryResetTooltip => 'Reset to Defaults';

  @override
  String get menuTooltip => 'Show menu';

  @override
  String get infoTitle => 'Information';

  @override
  String get activityFormSuccessDuplicate =>
      'Entry duplicated. You are now editing the copy.';

  @override
  String get privacyPolicyTitle => 'Privacy Policy';

  @override
  String get privacyHeader => 'Data Privacy & Security';

  @override
  String get privacyLastUpdated => 'Last updated: February 2026';

  @override
  String privacyVersion(Object version) {
    return 'Residency Portfolio v$version';
  }

  @override
  String get privacySection1Title => '1. Data Storage';

  @override
  String get privacySection1Content =>
      'All data entered into the Residency Portfolio, including your activities, credits, and institution names, is stored locally on your device. We do not use external cloud servers to host your portfolio entries.';

  @override
  String get privacySection2Title => '2. Personal Information';

  @override
  String get privacySection2Content =>
      'Your name and email address are used solely for the purpose of personalizing your experience and generating your Curriculum Vitae. This information remains within the application.';

  @override
  String get privacySection3Title => '3. PDF Generation';

  @override
  String get privacySection3Content =>
      'When you export your curriculum to PDF, the document is generated locally. No data is transmitted to our servers during this process.';

  @override
  String get privacySection4Title => '4. Third-Party Access';

  @override
  String get privacySection4Content =>
      'We do not sell, trade, or otherwise transfer your residency data to outside parties. Your data is your professional property.';

  @override
  String get privacySection5Title => '5. Security';

  @override
  String get privacySection5Content =>
      'Since data is stored locally, the security of your information depends on the security of your mobile device. We recommend using biometric or passcode locks on your device.';

  @override
  String get exportPdf => 'Export PDF';

  @override
  String get curriculumHeaderTitle => 'Professional Curriculum';

  @override
  String get curriculumHeaderSubtitle => 'Consolidated Experience Summary';

  @override
  String curriculumSummaryStats(String total, int count) {
    return '$total Total Credits Across $count Activities';
  }

  @override
  String curriculumAggregatedSessions(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Aggregated from $count sessions',
      one: 'Aggregated from 1 session',
    );
    return '$_temp0';
  }

  @override
  String get deleteImageTitle => 'Delete Profile Picture';

  @override
  String get deleteImageConfirmation =>
      'Are you sure you want to remove your profile picture?';

  @override
  String get cancel => 'Cancel';

  @override
  String pdfFooterGeneratedOn(Object date) {
    return 'Generated via Residency Portfolio App on $date';
  }

  @override
  String get specialtyChangeLockedTitle => 'Specialty Change Locked';

  @override
  String get specialtyChangeLockedContent =>
      'You have existing activities in your portfolio. To change your specialty, you must first delete all current activities to ensure data consistency.';

  @override
  String get buttonOk => 'OK';

  @override
  String get activityFormLabelMinRequirement =>
      'Minimum Required Credits/Hours';

  @override
  String get activityFormValidationMinRequired =>
      'The minimum requirement for this category is';

  @override
  String get importSuccess => 'Database restored successfully!';

  @override
  String get importCancelled => 'Import cancelled';

  @override
  String importError(String error) {
    return 'Import failed: $error';
  }

  @override
  String get webNotSupported =>
      'This feature is not available on the web version.';

  @override
  String get importInvalid =>
      'The selected file is not a valid Portfolio backup.';

  @override
  String get importConfirmTitle => 'Overwrite Data?';

  @override
  String get importConfirmMessage =>
      'This will delete all current entries and replace them with the backup. Continue?';
}
