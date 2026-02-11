// SPDX-License-Identifier: BSD-3-Clause
// Copyright (c) 2026 medlav

import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:flutter/foundation.dart';
import 'package:residency_portfolio/src/models/portfolio_entry.dart';

/// A singleton helper class that manages the SQLite database for portfolio data.
///
/// [DatabaseHelper] provides an interface for CRUD (Create, Read, Update, Delete)
/// operations on the local storage. It ensures a single connection instance is
/// maintained throughout the application lifecycle to prevent database locks
/// and memory leaks.
class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._internal();
  static Database? _database;

  /// Returns the singleton instance of [DatabaseHelper].
  factory DatabaseHelper() => _instance;

  /// Private constructor for the singleton pattern.
  DatabaseHelper._internal();

  /// The name of the SQLite table storing all portfolio records.
  static const String portfolioTableName = 'portfolio_entries';

  /// Primary key column for the entry (Integer, Auto-increment).
  static const String columnId = 'id';

  /// Column for the title or name of the clinical activity.
  static const String columnName = 'name';

  /// Column for the associated curriculum category.
  static const String columnCategory = 'category';

  /// Column for the quantity or credits earned (Integer).
  static const String columnAmount = 'amount';

  /// Column for the start date of the activity (Stored as ISO8601 String).
  static const String columnDate = 'date';

  /// Column for the optional end date of the activity.
  static const String columnDateEnd = 'dateEnd';

  /// Column for user-provided clinical notes or reflections.
  static const String columnNotes = 'notes';

  /// Column storing a JSON string representation of clinical departments.
  static const String columnDepartments = 'departments';

  /// Column for the hospital or institution where the activity occurred.
  static const String columnInstitution = 'institution';

  /// Accessor for the underlying SQLite [Database] instance.
  ///
  /// Lazily initializes the database if it hasn't been created yet.
  Future<Database> get database async {
    if (_database != null) {
      return _database!;
    }
    _database = await _initDatabase();
    return _database!;
  }

  /// Initializes the SQLite database file and defines the table schema.
  ///
  /// Sets up the database at the local device path 'residency_portfolio.db'
  /// and executes the initial table creation on version 1.
  ///
  /// * Returns: A [Future] containing the initialized [Database].
  Future<Database> _initDatabase() async {
    final databasesPath = await getDatabasesPath();
    final path = join(databasesPath, 'residency_portfolio.db');

    try {
      return await openDatabase(
        path,
        version: 1,
        onCreate: (db, version) async {
          await _createPortfolioEntryTable(db);
        },
      );
    } catch (e) {
      if (kDebugMode) {
        debugPrint('Database initialization error: $e');
      }
      rethrow;
    }
  }

  /// Executes the SQL command to create the [portfolioTableName].
  ///
  /// Defines constraints such as `NOT NULL` for required fields and
  /// default values for the departments list.
  Future<void> _createPortfolioEntryTable(Database db) async {
    await db.execute('''
      CREATE TABLE $portfolioTableName (
        $columnId INTEGER PRIMARY KEY AUTOINCREMENT,
        $columnName TEXT NOT NULL,
        $columnCategory TEXT NOT NULL,
        $columnAmount INTEGER NOT NULL,
        $columnDate TEXT NOT NULL,
        $columnDateEnd TEXT,
        $columnNotes TEXT,
        $columnDepartments TEXT NOT NULL DEFAULT '[]',
        $columnInstitution TEXT
      )
    ''');
  }

  /// Persists a new [PortfolioEntry] into the database.
  ///
  /// * [entry]: The object to be saved.
  /// * Returns: The row ID of the newly inserted item, or -1 if the operation failed.
  Future<int> insertEntry(PortfolioEntry entry) async {
    try {
      final db = await database;
      return await db.insert(portfolioTableName, entry.toMapForDb());
    } catch (e) {
      if (kDebugMode) {
        debugPrint('Error inserting entry: $e');
      }
      return -1;
    }
  }

  /// Retrieves all entries from the database, sorted by date in descending order.
  ///
  /// Handles mapping from SQLite rows back to [PortfolioEntry] objects.
  ///
  /// * Returns: A [List<PortfolioEntry>]. Returns an empty list if an error occurs.
  /// * Throws: [FormatException] if the stored data schema is incompatible.
  Future<List<PortfolioEntry>> getAllEntries() async {
    try {
      final db = await database;
      final List<Map<String, dynamic>> maps = await db.query(
        portfolioTableName,
        orderBy: '$columnDate DESC',
        columns: [
          columnId,
          columnName,
          columnAmount,
          columnDate,
          columnDateEnd,
          columnNotes,
          columnInstitution,
          columnDepartments,
          columnCategory,
        ],
      );

      return List.generate(maps.length, (i) {
        return PortfolioEntry.fromMap(maps[i]);
      });
    } on FormatException catch (e) {
      debugPrint('Database data corrupted or schema mismatch: $e');
      rethrow;
    } catch (e) {
      if (kDebugMode) {
        debugPrint('Error retrieving entries: $e');
      }
      return [];
    }
  }

  /// Updates an existing database record matching the provided entry's ID.
  ///
  /// * [entry]: The entry containing the updated values.
  /// * Returns: The number of rows affected (usually 1 or 0).
  Future<int> updateEntry(PortfolioEntry entry) async {
    try {
      final db = await database;
      return await db.update(
        portfolioTableName,
        entry.toMapForDb(),
        where: '$columnId = ?',
        whereArgs: [entry.id],
      );
    } catch (e) {
      if (kDebugMode) {
        debugPrint('Error updating entry: $e');
      }
      return 0;
    }
  }

  /// Removes a specific entry from the database by its unique identifier.
  ///
  /// * [id]: The integer primary key of the row to delete.
  /// * Returns: The number of rows deleted.
  Future<int> deleteEntry(int id) async {
    try {
      final db = await database;
      return await db.delete(
        portfolioTableName,
        where: '$columnId = ?',
        whereArgs: [id],
      );
    } catch (e) {
      if (kDebugMode) {
        debugPrint('Error deleting entry: $e');
      }
      return 0;
    }
  }

  /// Closes the database and nullifies the instance.
  /// This is essential before overwriting the .db file.
  Future<void> closeAndReset() async {
    if (_database != null) {
      await _database!.close();
      _database = null;
      if (kDebugMode) {
        debugPrint('[DatabaseHelper] Database closed and reset.');
      }
    }
  }

  /// Manually reset the instance pointer.
  /// Useful if the file was changed externally.
  void resetInstance() {
    _database = null;
  }
}
