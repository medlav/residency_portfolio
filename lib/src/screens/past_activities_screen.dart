// SPDX-License-Identifier: BSD-3-Clause
// Copyright (c) 2026 medlav

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:residency_portfolio/l10n/app_localizations.dart';
import 'package:residency_portfolio/src/providers/portfolio_provider.dart';
import 'package:residency_portfolio/src/providers/portfolio_search_provider.dart';
import 'package:residency_portfolio/src/models/portfolio_entry.dart';
import 'package:residency_portfolio/src/screens/activity_form_screen.dart';

/// Performs a case-insensitive fuzzy search across all searchable [PortfolioEntry] fields.
///
/// Matches the [query] against name, notes, institution, category details,
/// and the list of associated departments.
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

/// A screen that displays an archived list of completed medical activities.
///
/// This widget observes [PortfolioProvider] for data and [PortfolioSearchProvider]
/// for real-time filtering. It specifically isolates activities whose effective
/// end date occurs before the current day (at midnight).
class PastActivitiesScreen extends StatelessWidget {
  const PastActivitiesScreen({super.key});

  /// Filters [allEntries] by the provided [query] and a "past-tense" date constraint.
  ///
  /// **Temporal Logic:**
  /// * An activity is considered "Past" if its effective end date (normalized
  ///   to the start of its day) is strictly before today's date.
  /// * For single-day events, the [PortfolioEntry.date] is used as the end date.
  /// * For multi-day events, [PortfolioEntry.dateEnd] is used.
  List<PortfolioEntry> _filterPastActivities(
    List<PortfolioEntry> allEntries,
    String query,
  ) {
    // 1. Apply Text Search
    final searchResults = _applyTextSearch(allEntries, query);

    // 2. Apply PAST STATUS FILTER
    final now = DateTime.now().toLocal();
    final today = DateTime(now.year, now.month, now.day);

    return searchResults.where((entry) {
      final startDate = DateTime(
        entry.date.year,
        entry.date.month,
        entry.date.day,
      );

      // Determine the effective end date (normalize to start of the day).
      // If dateEnd is null or same as start date, use the start date.
      final effectiveEndDate =
          (entry.dateEnd == null || entry.dateEnd!.isAtSameMomentAs(entry.date))
          ? startDate
          : DateTime(
              entry.dateEnd!.year,
              entry.dateEnd!.month,
              entry.dateEnd!.day,
            );

      // An activity is Past if its effective end date is strictly before today.
      return effectiveEndDate.isBefore(today);
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    // Watch the search query
    final searchQuery = context.watch<PortfolioSearchProvider>().query;

    // Get the full list of entries
    final portfolioProvider = context.watch<PortfolioProvider>();

    // Apply the combined filter logic
    final pastEntries = _filterPastActivities(
      portfolioProvider.entries,
      searchQuery,
    );

    return pastEntries.isEmpty
        ? Center(
            child: Text(
              searchQuery.isEmpty ? l10n.noData : l10n.noResultsFound,
            ),
          )
        : ListView.builder(
            padding: const EdgeInsets.all(8.0),
            itemCount: pastEntries.length,
            itemBuilder: (context, index) {
              final entry = pastEntries[index];

              // Determine the end date display logic
              final dateEndDisplay =
                  entry.dateEnd != null &&
                      !entry.dateEnd!.isAtSameMomentAs(entry.date)
                  ? entry.dateEnd!.toString().split(' ')[0]
                  : entry.date.toString().split(
                      ' ',
                    )[0]; // Show start date for single-day events

              return Card(
                child: ListTile(
                  title: Text(entry.name),
                  subtitle: Text(
                    '${l10n.activityFormLabelDate}: ${entry.date.toString().split(' ')[0]} - $dateEndDisplay',
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
