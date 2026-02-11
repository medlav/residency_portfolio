// SPDX-License-Identifier: BSD-3-Clause
// Copyright (c) 2026 medlav

import 'package:flutter/material.dart';
import 'package:provider/provider.dart' show ReadContext;
import 'package:residency_portfolio/l10n/app_localizations.dart';
import 'package:residency_portfolio/src/providers/portfolio_provider.dart'
    show PortfolioProvider;
import 'package:residency_portfolio/src/services/export_helper.dart';
import 'package:residency_portfolio/src/services/import_helper.dart'
    show ImportHelper; // Import the helper file

/// A screen providing data portability and backup options for the user's portfolio.
///
/// This screen allows residents to export their clinical and academic data into
/// multiple formats (JSON, CSV, PDF, and Raw DB). It acts as a UI wrapper around
/// the [performBackup] logic defined in the export services.
///
/// Use this screen to ensure users have ownership of their data and can perform
/// manual backups before major app updates or specialty changes.
class BackupScreen extends StatelessWidget {
  const BackupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.settingsBackupDataTitle),
        titleTextStyle: Theme.of(context).textTheme.headlineSmall!.copyWith(
          color: Theme.of(context).colorScheme.primary,
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        elevation: 2,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                l10n.settingsExportFormatDialogTitle,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
            _BackupOptionTile(
              format: BackupFormat.json,
              title: l10n.settingsExportJsonTitle,
              icon: Icons.data_object,
              subtitle: l10n.settingsExportJsonSubtitle,
              l10n: l10n,
            ),
            _BackupOptionTile(
              format: BackupFormat.csv,
              title: l10n.settingsExportCsvTitle,
              icon: Icons.table_chart_outlined,
              subtitle: l10n.settingsExportCsvSubtitle,
              l10n: l10n,
            ),
            _BackupOptionTile(
              format: BackupFormat.pdf,
              title: l10n.settingsExportPdfTitle,
              icon: Icons.picture_as_pdf_outlined,
              subtitle: l10n.settingsExportPdfSubtitle,
              l10n: l10n,
            ),
            _BackupOptionTile(
              format: BackupFormat.db,
              title: l10n.settingsExportDbTitle,
              icon: Icons.storage_outlined,
              subtitle: l10n.settingsExportDbSubtitle,
              l10n: l10n,
            ),
            const Divider(),

            // Import Database button
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  icon: const Icon(Icons.upload_file),
                  onPressed: () async {
                    final bool? confirm = await showDialog<bool>(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: Text(l10n.importConfirmTitle),
                        content: Text(l10n.importConfirmMessage),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(context, false),
                            child: Text(
                              MaterialLocalizations.of(
                                context,
                              ).cancelButtonLabel,
                            ),
                          ),
                          TextButton(
                            onPressed: () => Navigator.pop(context, true),
                            child: Text(l10n.importConfirmTitle),
                          ),
                        ],
                      ),
                    );

                    if (confirm != true || !context.mounted) return;

                    final String result = await ImportHelper.importDatabase();

                    if (!context.mounted) return;

                    if (result == 'Success') {
                      await context
                          .read<PortfolioProvider>()
                          .refreshAfterImport();

                      if (!context.mounted) return;
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text(l10n.importSuccess)),
                      );
                    } else if (result == 'Invalid database') {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text(l10n.importInvalid)),
                      );
                    } else if (result != 'Import cancelled') {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text(l10n.importError(result))),
                      );
                    }
                  },
                  label: const Text("Import Database"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// A stateful tile widget that represents a specific [BackupFormat] option.
///
/// This widget manages its own loading state ([_isLoading]) to provide visual
/// feedback while the file system or PDF generator is working. It prevents
/// concurrent backup attempts by disabling the tap interaction during processing.
class _BackupOptionTile extends StatefulWidget {
  const _BackupOptionTile({
    required this.format,
    required this.title,
    required this.icon,
    required this.subtitle,
    required this.l10n,
  });

  /// The technical format (e.g., .json, .csv) to be passed to the export service.
  final BackupFormat format;

  /// The localized title of the export option.
  final String title;

  /// The icon representing the file type.
  final IconData icon;

  /// A brief localized description of what this export format is best used for.
  final String subtitle;

  /// For Localized Strings
  final AppLocalizations l10n;

  @override
  State<_BackupOptionTile> createState() => _BackupOptionTileState();
}

class _BackupOptionTileState extends State<_BackupOptionTile> {
  bool _isLoading = false;

  /// Coordinates the backup process for the selected [widget.format].
  ///
  /// This handler performs the following lifecycle:
  /// 1. Sets [_isLoading] to true to trigger the [CircularProgressIndicator].
  /// 2. Calls the [performBackup] global helper from `export_helper.dart`.
  /// 3. Displays a [SnackBar] with the success message or caught error.
  /// 4. Resets the loading state if the widget is still [mounted].
  Future<void> _handleTap() async {
    if (_isLoading) return;

    setState(() {
      _isLoading = true;
    });

    try {
      // 1. Execute the actual backup logic
      final resultMessage = await performBackup(context, widget.format);

      // 2. Show success message (Snackbar)
      if (mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(resultMessage)));
      }
    } catch (e) {
      // 3. Handle errors
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(widget.l10n.importError(e.toString())),
            backgroundColor: Colors.red,
          ),
        );
      }
    } finally {
      // 4. Reset loading state
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(widget.icon, color: Theme.of(context).colorScheme.primary),
      title: Text(widget.title),
      subtitle: Text(widget.subtitle),
      trailing: _isLoading
          ? const SizedBox(
              width: 24,
              height: 24,
              child: CircularProgressIndicator(strokeWidth: 2),
            )
          : const Icon(Icons.chevron_right),
      onTap: _handleTap,
      enabled: !_isLoading, // Disable tap while loading
    );
  }
}
