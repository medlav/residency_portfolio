// SPDX-License-Identifier: BSD-3-Clause
// Copyright (c) 2026 medlav

import 'package:flutter/foundation.dart' show kDebugMode;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';
import 'package:residency_portfolio/src/models/portfolio_category.dart';
import 'package:residency_portfolio/src/models/portfolio_entry.dart';
import 'package:residency_portfolio/src/providers/portfolio_provider.dart';
import 'package:residency_portfolio/src/providers/category_provider.dart';
import 'package:residency_portfolio/l10n/app_localizations.dart';

/// An editor screen for creating, updating, or duplicating clinical activity entries.
///
/// This screen provides a comprehensive form to capture all data points required
/// for a [PortfolioEntry]. It dynamically adjusts its UI and behavior based on
/// whether a null [entry] is passed (New Mode) or an existing one is provided (Edit Mode).
///
/// Features include:
/// * **Date Range Support**: Ability to pick a single date or a start/end range.
/// * **Validation**: Strict enforcement of required fields and logical credit amounts.
/// * **Duplication**: A "Copy" feature that pushes a new instance of the form
///   pre-filled with current data but without a unique ID.
/// * **Category Context**: Integration with [CategoryProvider] to display
///   specialty-specific requirements and descriptions.
class ActivityFormScreen extends StatefulWidget {
  /// The entry to edit, or null if creating a new record.
  final PortfolioEntry? entry;

  /// Creates an [ActivityFormScreen].
  const ActivityFormScreen({super.key, required this.entry});

  @override
  State<ActivityFormScreen> createState() => _ActivityFormScreenState();
}

class _ActivityFormScreenState extends State<ActivityFormScreen> {
  /// Global key identifying the [Form] for validation and saving.
  final _formKey = GlobalKey<FormState>();

  /// Local state: The name/title of the clinical activity.
  late String _name;

  /// Local state: The [PortfolioCategory] this activity belongs to.
  late PortfolioCategory _category;

  /// Local state: The numeric value (credits or hours) for the activity.
  late int _amount;

  /// Local state: The primary date or start date of the activity.
  late DateTime _date;

  /// Local state: The optional end date for multi-day activities.
  late DateTime? _dateEnd;

  /// Local state: Free-text notes or descriptions.
  late String _notes;

  /// Local state: The hospital or clinical site.
  late String _institution;

  /// Local state: A comma-separated string representation of departments.
  late String _departments;
  @override
  void initState() {
    super.initState();
    _name = widget.entry?.name ?? '';
    _amount = widget.entry?.amount ?? 0;
    _date = widget.entry?.date ?? DateTime.now();
    _dateEnd = widget.entry?.dateEnd;
    _notes = widget.entry?.notes ?? '';
    _category = widget.entry?.category ?? PortfolioCategory.defaultCategory();

    _institution = widget.entry?.institution ?? '';

    _departments = (widget.entry?.departments)?.join(', ') ?? '';
  }

  /// The earliest date selectable in the date picker (100 years ago).
  final DateTime kFirstSelectableDate = DateTime.now().subtract(
    const Duration(days: 365 * 100),
  );

  /// The latest date selectable in the date picker (100 years in the future).
  final DateTime kLastSelectableDate = DateTime.now().add(
    const Duration(days: 365 * 100),
  );

  /// Consolidated logic for triggering the native platform date picker.
  ///
  /// Enforces date logic where the [lastDate] defaults to [kLastSelectableDate]
  /// and ensures the UI stays synchronized with the selected [DateTime].
  Future<void> _selectDate({
    required BuildContext context,
    required DateTime initialDate,
    required DateTime firstDate,

    DateTime? lastDate,
    required Function(DateTime) onDateTimeSelected,
  }) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: initialDate,
      firstDate: firstDate,

      lastDate: lastDate ?? kLastSelectableDate,
    );
    if (picked != null && picked != initialDate) {
      onDateTimeSelected(picked);
    }
  }

  /// Generates a standardized [InputDecoration] for form fields.
  InputDecoration _inputDecoration(String label, IconData icon) {
    return InputDecoration(
      labelText: label,
      border: const OutlineInputBorder(),
      prefixIcon: Icon(icon),
    );
  }

  /// Displays a [SnackBar] with the provided [message].
  void _showSnackBar(String message) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(message)));
  }

  /// Utility for showing themed confirmation dialogs for destructive or major actions.
  void _showConfirmationDialog({
    required AppLocalizations l10n,
    required String title,
    required String content,
    required String confirmText,
    required VoidCallback onConfirm,
  }) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(content),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text(l10n.buttonCancel),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                onConfirm();
              },
              child: Text(confirmText),
            ),
          ],
        );
      },
    );
  }

  /// Acts as the "Single Source of Truth" for form data extraction.
  ///
  /// This helper validates the form state, saves current field values into
  /// local variables, and returns a populated [PortfolioEntry] object.
  /// Returns `null` if the form validation fails.
  PortfolioEntry? _getEntryFromForm() {
    if (!_formKey.currentState!.validate()) return null;
    _formKey.currentState!.save();

    final List<String> departmentsList = _departments
        .split(',')
        .map((e) => e.trim())
        .where((e) => e.isNotEmpty)
        .toList();

    return PortfolioEntry(
      id: widget.entry?.id,
      name: _name,
      category: _category,
      amount: _amount,
      date: _date,
      dateEnd: _dateEnd,
      notes: _notes,
      institution: _institution,
      departments: departmentsList,
    );
  }

  /// Persists the form data to the local database via [PortfolioProvider].
  ///
  /// Distinguishes between `updateEntry` (if ID exists) and `addEntry`.
  /// Provides snackbar feedback upon success or failure.
  void _submitForm(AppLocalizations l10n) {
    final entry = _getEntryFromForm();
    if (entry == null) return;

    final portfolio = context.read<PortfolioProvider>();

    final isActuallyEditing = entry.id != null;

    try {
      if (isActuallyEditing) {
        portfolio.updateEntry(entry);
        _showSnackBar(l10n.activityFormSuccessUpdate);
      } else {
        portfolio.addEntry(entry);
        _showSnackBar(l10n.activityFormSuccessAdd);
      }
      Navigator.of(context).pop();
    } catch (e) {
      if (kDebugMode) {
        debugPrint('Error: $e');
      }
      _showSnackBar('${l10n.activityFormErrorSave}$e');
    }
  }

  /// Creates a new [ActivityFormScreen] pre-populated with current values.
  ///
  /// The [id] is explicitly stripped (set to null) so the subsequent screen
  /// treats the data as a brand new entry, allowing residents to quickly
  /// log repetitive tasks.
  void _duplicateEntry(AppLocalizations l10n) {
    final currentData = _getEntryFromForm();
    if (currentData == null) return;

    final duplicatedEntry = PortfolioEntry(
      id: null,
      name: currentData.name,
      category: currentData.category,
      amount: currentData.amount,
      date: currentData.date,
      dateEnd: currentData.dateEnd,
      notes: currentData.notes,
      institution: currentData.institution,
      departments: currentData.departments,
    );

    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => ActivityFormScreen(entry: duplicatedEntry),
      ),
    );

    _showSnackBar(l10n.activityFormSuccessDuplicate);
  }

  /// Triggers a confirmation dialog before calling [_submitForm].
  void _confirmSubmit(AppLocalizations l10n) {
    final isActuallyEditing = widget.entry != null && widget.entry!.id != null;

    _showConfirmationDialog(
      l10n: l10n,
      title: isActuallyEditing
          ? l10n.dialogUpdateConfirmationTitle
          : l10n.dialogSaveConfirmationTitle,
      content: isActuallyEditing
          ? l10n.dialogUpdateConfirmationContent
          : l10n.dialogSaveConfirmationContent,
      confirmText: isActuallyEditing
          ? l10n.buttonConfirmUpdate
          : l10n.buttonConfirmSave,
      onConfirm: () => _submitForm(l10n),
    );
  }

  /// Triggers a confirmation dialog before deleting the current entry.
  void _confirmDelete(AppLocalizations l10n) {
    if (widget.entry == null) return;
    _showConfirmationDialog(
      l10n: l10n,
      title: l10n.dialogDeleteConfirmationTitle,
      content: l10n.dialogDeleteConfirmationContent,
      confirmText: l10n.delete,
      onConfirm: () {
        try {
          context.read<PortfolioProvider>().deleteEntry(widget.entry!.id!);
          _showSnackBar(l10n.deleteEntrySuccess);
          Navigator.of(context).pop();
        } catch (e) {
          if (kDebugMode) {
            debugPrint('Error: $e');
          }
          _showSnackBar('${l10n.deleteEntryError} $e');
        }
      },
    );
  }

  /// Displays an informational dialog explaining the current [PortfolioCategory].
  ///
  /// Useful for residents to verify if their activity meets the specific
  /// definitions of their specialty requirements.
  void _showDescriptionDialog(
    AppLocalizations l10n,
    PortfolioCategory category,
  ) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('${l10n.categoryDescriptionTitle}: ${category.name}'),
          content: SingleChildScrollView(
            child: Text(
              category.description.isNotEmpty
                  ? category.description
                  : l10n.categoryDescriptionEmpty,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text(l10n.buttonClose),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final availableCategories = context.watch<CategoryProvider>().categories;
    final isEditing = widget.entry != null && widget.entry!.id != null;

    if (availableCategories.isEmpty) {
      if (context.read<CategoryProvider>().isLoading) {
        return const Center(child: CircularProgressIndicator());
      }
      return Center(child: Text(l10n.portfolioNoCategoryError));
    }

    if (!availableCategories.any((cat) => cat.id == _category.id)) {
      _category = availableCategories.first;
    }

    /// A local UI helper to render consistent date-picking rows.
    Widget dateField({
      required String label,
      required DateTime dateValue,
      required VoidCallback onTap,
      Widget? trailing,
    }) {
      return Row(
        children: [
          Expanded(
            child: InkWell(
              onTap: onTap,
              child: InputDecorator(
                decoration: _inputDecoration(label, Icons.calendar_today),
                child: Text(
                  DateFormat.yMMMMEEEEd().format(dateValue),
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
            ),
          ),
          ?trailing,
        ],
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          isEditing ? l10n.activityFormTitleEdit : l10n.activityFormTitleAdd,
        ),
        titleTextStyle: Theme.of(context).textTheme.headlineSmall!.copyWith(
          color: Theme.of(context).colorScheme.primary,
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        actions: [
          isEditing
              ? Center(
                  child: IconButton(
                    tooltip: l10n.duplicateEntryTooltip,
                    icon: Icon(
                      Icons.copy,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    onPressed: () {
                      _duplicateEntry(l10n);
                    },
                  ),
                )
              : Center(),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TextFormField(
                initialValue: _name,
                decoration: _inputDecoration(
                  l10n.activityFormLabelName,
                  Icons.medical_services,
                ),
                validator: (value) => (value == null || value.isEmpty)
                    ? l10n.activityFormValidationNameRequired
                    : null,
                onSaved: (value) => _name = value!,
              ),
              const SizedBox(height: 16),

              DropdownButtonFormField<String>(
                isExpanded: true,
                menuMaxHeight: MediaQuery.sizeOf(context).height * 0.4,
                decoration:
                    _inputDecoration(
                      l10n.activityFormLabelCategory,
                      Icons.folder_open,
                    ).copyWith(
                      suffixIcon: IconButton(
                        icon: const Icon(Icons.info_outline),
                        tooltip: l10n.activityFormCategoryInfoTooltip,
                        onPressed: () {
                          _showDescriptionDialog(l10n, _category);
                        },
                      ),
                    ),
                initialValue: _category.name,
                selectedItemBuilder: (BuildContext context) {
                  return availableCategories.map<Widget>((c) {
                    return Text(
                      c.name,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      softWrap: true,
                    );
                  }).toList();
                },
                items: availableCategories
                    .map(
                      (c) => DropdownMenuItem<String>(
                        value: c.name,
                        child: Text(c.name, softWrap: true),
                      ),
                    )
                    .toList(),
                onChanged: (newValue) => newValue != null
                    ? setState(
                        () => _category = availableCategories.firstWhere(
                          (c) => c.name == newValue,
                        ),
                      )
                    : null,
                onSaved: (value) => _category = availableCategories.firstWhere(
                  (c) => c.name == value!,
                ),
              ),
              const SizedBox(height: 16),

              TextFormField(
                initialValue: _amount.toString(),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: false,
                ),
                decoration: _inputDecoration(
                  l10n.activityFormLabelCreditsHours,
                  Icons.timer,
                ),
                validator: (value) {
                  final parsed = int.tryParse(value ?? '');
                  if (parsed == null) {
                    return l10n.activityFormValidationCreditsInvalid;
                  }
                  if (parsed < 0) {
                    return l10n.activityFormValidationCreditsPositive;
                  }
                  return null;
                },
                onSaved: (value) => _amount = int.tryParse(value!) ?? 0,
              ),
              const SizedBox(height: 16),

              TextFormField(
                initialValue: _institution,
                decoration: _inputDecoration(
                  l10n.activityFormLabelInstitution,
                  Icons.business,
                ),
                validator: (value) => (value == null || value.isEmpty)
                    ? l10n.activityFormValidationInstitutionRequired
                    : null,
                onSaved: (value) => _institution = value!,
              ),
              const SizedBox(height: 16),

              TextFormField(
                initialValue: _departments,
                decoration: _inputDecoration(
                  l10n.activityFormLabelDepartments,
                  Icons.badge,
                ),
                onSaved: (value) => _departments = value ?? '',
              ),
              const SizedBox(height: 16),

              dateField(
                label: l10n.activityFormLabelDate,
                dateValue: _date,
                onTap: () => _selectDate(
                  context: context,
                  initialDate: _date,
                  firstDate: kFirstSelectableDate,
                  onDateTimeSelected: (picked) => setState(() {
                    _date = picked;
                    if (_dateEnd != null && _dateEnd!.isBefore(_date)) {
                      _dateEnd = _date;
                    }
                  }),
                ),
              ),
              const SizedBox(height: 16),

              dateField(
                label: l10n.activityFormLabelDateEnd,

                dateValue: _dateEnd ?? _date,
                onTap: () => _selectDate(
                  context: context,
                  initialDate: _dateEnd ?? _date,

                  firstDate: _date,

                  onDateTimeSelected: (picked) =>
                      setState(() => _dateEnd = picked),
                ),
                trailing: _dateEnd != null
                    ? Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: IconButton(
                          icon: const Icon(Icons.clear, color: Colors.red),
                          tooltip: l10n.activityFormButtonClearDate,
                          onPressed: () => setState(() => _dateEnd = null),
                        ),
                      )
                    : null,
              ),
              const SizedBox(height: 16),

              TextFormField(
                initialValue: _notes,
                maxLines: 4,
                decoration: _inputDecoration(
                  l10n.activityFormLabelNotes,
                  Icons.notes_outlined,
                ).copyWith(alignLabelWithHint: true),
                onSaved: (value) => _notes = value ?? '',
              ),
              const SizedBox(height: 32),

              ElevatedButton.icon(
                onPressed: () => _confirmSubmit(l10n),
                icon: Icon(isEditing ? Icons.save : Icons.add),
                label: Text(
                  isEditing
                      ? l10n.activityFormButtonSave
                      : l10n.activityFormButtonAdd,
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  foregroundColor: Theme.of(context).colorScheme.onPrimary,
                  padding: const EdgeInsets.symmetric(vertical: 32),
                ),
              ),

              if (isEditing) ...[
                const SizedBox(height: 16),

                ElevatedButton.icon(
                  onPressed: () => _confirmDelete(l10n),
                  icon: const Icon(Icons.delete_forever),
                  label: Text(l10n.buttonDeleteActivity),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).colorScheme.error,
                    foregroundColor: Theme.of(context).colorScheme.onError,
                    padding: const EdgeInsets.symmetric(vertical: 32),
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
