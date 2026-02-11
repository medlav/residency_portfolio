import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_it.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('it'),
  ];

  /// No description provided for @appName.
  ///
  /// In en, this message translates to:
  /// **'R Portfolio'**
  String get appName;

  /// No description provided for @appTitle.
  ///
  /// In en, this message translates to:
  /// **'Residency Portfolio'**
  String get appTitle;

  /// No description provided for @welcomeMessage.
  ///
  /// In en, this message translates to:
  /// **'Welcome {username}'**
  String welcomeMessage(String username);

  /// No description provided for @progressSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Track your progress and activities.'**
  String get progressSubtitle;

  /// No description provided for @loadingData.
  ///
  /// In en, this message translates to:
  /// **'Loading data...'**
  String get loadingData;

  /// No description provided for @statProcedures.
  ///
  /// In en, this message translates to:
  /// **'Procedures'**
  String get statProcedures;

  /// No description provided for @statExams.
  ///
  /// In en, this message translates to:
  /// **'Exams'**
  String get statExams;

  /// No description provided for @statCredits.
  ///
  /// In en, this message translates to:
  /// **'Credits'**
  String get statCredits;

  /// No description provided for @drawerTooltip.
  ///
  /// In en, this message translates to:
  /// **'Open Drawer'**
  String get drawerTooltip;

  /// No description provided for @drawerProfile.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get drawerProfile;

  /// No description provided for @drawerPortfolio.
  ///
  /// In en, this message translates to:
  /// **'Portfolio'**
  String get drawerPortfolio;

  /// No description provided for @drawerActivities.
  ///
  /// In en, this message translates to:
  /// **'Activities'**
  String get drawerActivities;

  /// No description provided for @drawerCurriculum.
  ///
  /// In en, this message translates to:
  /// **'Curriculum'**
  String get drawerCurriculum;

  /// No description provided for @drawerSettings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get drawerSettings;

  /// No description provided for @drawerInfo.
  ///
  /// In en, this message translates to:
  /// **'Info'**
  String get drawerInfo;

  /// No description provided for @drawerVersion.
  ///
  /// In en, this message translates to:
  /// **'Version {version}'**
  String drawerVersion(Object version);

  /// No description provided for @infoScreenTitle.
  ///
  /// In en, this message translates to:
  /// **'About This App'**
  String get infoScreenTitle;

  /// No description provided for @infoSectionTitlePurpose.
  ///
  /// In en, this message translates to:
  /// **'Purpose'**
  String get infoSectionTitlePurpose;

  /// No description provided for @infoSectionDescription.
  ///
  /// In en, this message translates to:
  /// **'This free, open-source application is designed exclusively to assist medical residents in digitally logging, tracking, and structuring their activities, procedures, and learning goals for their professional residency portfolio.'**
  String get infoSectionDescription;

  /// No description provided for @infoSectionTitleLicense.
  ///
  /// In en, this message translates to:
  /// **'License & Disclaimer'**
  String get infoSectionTitleLicense;

  /// No description provided for @disclaimerTitle.
  ///
  /// In en, this message translates to:
  /// **'BSD-3 Clause Simplified Disclaimer'**
  String get disclaimerTitle;

  /// No description provided for @disclaimerBody1.
  ///
  /// In en, this message translates to:
  /// **'This software is provided \'as is,\' is free to use, modify, and distribute. We are NOT liable for any damages or losses related to its use. The authors and contributors provide NO warranty, express or implied, regarding its functionality, accuracy, or fitness for a particular purpose.'**
  String get disclaimerBody1;

  /// No description provided for @disclaimerBody2.
  ///
  /// In en, this message translates to:
  /// **'This software utilizes a local database, and its reliability cannot be guaranteed. The user assumes sole responsibility for all data entered and the maintenance of profile settings. In the event of data loss, corruption, or profile setting malfunctions, the authors and contributors shall not be held liable.'**
  String get disclaimerBody2;

  /// No description provided for @infoTileSourceCode.
  ///
  /// In en, this message translates to:
  /// **'Source Code (GitHub)'**
  String get infoTileSourceCode;

  /// No description provided for @infoTilePrivacyPolicy.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get infoTilePrivacyPolicy;

  /// No description provided for @buttonHomepage.
  ///
  /// In en, this message translates to:
  /// **'Homepage'**
  String get buttonHomepage;

  /// No description provided for @buttonHomepageTooltip.
  ///
  /// In en, this message translates to:
  /// **'Go to Homepage'**
  String get buttonHomepageTooltip;

  /// No description provided for @buttonViewActivities.
  ///
  /// In en, this message translates to:
  /// **'View all the Activities'**
  String get buttonViewActivities;

  /// No description provided for @buttonLogActivity.
  ///
  /// In en, this message translates to:
  /// **'Log new Activity'**
  String get buttonLogActivity;

  /// No description provided for @settingsButtonTooltip.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settingsButtonTooltip;

  /// No description provided for @settingsTitle.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settingsTitle;

  /// No description provided for @settingsProfileSubtitle.
  ///
  /// In en, this message translates to:
  /// **'View & edit your personal details'**
  String get settingsProfileSubtitle;

  /// No description provided for @settingsProfilePlaceholderName.
  ///
  /// In en, this message translates to:
  /// **'Unregistered User'**
  String get settingsProfilePlaceholderName;

  /// No description provided for @settingsSectionPortfolio.
  ///
  /// In en, this message translates to:
  /// **'Portfolio Management'**
  String get settingsSectionPortfolio;

  /// No description provided for @settingsPortfolioTitle.
  ///
  /// In en, this message translates to:
  /// **'Portfolio'**
  String get settingsPortfolioTitle;

  /// No description provided for @settingsPortfolioSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Manage Portfolio'**
  String get settingsPortfolioSubtitle;

  /// No description provided for @settingsCategoriesTitle.
  ///
  /// In en, this message translates to:
  /// **'Categories'**
  String get settingsCategoriesTitle;

  /// No description provided for @settingsCategoriesSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Manage activity categories (e.g., Exam, Procedure)'**
  String get settingsCategoriesSubtitle;

  /// No description provided for @settingsSpecialtiesTitle.
  ///
  /// In en, this message translates to:
  /// **'Specialties'**
  String get settingsSpecialtiesTitle;

  /// No description provided for @settingsSpecialtiesSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Check the portfolio required for every Specialty (e.g., Cardiology, Radiology)'**
  String get settingsSpecialtiesSubtitle;

  /// No description provided for @settingsBackupDataTitle.
  ///
  /// In en, this message translates to:
  /// **'Backup Data'**
  String get settingsBackupDataTitle;

  /// No description provided for @settingsBackupDataSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Export portfolio data to a file (JSON, CSV)'**
  String get settingsBackupDataSubtitle;

  /// No description provided for @settingsSectionAppearance.
  ///
  /// In en, this message translates to:
  /// **'Appearance'**
  String get settingsSectionAppearance;

  /// No description provided for @settingsDarkModeTitle.
  ///
  /// In en, this message translates to:
  /// **'Dark Mode'**
  String get settingsDarkModeTitle;

  /// No description provided for @settingsDarkModeSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Toggle application theme'**
  String get settingsDarkModeSubtitle;

  /// No description provided for @settingsLanguageTitle.
  ///
  /// In en, this message translates to:
  /// **'Change Language'**
  String get settingsLanguageTitle;

  /// No description provided for @languageChangeConfirmTitle.
  ///
  /// In en, this message translates to:
  /// **'Confirm Language Change to {languageName}?'**
  String languageChangeConfirmTitle(Object languageName);

  /// No description provided for @languageChangeConfirmMessage.
  ///
  /// In en, this message translates to:
  /// **'Changing the language requires the app to restart. Continue?'**
  String get languageChangeConfirmMessage;

  /// No description provided for @languageChangeConfirmButton.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get languageChangeConfirmButton;

  /// No description provided for @buttonCancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get buttonCancel;

  /// No description provided for @restartingApp.
  ///
  /// In en, this message translates to:
  /// **'Restarting app...'**
  String get restartingApp;

  /// No description provided for @settingsSectionAbout.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get settingsSectionAbout;

  /// No description provided for @settingsAppVersionTitle.
  ///
  /// In en, this message translates to:
  /// **'App Version'**
  String get settingsAppVersionTitle;

  /// No description provided for @settingsExportFormatDialogTitle.
  ///
  /// In en, this message translates to:
  /// **'Select Export Format'**
  String get settingsExportFormatDialogTitle;

  /// No description provided for @settingsExportJsonTitle.
  ///
  /// In en, this message translates to:
  /// **'Export as JSON'**
  String get settingsExportJsonTitle;

  /// No description provided for @settingsExportJsonSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Perfect for programmatic use.'**
  String get settingsExportJsonSubtitle;

  /// No description provided for @settingsExportCsvTitle.
  ///
  /// In en, this message translates to:
  /// **'Export as CSV'**
  String get settingsExportCsvTitle;

  /// No description provided for @settingsExportCsvSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Easy to view in Excel/Sheets.'**
  String get settingsExportCsvSubtitle;

  /// No description provided for @settingsExportPdfTitle.
  ///
  /// In en, this message translates to:
  /// **'Export as PDF'**
  String get settingsExportPdfTitle;

  /// No description provided for @settingsExportPdfSubtitle.
  ///
  /// In en, this message translates to:
  /// **'For printing and formal submission.'**
  String get settingsExportPdfSubtitle;

  /// No description provided for @settingsExportSnackBarMessage.
  ///
  /// In en, this message translates to:
  /// **'Starting export of data to {format}...'**
  String settingsExportSnackBarMessage(String format);

  /// No description provided for @searchPlaceholder.
  ///
  /// In en, this message translates to:
  /// **'Search activities, modules, or competences'**
  String get searchPlaceholder;

  /// No description provided for @portfolioTabCurrentCurriculum.
  ///
  /// In en, this message translates to:
  /// **'Current Curriculum'**
  String get portfolioTabCurrentCurriculum;

  /// No description provided for @portfolioTabResidencyPortfolio.
  ///
  /// In en, this message translates to:
  /// **'Residency Portfolio'**
  String get portfolioTabResidencyPortfolio;

  /// No description provided for @portfolioTabOngoingActivities.
  ///
  /// In en, this message translates to:
  /// **'Ongoing Activities'**
  String get portfolioTabOngoingActivities;

  /// No description provided for @portfolioTabToDoProgrammed.
  ///
  /// In en, this message translates to:
  /// **'Programmed Activities'**
  String get portfolioTabToDoProgrammed;

  /// No description provided for @portfolioContentOngoing.
  ///
  /// In en, this message translates to:
  /// **'Ongoing Activities and Assessments'**
  String get portfolioContentOngoing;

  /// No description provided for @portfolioContentTodo.
  ///
  /// In en, this message translates to:
  /// **'To Do / Programmed'**
  String get portfolioContentTodo;

  /// No description provided for @portfolioTitle.
  ///
  /// In en, this message translates to:
  /// **'Residency Curriculum'**
  String get portfolioTitle;

  /// No description provided for @portfolioSectionSelectSpecialty.
  ///
  /// In en, this message translates to:
  /// **'Select Residency Specialty:'**
  String get portfolioSectionSelectSpecialty;

  /// No description provided for @portfolioLabelSpecialty.
  ///
  /// In en, this message translates to:
  /// **'Residency Track'**
  String get portfolioLabelSpecialty;

  /// No description provided for @portfolioNoCategoryError.
  ///
  /// In en, this message translates to:
  /// **'No Category Data'**
  String get portfolioNoCategoryError;

  /// No description provided for @portfolioNoSpecialtyData.
  ///
  /// In en, this message translates to:
  /// **'No Specialty Data'**
  String get portfolioNoSpecialtyData;

  /// No description provided for @portfolioSectionCurriculum.
  ///
  /// In en, this message translates to:
  /// **'Minimum Curriculum for {specialty}:'**
  String portfolioSectionCurriculum(String specialty);

  /// No description provided for @portfolioNoCurriculumActivities.
  ///
  /// In en, this message translates to:
  /// **'No minimum curriculum activities defined for {specialty}.'**
  String portfolioNoCurriculumActivities(String specialty);

  /// No description provided for @portfolioTableID.
  ///
  /// In en, this message translates to:
  /// **'ID'**
  String get portfolioTableID;

  /// No description provided for @portfolioTableActivityDescription.
  ///
  /// In en, this message translates to:
  /// **'Activity Description'**
  String get portfolioTableActivityDescription;

  /// No description provided for @portfolioTableMinUnits.
  ///
  /// In en, this message translates to:
  /// **'Min Units'**
  String get portfolioTableMinUnits;

  /// No description provided for @portfolioTableRequiredDept.
  ///
  /// In en, this message translates to:
  /// **'Required Departments'**
  String get portfolioTableRequiredDept;

  /// No description provided for @portfolioTableLog.
  ///
  /// In en, this message translates to:
  /// **'Log'**
  String get portfolioTableLog;

  /// No description provided for @portfolioLogActivityTooltip.
  ///
  /// In en, this message translates to:
  /// **'Log Activity'**
  String get portfolioLogActivityTooltip;

  /// No description provided for @portfolioLogActivitySnackbar.
  ///
  /// In en, this message translates to:
  /// **'Logging activity: {activity}'**
  String portfolioLogActivitySnackbar(String activity);

  /// No description provided for @portfolioFullDescription.
  ///
  /// In en, this message translates to:
  /// **'Full Description:'**
  String get portfolioFullDescription;

  /// No description provided for @portfolioAllRequiredDepartments.
  ///
  /// In en, this message translates to:
  /// **'All Required Departments:'**
  String get portfolioAllRequiredDepartments;

  /// No description provided for @profileTitle.
  ///
  /// In en, this message translates to:
  /// **'Edit Profile'**
  String get profileTitle;

  /// No description provided for @profileLabelFullName.
  ///
  /// In en, this message translates to:
  /// **'Full Name'**
  String get profileLabelFullName;

  /// No description provided for @profileLabelEmail.
  ///
  /// In en, this message translates to:
  /// **'Email Address'**
  String get profileLabelEmail;

  /// No description provided for @profileLabelSpecialty.
  ///
  /// In en, this message translates to:
  /// **'Specialty (e.g., Surgery, Peds)'**
  String get profileLabelSpecialty;

  /// No description provided for @profileLabelResidencyYear.
  ///
  /// In en, this message translates to:
  /// **'Residency Year (e.g., PGY-3, R-2)'**
  String get profileLabelResidencyYear;

  /// No description provided for @profileLabelInstitution.
  ///
  /// In en, this message translates to:
  /// **'Institution/Program Name'**
  String get profileLabelInstitution;

  /// No description provided for @profileValidationNameRequired.
  ///
  /// In en, this message translates to:
  /// **'Name is required'**
  String get profileValidationNameRequired;

  /// No description provided for @profileValidationEmailInvalid.
  ///
  /// In en, this message translates to:
  /// **'Enter a valid email'**
  String get profileValidationEmailInvalid;

  /// No description provided for @profileValidationSpecialtyRequired.
  ///
  /// In en, this message translates to:
  /// **'Specialty is required'**
  String get profileValidationSpecialtyRequired;

  /// No description provided for @profileValidationYearRequired.
  ///
  /// In en, this message translates to:
  /// **'Year is required'**
  String get profileValidationYearRequired;

  /// No description provided for @profileValidationInstitutionRequired.
  ///
  /// In en, this message translates to:
  /// **'Institution is required'**
  String get profileValidationInstitutionRequired;

  /// No description provided for @profileButtonSaveChanges.
  ///
  /// In en, this message translates to:
  /// **'Save Changes'**
  String get profileButtonSaveChanges;

  /// No description provided for @profileSaveSuccess.
  ///
  /// In en, this message translates to:
  /// **'Profile updated successfully'**
  String get profileSaveSuccess;

  /// No description provided for @profileSaveError.
  ///
  /// In en, this message translates to:
  /// **'Error saving profile: '**
  String get profileSaveError;

  /// No description provided for @profileImagePickerTBD.
  ///
  /// In en, this message translates to:
  /// **'Image picker functionality TBD.'**
  String get profileImagePickerTBD;

  /// No description provided for @activityListTitle.
  ///
  /// In en, this message translates to:
  /// **'Activities Tracker'**
  String get activityListTitle;

  /// No description provided for @activityListTotalCredits.
  ///
  /// In en, this message translates to:
  /// **'Total Credits/Hours Logged:'**
  String get activityListTotalCredits;

  /// No description provided for @activityListEmptyState.
  ///
  /// In en, this message translates to:
  /// **'No activities logged yet. Tap the + to begin!'**
  String get activityListEmptyState;

  /// No description provided for @activityListNewActivityButton.
  ///
  /// In en, this message translates to:
  /// **'New Activity'**
  String get activityListNewActivityButton;

  /// No description provided for @activityListDeleteSnackbar.
  ///
  /// In en, this message translates to:
  /// **'{activityName} deleted.'**
  String activityListDeleteSnackbar(String activityName);

  /// No description provided for @activityListCreditsHoursLabel.
  ///
  /// In en, this message translates to:
  /// **'Credits/Hrs'**
  String get activityListCreditsHoursLabel;

  /// No description provided for @activityListCategory.
  ///
  /// In en, this message translates to:
  /// **'Category: {category}'**
  String activityListCategory(String category);

  /// No description provided for @activityListDate.
  ///
  /// In en, this message translates to:
  /// **'Date: {date}'**
  String activityListDate(String date);

  /// No description provided for @activityListNotes.
  ///
  /// In en, this message translates to:
  /// **'Notes: {notes}'**
  String activityListNotes(String notes);

  /// No description provided for @activityListNotesPlaceholder.
  ///
  /// In en, this message translates to:
  /// **'N/A'**
  String get activityListNotesPlaceholder;

  /// No description provided for @activityFormTitleEdit.
  ///
  /// In en, this message translates to:
  /// **'Edit Activity'**
  String get activityFormTitleEdit;

  /// No description provided for @activityFormTitleAdd.
  ///
  /// In en, this message translates to:
  /// **'Add New Activity'**
  String get activityFormTitleAdd;

  /// No description provided for @activityFormLabelName.
  ///
  /// In en, this message translates to:
  /// **'Activity Name (e.g. Intravenous injection)'**
  String get activityFormLabelName;

  /// No description provided for @activityFormValidationNameRequired.
  ///
  /// In en, this message translates to:
  /// **'Please enter the activity name.'**
  String get activityFormValidationNameRequired;

  /// No description provided for @activityFormLabelCategory.
  ///
  /// In en, this message translates to:
  /// **'Category/Activity Area'**
  String get activityFormLabelCategory;

  /// No description provided for @activityFormLabelCreditsHours.
  ///
  /// In en, this message translates to:
  /// **'Credits / Hours Logged'**
  String get activityFormLabelCreditsHours;

  /// No description provided for @activityFormValidationCreditsInvalid.
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid number.'**
  String get activityFormValidationCreditsInvalid;

  /// No description provided for @activityFormValidationCreditsPositive.
  ///
  /// In en, this message translates to:
  /// **'The value must be positive.'**
  String get activityFormValidationCreditsPositive;

  /// No description provided for @activityFormLabelDate.
  ///
  /// In en, this message translates to:
  /// **'Activity Date'**
  String get activityFormLabelDate;

  /// No description provided for @activityFormLabelNotes.
  ///
  /// In en, this message translates to:
  /// **'Notes/Reflections (e.g., supervising physician, context)'**
  String get activityFormLabelNotes;

  /// No description provided for @activityFormButtonSave.
  ///
  /// In en, this message translates to:
  /// **'Save Changes'**
  String get activityFormButtonSave;

  /// No description provided for @activityFormButtonAdd.
  ///
  /// In en, this message translates to:
  /// **'Add Activity'**
  String get activityFormButtonAdd;

  /// No description provided for @activityFormSuccessAdd.
  ///
  /// In en, this message translates to:
  /// **'Activity added successfully!'**
  String get activityFormSuccessAdd;

  /// No description provided for @activityFormSuccessUpdate.
  ///
  /// In en, this message translates to:
  /// **'Activity updated successfully!'**
  String get activityFormSuccessUpdate;

  /// No description provided for @activityFormErrorSave.
  ///
  /// In en, this message translates to:
  /// **'Save error: '**
  String get activityFormErrorSave;

  /// No description provided for @activityFormCategory1.
  ///
  /// In en, this message translates to:
  /// **'Activity I: Clinical Area (Intensive Care)'**
  String get activityFormCategory1;

  /// No description provided for @activityFormCategory2.
  ///
  /// In en, this message translates to:
  /// **'Activity II: Diagnostic Area'**
  String get activityFormCategory2;

  /// No description provided for @activityFormCategory3.
  ///
  /// In en, this message translates to:
  /// **'Activity III: Research & Management Area'**
  String get activityFormCategory3;

  /// No description provided for @activityFormCategory4.
  ///
  /// In en, this message translates to:
  /// **'Activity IV: Teaching & Communication Area'**
  String get activityFormCategory4;

  /// No description provided for @activityFormCategory5.
  ///
  /// In en, this message translates to:
  /// **'Activity V: Occupational Medicine'**
  String get activityFormCategory5;

  /// No description provided for @activityFormCategoryOther.
  ///
  /// In en, this message translates to:
  /// **'Other'**
  String get activityFormCategoryOther;

  /// No description provided for @specialtySearchHeader.
  ///
  /// In en, this message translates to:
  /// **'Search Activities for {specialty}:'**
  String specialtySearchHeader(String specialty);

  /// No description provided for @specialtySelectActivityHint.
  ///
  /// In en, this message translates to:
  /// **'Search portfolio activity'**
  String get specialtySelectActivityHint;

  /// No description provided for @specialtySearchHint.
  ///
  /// In en, this message translates to:
  /// **'e.g., \"Physical examination\" or \"Appendectomy\"'**
  String get specialtySearchHint;

  /// No description provided for @specialtyDetailHeader.
  ///
  /// In en, this message translates to:
  /// **'Selected Activity Metadata:'**
  String get specialtyDetailHeader;

  /// No description provided for @specialtyDetailPesoLabel.
  ///
  /// In en, this message translates to:
  /// **'Peso (Min Units)'**
  String get specialtyDetailPesoLabel;

  /// No description provided for @specialtyDetailDepartmentLabel.
  ///
  /// In en, this message translates to:
  /// **'Required Department/Sector'**
  String get specialtyDetailDepartmentLabel;

  /// No description provided for @specialtyDetailButtonSave.
  ///
  /// In en, this message translates to:
  /// **'Save Activity'**
  String get specialtyDetailButtonSave;

  /// No description provided for @specialtyDetailButtonSaveSuccess.
  ///
  /// In en, this message translates to:
  /// **'Activity \'{activity}\' managed for {specialty}!'**
  String specialtyDetailButtonSaveSuccess(String activity, String specialty);

  /// No description provided for @errorLoadingCategories.
  ///
  /// In en, this message translates to:
  /// **'Failed to load categories: {error}'**
  String errorLoadingCategories(String error);

  /// No description provided for @noCategoriesAvailable.
  ///
  /// In en, this message translates to:
  /// **'No categories found. Use the \'+\' button to add one.'**
  String get noCategoriesAvailable;

  /// No description provided for @categoryDescriptionLabel.
  ///
  /// In en, this message translates to:
  /// **'Description:'**
  String get categoryDescriptionLabel;

  /// No description provided for @noDescriptionProvided.
  ///
  /// In en, this message translates to:
  /// **'No description provided.'**
  String get noDescriptionProvided;

  /// No description provided for @edit.
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get edit;

  /// No description provided for @delete.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get delete;

  /// No description provided for @activityFormLabelDateEnd.
  ///
  /// In en, this message translates to:
  /// **'End Date (Optional)'**
  String get activityFormLabelDateEnd;

  /// No description provided for @activityFormLabelDateEndEmpty.
  ///
  /// In en, this message translates to:
  /// **'Select end date'**
  String get activityFormLabelDateEndEmpty;

  /// No description provided for @activityFormButtonClearDate.
  ///
  /// In en, this message translates to:
  /// **'Clear Date'**
  String get activityFormButtonClearDate;

  /// No description provided for @activityListDateRange.
  ///
  /// In en, this message translates to:
  /// **'Date: {dateRange}'**
  String activityListDateRange(Object dateRange);

  /// No description provided for @deleteEntrySuccess.
  ///
  /// In en, this message translates to:
  /// **'Entry deleted successfully.'**
  String get deleteEntrySuccess;

  /// No description provided for @deleteEntryError.
  ///
  /// In en, this message translates to:
  /// **'Failed to delete entry.'**
  String get deleteEntryError;

  /// No description provided for @buttonDeleteActivity.
  ///
  /// In en, this message translates to:
  /// **'Delete Activity'**
  String get buttonDeleteActivity;

  /// No description provided for @dialogDeleteConfirmationTitle.
  ///
  /// In en, this message translates to:
  /// **'Confirm Deletion'**
  String get dialogDeleteConfirmationTitle;

  /// No description provided for @dialogDeleteConfirmationContent.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to permanently delete this entry?'**
  String get dialogDeleteConfirmationContent;

  /// No description provided for @dialogSaveConfirmationTitle.
  ///
  /// In en, this message translates to:
  /// **'Confirm New Entry'**
  String get dialogSaveConfirmationTitle;

  /// No description provided for @dialogSaveConfirmationContent.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to save this new activity?'**
  String get dialogSaveConfirmationContent;

  /// No description provided for @dialogUpdateConfirmationTitle.
  ///
  /// In en, this message translates to:
  /// **'Confirm Changes'**
  String get dialogUpdateConfirmationTitle;

  /// No description provided for @dialogUpdateConfirmationContent.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to apply these changes to the existing entry?'**
  String get dialogUpdateConfirmationContent;

  /// No description provided for @buttonConfirmSave.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get buttonConfirmSave;

  /// No description provided for @buttonConfirmUpdate.
  ///
  /// In en, this message translates to:
  /// **'Update'**
  String get buttonConfirmUpdate;

  /// No description provided for @settingsExportDbTitle.
  ///
  /// In en, this message translates to:
  /// **'Raw Database (.db)'**
  String get settingsExportDbTitle;

  /// No description provided for @settingsExportDbSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Export the raw SQLite database file for technical backup or migration.'**
  String get settingsExportDbSubtitle;

  /// No description provided for @activityFormLabelInstitution.
  ///
  /// In en, this message translates to:
  /// **'Institution Name'**
  String get activityFormLabelInstitution;

  /// No description provided for @activityFormValidationInstitutionRequired.
  ///
  /// In en, this message translates to:
  /// **'Institution name is required.'**
  String get activityFormValidationInstitutionRequired;

  /// No description provided for @activityFormLabelDepartments.
  ///
  /// In en, this message translates to:
  /// **'Department(s)'**
  String get activityFormLabelDepartments;

  /// No description provided for @categoryDescriptionTitle.
  ///
  /// In en, this message translates to:
  /// **'Category Description'**
  String get categoryDescriptionTitle;

  /// No description provided for @categoryDescriptionEmpty.
  ///
  /// In en, this message translates to:
  /// **'No description available for this category.'**
  String get categoryDescriptionEmpty;

  /// No description provided for @buttonClose.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get buttonClose;

  /// No description provided for @activityFormCategoryInfoTooltip.
  ///
  /// In en, this message translates to:
  /// **'View category description'**
  String get activityFormCategoryInfoTooltip;

  /// No description provided for @portfolioContentCurriculumDashboard.
  ///
  /// In en, this message translates to:
  /// **'Dashboard view of completed activities and progress will go here.'**
  String get portfolioContentCurriculumDashboard;

  /// No description provided for @portfolioContentUpcomingEmpty.
  ///
  /// In en, this message translates to:
  /// **'No programmed activities found. Plan your future tasks!'**
  String get portfolioContentUpcomingEmpty;

  /// No description provided for @portfolioContentOngoingEmpty.
  ///
  /// In en, this message translates to:
  /// **'No activities are currently marked as ongoing.'**
  String get portfolioContentOngoingEmpty;

  /// No description provided for @noResultsFound.
  ///
  /// In en, this message translates to:
  /// **'No Results Found'**
  String get noResultsFound;

  /// No description provided for @noData.
  ///
  /// In en, this message translates to:
  /// **'No Data'**
  String get noData;

  /// No description provided for @duplicateEntryTooltip.
  ///
  /// In en, this message translates to:
  /// **'Duplicate Entry'**
  String get duplicateEntryTooltip;

  /// No description provided for @categoryFormTitleAdd.
  ///
  /// In en, this message translates to:
  /// **'Add Category'**
  String get categoryFormTitleAdd;

  /// No description provided for @categoryFormTitleEdit.
  ///
  /// In en, this message translates to:
  /// **'Edit Category'**
  String get categoryFormTitleEdit;

  /// No description provided for @categoryFormLabelName.
  ///
  /// In en, this message translates to:
  /// **'Category Name'**
  String get categoryFormLabelName;

  /// No description provided for @categoryFormLabelAmountType.
  ///
  /// In en, this message translates to:
  /// **'Amount Type'**
  String get categoryFormLabelAmountType;

  /// No description provided for @categoryFormLabelMinAmount.
  ///
  /// In en, this message translates to:
  /// **'Min Required Amount'**
  String get categoryFormLabelMinAmount;

  /// No description provided for @categoryFormLabelRequiredDepts.
  ///
  /// In en, this message translates to:
  /// **'Required Departments (comma separated)'**
  String get categoryFormLabelRequiredDepts;

  /// No description provided for @categoryFormLabelDescription.
  ///
  /// In en, this message translates to:
  /// **'Description'**
  String get categoryFormLabelDescription;

  /// No description provided for @categoryFormValidationNameRequired.
  ///
  /// In en, this message translates to:
  /// **'Enter a name'**
  String get categoryFormValidationNameRequired;

  /// No description provided for @categoryFormButtonSave.
  ///
  /// In en, this message translates to:
  /// **'Save Category'**
  String get categoryFormButtonSave;

  /// No description provided for @categoryFormButtonUpdate.
  ///
  /// In en, this message translates to:
  /// **'Update Category'**
  String get categoryFormButtonUpdate;

  /// No description provided for @categoryFormSuccessAdd.
  ///
  /// In en, this message translates to:
  /// **'Category added'**
  String get categoryFormSuccessAdd;

  /// No description provided for @categoryFormSuccessUpdate.
  ///
  /// In en, this message translates to:
  /// **'Category updated'**
  String get categoryFormSuccessUpdate;

  /// No description provided for @categoryLabelId.
  ///
  /// In en, this message translates to:
  /// **'ID'**
  String get categoryLabelId;

  /// No description provided for @categoryLabelUnit.
  ///
  /// In en, this message translates to:
  /// **'Unit'**
  String get categoryLabelUnit;

  /// No description provided for @categoryDeleteConfirmation.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete \'{name}\'?\nPress Delete if you\'re sure or press Cancel to go back.'**
  String categoryDeleteConfirmation(String name);

  /// No description provided for @amountTypeNumber.
  ///
  /// In en, this message translates to:
  /// **'number'**
  String get amountTypeNumber;

  /// No description provided for @amountTypeHours.
  ///
  /// In en, this message translates to:
  /// **'hours'**
  String get amountTypeHours;

  /// No description provided for @amountTypeCredits.
  ///
  /// In en, this message translates to:
  /// **'credits'**
  String get amountTypeCredits;

  /// No description provided for @categoryResetTitle.
  ///
  /// In en, this message translates to:
  /// **'Reset Categories?'**
  String get categoryResetTitle;

  /// No description provided for @categoryResetMessage.
  ///
  /// In en, this message translates to:
  /// **'This will delete all custom categories and restore the defaults. This action cannot be undone.'**
  String get categoryResetMessage;

  /// No description provided for @categoryResetButton.
  ///
  /// In en, this message translates to:
  /// **'Reset Everything'**
  String get categoryResetButton;

  /// No description provided for @categoryResetTooltip.
  ///
  /// In en, this message translates to:
  /// **'Reset to Defaults'**
  String get categoryResetTooltip;

  /// No description provided for @menuTooltip.
  ///
  /// In en, this message translates to:
  /// **'Show menu'**
  String get menuTooltip;

  /// No description provided for @infoTitle.
  ///
  /// In en, this message translates to:
  /// **'Information'**
  String get infoTitle;

  /// No description provided for @activityFormSuccessDuplicate.
  ///
  /// In en, this message translates to:
  /// **'Entry duplicated. You are now editing the copy.'**
  String get activityFormSuccessDuplicate;

  /// No description provided for @privacyPolicyTitle.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get privacyPolicyTitle;

  /// No description provided for @privacyHeader.
  ///
  /// In en, this message translates to:
  /// **'Data Privacy & Security'**
  String get privacyHeader;

  /// No description provided for @privacyLastUpdated.
  ///
  /// In en, this message translates to:
  /// **'Last updated: February 2026'**
  String get privacyLastUpdated;

  /// No description provided for @privacyVersion.
  ///
  /// In en, this message translates to:
  /// **'Residency Portfolio v{version}'**
  String privacyVersion(Object version);

  /// No description provided for @privacySection1Title.
  ///
  /// In en, this message translates to:
  /// **'1. Data Storage'**
  String get privacySection1Title;

  /// No description provided for @privacySection1Content.
  ///
  /// In en, this message translates to:
  /// **'All data entered into the Residency Portfolio, including your activities, credits, and institution names, is stored locally on your device. We do not use external cloud servers to host your portfolio entries.'**
  String get privacySection1Content;

  /// No description provided for @privacySection2Title.
  ///
  /// In en, this message translates to:
  /// **'2. Personal Information'**
  String get privacySection2Title;

  /// No description provided for @privacySection2Content.
  ///
  /// In en, this message translates to:
  /// **'Your name and email address are used solely for the purpose of personalizing your experience and generating your Curriculum Vitae. This information remains within the application.'**
  String get privacySection2Content;

  /// No description provided for @privacySection3Title.
  ///
  /// In en, this message translates to:
  /// **'3. PDF Generation'**
  String get privacySection3Title;

  /// No description provided for @privacySection3Content.
  ///
  /// In en, this message translates to:
  /// **'When you export your curriculum to PDF, the document is generated locally. No data is transmitted to our servers during this process.'**
  String get privacySection3Content;

  /// No description provided for @privacySection4Title.
  ///
  /// In en, this message translates to:
  /// **'4. Third-Party Access'**
  String get privacySection4Title;

  /// No description provided for @privacySection4Content.
  ///
  /// In en, this message translates to:
  /// **'We do not sell, trade, or otherwise transfer your residency data to outside parties. Your data is your professional property.'**
  String get privacySection4Content;

  /// No description provided for @privacySection5Title.
  ///
  /// In en, this message translates to:
  /// **'5. Security'**
  String get privacySection5Title;

  /// No description provided for @privacySection5Content.
  ///
  /// In en, this message translates to:
  /// **'Since data is stored locally, the security of your information depends on the security of your mobile device. We recommend using biometric or passcode locks on your device.'**
  String get privacySection5Content;

  /// No description provided for @exportPdf.
  ///
  /// In en, this message translates to:
  /// **'Export PDF'**
  String get exportPdf;

  /// No description provided for @curriculumHeaderTitle.
  ///
  /// In en, this message translates to:
  /// **'Professional Curriculum'**
  String get curriculumHeaderTitle;

  /// No description provided for @curriculumHeaderSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Consolidated Experience Summary'**
  String get curriculumHeaderSubtitle;

  /// No description provided for @curriculumSummaryStats.
  ///
  /// In en, this message translates to:
  /// **'{total} Total Credits Across {count} Activities'**
  String curriculumSummaryStats(String total, int count);

  /// No description provided for @curriculumAggregatedSessions.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{Aggregated from 1 session} other{Aggregated from {count} sessions}}'**
  String curriculumAggregatedSessions(int count);

  /// No description provided for @deleteImageTitle.
  ///
  /// In en, this message translates to:
  /// **'Delete Profile Picture'**
  String get deleteImageTitle;

  /// No description provided for @deleteImageConfirmation.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to remove your profile picture?'**
  String get deleteImageConfirmation;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @pdfFooterGeneratedOn.
  ///
  /// In en, this message translates to:
  /// **'Generated via Residency Portfolio App on {date}'**
  String pdfFooterGeneratedOn(Object date);

  /// No description provided for @specialtyChangeLockedTitle.
  ///
  /// In en, this message translates to:
  /// **'Specialty Change Locked'**
  String get specialtyChangeLockedTitle;

  /// No description provided for @specialtyChangeLockedContent.
  ///
  /// In en, this message translates to:
  /// **'You have existing activities in your portfolio. To change your specialty, you must first delete all current activities to ensure data consistency.'**
  String get specialtyChangeLockedContent;

  /// No description provided for @buttonOk.
  ///
  /// In en, this message translates to:
  /// **'OK'**
  String get buttonOk;

  /// No description provided for @activityFormLabelMinRequirement.
  ///
  /// In en, this message translates to:
  /// **'Minimum Required Credits/Hours'**
  String get activityFormLabelMinRequirement;

  /// No description provided for @activityFormValidationMinRequired.
  ///
  /// In en, this message translates to:
  /// **'The minimum requirement for this category is'**
  String get activityFormValidationMinRequired;

  /// No description provided for @importSuccess.
  ///
  /// In en, this message translates to:
  /// **'Database restored successfully!'**
  String get importSuccess;

  /// No description provided for @importCancelled.
  ///
  /// In en, this message translates to:
  /// **'Import cancelled'**
  String get importCancelled;

  /// No description provided for @importError.
  ///
  /// In en, this message translates to:
  /// **'Import failed: {error}'**
  String importError(String error);

  /// No description provided for @webNotSupported.
  ///
  /// In en, this message translates to:
  /// **'This feature is not available on the web version.'**
  String get webNotSupported;

  /// No description provided for @importInvalid.
  ///
  /// In en, this message translates to:
  /// **'The selected file is not a valid Portfolio backup.'**
  String get importInvalid;

  /// No description provided for @importConfirmTitle.
  ///
  /// In en, this message translates to:
  /// **'Overwrite Data?'**
  String get importConfirmTitle;

  /// No description provided for @importConfirmMessage.
  ///
  /// In en, this message translates to:
  /// **'This will delete all current entries and replace them with the backup. Continue?'**
  String get importConfirmMessage;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'it'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'it':
      return AppLocalizationsIt();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
