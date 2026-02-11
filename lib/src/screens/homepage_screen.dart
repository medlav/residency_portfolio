// SPDX-License-Identifier: BSD-3-Clause
// Copyright (c) 2026 medlav

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:residency_portfolio/src/models/portfolio_entry.dart';

import 'package:residency_portfolio/src/providers/portfolio_provider.dart';
import 'package:residency_portfolio/src/providers/profile_provider.dart';

import 'package:residency_portfolio/src/screens/activity_list_screen.dart';
import 'package:residency_portfolio/src/screens/activity_form_screen.dart';
import 'package:residency_portfolio/src/screens/portfolio_screen.dart';
import 'package:residency_portfolio/src/widgets/drawer.dart';

import 'package:residency_portfolio/l10n/app_localizations.dart';

/// A utility class for aggregating [PortfolioEntry] metrics.
///
/// Use this class to perform quick calculations on the data set, such as
/// counting entries by specific hardcoded categories like 'Procedure' or 'Exam'.
class PortfolioStats {
  /// Returns the string representation of the count of entries matching [category].
  static String countByCategory(List<PortfolioEntry> entries, String category) {
    return entries.where((e) => e.category.name == category).length.toString();
  }
}

/// The main screen of the application.
///
/// The [Homepage] provides a high-level overview of the resident's progress,
/// displaying key metrics (Procedures, Exams, Credits) and providing quick-access
/// buttons for logging new activities.
///
/// It coordinates state from:
/// * [ProfileProvider]: For personalized welcome messages and user identification.
/// * [PortfolioProvider]: For real-time statistics and entry counts.
class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).colorScheme.primary;
    final l10n = AppLocalizations.of(context)!;
    final profileProvider = context.watch<ProfileProvider>();

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.appTitle),
        titleTextStyle: Theme.of(context).textTheme.headlineSmall!.copyWith(
          color: Theme.of(context).colorScheme.primary,
        ),
        centerTitle: true,
        elevation: 4,
        backgroundColor: Colors.transparent,
        toolbarHeight: 80,

        actions: [
          Center(
            child: IconButton(
              tooltip: l10n.settingsPortfolioSubtitle,
              icon: Icon(
                Icons.assignment_ind,
                color: Theme.of(context).colorScheme.primary,
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const PortfolioScreen(),
                  ),
                );
              },
            ),
          ),
        ],
        automaticallyImplyLeading: false,

        leading: Builder(
          builder: (BuildContext innerContext) {
            return IconButton(
              icon: Icon(Icons.menu, color: primaryColor),

              tooltip: l10n.drawerTooltip,
              onPressed: () {
                Scaffold.of(innerContext).openDrawer();
              },
            );
          },
        ),
      ),

      drawer: PortfolioDrawer(
        username: profileProvider.profile.name,
        email: profileProvider.profile.email,
      ),

      body: SafeArea(
        child: Consumer<PortfolioProvider>(
          builder: (context, portfolioProvider, child) {
            final entries = portfolioProvider.entries;
            final proceduresCount = PortfolioStats.countByCategory(
              entries,
              'Procedure',
            );
            final examsCount = PortfolioStats.countByCategory(entries, 'Exam');
            final totalCredits = portfolioProvider.totalCredits.toStringAsFixed(
              1,
            );

            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      l10n.welcomeMessage(profileProvider.profile.name),
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: primaryColor,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      l10n.progressSubtitle,
                      style: TextStyle(fontSize: 18, color: primaryColor),
                    ),
                    const SizedBox(height: 40),

                    Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            _buildStatItem(
                              l10n.statProcedures,
                              proceduresCount,
                              Icons.assignment_outlined,
                              primaryColor,
                            ),
                            _buildStatItem(
                              l10n.statExams,
                              examsCount,
                              Icons.school_outlined,
                              primaryColor,
                            ),
                            _buildStatItem(
                              l10n.statCredits,
                              totalCredits,
                              Icons.battery_4_bar_outlined,
                              primaryColor,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 60),

                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton.icon(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const ActivityListScreen(),
                            ),
                          );
                        },
                        icon: const Icon(Icons.list_alt, size: 28),
                        label: Text(
                          l10n.buttonViewActivities,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: primaryColor,
                          foregroundColor: Theme.of(
                            context,
                          ).colorScheme.onPrimary,
                          padding: const EdgeInsets.symmetric(vertical: 15),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),

                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton.icon(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) =>
                                  const ActivityFormScreen(entry: null),
                            ),
                          );
                        },
                        icon: const Icon(Icons.add_circle_outline, size: 24),
                        label: Text(
                          l10n.buttonLogActivity,
                          style: const TextStyle(fontSize: 16),
                        ),
                        style: OutlinedButton.styleFrom(
                          foregroundColor: primaryColor,
                          side: BorderSide(color: primaryColor, width: 2),
                          padding: const EdgeInsets.symmetric(vertical: 15),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  /// Builds a vertical stat widget comprising an icon, a value, and a label.
  ///
  /// The [color] is slightly desaturated using [withAlpha] for a consistent
  /// Material design aesthetic within the stats card.
  Widget _buildStatItem(
    String title,
    String value,
    IconData icon,
    Color color,
  ) {
    var primaryColor = color.withAlpha(204);
    return Column(
      children: [
        Icon(icon, size: 30, color: primaryColor),
        const SizedBox(height: 8),
        Text(
          value,
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w800,
            color: primaryColor,
          ),
        ),

        Text(title, style: TextStyle(fontSize: 12, color: primaryColor)),
      ],
    );
  }
}
