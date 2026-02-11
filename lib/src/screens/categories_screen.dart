// SPDX-License-Identifier: BSD-3-Clause
// Copyright (c) 2026 medlav

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:residency_portfolio/src/providers/profile_provider.dart'
    show ProfileProvider;
import 'package:residency_portfolio/l10n/app_localizations.dart';
import 'package:residency_portfolio/src/providers/category_provider.dart';
import 'package:residency_portfolio/src/models/portfolio_category.dart';
import 'package:residency_portfolio/src/screens/category_form_screen.dart';

/// A management screen that lists, edits, and resets portfolio categories.
///
/// This screen provides a centralized interface for users to customize the
/// activity types (e.g., Surgery, Research, Outpatient) available in their portfolio.
///
/// Key Capabilities:
/// * **CRUD Operations**: Access to add, edit, or delete [PortfolioCategory] instances.
/// * **Reset to Defaults**: Reverts the category list to the standard requirements
///   defined by the resident's specific medical specialty via [CategoryProvider].
/// * **State Handling**: Displays distinct UIs for loading, error, and empty states.
class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  /// Displays a destructive confirmation dialog before resetting categories.
  ///
  /// This retrieves the user's specialty from [ProfileProvider] to ensure the
  /// default categories match their specific residency track.
  void _showResetConfirmation(BuildContext context, AppLocalizations l10n) {
    final profile = context.read<ProfileProvider>().profile;
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(l10n.categoryResetTitle),
        content: Text(l10n.categoryResetMessage),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: Text(l10n.buttonCancel),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Theme.of(context).colorScheme.error,
              foregroundColor: Theme.of(context).colorScheme.onError,
            ),
            onPressed: () {
              context.read<CategoryProvider>().resetToDefaults(
                profile.specialty.name,
              );
              Navigator.pop(ctx);
            },
            child: Text(l10n.categoryResetButton),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final l10n = AppLocalizations.of(context)!;

    final categoryProvider = context.watch<CategoryProvider>();

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.settingsCategoriesTitle),
        titleTextStyle: textTheme.headlineSmall!.copyWith(
          color: colorScheme.primary,
        ),
        centerTitle: true,
        backgroundColor: colorScheme.primaryContainer,
        elevation: 1,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 5.0),
            child: PopupMenuButton<String>(
              icon: const Icon(Icons.more_vert),
              tooltip: l10n.menuTooltip,
              onSelected: (value) {
                switch (value) {
                  case 'add':
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const CategoryFormPage(),
                      ),
                    );
                    break;
                  case 'reset':
                    _showResetConfirmation(context, l10n);
                    break;
                }
              },
              itemBuilder: (BuildContext context) => [
                PopupMenuItem(
                  value: 'add',
                  child: ListTile(
                    leading: const Icon(Icons.add),
                    title: Text(l10n.categoryFormTitleAdd),
                    dense: true,
                  ),
                ),
                const PopupMenuDivider(),
                PopupMenuItem(
                  value: 'reset',
                  child: ListTile(
                    leading: Icon(Icons.restore, color: colorScheme.error),
                    title: Text(
                      l10n.categoryResetTooltip,
                      style: TextStyle(color: colorScheme.error),
                    ),
                    contentPadding: EdgeInsets.zero,
                    dense: true,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: categoryProvider.isLoading
          ? const Center(child: CircularProgressIndicator())
          : categoryProvider.errorMessage != null
          ? Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  l10n.errorLoadingCategories(categoryProvider.errorMessage!),
                  textAlign: TextAlign.center,
                  style: textTheme.titleMedium!.copyWith(
                    color: colorScheme.error,
                  ),
                ),
              ),
            )
          : categoryProvider.categories.isEmpty
          ? Center(child: Text(l10n.noCategoriesAvailable))
          : ListView.builder(
              itemCount: categoryProvider.categories.length,
              itemBuilder: (context, index) {
                final category = categoryProvider.categories[index];
                return _CategoryExpansionTile(
                  category: category,
                  l10n: l10n,
                  colorScheme: colorScheme,
                  textTheme: textTheme,
                  categoryProvider: categoryProvider,
                );
              },
            ),
    );
  }
}

/// A specialized widget that renders category details in a collapsible card.
///
/// The [_CategoryExpansionTile] provides a summary view (Name, ID, Unit) and
/// expands to reveal the full description and management actions (Edit/Delete).
///
/// It uses [ExpansionTile] to keep the list scannable while allowing deep
/// dives into specific category requirements.
class _CategoryExpansionTile extends StatelessWidget {
  /// The specific category data to display.
  final PortfolioCategory category;

  /// Localization delegates for internationalized text.
  final AppLocalizations l10n;

  /// The active theme's color scheme for consistent styling.
  final ColorScheme colorScheme;

  /// The active theme's text style definitions.
  final TextTheme textTheme;

  /// The provider used to dispatch deletion or update events.
  final CategoryProvider categoryProvider;

  const _CategoryExpansionTile({
    required this.category,
    required this.l10n,
    required this.colorScheme,
    required this.textTheme,
    required this.categoryProvider,
  });

  /// Prompts the user to confirm the permanent removal of a category.
  void _showDeleteDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(l10n.delete),
        content: Text(l10n.categoryDeleteConfirmation(category.name)),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: Text(l10n.buttonCancel),
          ),
          TextButton(
            onPressed: () async {
              Navigator.pop(ctx);
              await categoryProvider.deleteCategory(category.id);
            },
            child: Text(
              l10n.delete,
              style: TextStyle(color: colorScheme.error),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: ExpansionTile(
        initiallyExpanded: false,
        backgroundColor: colorScheme.primaryContainer.withAlpha(50),
        title: Text(
          category.name,
          style: textTheme.titleMedium!.copyWith(
            fontWeight: FontWeight.bold,
            color: colorScheme.onSurface,
          ),
        ),
        subtitle: Text(
          '${l10n.categoryLabelId}: ${category.id} • ${l10n.categoryLabelUnit}: ${category.amountType}',
          style: textTheme.bodySmall!.copyWith(color: colorScheme.secondary),
        ),
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              left: 16,
              right: 16,
              bottom: 8,
              top: 8,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  l10n.categoryDescriptionLabel,
                  style: textTheme.labelLarge!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  category.description.isNotEmpty
                      ? category.description
                      : l10n.noDescriptionProvided,
                  style: textTheme.bodyMedium,
                ),
                const SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton.icon(
                      icon: const Icon(Icons.edit),
                      label: Text(l10n.edit),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) =>
                                CategoryFormPage(category: category),
                          ),
                        );
                      },
                    ),
                    const SizedBox(width: 8),
                    TextButton.icon(
                      icon: const Icon(Icons.delete_forever),
                      label: Text(l10n.delete),
                      style: TextButton.styleFrom(
                        foregroundColor: colorScheme.error,
                      ),
                      onPressed: () {
                        _showDeleteDialog(context);
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
