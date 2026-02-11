// SPDX-License-Identifier: BSD-3-Clause
// Copyright (c) 2026 medlav

import 'dart:io' show File;

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:residency_portfolio/src/version.dart';
import 'package:residency_portfolio/src/screens/backup_screen.dart';
import 'package:residency_portfolio/src/screens/categories_screen.dart';
import 'package:residency_portfolio/src/screens/portfolio_screen.dart';
import 'package:residency_portfolio/src/screens/profile_screen.dart';
import 'package:residency_portfolio/l10n/app_localizations.dart';
import 'package:residency_portfolio/src/providers/settings_provider.dart';
import 'package:residency_portfolio/src/providers/profile_provider.dart';
import 'package:residency_portfolio/src/screens/specialties_screen.dart';

const String bsdLicenseText = '''
BSD 3-Clause License
Copyright (c) 2026, medlav
All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this
   list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice,
   this list of conditions and the following disclaimer in the documentation
   and/or other materials provided with the distribution.

3. Neither the name of the copyright holder nor the names of its
   contributors may be used to endorse or promote products derived from
   this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
''';

/// A comprehensive configuration hub for the application.
///
/// The [SettingsScreen] allows users to:
/// * Manage their personal [ProfileProvider] data and avatar.
/// * Access sub-menus for portfolio categories, specialties, and data backups.
/// * Toggle visual appearance (Dark/Light mode) via the [SettingsProvider].
/// * Switch the application's [Locale] with an integrated confirmation workflow.
/// * View legal licenses and versioning information.
class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    final settings = context.watch<SettingsProvider>();
    final providerReader = context.read<SettingsProvider>();
    final profileProvider = context.watch<ProfileProvider>();
    final primaryColor = Theme.of(context).colorScheme.primary;
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.settingsTitle),
        titleTextStyle: Theme.of(context).textTheme.headlineSmall!.copyWith(
          color: Theme.of(context).colorScheme.primary,
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        elevation: 2,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: <Widget>[
          _buildProfileCard(
            context,
            primaryColor,
            l10n,
            profileProvider.profile.name,
            profileProvider.profile.imagePath,
          ),
          const SizedBox(height: 20),
          const Divider(),
          _buildSettingsHeader(context, l10n.settingsSectionPortfolio),
          _buildListTile(
            title: l10n.settingsPortfolioTitle,
            subtitle: l10n.settingsPortfolioSubtitle,
            icon: Icons.assignment_ind,
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const PortfolioScreen(),
                ),
              );
            },
            color: primaryColor,
          ),
          _buildListTile(
            title: l10n.settingsCategoriesTitle,
            subtitle: l10n.settingsCategoriesSubtitle,
            icon: Icons.list_alt,
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const CategoriesScreen(),
                ),
              );
            },
            color: primaryColor,
          ),
          _buildListTile(
            title: l10n.settingsSpecialtiesTitle,
            subtitle: l10n.settingsSpecialtiesSubtitle,
            icon: Icons.medical_information_outlined,
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const SpecialtiesScreen(),
                ),
              );
            },
            color: primaryColor,
          ),
          _buildListTile(
            title: l10n.settingsBackupDataTitle,
            subtitle: l10n.settingsBackupDataSubtitle,
            icon: Icons.cloud_upload_outlined,

            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const BackupScreen()),
              );
            },
            color: primaryColor,
          ),
          const Divider(),
          _buildSettingsHeader(context, l10n.settingsSectionAppearance),
          _buildSwitchListTile(
            title: l10n.settingsDarkModeTitle,
            subtitle: l10n.settingsDarkModeSubtitle,
            icon: Icons.brightness_6_outlined,
            value: settings.isDarkMode,
            onChanged: (bool value) {
              providerReader.setThemeMode(
                value ? ThemeMode.dark : ThemeMode.light,
              );
            },
            color: primaryColor,
          ),
          _buildLanguageListTile(
            context,
            l10n.settingsLanguageTitle,
            Icons.language,
            primaryColor,
            settings.appLocale,
            settings.supportedLocales,
            (newLocale) {
              _showLanguageConfirmationDialog(
                newLocale,
                providerReader.setLocale,
              );
            },
          ),
          const Divider(),
          _buildSettingsHeader(context, l10n.settingsSectionAbout),
          _buildListTile(
            title: l10n.settingsAppVersionTitle,
            subtitle: CURRENT_VERSION,
            icon: Icons.info_outline,
            onTap: () {
              showAboutDialog(
                context: context,
                applicationLegalese: bsdLicenseText,
                applicationName: l10n.appName,

                applicationVersion: CURRENT_VERSION,
              );
            },
            color: Colors.grey,
          ),
        ],
      ),
    );
  }

  /// Builds a prominent card displaying the user's name and avatar.
  ///
  /// Navigates to the [ProfileScreen] on tap. If [imagePath] is null,
  /// it displays a generic placeholder icon.
  Widget _buildProfileCard(
    BuildContext context,
    Color color,
    AppLocalizations l10n,
    String profileName,
    String? imagePath,
  ) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      margin: EdgeInsets.zero,
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        leading: CircleAvatar(
          radius: 30,
          backgroundColor: color.withValues(alpha: 0.1),
          backgroundImage: imagePath != null
              ? FileImage(File(imagePath))
              : null,
          child: imagePath == null
              ? Icon(Icons.person, size: 30, color: color)
              : null,
        ),
        title: Text(
          profileName,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        subtitle: Text(l10n.settingsProfileSubtitle),
        trailing: const Icon(Icons.edit, size: 20),
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const ProfileScreen()),
          );
        },
      ),
    );
  }

  /// Builds a section header used to categorize settings groups.
  Widget _buildSettingsHeader(BuildContext context, String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, bottom: 8.0),
      child: Text(
        title,
        style: TextStyle(
          color: Theme.of(context).colorScheme.secondary,
          fontWeight: FontWeight.bold,
          fontSize: 14,
        ),
      ),
    );
  }

  /// Utility for creating standard navigation list tiles within the settings menu.
  Widget _buildListTile({
    required String title,
    required String subtitle,
    required IconData icon,
    required VoidCallback onTap,
    required Color color,
  }) {
    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: const Icon(Icons.chevron_right),
      onTap: onTap,
    );
  }

  /// Utility for creating appearance-based toggle tiles.
  Widget _buildSwitchListTile({
    required String title,
    required String subtitle,
    required IconData icon,
    required bool value,
    required ValueChanged<bool> onChanged,
    required Color color,
  }) {
    return SwitchListTile(
      secondary: Icon(icon, color: color),
      title: Text(title),
      subtitle: Text(subtitle),
      value: value,
      onChanged: onChanged,
      activeThumbColor: color,
    );
  }

  /// Builds a selection tile specifically for language localization.
  ///
  /// Displays a dropdown of [supportedLocales] with localized names.
  Widget _buildLanguageListTile(
    BuildContext context,
    String title,
    IconData icon,
    Color color,
    Locale currentLocale,
    List<Locale> supportedLocales,
    void Function(Locale) onLocaleChanged,
  ) {
    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(title),
      trailing: DropdownButton<Locale>(
        value: currentLocale,
        icon: const Icon(Icons.arrow_drop_down),
        onChanged: (Locale? newLocale) {
          if (newLocale != null) {
            onLocaleChanged(newLocale);
          }
        },
        items: supportedLocales.map<DropdownMenuItem<Locale>>((Locale locale) {
          String languageName = switch (locale.languageCode) {
            'en' => 'English',
            'it' => 'Italiano',
            _ => locale.languageCode.toUpperCase(),
          };

          return DropdownMenuItem<Locale>(
            value: locale,
            child: Text(languageName),
          );
        }).toList(),
      ),
    );
  }

  /// Orchestrates a two-stage dialog workflow for changing the application language.
  ///
  /// **Workflow:**
  /// 1. Displays an [AlertDialog] to confirm the language switch.
  /// 2. If confirmed, displays a non-dismissible loading overlay ([PopScope])
  ///    while the [SettingsProvider] updates the locale and triggers an app-wide rebuild.
  /// 3. Dismisses the overlay once the new frame has been processed.
  Future<void> _showLanguageConfirmationDialog(
    Locale newLocale,
    void Function(Locale) applyLocale,
  ) async {
    final l10n = AppLocalizations.of(context)!;

    String languageName = switch (newLocale.languageCode) {
      'en' => 'English',
      'it' => 'Italiano',
      _ => newLocale.languageCode.toUpperCase(),
    };

    final l10nTitle = l10n.languageChangeConfirmTitle(languageName);
    final l10nContent = l10n.languageChangeConfirmMessage;
    final l10nConfirm = l10n.languageChangeConfirmButton;
    final l10nCancel = l10n.buttonCancel;

    final result = await showDialog<bool>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext dialogContext) {
        return AlertDialog(
          title: Text(l10nTitle),
          content: Text(l10nContent),
          actions: <Widget>[
            TextButton(
              child: Text(l10nCancel),
              onPressed: () => Navigator.of(dialogContext).pop(false),
            ),
            ElevatedButton(
              child: Text(l10nConfirm),
              onPressed: () => Navigator.of(dialogContext).pop(true),
            ),
          ],
        );
      },
    );

    if (!mounted || result != true) {
      return;
    }

    /// Displays a non-dismissible loading overlay and synchronizes the locale
    /// transition with the Flutter rendering pipeline.
    ///
    /// The logic uses [Future.microtask] to trigger the [applyLocale] rebuild
    /// off-stack, followed by [WidgetsBinding.instance.addPostFrameCallback]
    /// to ensure the loading dialog is only dismissed after the new locale
    /// has been successfully rendered in the UI.
    showDialog(
      context: context,
      barrierDismissible: false,
      useRootNavigator: true,
      builder: (BuildContext loadingDialogContext) {
        // Using Future.microtask is fine, but adding a post-frame callback
        // ensures the 'pop' happens after the locale rebuild is complete.
        Future.microtask(() async {
          // 1. Apply the new locale, which causes the full app rebuild.
          applyLocale(newLocale);

          // 2. Wait for the next frame to be built (after the rebuild).
          WidgetsBinding.instance.addPostFrameCallback((_) {
            // Check if the dialog context is still safe to use (which it should be now)
            if (loadingDialogContext.mounted) {
              // 3. Dismiss the loading dialog using its own context.
              Navigator.of(loadingDialogContext, rootNavigator: true).pop();
            }
          });
        });

        return PopScope(
          canPop: false,
          child: Center(
            child: Container(
              padding: const EdgeInsets.all(30),
              decoration: BoxDecoration(
                color: Theme.of(context).cardColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const CircularProgressIndicator(),
                  const SizedBox(height: 16),
                  Text(
                    l10n.restartingApp,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
