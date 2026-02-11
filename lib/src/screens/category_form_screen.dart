// SPDX-License-Identifier: BSD-3-Clause
// Copyright (c) 2026 medlav
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:residency_portfolio/src/widgets/disclaimer_info_button.dart'
    show DisclaimerInfoCategoriesButton;
import 'package:residency_portfolio/src/models/portfolio_category.dart';
import 'package:residency_portfolio/src/providers/category_provider.dart';
import 'package:residency_portfolio/l10n/app_localizations.dart';

/// A form-based page used to create or edit a [PortfolioCategory].
///
/// If [category] is provided, the page initializes in "Edit Mode," pre-filling
/// existing data. Otherwise, it operates in "Create Mode."
///
/// This screen handles:
/// * **Input Validation**: Ensuring mandatory fields like 'Name' are populated.
/// * **Data Normalization**: Mapping localized strings to stable logic keys.
/// * **Department Parsing**: Converting comma-separated strings into a [List<String>].
class CategoryFormPage extends StatefulWidget {
  /// The optional category to edit. If null, a new category will be created.
  final PortfolioCategory? category;
  const CategoryFormPage({super.key, this.category});

  @override
  State<CategoryFormPage> createState() => _CategoryFormPageState();
}

class _CategoryFormPageState extends State<CategoryFormPage> {
  final _formKey = GlobalKey<FormState>();
  String _name = '';
  String _description = '';
  String _amountType = 'number';
  int _minRequiredAmount = 0;
  String _requiredDepartments = '';

  @override
  void initState() {
    super.initState();
    _name = widget.category?.name ?? '';
    _description = widget.category?.description ?? '';
    _amountType = _normalizeAmountType(widget.category?.amountType);
    _requiredDepartments =
        (widget.category?.requiredDepartments)?.join(', ') ?? '';
    _minRequiredAmount = widget.category?.minRequiredAmount ?? 0;
  }

  /// Normalizes database or legacy strings into standard logic keys.
  ///
  /// This ensures that regardless of whether a value was stored as "Numero",
  /// "Number", or "numero", the application logic consistently uses 'number'.
  ///
  /// Supported standard keys: `number`, `hours`, `credits`.
  String _normalizeAmountType(String? rawType) {
    final type = rawType?.toLowerCase() ?? 'number';

    const map = {
      'numero': 'number',
      'number': 'number',
      'ore': 'hours',
      'hours': 'hours',
      'crediti': 'credits',
      'credits': 'credits',
    };

    return map[type] ?? 'number';
  }

  InputDecoration _inputDecoration(String label, IconData icon) {
    return InputDecoration(
      labelText: label,
      border: const OutlineInputBorder(),
      prefixIcon: Icon(icon),
    );
  }

  void _showSnackBar(String message) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(message)));
  }

  /// Processes form submission and interacts with [CategoryProvider].
  ///
  /// This method performs the following:
  /// 1. Validates the [FormState].
  /// 2. Sanitizes the 'Required Departments' string into a trimmed list.
  /// 3. Dispatches either an [addCategory] or [updateCategory] call based on
  ///    the presence of [widget.category].
  /// 4. Pops the navigation stack upon success.
  Future<void> _submitForm(AppLocalizations l10n) async {
    if (!_formKey.currentState!.validate()) return;
    _formKey.currentState!.save();

    final List<String> departmentsList = _requiredDepartments
        .split(',')
        .map((e) => e.trim())
        .where((e) => e.isNotEmpty)
        .toList();

    final cat = PortfolioCategory(
      id: widget.category?.id ?? 0,
      name: _name,
      description: _description,
      amountType: _amountType,
      minRequiredAmount: _minRequiredAmount,
      requiredDepartments: departmentsList,
    );

    final provider = context.read<CategoryProvider>();
    final success = widget.category == null
        ? await provider.addCategory(cat)
        : await provider.updateCategory(cat);

    if (success && mounted) {
      _showSnackBar(
        widget.category == null
            ? l10n.categoryFormSuccessAdd
            : l10n.categoryFormSuccessUpdate,
      );
      Navigator.pop(context);
    }
  }

  /// Maps internal logic keys back to localized strings for display in the UI.
  String _getAmountTypeLabel(String type, AppLocalizations l10n) {
    switch (type) {
      case 'hours':
        return l10n.amountTypeHours;
      case 'credits':
        return l10n.amountTypeCredits;
      case 'number':
      default:
        return l10n.amountTypeNumber;
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final colorScheme = Theme.of(context).colorScheme;
    final isEditing = widget.category != null;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          isEditing ? l10n.categoryFormTitleEdit : l10n.categoryFormTitleAdd,
        ),
        centerTitle: true,
        backgroundColor: colorScheme.primaryContainer,
        titleTextStyle: Theme.of(
          context,
        ).textTheme.headlineSmall!.copyWith(color: colorScheme.primary),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: DisclaimerInfoCategoriesButton(),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                initialValue: _name,
                decoration: _inputDecoration(
                  l10n.categoryFormLabelName,
                  Icons.category,
                ),
                validator: (v) =>
                    v!.isEmpty ? l10n.categoryFormValidationNameRequired : null,
                onSaved: (v) => _name = v ?? '',
              ),
              const SizedBox(height: 16),
              DropdownButtonFormField<String>(
                initialValue: _amountType,
                decoration: _inputDecoration(
                  l10n.categoryFormLabelAmountType,
                  Icons.numbers,
                ),
                items: ['number', 'hours', 'credits'].map((String type) {
                  return DropdownMenuItem<String>(
                    value: type,
                    child: Text(_getAmountTypeLabel(type, l10n)),
                  );
                }).toList(),
                onChanged: (v) {
                  if (v != null) {
                    setState(() => _amountType = v);
                  }
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                initialValue: _minRequiredAmount == 0
                    ? ''
                    : _minRequiredAmount.toString(),
                keyboardType: TextInputType.number,
                decoration: _inputDecoration(
                  l10n.categoryFormLabelMinAmount,
                  Icons.assignment_turned_in,
                ),

                onSaved: (v) =>
                    _minRequiredAmount = int.tryParse(v ?? '0') ?? 0,
              ),
              const SizedBox(height: 16),
              TextFormField(
                initialValue: _requiredDepartments,
                decoration: _inputDecoration(
                  l10n.categoryFormLabelRequiredDepts,
                  Icons.business,
                ),
                onSaved: (v) => _requiredDepartments = v ?? '',
              ),
              const SizedBox(height: 16),
              TextFormField(
                initialValue: _description,
                maxLines: 3,
                decoration: _inputDecoration(
                  l10n.categoryFormLabelDescription,
                  Icons.description,
                ).copyWith(alignLabelWithHint: true),
                onSaved: (v) => _description = v ?? '',
              ),
              const SizedBox(height: 32),
              ElevatedButton.icon(
                onPressed: () => _submitForm(l10n),
                icon: Icon(isEditing ? Icons.save : Icons.add),
                label: Text(
                  isEditing
                      ? l10n.categoryFormButtonUpdate
                      : l10n.categoryFormButtonSave,
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: colorScheme.primary,
                  foregroundColor: colorScheme.onPrimary,
                  padding: const EdgeInsets.symmetric(vertical: 24),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
