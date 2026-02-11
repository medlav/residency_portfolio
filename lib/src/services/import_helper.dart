// SPDX-License-Identifier: BSD-3-Clause
// Copyright (c) 2026 medlav

import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:file_picker/file_picker.dart';
import 'package:path/path.dart' as path;
import 'package:sqflite/sqflite.dart';
import 'package:residency_portfolio/src/services/database_helper.dart';

/// A utility class providing methods to import and restore the application database.
///
/// This helper manages the critical sequence of closing existing connections,
/// picking external files, and overwriting the local SQLite store.
class ImportHelper {
  /// Internal reference to the singleton [DatabaseHelper].
  static final DatabaseHelper _dbHelper = DatabaseHelper();

  /// Prompts the user to select a `.db` file and replaces the current database.
  ///
  /// This method performs the following steps:
  /// 1. Filters for `.db` files using [FilePicker].
  /// 2. Closes all active connections via [_dbHelper.closeAndReset] to release file locks.
  /// 3. Overwrites the internal app database with the selected file.
  /// 4. Logs the operation results if in [kDebugMode].
  ///
  /// Returns `'Success'` if the operation completes, otherwise returns a descriptive
  /// error message or `'Import cancelled'`.
  ///
  /// Note: This operation is not supported on Web and will return an error string.
  static Future<String> importDatabase() async {
    if (kIsWeb) return 'webNotSupported';

    try {
      final result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['db'],
        allowMultiple: false,
      );

      if (result == null || result.files.single.path == null) {
        return 'Import cancelled';
      }

      final selectedFile = File(result.files.single.path!);

      // 1. Validation Phase: Check if this is actually OUR database
      final bool isValid = await _isValidDatabase(selectedFile);
      if (!isValid) return 'Invalid database';

      // 2. Preparation Phase
      final databasesPath = await getDatabasesPath();
      final destinationPath = path.join(
        databasesPath,
        'residency_portfolio.db',
      );

      // 3. Execution Phase: Close current and overwrite
      await _dbHelper.closeAndReset();
      await selectedFile.copy(destinationPath);

      return 'Success';
    } catch (e) {
      debugPrint('[ImportHelper] ERROR: $e');
      return e.toString();
    }
  }

  /// Verifies if the provided [file] contains the expected [DatabaseHelper.portfolioTableName].
  static Future<bool> _isValidDatabase(File file) async {
    Database? tempDb;
    try {
      // Open the picked file read-only
      tempDb = await openDatabase(file.path, readOnly: true);

      // Query the sqlite_master table for our specific table name
      final List<Map<String, dynamic>> tables = await tempDb.rawQuery(
        "SELECT name FROM sqlite_master WHERE type='table' AND name='${DatabaseHelper.portfolioTableName}'",
      );

      await tempDb.close();
      return tables.isNotEmpty;
    } catch (e) {
      if (tempDb != null) await tempDb.close();
      return false;
    }
  }
}
