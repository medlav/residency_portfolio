// SPDX-License-Identifier: BSD-3-Clause
// Copyright (c) 2026 medlav

import 'dart:convert' show jsonDecode, jsonEncode;

/// Data model representing a medical training category within the portfolio curriculum.
///
/// This class defines the requirements for specific residency activities, including
/// the unit of measurement (amount type), target goals (minimum amount), and
/// associated medical departments.
class PortfolioCategory {
  final int id;
  final String name;
  final String description;
  final String amountType; // e.g., 'number', 'hours', 'credits'
  final List<String> requiredDepartments;
  final int minRequiredAmount;

  /// Standard constructor for creating a [PortfolioCategory].
  ///
  /// * [id]: Unique identifier for the category.
  /// * [name]: The display name of the medical activity or competency.
  /// * [description]: Detailed explanation of what the category entails.
  /// * [amountType]: The metric used (e.g., 'number', 'hours', 'credits').
  /// * [requiredDepartments]: List of hospital departments where this can be performed.
  /// * [minRequiredAmount]: The quantitative goal for the residency program.
  PortfolioCategory({
    required this.id,
    required this.name,
    this.description = '',
    required this.amountType,
    this.requiredDepartments = const [],
    this.minRequiredAmount = 0,
  });

  /// Serializes the [PortfolioCategory] into a Map for storage or transmission.
  ///
  /// Converts complex objects like [requiredDepartments] into a JSON-encoded string
  /// to maintain compatibility with SQLite or other flat-file databases.
  ///
  /// * Returns: A [Map<String, dynamic>] containing serialized category data.
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'amount_type': amountType,
      'min_required_amount': minRequiredAmount,
      'required_departments': jsonEncode(requiredDepartments),
    };
  }

  /// Creates a [PortfolioCategory] instance from a Map, typically sourced from a database.
  ///
  /// Includes robust parsing logic for `required_departments`, handling JSON strings,
  /// raw lists, or comma-separated values to ensure data integrity across platforms.
  ///
  /// * [map]: The data map containing keys like 'id', 'amount_type', and 'required_departments'.
  /// * Returns: A fully initialized [PortfolioCategory] object with safe default values.
  factory PortfolioCategory.fromMap(Map<String, dynamic> map) {
    final dynamic rawDepartmentsData = map['required_departments'];
    List<String> departmentsList = [];

    if (rawDepartmentsData is List) {
      departmentsList = List<String>.from(rawDepartmentsData);
    } else if (rawDepartmentsData is String && rawDepartmentsData.isNotEmpty) {
      try {
        final dynamic decodedData = jsonDecode(rawDepartmentsData);
        if (decodedData is List) {
          departmentsList = List<String>.from(decodedData);
        }
      } catch (e) {
        departmentsList = rawDepartmentsData
            .split(',')
            .map((s) => s.trim())
            .where((s) => s.isNotEmpty)
            .toList();
      }
    }

    /// Internal utility to safely convert dynamic values into integers.
    ///
    /// * [value]: The dynamic input to be parsed.
    /// * Returns: An [int] representation of the value, or 0 if parsing fails.
    int safeParseInt(dynamic value) {
      if (value is int) return value;
      if (value is String) return int.tryParse(value) ?? 0;
      return 0;
    }

    return PortfolioCategory(
      id: map['id'] as int? ?? 0,
      name: map['name'] as String? ?? '',
      description: map['description'] as String? ?? '',
      amountType: map['amount_type'] as String? ?? 'number',
      requiredDepartments: departmentsList,
      minRequiredAmount: safeParseInt(map['min_required_amount']),
    );
  }

  /// Generates a fallback [PortfolioCategory] with generic properties.
  ///
  /// Used as an initial state or for entries that do not strictly fall into
  /// a defined medical curriculum category.
  ///
  /// * Returns: A category named 'General' with an ID of 0.
  factory PortfolioCategory.defaultCategory() {
    return PortfolioCategory(
      id: 0,
      name: 'General',
      description: 'A default category for general items.',
      amountType: 'number',
      requiredDepartments: [],
      minRequiredAmount: 0,
    );
  }
}
