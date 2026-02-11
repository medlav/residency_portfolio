// SPDX-License-Identifier: BSD-3-Clause
// Copyright (c) 2026 medlav

import 'package:flutter/widgets.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'package:intl/intl.dart';
import 'package:residency_portfolio/l10n/app_localizations.dart'
    show AppLocalizations;
import 'package:residency_portfolio/src/services/curriculum_generator.dart';

/// A utility service responsible for generating and printing the residency curriculum PDF.
///
/// This service processes consolidated portfolio data to create a professionally
/// formatted document suitable for formal academic or clinical review. It handles
/// multi-page layouts, branding colors, and localized text.
class PdfGeneratorService {
  /// Generates a PDF document from consolidated residency data and opens the print/save dialog.
  ///
  /// The resulting document includes:
  /// * A professional header with user details ([name] and [email]).
  /// * Summary statistics including [totalCredits] and category counts.
  /// * Categorized sections based on the [data] map, each containing a detailed table.
  /// * A localized footer with the generation timestamp.
  ///
  /// * [context]: The [BuildContext] required to access localization and theme data.
  /// * [data]: A map where keys are category names and values are lists of [ConsolidatedEntry] objects.
  /// * [name]: The full name of the resident to display in the header.
  /// * [email]: The contact email to display in the header.
  /// * [totalCredits]: The cumulative sum of all activity amounts across the portfolio.
  ///
  /// Returns a [Future] that completes once the PDF layout is handed over to the OS printing service.
  static Future<void> generateCurriculumPdf({
    required BuildContext context,
    required Map<String, List<ConsolidatedEntry>> data,
    required String name,
    required String email,
    required double totalCredits,
  }) async {
    final pdf = pw.Document();
    final l10n = AppLocalizations.of(context)!;
    final formattedDate = DateFormat('dd/MM/yyyy').format(DateTime.now());

    pdf.addPage(
      pw.MultiPage(
        pageFormat: PdfPageFormat.a4,
        margin: const pw.EdgeInsets.all(32),
        build: (pw.Context context) {
          return [
            // Header
            pw.Row(
              mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
              children: [
                pw.Column(
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  children: [
                    pw.Text(
                      name,
                      style: pw.TextStyle(
                        fontSize: 24,
                        fontWeight: pw.FontWeight.bold,
                      ),
                    ),
                    pw.Text(email, style: const pw.TextStyle(fontSize: 12)),
                  ],
                ),
                pw.Column(
                  crossAxisAlignment: pw.CrossAxisAlignment.end,
                  children: [
                    pw.Text(
                      l10n.curriculumSummaryStats(
                        totalCredits.toStringAsFixed(1),
                        data.length,
                      ),
                      style: const pw.TextStyle(fontSize: 10),
                    ),
                    pw.Text(
                      totalCredits.toStringAsFixed(1),
                      style: pw.TextStyle(
                        fontSize: 20,
                        fontWeight: pw.FontWeight.bold,
                        color: PdfColors.blue900,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            pw.Divider(thickness: 2, color: PdfColors.grey300),
            pw.SizedBox(height: 20),

            // Iterate through categories
            for (var category in data.entries) ...[
              pw.Header(
                level: 1,
                text: category.key.toUpperCase(),
                textStyle: pw.TextStyle(
                  fontSize: 14,
                  fontWeight: pw.FontWeight.bold,
                  color: PdfColors.blue700,
                ),
                decoration: const pw.BoxDecoration(
                  border: pw.Border(
                    bottom: pw.BorderSide(color: PdfColors.blue700, width: 1),
                  ),
                ),
              ),

              // Table for items
              pw.Table(
                columnWidths: {
                  0: const pw.FixedColumnWidth(80),
                  1: const pw.FlexColumnWidth(),
                  2: const pw.FixedColumnWidth(60),
                },
                children: [
                  for (var item in category.value)
                    pw.TableRow(
                      children: [
                        pw.Padding(
                          padding: const pw.EdgeInsets.symmetric(vertical: 4),
                          child: pw.Text(
                            DateFormat('MMM yyyy').format(item.period),
                            style: const pw.TextStyle(fontSize: 10),
                          ),
                        ),
                        pw.Padding(
                          padding: const pw.EdgeInsets.symmetric(vertical: 4),
                          child: pw.Column(
                            crossAxisAlignment: pw.CrossAxisAlignment.start,
                            children: [
                              pw.Text(
                                item.name,
                                style: pw.TextStyle(
                                  fontWeight: pw.FontWeight.bold,
                                  fontSize: 11,
                                ),
                              ),
                              pw.Text(
                                item.institution,
                                style: const pw.TextStyle(
                                  fontSize: 9,
                                  color: PdfColors.grey700,
                                ),
                              ),
                            ],
                          ),
                        ),
                        pw.Padding(
                          padding: const pw.EdgeInsets.symmetric(vertical: 4),
                          child: pw.Text(
                            item.totalAmount.toStringAsFixed(1),
                            textAlign: pw.TextAlign.right,
                            style: pw.TextStyle(fontWeight: pw.FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                ],
              ),
              pw.SizedBox(height: 15),
            ],

            // Footer
            pw.Spacer(),
            pw.Divider(thickness: 0.5),
            pw.Text(
              l10n.pdfFooterGeneratedOn(formattedDate),
              style: const pw.TextStyle(fontSize: 8, color: PdfColors.grey500),
            ),
          ];
        },
      ),
    );

    // Save or Share
    await Printing.layoutPdf(
      onLayout: (PdfPageFormat format) async => pdf.save(),
    );
  }
}
