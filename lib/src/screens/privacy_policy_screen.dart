// SPDX-License-Identifier: BSD-3-Clause
// Copyright (c) 2026 medlav

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:residency_portfolio/src/providers/profile_provider.dart';
import 'package:residency_portfolio/src/widgets/drawer.dart';
import 'package:residency_portfolio/l10n/app_localizations.dart';
import 'package:residency_portfolio/src/version.dart' show CURRENT_VERSION;

/// A stateless screen that displays the application's privacy policy to the user.
///
/// This screen provides a structured view of data handling practices,
/// local storage information, and app versioning. It includes a navigation
/// drawer for app-wide access and localized content sections.
class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final profileProvider = context.watch<ProfileProvider>();

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.privacyPolicyTitle),
        titleTextStyle: theme.textTheme.headlineSmall!.copyWith(
          color: theme.colorScheme.primary,
        ),
        backgroundColor: theme.colorScheme.primaryContainer,
        centerTitle: true,
        leading: Builder(
          builder: (innerContext) => IconButton(
            icon: Icon(Icons.menu, color: theme.colorScheme.primary),
            tooltip: l10n.drawerTooltip,
            onPressed: () => Scaffold.of(innerContext).openDrawer(),
          ),
        ),
      ),
      drawer: PortfolioDrawer(
        username: profileProvider.profile.name,
        email: profileProvider.profile.email,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              l10n.privacyHeader,
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: theme.colorScheme.primary,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              l10n.privacyLastUpdated,
              style: const TextStyle(
                fontStyle: FontStyle.italic,
                color: Colors.grey,
              ),
            ),
            const Divider(height: 40),

            _buildSection(
              context,
              l10n.privacySection1Title,
              l10n.privacySection1Content,
            ),
            _buildSection(
              context,
              l10n.privacySection2Title,
              l10n.privacySection2Content,
            ),
            _buildSection(
              context,
              l10n.privacySection3Title,
              l10n.privacySection3Content,
            ),
            _buildSection(
              context,
              l10n.privacySection4Title,
              l10n.privacySection4Content,
            ),
            _buildSection(
              context,
              l10n.privacySection5Title,
              l10n.privacySection5Content,
            ),

            const SizedBox(height: 40),
            Center(
              child: Text(
                l10n.privacyVersion(CURRENT_VERSION),
                style: theme.textTheme.bodySmall,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Constructs a stylized section within the privacy policy.
  ///
  /// Groups a bold section title with its corresponding body text, applying
  /// theme-consistent spacing and typography.
  ///
  /// * [context]: The build context used to access the current [ThemeData].
  /// * [title]: The heading text for the specific policy section.
  /// * [content]: The descriptive body text detailing policy information.
  /// * Returns: A [Padding] widget containing a [Column] of title and content text.
  Widget _buildSection(BuildContext context, String title, String content) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            content,
            style: TextStyle(
              fontSize: 15,
              height: 1.5,
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
        ],
      ),
    );
  }
}
