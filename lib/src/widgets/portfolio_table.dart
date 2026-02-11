// SPDX-License-Identifier: BSD-3-Clause
// Copyright (c) 2026 medlav

import 'package:flutter/material.dart';
import 'package:residency_portfolio/l10n/app_localizations.dart';
import 'package:residency_portfolio/src/models/portfolio_category.dart';

/// A stateful table widget that displays an expandable list of curriculum activities.
///
/// This widget provides a rich interface for viewing the [pianoFormativo]. It supports
/// expandable rows via [ExpansionTile] to reveal detailed descriptions and department
/// lists without cluttering the main table view.
class PortfolioTable extends StatefulWidget {
  final List<PortfolioCategory> pianoFormativo;
  final String currentSpecialtyName;
  final AppLocalizations l10n;

  const PortfolioTable({
    super.key,
    required this.pianoFormativo,
    required this.currentSpecialtyName,
    required this.l10n,
  });

  @override
  State<PortfolioTable> createState() => _PortfolioTableState();
}

class _PortfolioTableState extends State<PortfolioTable> {
  final Set<int> _expandedActivityIds = {};

  final Map<int, TableColumnWidth> _columnWidths = const {
    0: FlexColumnWidth(1),
    1: FlexColumnWidth(1),
    2: FlexColumnWidth(4),
    3: FlexColumnWidth(2),
    4: FlexColumnWidth(3),
  };

  /// Internal helper to create a stylized cell with consistent padding and alignment.
  ///
  /// * [context]: The build context for theme access.
  /// * [child]: The widget to display within the cell.
  /// * [isHeader]: If true, applies header-specific typography and colors.
  /// * [align]: The horizontal alignment of the content.
  /// * [customStyle]: Optional style overrides for the text.
  Widget _buildCellContent({
    required BuildContext context,
    required Widget child,
    bool isHeader = false,
    TextAlign align = TextAlign.center,
    TextStyle? customStyle,
  }) {
    final theme = Theme.of(context);

    TextStyle baseStyle = isHeader
        ? theme.textTheme.titleSmall!.copyWith(
            fontWeight: FontWeight.bold,
            color: theme.colorScheme.onPrimaryContainer,
          )
        : theme.textTheme.bodyMedium!.copyWith(
            color: theme.colorScheme.onSurface,
          );

    TextStyle style = baseStyle.merge(customStyle);

    if (child is Text) {
      child = Text(
        child.data ?? '',
        style: style,
        maxLines: isHeader ? 2 : 2,
        overflow: TextOverflow.ellipsis,
        textAlign: isHeader ? TextAlign.center : align,
      );
    }

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(child: child),
    );
  }

  /// Constructs the detailed view shown when a table row is expanded.
  ///
  /// Displays the full activity description and a bulleted list of
  /// required departments.
  ///
  /// * [activity]: The [PortfolioCategory] data for the current row.
  Widget _buildActivityRowBody(PortfolioCategory activity) {
    TextStyle textStyleBold = const TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 13,
    );

    return Padding(
      padding: const EdgeInsets.only(
        left: 16.0,
        right: 16.0,
        bottom: 8,
        top: 8,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            widget.l10n.portfolioFullDescription,
            style: textStyleBold,
            textAlign: TextAlign.left,
          ),
          SizedBox(
            width: double.infinity,
            child: Text(
              activity.description,
              softWrap: true,
              textAlign: TextAlign.left,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            widget.l10n.portfolioAllRequiredDepartments,
            style: textStyleBold,
            textAlign: TextAlign.left,
          ),
          Text(
            activity.requiredDepartments.join(' • '),
            softWrap: true,
            textAlign: TextAlign.left,
          ),
        ],
      ),
    );
  }

  /// Constructs a [TableRow] containing the primary data for an activity.
  ///
  /// * [context]: The build context for theme access.
  /// * [activity]: The category data to display.
  /// * [isExpanded]: Controls the rotation of the expansion arrow icon.
  TableRow _buildDataTableRow({
    required BuildContext context,
    required PortfolioCategory activity,
    required bool isExpanded,
  }) {
    final theme = Theme.of(context);

    final Widget expansionIcon = RotationTransition(
      turns: AlwaysStoppedAnimation(isExpanded ? 0.5 : 0),
      child: Icon(
        Icons.expand_more,
        color: theme.unselectedWidgetColor,
        size: 24,
      ),
    );

    return TableRow(
      children: [
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: _buildCellContent(
            context: context,
            align: TextAlign.center,
            child: Center(child: expansionIcon),
          ),
        ),
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: _buildCellContent(
            context: context,
            align: TextAlign.center,
            child: Text(activity.id.toString()),
          ),
        ),
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: _buildCellContent(
            context: context,
            align: TextAlign.start,
            child: Text(activity.description),
          ),
        ),
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: _buildCellContent(
            context: context,
            align: TextAlign.center,
            child: Text(activity.minRequiredAmount.toString()),
            customStyle: TextStyle(color: theme.colorScheme.secondary),
          ),
        ),
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: _buildCellContent(
            context: context,
            align: TextAlign.center,
            child: Text(activity.requiredDepartments.join(', ')),
          ),
        ),
      ],
    );
  }

  /// Creates the static header row for the table.
  ///
  /// Uses localized strings for column titles like ID, Description, and Units.
  TableRow _buildHeaderRow(BuildContext context) {
    final theme = Theme.of(context);
    final List<Widget> headerChildren =
        [
          const SizedBox.shrink(),
          Text(widget.l10n.portfolioTableID),
          Text(widget.l10n.portfolioTableActivityDescription),
          Text(widget.l10n.portfolioTableMinUnits),
          Text(widget.l10n.portfolioTableRequiredDept),
        ].map((textWidget) {
          return _buildCellContent(
            context: context,
            isHeader: true,
            align: TextAlign.center,
            child: textWidget,
          );
        }).toList();

    return TableRow(
      decoration: BoxDecoration(color: theme.colorScheme.primaryContainer),
      children: headerChildren,
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    if (widget.pianoFormativo.isEmpty) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Text(
            widget.l10n.portfolioNoCurriculumActivities(
              widget.currentSpecialtyName,
            ),
            style: const TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
          ),
        ),
      );
    }

    return Card(
      elevation: 2,
      margin: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Table(
              columnWidths: _columnWidths,
              border: TableBorder.symmetric(
                inside: BorderSide(width: 1.0, color: theme.primaryColor),
                outside: BorderSide(width: 2.0, color: theme.primaryColor),
              ),
              children: [_buildHeaderRow(context)],
            ),
          ),

          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              final activity = widget.pianoFormativo[index];
              final bool isExpanded = _expandedActivityIds.contains(
                activity.id,
              );

              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ExpansionTile(
                    tilePadding: EdgeInsets.zero,
                    controlAffinity: ListTileControlAffinity.trailing,
                    showTrailingIcon: false,
                    onExpansionChanged: (expanded) {
                      setState(() {
                        if (expanded) {
                          _expandedActivityIds.add(activity.id);
                        } else {
                          _expandedActivityIds.remove(activity.id);
                        }
                      });
                    },
                    title: Table(
                      columnWidths: _columnWidths,
                      border: TableBorder.symmetric(
                        inside: BorderSide(
                          width: 1.0,
                          color: theme.primaryColor.withValues(alpha: 0.5),
                        ),
                        outside: BorderSide(
                          width: 2.0,
                          color: theme.primaryColor,
                        ),
                      ),
                      children: [
                        _buildDataTableRow(
                          context: context,
                          activity: activity,
                          isExpanded: isExpanded,
                        ),
                      ],
                    ),
                    children: <Widget>[_buildActivityRowBody(activity)],
                  ),
                  Divider(
                    height: 1,
                    color: theme.primaryColor.withValues(alpha: 0.5),
                    thickness: 1,
                  ),
                ],
              );
            }, childCount: widget.pianoFormativo.length),
          ),
        ],
      ),
    );
  }
}
