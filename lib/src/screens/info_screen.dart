// SPDX-License-Identifier: BSD-3-Clause
// Copyright (c) 2026 medlav
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:residency_portfolio/src/screens/privacy_policy_screen.dart';
import 'package:residency_portfolio/src/version.dart';
import 'package:residency_portfolio/l10n/app_localizations.dart';

/// A centralized screen for application metadata, legal disclaimers, and references.
///
/// The [InfoScreen] serves several critical functions:
/// * **Identity**: Displays the current [CURRENT_VERSION] and branding.
/// * **Regulatory Reference**: Provides context regarding medical residency
///   requirements (e.g., DL 402/2017).
/// * **Risk Mitigation**: Houses the medical liability disclaimer via [l10n.disclaimerBody1].
/// * **External Resources**: Provides navigation to the Privacy Policy and
///   open-source repository.
///
/// This screen uses high-contrast error styling for the disclaimer section to
/// ensure visibility of legal terms.
class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key});

  Future<void> _launchUrl() async {
    final Uri url = Uri.parse('https://github.com/medlav/residency_portfolio');
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.infoScreenTitle),

        titleTextStyle: Theme.of(context).textTheme.headlineSmall!.copyWith(
          fontWeight: FontWeight.bold,
          color: Theme.of(context).colorScheme.primary,
        ),
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        elevation: 2,
        centerTitle: true,
        iconTheme: IconThemeData(color: Theme.of(context).colorScheme.primary),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              l10n.appTitle,
              style: Theme.of(context).textTheme.displaySmall!.copyWith(
                fontWeight: FontWeight.w800,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 8),

            Text(
              l10n.drawerVersion(CURRENT_VERSION),
              style: Theme.of(context).textTheme.labelLarge!.copyWith(
                color: Theme.of(context).colorScheme.onSurfaceVariant,
              ),
            ),

            Divider(
              height: 40,
              thickness: Theme.of(context).dividerTheme.thickness,
              color: Theme.of(context).dividerTheme.color,
            ),

            Text(
              l10n.infoSectionTitlePurpose,
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                fontWeight: FontWeight.w600,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 10),

            Text(
              l10n.infoSectionDescription,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                height: 1.5,
                color: Theme.of(context).colorScheme.onSurfaceVariant,
              ),
            ),
            Divider(
              height: 40,
              thickness: Theme.of(context).dividerTheme.thickness,
              color: Theme.of(context).dividerTheme.color,
            ),

            Text(
              l10n.infoSectionTitleLicense,
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                fontWeight: FontWeight.w600,
                color: Theme.of(context).colorScheme.error,
              ),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Theme.of(
                  context,
                ).colorScheme.errorContainer.withValues(alpha: 0.5),
                borderRadius: BorderRadius.circular(12),

                border: Border.all(color: Theme.of(context).colorScheme.error),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    l10n.disclaimerTitle,
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.error,
                    ),
                  ),
                  const SizedBox(height: 8),

                  Text(
                    l10n.disclaimerBody1,
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      height: 1.5,
                      color: Theme.of(context).colorScheme.onErrorContainer,
                    ),
                  ),
                  const SizedBox(height: 8),

                  Text(
                    l10n.disclaimerBody2,
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      height: 1.5,
                      fontStyle: FontStyle.italic,
                      color: Theme.of(context).colorScheme.error,
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              height: 40,
              thickness: Theme.of(context).dividerTheme.thickness,
              color: Theme.of(context).dividerTheme.color,
            ),

            ListTile(
              leading: Icon(
                Icons.code,
                color: Theme.of(context).colorScheme.primary,
              ),
              title: Text(
                l10n.infoTileSourceCode,
                style: TextStyle(
                  fontSize: 16.0,
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.w500,
                ),
              ),
              trailing: Icon(
                Icons.open_in_new,
                color: Theme.of(context).colorScheme.primary,
              ),
              onTap: _launchUrl,
            ),
            ListTile(
              leading: Icon(
                Icons.privacy_tip_outlined,
                color: Theme.of(context).colorScheme.primary,
              ),
              title: Text(
                l10n.infoTilePrivacyPolicy,
                style: TextStyle(
                  fontSize: 16.0,
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.w500,
                ),
              ),
              trailing: Icon(
                Icons.open_in_new,
                color: Theme.of(context).colorScheme.primary,
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const PrivacyPolicyScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
