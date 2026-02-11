// SPDX-License-Identifier: BSD-3-Clause
// Copyright (c) 2026 medlav

import 'dart:convert';
import 'package:residency_portfolio/src/models/portfolio_category.dart';
import 'package:flutter/foundation.dart';

/// Represents an individual clinical or educational activity recorded in the residency portfolio.
///
/// This class encapsulates all details regarding a specific entry, including its
/// duration, the quantity of the activity performed (amount), the medical
/// institution, and the specific [PortfolioCategory] it satisfies.
class PortfolioEntry {
  final int? id;
  final String name;
  final int amount;
  final DateTime date;
  final DateTime? dateEnd;
  final String? notes;
  final String? institution;
  final List<String> departments;
  final PortfolioCategory category;

  /// Standard constructor for creating a [PortfolioEntry].
  ///
  /// * [id]: The unique database identifier (null for new unsaved entries).
  /// * [name]: The specific title or name of the activity.
  /// * [amount]: The quantitative value (e.g., number of procedures or hours).
  /// * [date]: The start date/time of the activity.
  /// * [dateEnd]: Optional end date/time for multi-day or ongoing activities.
  /// * [category]: The [PortfolioCategory] this entry belongs to.
  /// * [notes]: Additional qualitative details or reflections.
  /// * [institution]: The hospital or clinic where the activity occurred.
  /// * [departments]: A list of specific medical units involved.
  PortfolioEntry({
    this.id,
    required this.name,
    required this.amount,
    required this.date,
    this.dateEnd,
    required this.category,
    this.notes,
    this.institution,
    this.departments = const [],
  });

  /// Serializes the entry into a format suitable for database persistence.
  ///
  /// Encodes nested objects like [category] and [departments] into JSON strings
  /// and converts [DateTime] objects into ISO-8601 strings.
  ///
  /// * Returns: A [Map<String, dynamic>] representing the database row.
  Map<String, dynamic> toMapForDb() {
    return {
      'id': id,
      'name': name,
      'amount': amount,
      'date': date.toIso8601String(),
      'dateEnd': dateEnd?.toIso8601String(),
      'notes': notes,
      'institution': institution,
      'category': jsonEncode(category.toMap()),
      'departments': jsonEncode(departments),
    };
  }

  /// Reconstructs a [PortfolioEntry] from a database map.
  ///
  /// Performs validation on the embedded category JSON and handles the
  /// deserialization of dates and complex lists.
  ///
  /// * [map]: A [Map<String, dynamic>] containing the entry's field data.
  /// * Returns: A fully validated [PortfolioEntry] instance.
  /// * Throws: A [FormatException] if the category data is missing required curriculum keys.
  factory PortfolioEntry.fromMap(Map<String, dynamic> map) {
    final String categoryJson = map['category'] as String;
    final Map<String, dynamic> categoryMap =
        jsonDecode(categoryJson) as Map<String, dynamic>;

    const requiredKeys = {
      'id',
      'name',
      'description',
      'amount_type',
      'required_departments',
      'min_required_amount',
    };
    final missingKeys = requiredKeys.where(
      (key) => !categoryMap.containsKey(key),
    );

    if (missingKeys.isNotEmpty) {
      if (kDebugMode) {
        debugPrint(
          'Category JSON in DB is missing required keys: $missingKeys',
        );
      }

      throw FormatException(
        'Corrupted data detected for PortfolioEntry ID ${map['id']}. Missing category keys: $missingKeys',
      );
    }

    final category = PortfolioCategory.fromMap(categoryMap);

    final List<String> departmentsList =
        map['departments'] != null && (map['departments'] as String).isNotEmpty
        ? List<String>.from(jsonDecode(map['departments'] as String))
        : [];

    final dateEndString = map['dateEnd'] as String?;
    final dateEnd = dateEndString != null && dateEndString.isNotEmpty
        ? DateTime.parse(dateEndString)
        : null;

    return PortfolioEntry(
      id: map['id'] as int?,
      name: map['name'] as String,
      amount: map['amount'] as int,
      date: DateTime.parse(map['date'] as String),
      dateEnd: dateEnd,
      notes: map['notes'] as String?,
      institution: map['institution'] as String?,
      departments: departmentsList,
      category: category,
    );
  }
}
