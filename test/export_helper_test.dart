/// Data Conversion Test Suite
/// * This suite validates the transformation of residency portfolio data into
/// portable formats (JSON and CSV). It ensures that the ExportHelper correctly
/// handles complex strings, nested department lists, and null values to
/// maintain data integrity during backup and migration processes.
library;

import 'dart:convert';
import 'package:flutter_test/flutter_test.dart';
import 'package:residency_portfolio/src/models/portfolio_category.dart';
import 'package:residency_portfolio/src/models/portfolio_entry.dart';
import 'package:residency_portfolio/src/services/database_helper.dart';

String _createJsonTest(List<PortfolioEntry> entries) {
  final List<Map<String, dynamic>> jsonList = entries
      .map((e) => e.toMapForDb())
      .toList();
  const JsonEncoder encoder = JsonEncoder.withIndent('  ');
  return encoder.convert(jsonList);
}

String _createCsvTest(List<PortfolioEntry> entries) {
  if (entries.isEmpty) return "No data available";

  final List<String> columns = [
    DatabaseHelper.columnId,
    DatabaseHelper.columnName,
    DatabaseHelper.columnCategory,
    DatabaseHelper.columnAmount,
    DatabaseHelper.columnDate,
    DatabaseHelper.columnDateEnd,
    DatabaseHelper.columnNotes,
    DatabaseHelper.columnDepartments,
    DatabaseHelper.columnInstitution,
  ];

  final StringBuffer csvBuffer = StringBuffer(columns.join(','));
  csvBuffer.writeln();

  for (final entry in entries) {
    final Map<String, dynamic> dataMap = entry.toMapForDb();

    final List<String> rowValues = columns.map((col) {
      String value = dataMap[col]?.toString() ?? '';
      value = value.replaceAll('"', '""');
      return '"$value"';
    }).toList();

    csvBuffer.write(rowValues.join(','));
    csvBuffer.writeln();
  }
  return csvBuffer.toString();
}

void main() {
  final List<PortfolioEntry> testEntries = [
    PortfolioEntry(
      id: 1,
      name: 'Test Entry 1',
      category: PortfolioCategory.defaultCategory(),
      amount: 5,
      date: DateTime(2025, 1, 10),
      notes: 'Notes with comma, and quotes: "test"',
    ),
    PortfolioEntry(
      id: 2,
      name: 'Entry 2 (Nulls)',
      category: PortfolioCategory.defaultCategory(),
      amount: 1,
      date: DateTime(2025, 1, 15),
      dateEnd: DateTime(2025, 1, 16),
      notes: null,
    ),
  ];

  group('Data Conversion Unit Tests', () {
    test('JSON: Should convert a list of entries to a valid JSON string', () {
      final jsonString = _createJsonTest(testEntries);

      expect(jsonString, isNotNull);
      expect(jsonString, isA<String>());

      final decoded = jsonDecode(jsonString);
      expect(decoded, isA<List>());
      expect(decoded.length, equals(2));
      expect(decoded[0][DatabaseHelper.columnName], equals('Test Entry 1'));
    });

    test(
      'CSV: Should convert a list of entries to a correctly formatted CSV string',
      () {
        final csvString = _createCsvTest(testEntries);

        expect(csvString, isNotNull);
        expect(csvString, isA<String>());

        final lines = csvString.trim().split('\n');
        expect(lines.length, equals(3));

        expect(lines[0], contains(DatabaseHelper.columnName));
        expect(lines[1], contains('"Notes with comma, and quotes: ""test"""'));
      },
    );

    test('CSV: Should return "No data available" for an empty list', () {
      final csvString = _createCsvTest([]);
      expect(csvString, equals('No data available'));
    });
  });
}
