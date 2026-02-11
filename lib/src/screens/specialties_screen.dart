// SPDX-License-Identifier: BSD-3-Clause
// Copyright (c) 2026 medlav

import 'package:flutter/material.dart';
import 'package:residency_portfolio/src/widgets/portfolio_table_simple.dart'
    show PortfolioTableSimple;
import 'package:residency_portfolio/src/services/specialties_data.dart'; // Import the centralized data file
import 'package:residency_portfolio/l10n/app_localizations.dart';
import 'package:residency_portfolio/src/models/portfolio_category.dart';

import 'package:residency_portfolio/src/widgets/disclaimer_info_button.dart';

/// A screen that allows users to browse and search for specific medical residency
/// specialties and their associated training requirements.
///
/// This screen provides a dual-interface:
/// 1. A specialty selection dropdown to switch between different residency tracks.
/// 2. An autocomplete search field to find specific activities or procedures
///    within the training plan of the selected specialty.
///
/// When an activity is selected, it displays detailed metadata including
/// IDs, minimum required units, and relevant departments. If no activity
/// is selected, it defaults to a summary table view.
class SpecialtiesScreen extends StatefulWidget {
  const SpecialtiesScreen({super.key});

  @override
  State<SpecialtiesScreen> createState() => _SpecialtiesScreenState();
}

class _SpecialtiesScreenState extends State<SpecialtiesScreen> {
  /// The currently active specialty track key.
  ///
  /// Defaults to the first entry in [kAvailableSpecialties] if data is available.
  String _currentSpecialty = kAvailableSpecialties.isNotEmpty
      ? kAvailableSpecialties.first
      : 'No Specialty Data'; // Will be replaced by ARB key later

  /// The specific activity currently being inspected by the user.
  ///
  /// When null, the UI displays the [PortfolioTableSimple] instead of detail cards.
  PortfolioCategory? _selectedActivity;

  /// Retrieves the list of required activities for the [_currentSpecialty].
  ///
  /// Maps raw data from [kAllSpecialtyData] into a list of [PortfolioCategory]
  /// domain objects for UI consumption.
  List<PortfolioCategory> get _currentSpecialtyActivities {
    final rawData = kAllSpecialtyData[_currentSpecialty] ?? [];
    return rawData.map((data) => PortfolioCategory.fromMap(data)).toList();
  }

  /// Builds a standardized, themed row for displaying activity metadata.
  ///
  /// Takes a [label] and [value] to create a consistent key-value pair
  /// layout used within the activity detail cards.
  Widget _buildDetailRow(BuildContext context, String label, String value) {
    final textTheme = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: textTheme.titleSmall!.copyWith(
              fontWeight: FontWeight.w600,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          const SizedBox(width: 8),

          Expanded(child: Text(value, style: textTheme.bodyMedium)),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;

    // Handle initial state if kAvailableSpecialties is empty
    if (_currentSpecialty == 'No Specialty Data' &&
        kAvailableSpecialties.isNotEmpty) {
      _currentSpecialty = kAvailableSpecialties.first;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.settingsSpecialtiesTitle),

        titleTextStyle: textTheme.headlineSmall!.copyWith(
          color: colorScheme.primary,
        ),
        centerTitle: true,
        backgroundColor: colorScheme.surface,
        elevation: 1,
        iconTheme: IconThemeData(color: colorScheme.primary),
        actions: [DisclaimerInfoCategoriesButton()],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // --- 1. Select Specialty DropdownMenu ---
            Text(
              l10n.portfolioSectionSelectSpecialty,
              style: textTheme.titleMedium!.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            DropdownButtonFormField<String>(
              initialValue: kAvailableSpecialties.contains(_currentSpecialty)
                  ? _currentSpecialty
                  : l10n.portfolioNoSpecialtyData,
              decoration: InputDecoration(
                labelText: l10n.portfolioLabelSpecialty,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              items: kAvailableSpecialties.isEmpty
                  ? [
                      DropdownMenuItem<String>(
                        value: l10n.portfolioNoSpecialtyData,
                        child: Text(l10n.portfolioNoSpecialtyData),
                      ),
                    ]
                  // Map the available specialties
                  : kAvailableSpecialties.map((String specialty) {
                      return DropdownMenuItem<String>(
                        value: specialty,
                        child: Text(specialty),
                      );
                    }).toList(),
              onChanged: (String? newValue) {
                if (newValue != null &&
                    newValue != l10n.portfolioNoSpecialtyData) {
                  setState(() {
                    _currentSpecialty = newValue;
                    _selectedActivity =
                        null; // Reset selection when specialty changes
                  });
                }
              },
            ),
            const SizedBox(height: 24),

            // --- 2. Activity Autocomplete Search ---
            Text(
              l10n.specialtySearchHeader(_currentSpecialty),
              style: textTheme.titleMedium!.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),

            Autocomplete<PortfolioCategory>(
              displayStringForOption: (PortfolioCategory option) =>
                  option.description,

              optionsBuilder: (TextEditingValue textEditingValue) {
                final activities = _currentSpecialtyActivities;

                if (textEditingValue.text.isEmpty) {
                  return activities;
                }
                return activities.where((activity) {
                  return activity.description.toLowerCase().contains(
                    textEditingValue.text.toLowerCase(),
                  );
                });
              },

              onSelected: (PortfolioCategory selection) {
                setState(() {
                  _selectedActivity = selection;
                });
              },

              fieldViewBuilder:
                  (
                    BuildContext context,
                    TextEditingController textEditingController,
                    FocusNode focusNode,
                    VoidCallback onFieldSubmitted,
                  ) {
                    return TextFormField(
                      controller: textEditingController,
                      focusNode: focusNode,
                      onFieldSubmitted: (String value) {
                        onFieldSubmitted();
                      },
                      decoration: InputDecoration(
                        labelText: l10n.specialtySelectActivityHint,
                        hintText: l10n.specialtySearchHint,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        prefixIcon: IconButton(
                          onPressed: () {
                            textEditingController.clear();
                            setState(() {
                              _selectedActivity = null;
                            });
                          },
                          icon: const Icon(Icons.refresh),
                        ),
                        suffixIcon: const Icon(Icons.search),
                      ),
                    );
                  },

              optionsViewBuilder: (context, onSelected, options) {
                return Align(
                  alignment: Alignment.topLeft,
                  child: Material(
                    elevation: 4.0,
                    borderRadius: BorderRadius.circular(8.0),

                    color: colorScheme.surface,
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(
                        maxHeight: 200,
                        maxWidth: 500,
                      ),
                      child: ListView.builder(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        itemCount: options.length,
                        itemBuilder: (BuildContext context, int index) {
                          final PortfolioCategory option = options.elementAt(
                            index,
                          );
                          return ListTile(
                            title: Text(
                              option.description,
                              style: textTheme.bodyLarge,
                            ),
                            subtitle: Text(
                              '${l10n.portfolioTableMinUnits}: ${option.minRequiredAmount}',
                              style: textTheme.bodySmall,
                            ),
                            onTap: () => onSelected(option),
                          );
                        },
                      ),
                    ),
                  ),
                );
              },
            ),

            const SizedBox(height: 24),

            // --- 3. Selected Activity Details ---
            if (_selectedActivity != null)
              Card(
                elevation: 4,

                color: colorScheme.surfaceContainerHigh,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        l10n.specialtyDetailHeader,
                        style: textTheme.titleLarge!.copyWith(
                          fontWeight: FontWeight.w700,
                          color: colorScheme.primary,
                        ),
                      ),
                      Divider(height: 16, color: colorScheme.outlineVariant),

                      _buildDetailRow(
                        context,

                        '${l10n.portfolioTableActivityDescription}:',
                        _selectedActivity!.description,
                      ),
                      _buildDetailRow(
                        context,

                        '${l10n.portfolioTableID}:',
                        _selectedActivity!.id.toString(),
                      ),
                      _buildDetailRow(
                        context,

                        '${l10n.specialtyDetailPesoLabel}:',
                        _selectedActivity!.minRequiredAmount.toString(),
                      ),
                      _buildDetailRow(
                        context,

                        '${l10n.specialtyDetailDepartmentLabel}:',
                        _selectedActivity!.requiredDepartments.join(' | '),
                      ),
                    ],
                  ),
                ),
              )
            else
              Center(
                child: PortfolioTableSimple(
                  pianoFormativo: _currentSpecialtyActivities,
                  currentSpecialtyName: _currentSpecialty,
                  l10n: l10n,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
