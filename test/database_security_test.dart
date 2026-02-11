/// Database Security Test Suite
/// * This suite verifies the resilience of the local SQLite database against
/// common vulnerabilities, specifically SQL injection. It ensures that
/// the database layer correctly parameterizes inputs and treats malicious
/// payloads as literal strings rather than executable commands.
/// * Requirements:
/// - sqflite_ffi for desktop execution environment.
/// - Explicit database cleanup in setup/teardown to ensure test isolation.
library;

import 'package:flutter_test/flutter_test.dart';
import 'package:path/path.dart' hide equals;
import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'package:residency_portfolio/src/models/portfolio_category.dart';
import 'package:residency_portfolio/src/models/portfolio_entry.dart';
import 'package:residency_portfolio/src/services/database_helper.dart';

void main() {
  setUpAll(() async {
    sqfliteFfiInit();
    databaseFactory = databaseFactoryFfi;

    final databasesPath = await getDatabasesPath();
    final path = join(databasesPath, 'residency_portfolio.db');

    await databaseFactory.deleteDatabase(path);
  });

  tearDownAll(() async {
    final databasesPath = await getDatabasesPath();
    final path = join(databasesPath, 'residency_portfolio.db');
    await databaseFactory.deleteDatabase(path);
  });

  group('Database Security Tests', () {
    test('SQL Injection payload should be treated as plain text', () async {
      final dbHelper = DatabaseHelper();
      const maliciousName = "Robert'); DROP TABLE portfolio_entries; --";

      final entry = PortfolioEntry(
        name: maliciousName,
        category: PortfolioCategory.defaultCategory(),
        amount: 5,
        date: DateTime.now(),
        notes: 'Testing for vulnerabilities',
      );

      await dbHelper.insertEntry(entry);

      final entries = await dbHelper.getAllEntries();

      expect(
        entries.isNotEmpty,
        true,
        reason: "The database table should still exist and contain data.",
      );

      final savedEntry = entries.first;
      expect(savedEntry.name, equals(maliciousName));
    });
  });
}
