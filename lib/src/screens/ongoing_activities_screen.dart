// SPDX-License-Identifier: BSD-3-Clause
// Copyright (c) 2026 medlav

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:residency_portfolio/l10n/app_localizations.dart';
import 'package:residency_portfolio/src/providers/portfolio_provider.dart';
import 'package:residency_portfolio/src/providers/portfolio_search_provider.dart';
import 'package:residency_portfolio/src/models/portfolio_entry.dart';
import 'package:residency_portfolio/src/screens/activity_form_screen.dart';

/// Filters [entries] based on a text [query] across name, notes, institution,
/// category, and departments.
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

/// A screen that displays activities currently in progress.
///
/// This widget reactively updates via [PortfolioProvider] and [PortfolioSearchProvider].
/// It identifies "ongoing" activities as those where the current date falls
/// inclusively between the activity's start and effective end dates.
class OngoingActivitiesScreen extends StatelessWidget {
  const OngoingActivitiesScreen({super.key});

  /// Filters [allEntries] to isolate active tasks based on a temporal range
  /// and an optional text [query].
  ///
  /// **Temporal Logic:**
  /// * The current system time is normalized to the start of the day (midnight).
  /// * An entry is [Ongoing] if:
  ///   1. `startDate <= today` (The activity has already begun).
  ///   2. `effectiveEndDate >= today` (The activity hasn't concluded).
  /// * For single-day events, the activity appears here only on the day it occurs.
  List<PortfolioEntry> _filterOngoingActivities(
    List<PortfolioEntry> allEntries,
    String query,
  ) {
    // 1. Apply Text Search
    final searchResults = _applyTextSearch(allEntries, query);

    // 2. Apply ONGOING STATUS FILTER
    final now = DateTime.now().toLocal();
    final today = DateTime(now.year, now.month, now.day);

    return searchResults.where((entry) {
      // Normalize start date for comparison
      final startDate = DateTime(
        entry.date.year,
        entry.date.month,
        entry.date.day,
      );

      // Determine the effective end date. If null or same as start, use start date.
      final effectiveEndDate =
          (entry.dateEnd == null || entry.dateEnd!.isAtSameMomentAs(entry.date))
          ? startDate
          : DateTime(
              entry.dateEnd!.year,
              entry.dateEnd!.month,
              entry.dateEnd!.day,
            );

      // An activity is Ongoing if:
      // 1. It has started (start date is today or in the past).
      final hasStarted =
          startDate.isBefore(today) || startDate.isAtSameMomentAs(today);

      // 2. It has NOT finished (effective end date is today or in the future).
      final isNotFinished =
          effectiveEndDate.isAfter(today) ||
          effectiveEndDate.isAtSameMomentAs(today);

      // For single-day activities (where start == end), they are only ongoing on that day.
      // This logic correctly places them in Ongoing only on the day of the activity,
      // and Past afterwards.
      return hasStarted && isNotFinished;
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final portfolioProvider = context.watch<PortfolioProvider>();
    final searchQuery = context.watch<PortfolioSearchProvider>().query;

    final ongoingEntries = _filterOngoingActivities(
      portfolioProvider.entries,
      searchQuery,
    );

    return ongoingEntries.isEmpty
        ? Center(
            child: Text(
              searchQuery.isEmpty
                  ? l10n.portfolioContentOngoingEmpty
                  : l10n.noResultsFound,
            ),
          )
        : ListView.builder(
            padding: const EdgeInsets.all(8.0),
            itemCount: ongoingEntries.length,
            itemBuilder: (context, index) {
              final entry = ongoingEntries[index];

              final dateEndDisplay =
                  entry.dateEnd?.toString().split(' ')[0] ??
                  l10n.activityFormLabelDateEndEmpty;

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
