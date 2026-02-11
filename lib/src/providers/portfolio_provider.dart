// SPDX-License-Identifier: BSD-3-Clause
// Copyright (c) 2026 medlav

import 'package:flutter/foundation.dart' show kDebugMode;
import 'package:flutter/material.dart';
import 'package:residency_portfolio/src/models/portfolio_entry.dart';
import 'package:residency_portfolio/src/services/database_helper.dart';

/// A state management provider that serves as the interface between the UI and the local database.
///
/// This class manages the collection of [PortfolioEntry] objects, handling
/// asynchronous CRUD operations through [DatabaseHelper] and providing
/// reactive updates to the user interface.
class PortfolioProvider with ChangeNotifier {
  final DatabaseHelper _dbHelper = DatabaseHelper();
  List<PortfolioEntry> _entries = [];
  bool _isLoading = true;

  List<PortfolioEntry> get entries => _entries;
  bool get isLoading => _isLoading;

  PortfolioProvider() {
    _loadEntries();
  }

  double get totalCredits => _entries.fold(
    0.0,
    (previousValue, entry) => previousValue + entry.amount,
  );

  /// Orchestrates the data retrieval process from the database.
  ///
  /// Manages the [isLoading] state and ensures that [notifyListeners] is
  /// called during start, error, and completion phases to maintain UI
  /// synchronization.
  Future<void> _loadEntries() async {
    _isLoading = true;
    Future.microtask(() => notifyListeners());

    try {
      _entries = await _dbHelper.getAllEntries();
    } catch (e) {
      if (kDebugMode) {
        debugPrint('Provider caught error during load: $e');
      }
      _entries = [];
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  /// Adds a new [entry] to the database and triggers a UI refresh.
  ///
  /// * [entry]: The portfolio data to persist.
  /// * Returns: A [Future] that completes once the database operation and
  ///   subsequent list reload are finished.
  Future<void> addEntry(PortfolioEntry entry) async {
    final result = await _dbHelper.insertEntry(entry);
    if (result != -1) {
      await _loadEntries();
    } else {
      if (kDebugMode) {
        debugPrint('Failed to add entry ${entry.name} to database.');
      }
    }
  }

  /// Updates an existing [entry] in the database and refreshes the local cache.
  ///
  /// * [entry]: The entry containing updated data (must have a valid ID).
  Future<void> updateEntry(PortfolioEntry entry) async {
    final result = await _dbHelper.updateEntry(entry);
    if (result > 0) {
      await _loadEntries();
    } else {
      if (kDebugMode) {
        debugPrint('Failed to update entry ${entry.name}.');
      }
    }
  }

  /// Deletes a specific entry from the database by its [id].
  ///
  /// * [id]: The unique database identifier of the entry to remove.
  Future<void> deleteEntry(int id) async {
    final result = await _dbHelper.deleteEntry(id);
    if (result > 0) {
      await _loadEntries();
    } else {
      if (kDebugMode) {
        debugPrint('Failed to delete entry with ID $id.');
      }
    }
  }

  /// Retrieves the current entries, triggering a fetch if the cache is empty.
  ///
  /// Useful for [FutureBuilder] implementations or components that require
  /// a direct [Future] handle to the data.
  ///
  /// * Returns: A [Future] containing the up-to-date [List<PortfolioEntry>].
  Future<List<PortfolioEntry>> getEntriesFuture() async {
    if (_entries.isNotEmpty && !_isLoading) {
      return _entries;
    }
    await _loadEntries();
    return _entries;
  }

  /// Synchronizes the application state after a database import.
  ///
  /// This method clears the current in-memory [_entries] list,
  /// triggers a fresh fetch from the newly replaced database file
  /// via [_loadEntries], and notifies all listeners to rebuild the UI.
  ///
  /// Should be called immediately following a successful [ImportHelper.importDatabase] call.
  Future<void> refreshAfterImport() async {
    // Clear existing local state to prevent data ghosting
    _entries = [];

    // Re-load everything from the new database file
    // This will trigger DatabaseHelper to re-initialize the connection
    await _loadEntries();

    notifyListeners();
  }
}
