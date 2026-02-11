// SPDX-License-Identifier: BSD-3-Clause
// Copyright (c) 2026 medlav

import 'package:flutter/foundation.dart';
import 'dart:io';
import 'dart:convert';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as path;
import 'package:residency_portfolio/src/models/portfolio_entry.dart'
    show PortfolioEntry;
import 'package:sqflite/sqflite.dart';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:share_plus/share_plus.dart'
    show SharePlus, XFile, ShareResultStatus, ShareParams;
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:residency_portfolio/src/services/database_helper.dart';

/// Supported formats for application data backup and document export.
enum BackupFormat {
  /// JavaScript Object Notation: Best for data portability and app restoration.
  json,

  /// Comma-Separated Values: Best for spreadsheet analysis (Excel, Sheets).
  csv,

  /// Portable Document Format: Best for human-readable reporting and printing.
  pdf,

  /// SQLite Database: A raw binary copy of the application database file.
  /// Note: Not supported on Web platforms.
  db,
}

/// Singleton instance of the DatabaseHelper used for data retrieval.
final DatabaseHelper _dbHelper = DatabaseHelper();

// -----------------------------------------------------------------------------
// CORE EXPORT LOGIC
// -----------------------------------------------------------------------------

/// Handles querying the database, converting the data, and saving the file
/// to a user-selected location via the platform's native file system or browser download.
///
/// This function executes a three-stage pipeline:
/// 1. **Data Retrieval**: Fetches all records via [_dbHelper].
/// 2. **Transformation**: Converts raw entries into the requested [BackupFormat].
/// 3. **Persistence**:
///    - On **Web/Desktop**: Invokes a native save dialog using [FilePicker.platform.saveFile]
///      to stream bytes directly to the user's chosen location.
///    - On **Mobile**: Prompts for a directory via [FilePicker.platform.getDirectoryPath]
///      and performs a standard file system write operation.
///
/// On Web and Desktop, uses [FilePicker.platform.saveFile] with the `bytes` parameter
/// to handle both the save dialog and the file content transfer.
/// On Mobile, it uses [FilePicker.platform.getDirectoryPath] followed by a standard
/// file write operation.
///
/// Returns a success message containing the file name/path. Throws an [Exception] on failure.
Future<String> performBackup(BuildContext context, BackupFormat format) async {
  if (kDebugMode) {
    debugPrint('[performBackup] Starting backup for format: ${format.name}');
  }

  final bool isWeb = kIsWeb;

  try {
    // 1. Retrieve entries from the database
    final entries = await _dbHelper.getAllEntries();

    if (kDebugMode) {
      debugPrint(
        '[performBackup] Retrieved ${entries.length} entries from database.',
      );
    }
    // 2. Prepare file names
    final String extension = format.name;
    final String fileNameBase = format == BackupFormat.db
        ? 'raw_db_backup_${DateTime.now().millisecondsSinceEpoch}'
        : 'portfolio_backup_${DateTime.now().year}_${DateTime.now().month}_${DateTime.now().day}';
    final String fileName = '$fileNameBase.$extension';

    // 3. Generate file content as Bytes
    Uint8List fileBytes;

    switch (format) {
      case BackupFormat.json:
        final String fileContent = _createJson(entries);
        fileBytes = Uint8List.fromList(utf8.encode(fileContent));
        break;

      case BackupFormat.csv:
        final String fileContent = _createCsv(entries);
        fileBytes = Uint8List.fromList(utf8.encode(fileContent));
        break;

      case BackupFormat.pdf:
        fileBytes = await _createPdf(entries);
        break;

      case BackupFormat.db:
        if (isWeb) {
          if (kDebugMode) {
            debugPrint(
              '[performBackup] ERROR: Raw DB export not supported on Web.',
            );
          }
          throw Exception(
            "Raw SQLite Database export is not supported in the web browser environment.",
          );
        }

        // Native Platform DB copy (reads the file into bytes)
        final dbPath = await getDatabasesPath();
        const dbName = 'residency_portfolio.db';
        final sourceFile = File(path.join(dbPath, dbName));

        if (!await sourceFile.exists()) {
          throw Exception(
            "Source database file not found at: ${sourceFile.path}",
          );
        }

        fileBytes = await sourceFile.readAsBytes();
        break;
    }
    if (kDebugMode) {
      debugPrint(
        '[performBackup] Data content generated (Bytes: ${fileBytes.length}).',
      );
    }

    await Future.delayed(const Duration(milliseconds: 500));

    // 4. Handle Save/Download for Desktop and Web
    if (isWeb || Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
      // Use saveFile() and pass bytes directly. This handles the dialog and the download stream.
      final String? filePath = await FilePicker.platform.saveFile(
        dialogTitle: 'Select location to save the backup file:',
        fileName: fileName,
        bytes: fileBytes,
      );

      if (filePath == null) {
        return 'Backup cancelled by user.';
      }
      if (kDebugMode) {
        debugPrint(
          '[performBackup] File download initiated via saveFile() for $fileName.',
        );
      }
      return 'Data successfully downloaded as $fileName';
    } else {
      final tempDir = await getTemporaryDirectory();
      final tempPath = path.join(tempDir.path, fileName);
      final tempFile = File(tempPath);
      await tempFile.writeAsBytes(fileBytes);

      // 1. Attempt to save directly to a location chosen by the user
      String? outputFile = await FilePicker.platform.saveFile(
        dialogTitle: 'Save Backup',
        fileName: fileName,
        bytes: fileBytes,
      );

      // 2. If the user saved it via the picker, we're done
      if (outputFile != null) {
        return 'File saved to: $outputFile';
      }

      // 3. Fallback: If they cancelled the picker, offer the Share Sheet
      // (This allows them to send it to Drive, Email, or other File Managers)
      final result = await SharePlus.instance.share(
        ShareParams(files: [XFile(tempPath)], subject: 'Portfolio Backup'),
      );

      if (result.status == ShareResultStatus.dismissed) {
        return 'Export cancelled';
      }

      return 'Data shared successfully';
    }
    // } else {
    //   // 5. Handle Save for Mobile (Android/iOS)
    //   String? saveDirectoryPath = await FilePicker.platform.getDirectoryPath(
    //     dialogTitle: 'Select folder to save the backup file:',
    //   );

    //   if (saveDirectoryPath == null) {
    //     // Fallback to default external storage path if directory picker is cancelled
    //     final Directory? externalDir = await getExternalStorageDirectory();
    //     final Directory directory =
    //         externalDir ?? await getApplicationDocumentsDirectory();
    //     saveDirectoryPath = directory.path;
    //   }

    //   final String filePath = path.join(saveDirectoryPath, fileName);
    //   final File file = File(filePath);

    //   await file.writeAsBytes(fileBytes);
    //   if (kDebugMode) {
    //     debugPrint('[performBackup] File written successfully to $filePath');
    //   }
    //   return 'Data successfully backed up to $filePath';
    // }
  } catch (e) {
    if (kDebugMode) {
      debugPrint('[performBackup] FATAL ERROR during backup: $e');
    }
    throw Exception('Backup failed due to an internal error: $e');
  }
}

// -----------------------------------------------------------------------------
// DATA CONVERSION IMPLEMENTATIONS
// -----------------------------------------------------------------------------

/// Serializes a list of [PortfolioEntry] objects into a JSON string.
///
/// Uses [PortfolioEntry.toMapForDb] to generate the structure and applies
/// indentation for human readability.
String _createJson(List<PortfolioEntry> entries) {
  if (kDebugMode) {
    debugPrint('[_createJson] Converting ${entries.length} entries to JSON.');
  }
  final List<Map<String, dynamic>> jsonList = entries
      .map((e) => e.toMapForDb())
      .toList()
      .cast<Map<String, dynamic>>();

  const JsonEncoder encoder = JsonEncoder.withIndent('  ');
  return encoder.convert(jsonList);
}

/// Converts the list of [PortfolioEntry] objects into a CSV string.
///
/// Columns are derived from [DatabaseHelper] constants. The method automatically
/// handles value escaping by wrapping fields in double quotes and doubling
/// existing internal quotes to maintain data integrity.
String _createCsv(List<PortfolioEntry> entries) {
  if (entries.isEmpty) {
    if (kDebugMode) {
      if (kDebugMode) {
        debugPrint('[_createCsv] No entries to convert. Returning empty CSV.');
      }
    }
    return "No data available";
  }

  debugPrint('[_createCsv] Converting ${entries.length} entries to CSV.');

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
      // Escape inner double quotes and wrap the value in quotes for CSV integrity
      value = value.replaceAll('"', '""');
      return '"$value"';
    }).toList();

    csvBuffer.write(rowValues.join(','));
    csvBuffer.writeln();
  }

  return csvBuffer.toString();
}

/// Generates a binary PDF document representing the portfolio data.
///
/// Uses an A4 Landscape orientation to accommodate tabular data. The table
/// includes styling for headers and alternating row borders for readability.
///
/// Uses [PortfolioEntry.toMapForDb] for data mapping.
/// Returns a [Uint8List] containing the raw PDF bytes.
Future<Uint8List> _createPdf(List<PortfolioEntry> entries) async {
  if (kDebugMode) {
    debugPrint('[_createPdf] Converting ${entries.length} entries to PDF.');
  }

  final pdf = pw.Document();

  // 1. Prepare Table Data
  final List<List<String>> tableData = [];

  final List<String> columns = [
    'ID',
    'Name',
    'Category',
    'Amount',
    'Date',
    'Date End',
    'Notes',
    'Institution',
  ];
  tableData.add(columns);

  for (final entry in entries) {
    final Map<String, dynamic> dataMap = entry.toMapForDb();

    final List<String> row = [
      dataMap[DatabaseHelper.columnId]?.toString() ?? '',
      dataMap[DatabaseHelper.columnName]?.toString() ?? '',
      dataMap[DatabaseHelper.columnCategory]?.toString() ?? '',
      dataMap[DatabaseHelper.columnAmount]?.toString() ?? '',
      dataMap[DatabaseHelper.columnDate]?.toString() ?? '',
      dataMap[DatabaseHelper.columnDateEnd]?.toString() ?? '',
      dataMap[DatabaseHelper.columnNotes]?.toString() ?? '',
      dataMap[DatabaseHelper.columnInstitution]?.toString() ?? '',
      // Note: departments column excluded for cleaner table layout
    ];
    tableData.add(row);
  }

  // 2. Build the PDF Page
  pdf.addPage(
    pw.Page(
      pageFormat: PdfPageFormat.a4.landscape,
      build: (pw.Context context) {
        return pw.Column(
          crossAxisAlignment: pw.CrossAxisAlignment.start,
          children: [
            pw.Header(
              level: 0,
              child: pw.Text(
                "Residency Portfolio Backup",
                style: pw.TextStyle(
                  fontSize: 24,
                  fontWeight: pw.FontWeight.bold,
                ),
              ),
            ),
            pw.SizedBox(height: 20),
            pw.Text(
              "Export Date: ${DateTime.now().toLocal().toString().substring(0, 16)}",
            ),
            pw.SizedBox(height: 20),
            pw.TableHelper.fromTextArray(
              headers: tableData.first,
              data: tableData.sublist(1),
              border: pw.TableBorder.all(color: PdfColors.grey400, width: 0.5),
              headerStyle: pw.TextStyle(
                fontWeight: pw.FontWeight.bold,
                color: PdfColors.white,
              ),
              headerDecoration: const pw.BoxDecoration(
                color: PdfColors.blueGrey700,
              ),
              rowDecoration: const pw.BoxDecoration(
                border: pw.Border(
                  bottom: pw.BorderSide(color: PdfColors.grey200, width: 0.5),
                ),
              ),
              cellAlignment: pw.Alignment.centerLeft,
              cellPadding: const pw.EdgeInsets.all(6),
              cellStyle: const pw.TextStyle(fontSize: 9),
            ),
          ],
        );
      },
    ),
  );

  return pdf.save();
}
