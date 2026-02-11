// SPDX-License-Identifier: BSD-3-Clause
// Copyright (c) 2026 medlav

import 'package:flutter/material.dart';
import 'package:residency_portfolio/l10n/app_localizations.dart';
import 'package:residency_portfolio/src/models/portfolio_category.dart';

/// A stateless widget that displays a medical training curriculum in a tabular format.
///
/// This component renders a structured [Table] showing the requirements for a
/// specific medical specialty. It includes identifiers, activity descriptions,
/// minimum required units, and relevant clinical departments.
class PortfolioTableSimple extends StatelessWidget {
  final List<PortfolioCategory> pianoFormativo;
  final String currentSpecialtyName;
  final AppLocalizations l10n;

  /// Creates a [PortfolioTableSimple] to display training requirements.
  ///
  /// * [pianoFormativo]: The list of [PortfolioCategory] objects defining the curriculum.
  /// * [currentSpecialtyName]: The name of the medical specialty being displayed.
  /// * [l10n]: The localization instance used for translating table headers and messages.
  const PortfolioTableSimple({
    super.key,
    required this.pianoFormativo,
    required this.currentSpecialtyName,
    required this.l10n,
  });

  /// Builds the visual representation of the curriculum table.
  ///
  /// If [pianoFormativo] is empty, it returns a centered message indicating
  /// that no activities are defined for the [currentSpecialtyName]. Otherwise,
  /// it renders a vertically scrollable table with custom column widths.
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    if (pianoFormativo.isEmpty) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Text(
            l10n.portfolioNoCurriculumActivities(currentSpecialtyName),
            style: const TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
          ),
        ),
      );
    }

    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Table(
        columnWidths: const {
          0: FixedColumnWidth(45), // ID
          1: FlexColumnWidth(5), // Description (takes most space)
          2: FixedColumnWidth(60), // Min Units
          3: FlexColumnWidth(2), // Departments
        },
        border: TableBorder.all(
          width: 1.0,
          color: theme.primaryColor.withValues(alpha: 0.3),
        ),
        children: [
          // HEADER ROW
          TableRow(
            decoration: BoxDecoration(
              color: theme.colorScheme.primaryContainer,
            ),
            children: [
              _buildHeaderCell(l10n.portfolioTableID, theme),
              _buildHeaderCell(l10n.portfolioTableActivityDescription, theme),
              _buildHeaderCell(l10n.portfolioTableMinUnits, theme),
              _buildHeaderCell(l10n.portfolioTableRequiredDept, theme),
            ],
          ),
          // DATA ROWS
          ...pianoFormativo.map(
            (activity) => TableRow(
              children: [
                _buildDataCell(
                  activity.id.toString(),
                  theme,
                  align: TextAlign.center,
                ),
                _buildDataCell(
                  activity.description,
                  theme,
                  align: TextAlign.start,
                ),
                _buildDataCell(
                  activity.minRequiredAmount.toString(),
                  theme,
                  align: TextAlign.center,
                ),
                _buildDataCell(
                  activity.requiredDepartments.join(', '),
                  theme,
                  align: TextAlign.start,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Internal helper to construct a styled header cell for the table.
  ///
  /// Applies the `primaryContainer` color scheme and bold typography to differentiate
  /// the header from data rows.
  ///
  /// * [text]: The localized label for the column.
  /// * [theme]: The current application [ThemeData].
  Widget _buildHeaderCell(String text, ThemeData theme) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: theme.colorScheme.onPrimaryContainer,
            fontSize: 12,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  /// Internal helper to construct a styled data cell for the table rows.
  ///
  /// Handles text alignment and applies a consistent font size and line height
  /// to ensure legibility of technical descriptions.
  ///
  /// * [text]: The string content to display in the cell.
  /// * [theme]: The current application [ThemeData].
  /// * [align]: The horizontal alignment of the text (defaults to [TextAlign.center]).
  Widget _buildDataCell(
    String text,
    ThemeData theme, {
    TextAlign align = TextAlign.center,
  }) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Text(
        text,
        style: TextStyle(
          color: theme.colorScheme.onSurface,
          fontSize: 11,
          height: 1.3,
        ),
        textAlign: align,
      ),
    );
  }
}
