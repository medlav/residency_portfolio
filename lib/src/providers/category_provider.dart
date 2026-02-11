// SPDX-License-Identifier: BSD-3-Clause
// Copyright (c) 2026 medlav

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:residency_portfolio/src/models/portfolio_category.dart';
import 'package:residency_portfolio/src/services/specialties_data.dart';

/// A state management provider that handles the lifecycle of medical portfolio categories.
///
/// This provider manages the loading, persistence, and modification of
/// [PortfolioCategory] objects using `SharedPreferences`. It allows for
/// specialty-specific defaults and custom user-defined categories.
class CategoryProvider with ChangeNotifier {
  static const String _categoriesKey = 'master_categories_list';
  String? _currentSpecialtyName;
  final List<PortfolioCategory> _defaultCategories = [];

  List<PortfolioCategory> _categories = [];
  bool _isLoading = false;
  String? _errorMessage;

  List<PortfolioCategory> get categories => _categories;
  bool get isLoading => _isLoading;
  String? get errorMessage => _errorMessage;

  CategoryProvider();

  /// Wipes custom changes and restores categories to their original predefined state.
  ///
  /// Removes the persisted JSON string from storage and reloads the default
  /// list based on the provided [specialty].
  ///
  /// * [specialty]: The medical specialty used to fetch default curriculum data.
  /// * Returns: A [Future] that completes when the reset is finished.
  Future<void> resetToDefaults(String? specialty) async {
    await _setLoading(true);
    try {
      // 1. Clear the persistent storage
      final prefs = await SharedPreferences.getInstance();
      await prefs.remove(_categoriesKey);

      // 2. Restore from the default list (using .from to create a new instance)

      if (specialty != null) {
        _categories = getPortfolioCategoriesForSpecialty(specialty);
      } else {
        _categories = _defaultCategories;
      }

      notifyListeners();
    } catch (e) {
      _errorMessage = 'Failed to reset categories.';
    } finally {
      await _setLoading(false);
    }
  }

  /// Internal utility to update the provider's loading state and error messaging.
  ///
  /// * [value]: The new loading status.
  /// * [error]: An optional error message to broadcast to listeners.
  Future<void> _setLoading(bool value, {String? error}) async {
    _isLoading = value;
    _errorMessage = error;
    notifyListeners();
  }

  /// Serializes the current [_categories] list to a JSON string and saves it
  /// to [SharedPreferences].
  Future<void> _saveCategories() async {
    final List<Map<String, dynamic>> maps = _categories
        .map((cat) => cat.toMap())
        .toList();
    final String jsonString = jsonEncode(maps);

    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_categoriesKey, jsonString);
  }

  /// Initializes and loads the category list from local storage or defaults.
  ///
  /// If a specialty is provided, it attempts to merge or fallback to the
  /// predefined curriculum for that specialty if no saved data exists.
  ///
  /// * [specialty]: The name of the medical specialty to load categories for.
  Future<void> loadCategories(String? specialty) async {
    if (_currentSpecialtyName == specialty && _categories.isNotEmpty) return;
    _currentSpecialtyName = specialty;

    await _setLoading(true);
    try {
      final prefs = await SharedPreferences.getInstance();
      final String? jsonString = prefs.getString(_categoriesKey);
      List<PortfolioCategory> specialtyDefaults = _defaultCategories;

      if (specialty != null) {
        specialtyDefaults = getPortfolioCategoriesForSpecialty(specialty);
      }

      if (jsonString == null || jsonString.isEmpty) {
        _categories = List.from(specialtyDefaults);
      } else {
        final List<dynamic> maps = jsonDecode(jsonString);
        _categories = maps
            .map(
              (map) => PortfolioCategory.fromMap(map as Map<String, dynamic>),
            )
            .toList();
      }
    } catch (e) {
      _categories = List.from(_defaultCategories);
      await _setLoading(
        false,
        error: 'Failed to load custom categories. Using defaults.',
      );
      return;
    }
    await _setLoading(false);
  }

  /// Adds a new [category] to the master list with a generated unique ID.
  ///
  /// Calculates the next available integer ID based on the current collection.
  ///
  /// * [category]: The category data to be added.
  /// * Returns: A [Future<bool>] indicating if the addition and persistence were successful.
  Future<bool> addCategory(PortfolioCategory category) async {
    try {
      final nextId =
          _categories.fold(0, (max, cat) => cat.id > max ? cat.id : max) + 1;

      final newCategory = PortfolioCategory(
        id: nextId,
        name: category.name,
        description: category.description,
        amountType: category.amountType,
        requiredDepartments: category.requiredDepartments,
        minRequiredAmount: category.minRequiredAmount,
      );

      _categories.add(newCategory);
      await _saveCategories();
      notifyListeners();
      return true;
    } catch (e) {
      _errorMessage = 'Failed to add category.';
      notifyListeners();
      return false;
    }
  }

  /// Updates an existing category's properties.
  ///
  /// Matches the provided [category] by its [id] and replaces the entry in the list.
  ///
  /// * [category]: The category object containing updated fields.
  /// * Returns: A [Future<bool>] that is true if the category was found and updated.
  Future<bool> updateCategory(PortfolioCategory category) async {
    try {
      final index = _categories.indexWhere((cat) => cat.id == category.id);
      if (index != -1) {
        _categories[index] = category;
        await _saveCategories();
        notifyListeners();
        return true;
      }
      return false;
    } catch (e) {
      _errorMessage = 'Failed to update category.';
      notifyListeners();
      return false;
    }
  }

  /// Removes a category from the list and updates local storage.
  ///
  /// * [id]: The unique identifier of the category to be removed.
  /// * Returns: A [Future<bool>] indicating whether an item was actually removed.
  Future<bool> deleteCategory(int id) async {
    try {
      final initialLength = _categories.length;
      _categories.removeWhere((cat) => cat.id == id);

      if (_categories.length < initialLength) {
        await _saveCategories();
        notifyListeners();
        return true;
      }
      return false;
    } catch (e) {
      _errorMessage = 'Failed to delete category.';
      notifyListeners();
      return false;
    }
  }
}
