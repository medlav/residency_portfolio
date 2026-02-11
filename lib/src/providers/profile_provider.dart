// SPDX-License-Identifier: BSD-3-Clause
// Copyright (c) 2026 medlav

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:residency_portfolio/src/models/profile.dart';
import 'package:residency_portfolio/src/models/specialty.dart';

/// A state management provider that facilitates the persistence and retrieval
/// of the user's professional profile.
///
/// This provider interfaces with `SharedPreferences` to ensure that personal
/// details, residency year, and medical specialty remain consistent across
/// app sessions.
class ProfileProvider with ChangeNotifier {
  Profile _profile = Profile.initial();
  bool _isLoading = true;

  Profile get profile => _profile;
  bool get isLoading => _isLoading;
  Specialty get selectedSpecialty => _profile.specialty;

  ProfileProvider() {
    _loadProfile();
  }

  /// Keys used for individual field persistence in `SharedPreferences`.
  static const String _nameKey = 'profile_name';
  static const String _emailKey = 'profile_email';
  static const String _specialtyIdKey = 'profile_specialty_id';
  static const String _specialtyNameKey = 'profile_specialty_name';
  static const String _yearKey = 'profile_residency_year';
  static const String _institutionKey = 'profile_institution';
  static const String _imagePathKey = 'profile_image_path';

  /// Orchestrates the initial data fetch from `SharedPreferences`.
  ///
  /// Sets [isLoading] to true during the async operation and falls back
  /// to initial default values if no data is found in storage.
  Future<void> _loadProfile() async {
    _isLoading = true;
    final prefs = await SharedPreferences.getInstance();

    final specialtyId =
        prefs.getString(_specialtyIdKey) ?? Specialty.initial().id;
    final specialtyName =
        prefs.getString(_specialtyNameKey) ?? Specialty.initial().name;
    final loadedSpecialty = Specialty(id: specialtyId, name: specialtyName);

    _profile = Profile(
      name: prefs.getString(_nameKey) ?? Profile.initial().name,
      email: prefs.getString(_emailKey) ?? Profile.initial().email,
      specialty: loadedSpecialty,
      residencyYear:
          prefs.getString(_yearKey) ?? Profile.initial().residencyYear,
      institution:
          prefs.getString(_institutionKey) ?? Profile.initial().institution,
      imagePath: prefs.getString(_imagePathKey),
    );
    _isLoading = false;
    notifyListeners();
  }

  /// Updates the entire profile state and persists all fields to local storage.
  ///
  /// * [name]: The resident's full name.
  /// * [email]: Professional contact email.
  /// * [specialty]: The medical specialty object.
  /// * [residencyYear]: Current training year.
  /// * [institution]: The training hospital or university.
  /// * [imagePath]: Optional local path for the profile image.
  Future<void> updateProfile({
    required String name,
    required String email,
    required Specialty specialty,
    required String residencyYear,
    required String institution,
    String? imagePath,
  }) async {
    final prefs = await SharedPreferences.getInstance();

    _profile = Profile(
      name: name,
      email: email,
      specialty: specialty,
      residencyYear: residencyYear,
      institution: institution,
      imagePath: imagePath,
    );

    await prefs.setString(_nameKey, name);
    await prefs.setString(_emailKey, email);
    await prefs.setString(_specialtyIdKey, specialty.id);
    await prefs.setString(_specialtyNameKey, specialty.name);
    await prefs.setString(_yearKey, residencyYear);
    await prefs.setString(_institutionKey, institution);
    if (imagePath != null) {
      await prefs.setString(_imagePathKey, imagePath);
    } else {
      await prefs.remove(_imagePathKey);
    }
    notifyListeners();
  }

  /// Specifically updates the medical [Specialty] while preserving other profile data.
  ///
  /// * [newSpecialty]: The new specialty to be assigned. Defaults to [Specialty.initial] if null.
  Future<void> updateSpecialty(Specialty? newSpecialty) async {
    final updatedProfile = _profile.copyWith(
      specialty: newSpecialty ?? Specialty.initial(),
    );

    await updateProfile(
      name: updatedProfile.name,
      email: updatedProfile.email,
      specialty: updatedProfile.specialty,
      residencyYear: updatedProfile.residencyYear,
      institution: updatedProfile.institution,
      imagePath: updatedProfile.imagePath,
    );

    notifyListeners();
  }

  bool get isSurgeon => _profile.specialty.name.contains('Surgery');

  /// Removes the profile image path from persistence and resets the in-memory profile.
  Future<void> deleteProfileImage() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_imagePathKey);
    _profile = _profile.copyWith(imagePath: null);
    notifyListeners();
  }

  /// Updates only the profile picture path while maintaining the rest of the profile state.
  ///
  /// * [imagePath]: The new local file path for the avatar, or null to clear it.
  Future<void> updateProfilePicture(String? imagePath) async {
    final updatedProfile = _profile.copyWith(imagePath: imagePath);

    await updateProfile(
      name: updatedProfile.name,
      email: updatedProfile.email,
      specialty: updatedProfile.specialty,
      residencyYear: updatedProfile.residencyYear,
      institution: updatedProfile.institution,
      imagePath: imagePath,
    );

    notifyListeners();
  }
}
