// SPDX-License-Identifier: BSD-3-Clause
// Copyright (c) 2026 medlav

import 'dart:async';
import 'package:flutter/foundation.dart' show compute;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:residency_portfolio/src/models/portfolio_entry.dart';
import 'package:residency_portfolio/src/models/portfolio_category.dart';
import 'package:residency_portfolio/src/providers/portfolio_search_provider.dart';
import 'package:residency_portfolio/src/services/specialties_data.dart';
import 'package:residency_portfolio/src/providers/profile_provider.dart';
import 'package:residency_portfolio/src/providers/portfolio_provider.dart';
import 'package:residency_portfolio/l10n/app_localizations.dart';
import 'package:residency_portfolio/src/widgets/drawer.dart';
import 'package:residency_portfolio/src/screens/homepage_screen.dart';
import 'package:residency_portfolio/src/widgets/portfolio_table.dart';
import 'package:residency_portfolio/src/screens/upcoming_activities_screen.dart';
import 'package:residency_portfolio/src/screens/ongoing_activities_screen.dart';
import 'package:residency_portfolio/src/screens/past_activities_screen.dart';

/// A record representing the data required to populate the curriculum portfolio table.
///
/// * [pianoFormativo]: The list of medical activity categories for the specialty.
/// * [currentSpecialtyName]: The name of the medical specialty currently being viewed.
typedef PortfolioTableData = ({
  List<PortfolioCategory> pianoFormativo,
  String currentSpecialtyName,
});

/// A tabbed screen that serves as the central hub for the user's medical portfolio.
///
/// Features a searchable interface across four distinct views: Past Activities,
/// the Curriculum Plan, Ongoing Activities, and Upcoming Programmed tasks.
class PortfolioScreen extends StatefulWidget {
  const PortfolioScreen({super.key});

  @override
  State<PortfolioScreen> createState() => _PortfolioScreenState();
}

/// The logic and state management for [PortfolioScreen].
///
/// Handles TabBar synchronization, debounced background searching via isolates,
/// and curriculum data retrieval based on the user's profile specialty.
class _PortfolioScreenState extends State<PortfolioScreen>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  late Future<PortfolioTableData> _curriculumPlanFuture;
  late Future<List<PortfolioEntry>> _portfolioEntriesFuture;

  final TextEditingController _autocompleteController = TextEditingController();
  PortfolioEntry? _selectedEntry;
  Timer? _debounceTimer;

  final ValueNotifier<List<PortfolioEntry>> _filteredOptions = ValueNotifier(
    [],
  );

  /// Asynchronously loads the curriculum plan for a specific medical specialty.
  ///
  /// Offloads the processing of raw specialty data to a background isolate
  /// using [compute] to keep the UI responsive.
  ///
  /// * [specialtyName]: The name of the specialty to look up.
  /// * Returns: A [Future] containing the formatted [PortfolioTableData].
  Future<PortfolioTableData> _loadCurriculumPlan(String specialtyName) async {
    final pianoFormativo = await compute(
      _getSpecialtyActivities,
      specialtyName,
    );
    return (
      pianoFormativo: pianoFormativo,
      currentSpecialtyName: specialtyName,
    );
  }

  /// Parses and sorts medical activities from raw global data.
  ///
  /// This is a static method intended to run within a background isolate.
  ///
  /// * [specialtyName]: The specialty key used for data lookup.
  /// * Returns: A sorted list of [PortfolioCategory] objects.
  static List<PortfolioCategory> _getSpecialtyActivities(String specialtyName) {
    final rawData = kAllSpecialtyData[specialtyName] ?? [];
    final activities = rawData
        .map((data) => PortfolioCategory.fromMap(data))
        .toList();
    activities.sort((a, b) => a.id.compareTo(b.id));
    return activities;
  }

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        context.read<PortfolioProvider>().getEntriesFuture();
      }
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final currentSpecialtyName = context
        .read<ProfileProvider>()
        .selectedSpecialty
        .name;

    _curriculumPlanFuture = _loadCurriculumPlan(currentSpecialtyName);

    _portfolioEntriesFuture = context
        .read<PortfolioProvider>()
        .getEntriesFuture();
  }

  @override
  void dispose() {
    _tabController.dispose();
    _autocompleteController.dispose();
    _debounceTimer?.cancel();
    _filteredOptions.dispose();
    super.dispose();
  }

  /// Logic to determine which tab index an entry belongs to based on its dates.
  ///
  /// * [entry]: The portfolio entry to evaluate.
  /// * Returns: An [int] index (0: Past, 2: Ongoing, 3: Upcoming).
  ///   Index 1 is reserved for the general Curriculum Plan.
  int _determineTabIndex(PortfolioEntry entry) {
    final now = DateTime.now().toUtc();
    final startDate = entry.date.toUtc();
    final endDate = entry.dateEnd?.toUtc();

    if (endDate == null) {
      return startDate.isBefore(now) ? 2 : 3;
    }

    if (endDate.isBefore(now)) return 0;
    if (startDate.isBefore(now) && endDate.isAfter(now)) {
      return 2;
    }
    if (startDate.isAfter(now)) return 3;

    return 2;
  }

  /// Handles the selection of a search result from the autocomplete field.
  ///
  /// Updates the UI state, clears focus, and animates the [TabController]
  /// to the appropriate date-based tab.
  ///
  /// * [providerContext]: The context for the search provider.
  /// * [selection]: The chosen [PortfolioEntry].
  void _onEntrySelected(
    BuildContext providerContext,
    PortfolioEntry selection,
  ) {
    FocusScope.of(providerContext).unfocus();

    setState(() {
      _selectedEntry = selection;
      _autocompleteController.text = selection.name;

      final targetIndex = _determineTabIndex(selection);
      _tabController.animateTo(targetIndex);

      providerContext.read<PortfolioSearchProvider>().updateQuery(
        selection.name,
      );
    });

    _filteredOptions.value = [];
  }

  /// Resets the search interface and clears active filters.
  ///
  /// * [providerContext]: The context for the search provider.
  /// * [textEditingController]: The controller for the autocomplete text field.
  void _clearSearch(
    BuildContext providerContext,
    TextEditingController textEditingController,
  ) {
    _autocompleteController.clear();
    textEditingController.clear();
    providerContext.read<PortfolioSearchProvider>().clearQuery();
    setState(() {
      _selectedEntry = null;
      _filteredOptions.value = [];
    });
    FocusScope.of(providerContext).unfocus();
  }

  /// Performs a complex string match search within a list of portfolio entries.
  ///
  /// This is a static method intended to run within a background isolate.
  /// It checks names, notes, institutions, departments, and category metadata.
  ///
  /// * [data]: A record containing the full list of entries and the search query.
  /// * Returns: A filtered list of matches.
  static List<PortfolioEntry> _runFilterOnIsolate(
    ({List<PortfolioEntry> entries, String query}) data,
  ) {
    final allEntries = data.entries;
    final query = data.query;

    if (query.isEmpty) return [];
    final lowerCaseQuery = query.toLowerCase();

    return allEntries.where((entry) {
      if (entry.name.toLowerCase().contains(lowerCaseQuery)) return true;
      if (entry.notes?.toLowerCase().contains(lowerCaseQuery) == true) {
        return true;
      }
      if (entry.institution?.toLowerCase().contains(lowerCaseQuery) == true) {
        return true;
      }
      if (entry.departments.any(
        (dept) => dept.toLowerCase().contains(lowerCaseQuery),
      )) {
        return true;
      }
      if (entry.category.name.toLowerCase().contains(lowerCaseQuery)) {
        return true;
      }
      if (entry.category.description.toLowerCase().contains(lowerCaseQuery)) {
        return true;
      }

      return false;
    }).toList();
  }

  /// Orchestrates the debounced search process.
  ///
  /// Cancels previous timers and spawns a background isolate to filter entries
  /// after a 300ms delay to prevent UI stutter during typing.
  ///
  /// * [query]: The user-inputted string to search for.
  void _searchWithDebounce(String query) async {
    _debounceTimer?.cancel();

    if (query.isEmpty) {
      _filteredOptions.value = [];
      if (mounted) _selectedEntry = null;
      return;
    }

    if (_selectedEntry != null && _selectedEntry!.name != query) {
      if (mounted) _selectedEntry = null;
    }

    _debounceTimer = Timer(const Duration(milliseconds: 300), () async {
      final allEntries = await _portfolioEntriesFuture;

      final filteredList = await compute(_runFilterOnIsolate, (
        entries: allEntries,
        query: query,
      ));

      if (mounted) {
        _filteredOptions.value = filteredList;
      }
    });
  }

  /// Builds the interactive autocomplete search bar located at the top of the screen.
  ///
  /// Manages the visual state of the search field, including loading indicators,
  /// clear buttons, and the dropdown suggestions list.
  ///
  /// * [providerContext]: The context associated with the [PortfolioSearchProvider].
  /// * [l10n]: The localization instance for search placeholders.
  /// * Returns: A [Widget] containing the themed autocomplete input.
  Widget _buildSearchBar(BuildContext providerContext, AppLocalizations l10n) {
    final theme = Theme.of(providerContext);
    final searchProvider = providerContext.read<PortfolioSearchProvider>();

    return FutureBuilder<List<PortfolioEntry>>(
      future: _portfolioEntriesFuture,
      builder: (context, snapshot) {
        if (!snapshot.hasData ||
            snapshot.connectionState == ConnectionState.waiting) {
          return Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 12.0,
            ),
            child: TextFormField(
              enabled: false,
              decoration: InputDecoration(
                hintText: l10n.searchPlaceholder,
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: theme.colorScheme.surfaceContainerHighest.withAlpha(
                  51,
                ),
              ),
            ),
          );
        }

        return ValueListenableBuilder<List<PortfolioEntry>>(
          valueListenable: _filteredOptions,
          builder: (context, currentOptions, child) {
            final currentQuery = _autocompleteController.text;
            final isClearable =
                currentQuery.isNotEmpty ||
                searchProvider.query.isNotEmpty ||
                _selectedEntry != null;

            return Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 12.0,
              ),
              child: Autocomplete<PortfolioEntry>(
                key: const ValueKey('PortfolioEntryAutocomplete'),
                displayStringForOption: (option) => option.name,

                optionsBuilder: (TextEditingValue textEditingValue) {
                  if (textEditingValue.text.isEmpty) {
                    return const Iterable<PortfolioEntry>.empty();
                  }
                  return currentOptions;
                },

                onSelected: (selection) =>
                    _onEntrySelected(providerContext, selection),

                fieldViewBuilder:
                    (
                      context,
                      textEditingController,
                      focusNode,
                      onFieldSubmitted,
                    ) {
                      return TextFormField(
                        controller: textEditingController,
                        focusNode: focusNode,
                        onFieldSubmitted: (_) =>
                            FocusScope.of(context).unfocus(),

                        onChanged: (value) {
                          textEditingController.value = textEditingController
                              .value
                              .copyWith(text: value);

                          _autocompleteController.text = value;
                          setState(() {});

                          _searchWithDebounce(value);
                        },

                        decoration: InputDecoration(
                          hintText: l10n.searchPlaceholder,
                          prefixIcon: const Icon(Icons.search),
                          suffixIcon: isClearable
                              ? IconButton(
                                  icon: Icon(
                                    Icons.clear,
                                    color: Theme.of(context).colorScheme.error,
                                  ),
                                  onPressed: () => _clearSearch(
                                    providerContext,
                                    textEditingController,
                                  ),
                                )
                              : null,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: BorderSide.none,
                          ),
                          filled: true,
                          fillColor: theme.colorScheme.surfaceContainerHighest
                              .withAlpha(51),
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 10.0,
                            horizontal: 20.0,
                          ),
                        ),
                      );
                    },

                optionsViewBuilder: (context, onSelected, options) {
                  return Align(
                    alignment: Alignment.topLeft,
                    child: Material(
                      elevation: 4.0,
                      borderRadius: BorderRadius.circular(8.0),
                      color: theme.colorScheme.surface,
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
                            final PortfolioEntry option = options.elementAt(
                              index,
                            );
                            return ListTile(
                              title: Text(
                                option.name,
                                style: theme.textTheme.bodyLarge,
                              ),
                              subtitle: Text(
                                option.category.name,
                                style: theme.textTheme.bodySmall,
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
            );
          },
        );
      },
    );
  }

  /// Builds the content for the Curriculum Plan tab.
  ///
  /// Uses a [FutureBuilder] to wait for the Curriculum data to be processed
  /// and then renders a [PortfolioTable].
  ///
  /// * [providerContext]: The context for accessing providers.
  /// * [l10n]: The localization instance for labels.
  /// * Returns: A scrollable column containing the curriculum header and table.
  Widget _buildPortfolioTabContent(
    BuildContext providerContext,
    AppLocalizations l10n,
  ) {
    return FutureBuilder<PortfolioTableData>(
      future: _curriculumPlanFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }
        if (snapshot.hasError) {
          return Center(
            child: Text('Error loading portfolio: ${snapshot.error}'),
          );
        }
        if (snapshot.hasData) {
          final data = snapshot.data!;
          final allActivities = data.pianoFormativo;

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  l10n.portfolioSectionCurriculum(data.currentSpecialtyName),
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Expanded(
                child: PortfolioTable(
                  pianoFormativo: allActivities,
                  currentSpecialtyName: data.currentSpecialtyName,
                  l10n: l10n,
                ),
              ),
            ],
          );
        }
        return Center(child: Text(l10n.noData));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final profileProvider = context.watch<ProfileProvider>();

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.portfolioTitle),
        titleTextStyle: Theme.of(context).textTheme.headlineSmall!.copyWith(
          color: Theme.of(context).colorScheme.primary,
        ),
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        elevation: 2,
        centerTitle: true,
        actions: [
          IconButton(
            tooltip: l10n.buttonHomepage,
            icon: Icon(
              Icons.home,
              color: Theme.of(context).colorScheme.primary,
            ),
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (_) => const Homepage()),
              );
            },
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          isScrollable: true,
          labelColor: Theme.of(context).colorScheme.primary,
          unselectedLabelColor: Theme.of(context).colorScheme.onSurfaceVariant,
          indicatorColor: Theme.of(context).colorScheme.primary,
          tabs: [
            Tab(text: l10n.portfolioTabCurrentCurriculum),
            Tab(text: l10n.portfolioTabResidencyPortfolio),
            Tab(text: l10n.portfolioTabOngoingActivities),
            Tab(text: l10n.portfolioTabToDoProgrammed),
          ],
        ),
        automaticallyImplyLeading: false,
        leading: Builder(
          builder: (innerContext) {
            return IconButton(
              icon: Icon(
                Icons.menu,
                color: Theme.of(context).colorScheme.primary,
              ),
              tooltip: l10n.drawerTooltip,
              onPressed: () => Scaffold.of(innerContext).openDrawer(),
            );
          },
        ),
      ),
      drawer: PortfolioDrawer(
        username: profileProvider.profile.name,
        email: profileProvider.profile.email,
      ),
      body: ChangeNotifierProvider(
        create: (_) => PortfolioSearchProvider(),
        child: Builder(
          builder: (providerContext) {
            final l10n = AppLocalizations.of(providerContext)!;
            return Column(
              children: [
                _buildSearchBar(providerContext, l10n),
                Expanded(
                  child: TabBarView(
                    controller: _tabController,
                    children: <Widget>[
                      const PastActivitiesScreen(),
                      _buildPortfolioTabContent(providerContext, l10n),
                      const OngoingActivitiesScreen(),
                      const UpcomingActivitiesScreen(),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
