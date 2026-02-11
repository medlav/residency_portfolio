// SPDX-License-Identifier: BSD-3-Clause
// Copyright (c) 2026 medlav

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:residency_portfolio/l10n/app_localizations.dart';
import 'package:residency_portfolio/src/providers/portfolio_provider.dart';
import 'package:residency_portfolio/src/providers/portfolio_search_provider.dart';
import 'package:residency_portfolio/src/models/portfolio_entry.dart';
import 'package:residency_portfolio/src/screens/activity_form_screen.dart';

/// Filters a list of entries based on a text [query] across multiple fields.
///
/// Searches through activity names, notes, institutions, category details,
/// and associated departments.
List<PortfolioEntry> _applyTextSearch(
  List<PortfolioEntry> entries,
  String query,
) {
  final normalizedQuery = query.toLowerCase().trim();
  if (normalizedQuery.isEmpty) {
    return entries;
  }

  return entries.where((entry) {
    return entry.name.toLowerCase().contains(normalizedQuery) ||
        (entry.notes?.toLowerCase().contains(normalizedQuery) ?? false) ||
        (entry.institution?.toLowerCase().contains(normalizedQuery) ?? false) ||
        entry.category.name.toLowerCase().contains(normalizedQuery) ||
        entry.category.description.toLowerCase().contains(normalizedQuery) ||
        entry.departments.any(
          (department) => department.toLowerCase().contains(normalizedQuery),
        );
  }).toList();
}

/// A screen that displays a list of scheduled activities set to occur in the future.
///
/// This widget reactively updates based on changes in the [PortfolioProvider]
/// (the data source) and the [PortfolioSearchProvider] (the filter source).
/// Activities are considered "upcoming" if their start date is strictly
/// after the current system date.
class UpcomingActivitiesScreen extends StatelessWidget {
  const UpcomingActivitiesScreen({super.key});

  /// Filters [allEntries] to include only those starting after today,
  /// further narrowed by a text [query].
  ///
  /// **Logic:**
  /// 1. Filters by text search using [_applyTextSearch].
  /// 2. Normalizes the current system time to "today" (midnight).
  /// 3. Retains entries where the start date is strictly after today.
  /// 4. Sorts the results chronologically (ascending).
  List<PortfolioEntry> _filterUpcomingActivities(
    List<PortfolioEntry> allEntries,
    String query,
  ) {
    // 1. Apply Text Search
    final searchResults = _applyTextSearch(allEntries, query);

    // 2. Apply UPCOMING STATUS FILTER
    final now = DateTime.now().toLocal();
    final today = DateTime(now.year, now.month, now.day);

    // An activity is Upcoming if its start date is strictly after today.
    final upcomingEntries = searchResults.where((entry) {
      final startDate = DateTime(
        entry.date.year,
        entry.date.month,
        entry.date.day,
      );
      return startDate.isAfter(today);
    }).toList();

    // Sort by start date
    upcomingEntries.sort((a, b) => a.date.compareTo(b.date));
    return upcomingEntries;
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final portfolioProvider = context.watch<PortfolioProvider>();
    final searchQuery = context.watch<PortfolioSearchProvider>().query;

    // Filter the entries from the provider
    final upcomingEntries = _filterUpcomingActivities(
      portfolioProvider.entries,
      searchQuery,
    );

    return upcomingEntries.isEmpty
        ? Center(
            child: Text(
              searchQuery.isEmpty
                  ? l10n.portfolioContentUpcomingEmpty
                  : l10n.noResultsFound,
            ),
          )
        : ListView.builder(
            padding: const EdgeInsets.all(8.0),
            itemCount: upcomingEntries.length,
            itemBuilder: (context, index) {
              final entry = upcomingEntries[index];

              // Determine the end date display logic
              final dateEndDisplay =
                  entry.dateEnd != null &&
                      !entry.dateEnd!.isAtSameMomentAs(entry.date)
                  ? ' - ${entry.dateEnd!.toString().split(' ')[0]}'
                  : '';

              return Card(
                child: ListTile(
                  title: Text(entry.name),
                  subtitle: Text(
                    '${l10n.activityFormLabelDate}: ${entry.date.toString().split(' ')[0]}$dateEndDisplay',
                  ),
                  trailing: const Icon(Icons.edit_note),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => ActivityFormScreen(entry: entry),
                      ),
                    );
                  },
                ),
              );
            },
          );
  }
}
