// SPDX-License-Identifier: BSD-3-Clause
// Copyright (c) 2026 medlav

/// Represents a medical specialty with identity-based equality.
///
/// This class ensures that [Specialty] objects are compared based on their unique
/// [id] rather than their memory location, which is crucial for proper selection
/// logic in widgets like `DropdownButtonFormField`.
class Specialty {
  /// The unique identifier for the medical specialty.
  final String id;

  /// The display name of the medical specialty.
  final String name;

  /// Creates a constant [Specialty] instance.
  ///
  /// * [id]: The unique string identifier.
  /// * [name]: The descriptive name of the specialty.
  const Specialty({required this.id, required this.name});

  /// Creates a [Specialty] instance from a JSON map.
  ///
  /// * [json]: A map containing 'id' and 'name' keys.
  /// * Returns: A [Specialty] mapped from the provided data.
  factory Specialty.fromJson(Map<String, dynamic> json) {
    return Specialty(id: json['id'] as String, name: json['name'] as String);
  }

  /// Creates a default [Specialty] used for placeholders or unselected states.
  ///
  /// * Returns: A [Specialty] with an empty ID and placeholder name.
  factory Specialty.initial() =>
      const Specialty(id: '', name: 'Select a specialty');

  /// Returns the display [name] of the specialty.
  ///
  /// This allows the object to be used directly in widgets like `DropdownMenuItem`
  /// without manual string mapping.
  @override
  String toString() => name;

  /// Compares this [Specialty] to another object based on the [id].
  ///
  /// * [other]: The object to compare against.
  /// * Returns: True if the IDs match or the objects are identical.
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Specialty && other.id == id;
  }

  /// Generates a hash code derived from the specialty [id].
  ///
  /// Consistent with the equality operator to ensure proper behavior in Collections.
  @override
  int get hashCode {
    return id.hashCode;
  }
}
