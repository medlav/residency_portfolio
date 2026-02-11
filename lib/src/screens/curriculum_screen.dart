// SPDX-License-Identifier: BSD-3-Clause
// Copyright (c) 2026 medlav

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';
import 'package:residency_portfolio/src/screens/homepage_screen.dart'
    show Homepage;
import 'package:residency_portfolio/src/services/pdf_generator.dart'
    show PdfGeneratorService;
import 'package:residency_portfolio/src/providers/portfolio_provider.dart';
import 'package:residency_portfolio/src/providers/profile_provider.dart';
import 'package:residency_portfolio/src/services/curriculum_generator.dart';
import 'package:residency_portfolio/src/widgets/drawer.dart';
import 'package:residency_portfolio/l10n/app_localizations.dart';

/// A screen that visualizes and exports the aggregated professional curriculum.
///
/// Unlike the activity list, which shows chronological logs, the [CurriculumScreen]
/// uses [CurriculumGenerator] to group similar activities (by name, category,
/// and institution) into [ConsolidatedEntry] items. This provides a "Resume-style"
/// view of the resident's career.
///
/// Features:
/// * **Real-time Aggregation**: Watches [PortfolioProvider] to update stats.
/// * **Visual Summaries**: Displays total credits and entry counts at a glance.
/// * **PDF Export**: Triggers [PdfGeneratorService] to produce a shareable document.
class CurriculumScreen extends StatelessWidget {
  const CurriculumScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final portfolio = context.watch<PortfolioProvider>();
    final profile = context.watch<ProfileProvider>();

    final consolidatedData = CurriculumGenerator.generateConsolidatedCurriculum(
      portfolio.entries,
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.portfolioTabCurrentCurriculum),
        titleTextStyle: theme.textTheme.headlineSmall!.copyWith(
          color: theme.colorScheme.primary,
        ),
        backgroundColor: theme.colorScheme.primaryContainer,
        centerTitle: true,
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(Icons.menu, color: theme.colorScheme.primary),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        actions: [
          IconButton(
            tooltip: l10n.buttonHomepage,
            icon: Icon(Icons.home, color: theme.colorScheme.primary),
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => const Homepage()),
              );
            },
          ),
        ],
      ),
      drawer: PortfolioDrawer(
        username: profile.profile.name,
        email: profile.profile.email,
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          final portfolio = context.read<PortfolioProvider>();
          final profile = context.read<ProfileProvider>().profile;

          final consolidatedData =
              CurriculumGenerator.generateConsolidatedCurriculum(
                portfolio.entries,
              );

          PdfGeneratorService.generateCurriculumPdf(
            context: context,
            data: consolidatedData,
            name: profile.name,
            email: profile.email,
            totalCredits: portfolio.totalCredits,
          );
        },
        label: Text(l10n.exportPdf),
        icon: const Icon(Icons.picture_as_pdf),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
      ),
      body: Column(
        children: [
          _buildSummaryHeader(
            context,
            portfolio.totalCredits,
            l10n,
            portfolio.entries.length,
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              itemCount: consolidatedData.length,
              itemBuilder: (context, index) {
                String category = consolidatedData.keys.elementAt(index);
                List<ConsolidatedEntry> items = consolidatedData[category]!;

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildCategoryHeader(context, category),
                    ...items.map(
                      (item) => _buildConsolidatedTile(context, item, l10n),
                    ),
                    const SizedBox(height: 20),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  /// Builds the top summary panel containing total credits and metrics.
  ///
  /// The background uses a subtle primary container tint (30% alpha) to
  /// visually separate the dashboard stats from the list below.
  Widget _buildSummaryHeader(
    BuildContext context,
    double total,
    AppLocalizations l10n,
    int entryCount,
  ) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Theme.of(
          context,
        ).colorScheme.primaryContainer.withValues(alpha: .3),
        border: Border(
          bottom: BorderSide(color: Theme.of(context).dividerColor),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            l10n.curriculumHeaderTitle,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          Text(
            l10n.curriculumHeaderSubtitle,
            style: TextStyle(fontSize: 14, color: Colors.grey[600]),
          ),
          const SizedBox(height: 12),
          Text(
            l10n.curriculumSummaryStats(total.toStringAsFixed(1), entryCount),
            style: const TextStyle(fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }

  /// Builds a stylistic section divider for curriculum categories (e.g., EXAMS).
  Widget _buildCategoryHeader(BuildContext context, String category) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12, top: 8),
      child: Row(
        children: [
          const Expanded(child: Divider()),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * 0.8,
              ),
              child: Text(
                category.toUpperCase(),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.secondary,
                  letterSpacing: 1.1,
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
            ),
          ),
          const Expanded(child: Divider()),
        ],
      ),
    );
  }

  /// Renders an individual [ConsolidatedEntry] with its aggregated statistics.
  ///
  /// **Layout Details:**
  /// * **Left**: The month/year period of the activity.
  /// * **Center**: The activity name, institution, and occurrence count.
  /// * **Right**: The total sum of credits/amounts for that specific entry group.
  Widget _buildConsolidatedTile(
    BuildContext context,
    ConsolidatedEntry item,
    AppLocalizations l10n,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Period Column
          SizedBox(
            width: 80,
            child: Text(
              DateFormat('MMM yyyy').format(item.period),
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
          ),
          // Content Column
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  item.institution,
                  style: TextStyle(color: Colors.grey[700], fontSize: 14),
                ),
                if (item.occurrenceCount > 1)
                  Text(
                    l10n.curriculumAggregatedSessions(item.occurrenceCount),
                    style: const TextStyle(
                      fontSize: 12,
                      fontStyle: FontStyle.italic,
                      color: Colors.blueGrey,
                    ),
                    overflow: TextOverflow.clip,
                    maxLines: 1,
                  ),
              ],
            ),
          ),
          // Total Sum Column
          Text(
            item.totalAmount.toStringAsFixed(1),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        ],
      ),
    );
  }
}
