// SPDX-License-Identifier: BSD-3-Clause
// Copyright (c) 2026 medlav

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:residency_portfolio/src/providers/portfolio_provider.dart'
    show PortfolioProvider;

import 'package:residency_portfolio/src/services/specialties_data.dart';
import 'package:residency_portfolio/src/providers/profile_provider.dart';
import 'package:residency_portfolio/src/models/specialty.dart';
import 'package:residency_portfolio/l10n/app_localizations.dart';

/// A screen that allows users to view and edit their professional profile.
///
/// This screen handles user information such as name, email, medical specialty,
/// residency year, and institution. It also manages the profile picture
/// by allowing users to pick an image from the gallery and persist it locally.
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

/// The state logic for [ProfileScreen], managing form validation and image persistence.
class _ProfileScreenState extends State<ProfileScreen> {
  /// Controller for the full name text field.
  final TextEditingController _nameController = TextEditingController();

  /// Controller for the email address text field.
  final TextEditingController _emailController = TextEditingController();

  /// Controller for the current year of residency text field.
  final TextEditingController _residencyYearController =
      TextEditingController();

  /// Controller for the medical institution text field.
  final TextEditingController _institutionController = TextEditingController();

  /// The currently selected medical [Specialty] in the dropdown.
  Specialty? _currentSelectedSpecialty;

  /// Global key for the [Form] widget to trigger validation and saving.
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  /// Provides the list of specialties for the dropdown, including the default initial state.
  List<Specialty> get _dropdownSpecialtyItems {
    return [Specialty.initial(), ...listAvailableSpecialties];
  }

  @override
  void initState() {
    super.initState();
    // Initialize controllers with current provider data after the first frame.
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final initialProfile = context.read<ProfileProvider>().profile;
      _nameController.text = initialProfile.name;
      _emailController.text = initialProfile.email;
      _residencyYearController.text = initialProfile.residencyYear;
      _institutionController.text = initialProfile.institution;
      _currentSelectedSpecialty = initialProfile.specialty;
    });
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _residencyYearController.dispose();
    _institutionController.dispose();
    super.dispose();
  }

  /// Opens the system gallery to allow the user to select a profile image.
  ///
  /// If a file is picked, it is copied to the application's local document
  /// directory to ensure persistence. The [ProfileProvider] is then updated
  /// with the new local path.
  ///
  /// * [l10n]: The localization instance used for displaying error messages.
  /// * Returns: A [Future<void>] that completes when the image is processed and saved.
  Future<void> _pickImage(AppLocalizations l10n) async {
    try {
      final picker = ImagePicker();
      final XFile? pickedFile = await picker.pickImage(
        source: ImageSource.gallery,
        maxWidth: 500,
      );

      if (pickedFile != null && mounted) {
        final directory = await getApplicationDocumentsDirectory();
        final String extension = p.extension(pickedFile.path);
        final String fileName = 'profile_pic$extension';
        final String localPath = '${directory.path}/$fileName';

        await File(pickedFile.path).copy(localPath);
        if (!mounted) return;

        final profileProvider = context.read<ProfileProvider>();
        final profile = profileProvider.profile;

        await profileProvider.updateProfile(
          name: _nameController.text,
          email: _emailController.text,
          specialty: _currentSelectedSpecialty ?? profile.specialty,
          residencyYear: _residencyYearController.text,
          institution: _institutionController.text,
          imagePath: localPath,
        );
      }
    } catch (e) {
      if (!mounted) return;
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Error: ${e.toString()}')));
    }
  }

  /// Displays an alert dialog informing the user that specialty changes are restricted.
  ///
  /// This is triggered when a user attempts to change their medical specialty
  /// while existing portfolio entries are already linked to the current one.
  ///
  /// * [l10n]: The localization instance used for the dialog text and buttons.
  void _showSpecialtyLockDialog(AppLocalizations l10n) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(l10n.specialtyChangeLockedTitle),
        content: Text(l10n.specialtyChangeLockedContent),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: Text(l10n.buttonConfirmSave),
          ),
        ],
      ),
    );
  }

  /// Validates the form state and persists profile changes to the [ProfileProvider].
  ///
  /// Performs a check to ensure specialty changes do not conflict with existing
  /// data. If validation passes, updates the profile and navigates back.
  ///
  /// * [l10n]: The localization instance used for success/error feedback.
  void _saveProfile(AppLocalizations l10n) {
    if (!_formKey.currentState!.validate()) return;

    final profileProvider = context.read<ProfileProvider>();
    final currentImagePath = profileProvider.profile.imagePath;

    final portfolioProvider = context.read<PortfolioProvider>();

    final oldSpecialtyId = profileProvider.profile.specialty.id;
    final newSpecialty = _currentSelectedSpecialty ?? Specialty.initial();

    if (newSpecialty.id != oldSpecialtyId &&
        portfolioProvider.entries.isNotEmpty) {
      _showSpecialtyLockDialog(l10n);
      return;
    }

    profileProvider
        .updateProfile(
          name: _nameController.text.trim(),
          email: _emailController.text.trim(),
          specialty: _currentSelectedSpecialty ?? Specialty.initial(),
          residencyYear: _residencyYearController.text.trim(),
          institution: _institutionController.text.trim(),
          imagePath: currentImagePath,
        )
        .then((_) {
          if (!mounted) return;
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(l10n.profileSaveSuccess)));
          Navigator.of(context).pop();
        })
        .catchError((error) {
          if (!mounted) return;
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('${l10n.profileSaveError}$error')),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final primaryColor = Theme.of(context).colorScheme.primary;
    final profileProvider = context.watch<ProfileProvider>();
    _currentSelectedSpecialty ??= profileProvider.profile.specialty;

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.profileTitle),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              _buildAvatarSection(context, primaryColor, l10n),
              const SizedBox(height: 30),
              _buildTextField(
                controller: _nameController,
                labelText: l10n.profileLabelFullName,
                icon: Icons.person_outline,
                validator: (v) =>
                    v!.isEmpty ? l10n.profileValidationNameRequired : null,
              ),
              const SizedBox(height: 20),
              _buildTextField(
                controller: _emailController,
                labelText: l10n.profileLabelEmail,
                icon: Icons.email_outlined,
                validator: (v) => !v!.contains('@')
                    ? l10n.profileValidationEmailInvalid
                    : null,
              ),
              const SizedBox(height: 20),
              _buildDropdownField<Specialty>(
                context: context,
                items: _dropdownSpecialtyItems,
                selectedValue: _currentSelectedSpecialty,
                onChanged: (val) =>
                    setState(() => _currentSelectedSpecialty = val),
                labelText: l10n.profileLabelSpecialty,
                icon: Icons.medical_services_outlined,
              ),
              const SizedBox(height: 20),
              _buildTextField(
                controller: _residencyYearController,
                labelText: l10n.profileLabelResidencyYear,
                icon: Icons.timeline,
              ),
              const SizedBox(height: 20),
              _buildTextField(
                controller: _institutionController,
                labelText: l10n.profileLabelInstitution,
                icon: Icons.business_outlined,
              ),
              const SizedBox(height: 40),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: () => _saveProfile(l10n),
                  icon: const Icon(Icons.save),
                  label: Text(l10n.profileButtonSaveChanges),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primaryColor,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Displays a confirmation dialog to delete the current profile picture.
  ///
  /// * [context]: The build context used to show the dialog.
  /// * [l10n]: The localization instance used for dialog content and actions.
  void _showDeleteImageDialog(BuildContext context, AppLocalizations l10n) {
    showDialog(
      context: context,
      builder: (BuildContext dialogContext) {
        return AlertDialog(
          title: Text(l10n.deleteImageTitle),
          content: Text(l10n.deleteImageConfirmation),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(dialogContext).pop(),
              child: Text(l10n.cancel),
            ),
            TextButton(
              onPressed: () async {
                final profileProvider = context.read<ProfileProvider>();

                await profileProvider.updateProfilePicture(null);

                if (!context.mounted) return;

                Navigator.of(dialogContext).pop();
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(l10n.profileSaveSuccess)),
                );
              },
              child: Text(
                l10n.delete,
                style: const TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  /// Builds the circular profile image display with an edit overlay.
  ///
  /// * [context]: The build context for accessing providers and themes.
  /// * [primaryColor]: The theme color used for the avatar background and camera icon.
  /// * [l10n]: The localization instance for accessibility and labels.
  /// * Returns: A [Widget] containing the interactive avatar stack.
  Widget _buildAvatarSection(
    BuildContext context,
    Color primaryColor,
    AppLocalizations l10n,
  ) {
    final profile = context.watch<ProfileProvider>().profile;
    return Stack(
      children: [
        CircleAvatar(
          radius: 60,
          backgroundColor: primaryColor.withAlpha(25),
          backgroundImage: profile.imagePath != null
              ? FileImage(File(profile.imagePath!))
              : null,
          child: profile.imagePath == null
              ? Icon(Icons.person, size: 60, color: primaryColor)
              : null,
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: GestureDetector(
            onTap: () => _pickImage(l10n),
            onLongPress: () => _showDeleteImageDialog(context, l10n),
            child: CircleAvatar(
              radius: 20,
              backgroundColor: primaryColor,
              child: const Icon(
                Icons.camera_alt,
                color: Colors.white,
                size: 18,
              ),
            ),
          ),
        ),
      ],
    );
  }

  /// Generates a standardized [TextFormField] for profile input.
  ///
  /// * [controller]: The controller managing the text state.
  /// * [labelText]: The descriptive label for the input.
  /// * [icon]: The leading icon to display in the field.
  /// * [validator]: Optional validation logic for form submission.
  /// * Returns: A styled [Widget] consistent with the profile form design.
  Widget _buildTextField({
    required TextEditingController controller,
    required String labelText,
    required IconData icon,
    String? Function(String?)? validator,
  }) {
    return TextFormField(
      controller: controller,
      validator: validator,
      decoration: InputDecoration(
        labelText: labelText,
        prefixIcon: Icon(icon),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }

  /// Generates a standardized [DropdownButtonFormField] for selectable profile data.
  ///
  /// * [context]: The build context for styling.
  /// * [selectedValue]: The currently active value of type [T].
  /// * [items]: The list of available options of type [T].
  /// * [labelText]: The descriptive label for the dropdown.
  /// * [icon]: The leading icon to display.
  /// * [onChanged]: Callback triggered when a new selection is made.
  /// * Returns: A styled [Widget] for selection-based input.
  Widget _buildDropdownField<T>({
    required BuildContext context,
    required T? selectedValue,
    required List<T> items,
    required String labelText,
    required IconData icon,
    required void Function(T?) onChanged,
  }) {
    return DropdownButtonFormField<T>(
      initialValue: selectedValue,
      onChanged: onChanged,
      items: items
          .map(
            (item) =>
                DropdownMenuItem<T>(value: item, child: Text(item.toString())),
          )
          .toList(),
      decoration: InputDecoration(
        labelText: labelText,
        prefixIcon: Icon(icon),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
