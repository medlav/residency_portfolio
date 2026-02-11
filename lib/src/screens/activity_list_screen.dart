// SPDX-License-Identifier: BSD-3-Clause
// Copyright (c) 2026 medlav

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';
import 'package:residency_portfolio/src/providers/portfolio_provider.dart';
import 'package:residency_portfolio/src/providers/profile_provider.dart';
import 'activity_form_screen.dart';
import 'package:residency_portfolio/l10n/app_localizations.dart';
import 'package:residency_portfolio/src/widgets/drawer.dart';
import 'homepage_screen.dart' show Homepage;

/// A screen that displays a chronological list of all recorded residency activities.
///
/// This screen acts as the primary ledger for the user, offering:
/// * **Real-time Synchronization**: Uses [PortfolioProvider] to reflect the current state of logs.
/// * **Dismissible Interaction**: Implements "Swipe-to-Delete" for quick entry removal.
/// * **Dynamic Formatting**: Handles complex date logic (single day vs. date ranges).
/// * **Totalized Overview**: Displays a prominent summary card of accumulated credits.
class ActivityListScreen extends StatefulWidget {
  const ActivityListScreen({super.key});

  @override
  State<ActivityListScreen> createState() => _ActivityListScreenState();
}

class _ActivityListScreenState extends State<ActivityListScreen> {
  /// Generates a localized date subtitle string for an activity entry.
  ///
  /// If the entry contains an end date ([entry.dateEnd]), it returns a range
  /// (e.g., "10/01/2024 - 15/01/2024"). Otherwise, it returns a single date.
  String _formatDateSubtitle(AppLocalizations l10n, entry) {
    const dateFormat = 'dd/MM/yyyy';
    final startDate = DateFormat(dateFormat).format(entry.date);

    if (entry.dateEnd != null) {
      final endDate = DateFormat(dateFormat).format(entry.dateEnd!);

      return l10n.activityListDateRange('$startDate - $endDate');
    } else {
      return l10n.activityListDate(startDate);
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final portfolioProvider = context.watch<PortfolioProvider>();
    final profileProvider = context.watch<ProfileProvider>();

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.activityListTitle),
        titleTextStyle: Theme.of(context).textTheme.headlineSmall!.copyWith(
          color: Theme.of(context).colorScheme.primary,
        ),
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        centerTitle: true,
        actions: [
          IconButton(
            tooltip: l10n.buttonHomepage,
            icon: Icon(
              Icons.home,
              color: Theme.of(context).colorScheme.primary,
            ),
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => const Homepage()),
              );
            },
          ),
        ],
        automaticallyImplyLeading: false,

        leading: Builder(
          builder: (BuildContext innerContext) {
            return IconButton(
              icon: Icon(
                Icons.menu,
                color: Theme.of(context).colorScheme.primary,
              ),

              tooltip: l10n.drawerTooltip,
              onPressed: () {
                Scaffold.of(innerContext).openDrawer();
              },
            );
          },
        ),
      ),

      drawer: PortfolioDrawer(
        username: profileProvider.profile.name,
        email: profileProvider.profile.email,
      ),

      body: portfolioProvider.isLoading
          ? const Center(child: CircularProgressIndicator())
          : Column(
              children: [
                _buildSummaryCard(
                  context,
                  portfolioProvider.totalCredits,
                  l10n,
                ),
                Expanded(
                  child: portfolioProvider.entries.isEmpty
                      ? Center(
                          child: Text(
                            l10n.activityListEmptyState,
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.grey,
                            ),
                          ),
                        )
                      : _buildActivityListView(
                          context,
                          portfolioProvider,
                          l10n,
                        ),
                ),
              ],
            ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const ActivityFormScreen(entry: null),
            ),
          );
        },
        icon: const Icon(Icons.add),
        label: Text(l10n.activityListNewActivityButton),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }

  /// Builds the top summary card displaying the total credit count.
  ///
  /// This provides high-level feedback to the resident about their progress
  /// toward their certification requirements.
  Widget _buildSummaryCard(
    BuildContext context,
    double totalCredits,
    AppLocalizations l10n,
  ) {
    return Card(
      margin: const EdgeInsets.all(16.0),
      color: Theme.of(context).colorScheme.secondaryContainer,
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              l10n.activityListTotalCredits,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            Text(
              totalCredits.toStringAsFixed(1),
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Constructs the main scrollable list of activity entries.
  ///
  /// Includes [Dismissible] wrappers for each item to allow deletion via
  /// horizontal swiping (End-to-Start).
  Widget _buildActivityListView(
    BuildContext context,
    PortfolioProvider portfolio,
    AppLocalizations l10n,
  ) {
    return ListView.builder(
      padding: const EdgeInsets.only(bottom: 80),
      itemCount: portfolio.entries.length,
      itemBuilder: (context, index) {
        final entry = portfolio.entries[index];
        return Dismissible(
          key: Key(entry.id.toString()),
          direction: DismissDirection.endToStart,
          onDismissed: (direction) {
            portfolio.deleteEntry(entry.id!).then((_) {
              if (mounted && context.mounted) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(l10n.activityListDeleteSnackbar(entry.name)),
                  ),
                );
              }
            });
          },
          background: Container(
            color: Colors.red.shade600,
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.only(right: 20.0),
            child: const Icon(Icons.delete, color: Colors.white),
          ),
          child: Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
              title: Text(
                entry.name,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                '${l10n.activityListCategory(entry.category.name)}\n'
                '${_formatDateSubtitle(l10n, entry)}\n'
                '${l10n.activityListNotes(entry.notes?.isNotEmpty == true ? entry.notes! : l10n.activityListNotesPlaceholder)}',
              ),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    entry.amount.toStringAsFixed(1),
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                  Text(
                    l10n.activityListCreditsHoursLabel,
                    style: const TextStyle(fontSize: 12),
                  ),
                ],
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ActivityFormScreen(entry: entry),
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
