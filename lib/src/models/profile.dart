// SPDX-License-Identifier: BSD-3-Clause
// Copyright (c) 2026 medlav

import 'package:residency_portfolio/src/models/specialty.dart';

/// Represents the user's professional profile within the residency portfolio system.
///
/// This immutable class holds personal and institutional information,
/// including the user's specific medical specialty and local profile image path.
class Profile {
  final String name;
  final String email;
  final Specialty specialty;
  final String residencyYear;
  final String institution;
  final String? imagePath;

  /// Creates a constant [Profile] instance.
  ///
  /// * [name]: The full name of the resident.
  /// * [email]: The professional contact email address.
  /// * [specialty]: The medical [Specialty] associated with the residency.
  /// * [residencyYear]: The current year of training (e.g., "PGY-1").
  /// * [institution]: The hospital or university hosting the residency program.
  /// * [imagePath]: An optional local file path to the user's profile picture.
  const Profile({
    required this.name,
    required this.email,
    required this.specialty,
    required this.residencyYear,
    required this.institution,
    this.imagePath,
  });

  /// Generates an empty [Profile] instance with default initial values.
  ///
  /// Used as a placeholder state before user data is loaded or provided.
  ///
  /// * Returns: A [Profile] with empty strings and an initial [Specialty].
  factory Profile.initial() => Profile(
    name: '',
    email: '',
    specialty: Specialty.initial(),
    residencyYear: '',
    institution: '',
    imagePath: null,
  );

  /// Creates a copy of this [Profile] but with the given fields replaced
  /// with the new values.
  ///
  /// This is the primary way to "update" the immutable profile state.
  ///
  /// * [name]: Updated full name.
  /// * [email]: Updated email address.
  /// * [specialty]: Updated medical specialty.
  /// * [residencyYear]: Updated year of training.
  /// * [institution]: Updated institution name.
  /// * [imagePath]: Updated local path for the profile image.
  /// * Returns: A new [Profile] instance containing the merged data.
  Profile copyWith({
    String? name,
    String? email,
    Specialty? specialty,
    String? residencyYear,
    String? institution,
    String? imagePath,
  }) {
    return Profile(
      name: name ?? this.name,
      email: email ?? this.email,
      specialty: specialty ?? this.specialty,
      residencyYear: residencyYear ?? this.residencyYear,
      institution: institution ?? this.institution,
      imagePath: imagePath ?? this.imagePath,
    );
  }
}
