// SPDX-License-Identifier: BSD-3-Clause
// Copyright (c) 2026 medlav
import 'package:residency_portfolio/src/models/portfolio_entry.dart';
import 'package:intl/intl.dart';

/// Represents a summarized medical activity for curriculum display.
///
/// Unlike [PortfolioEntry], which records a single event, [ConsolidatedEntry]
/// aggregates multiple occurrences of the same activity performed at the same
/// institution within a specific calendar month.
class ConsolidatedEntry {
  /// The specific name of the procedure or activity.
  final String name;

  /// The broader classification from [PortfolioCategory.name]
  final String category;

  /// The hospital or facility where the activity took place.
  final String institution;

  /// The month and year of the activity, normalized to the first day of the month.
  final DateTime period;

  /// The sum of all amounts/quantities recorded for this group.
  double totalAmount;

  /// The total number of individual records merged into this entry.
  int occurrenceCount;

  ConsolidatedEntry({
    required this.name,
    required this.category,
    required this.institution,
    required this.period,
    required this.totalAmount,
    this.occurrenceCount = 1,
  });
}

/// Provides logic for transforming raw portfolio data into a curriculum-ready format.
class CurriculumGenerator {
  /// Transforms a flat list of [PortfolioEntry] objects into a grouped and sorted map.
  ///
  /// **Processing Steps:**
  /// 1. **Aggregation**: Merges entries sharing the same [name], [institution],
  ///    and month/year into a single [ConsolidatedEntry].
  /// 2. **Categorization**: Groups the consolidated results by their category name.
  /// 3. **Chronological Sorting**: Sorts entries within each category by [period]
  ///    in descending order (newest first).
  ///
  /// Returns a [Map] where keys are category names and values are lists of
  /// [ConsolidatedEntry] objects.
  static Map<String, List<ConsolidatedEntry>> generateConsolidatedCurriculum(
    List<PortfolioEntry> entries,
  ) {
    Map<String, List<ConsolidatedEntry>> groupedByCategory = {};

    // 1. Group and Sum
    Map<String, ConsolidatedEntry> aggregator = {};

    for (var entry in entries) {
      // Create a unique key based on Name + Institution + Month/Year
      String monthYear = DateFormat('MM/yyyy').format(entry.date);
      String key = "${entry.name}_${entry.institution}_$monthYear";

      if (aggregator.containsKey(key)) {
        aggregator[key]!.totalAmount += entry.amount;
        aggregator[key]!.occurrenceCount += 1;
      } else {
        aggregator[key] = ConsolidatedEntry(
          name: entry.name,
          category: entry.category.name,
          institution: entry.institution ?? 'Unknown',
          period: DateTime(entry.date.year, entry.date.month),
          totalAmount: entry.amount.toDouble(),
        );
      }
    }

    // 2. Sort by Category
    for (var consolidated in aggregator.values) {
      if (!groupedByCategory.containsKey(consolidated.category)) {
        groupedByCategory[consolidated.category] = [];
      }
      groupedByCategory[consolidated.category]!.add(consolidated);
    }

    // 3. Sort entries within categories by date (newest first)
    groupedByCategory.forEach((key, list) {
      list.sort((a, b) => b.period.compareTo(a.period));
    });

    return groupedByCategory;
  }
}
