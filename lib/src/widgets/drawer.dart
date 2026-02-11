// SPDX-License-Identifier: BSD-3-Clause
// Copyright (c) 2026 medlav
import 'dart:io' show File;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart' show WatchContext;
import 'package:residency_portfolio/src/screens/activity_list_screen.dart';
import 'package:residency_portfolio/src/screens/curriculum_screen.dart'
    show CurriculumScreen;
import 'package:residency_portfolio/src/screens/homepage_screen.dart';
import 'package:residency_portfolio/src/version.dart';
import 'package:residency_portfolio/src/screens/portfolio_screen.dart';
import 'package:residency_portfolio/src/screens/profile_screen.dart';
import 'package:residency_portfolio/src/screens/settings_screen.dart';
import 'package:residency_portfolio/src/screens/info_screen.dart';
import 'package:residency_portfolio/l10n/app_localizations.dart';
import 'package:residency_portfolio/src/providers/profile_provider.dart';

/// A primary navigation sidebar for the application.
///
/// The [PortfolioDrawer] displays user identification in the header and provides
/// access to the main functional areas of the app (Profile, Portfolio, Activities, etc.).
///
/// **Data Priority:**
/// It reactively watches [ProfileProvider]. If profile data is present in the
/// provider, it takes precedence over the optional [username], [email], and
/// [imagePath] parameters passed to the constructor.
class PortfolioDrawer extends StatelessWidget {
  /// Fallback display name if [ProfileProvider] is empty is an empty string ''.
  final String username;

  /// Fallback email address if [ProfileProvider] is empty is an empty string ''.
  final String email;
  final String? imagePath;

  /// Path to a local file or network URL for the user's avatar.
  const PortfolioDrawer({
    super.key,
    this.username = '',
    this.email = '',
    this.imagePath,
  });

  /// Generates a styled [ListTile] for drawer navigation.
  ///
  /// Uses the current theme's primary color for icons and text to maintain
  /// visual consistency across the navigation list.
  Widget _createDrawerTile({
    required BuildContext context,
    required String title,
    required IconData icon,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Icon(icon, color: Theme.of(context).colorScheme.primary),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 16.0,
          color: Theme.of(context).colorScheme.primary,
          fontWeight: FontWeight.w500,
        ),
      ),
      onTap: onTap,
      hoverColor: Theme.of(context).colorScheme.inversePrimary,
    );
  }

  /// Extracts up to two initials from a [name] string.
  ///
  /// Example: "John Doe" -> "JD", "Single" -> "S".
  /// Defaults to 'A' if the name is empty.
  String _getInitials(String name) {
    if (name.isEmpty) return 'A';
    final parts = name.trim().split(' ');
    if (parts.length >= 2) {
      return (parts[0][0] + parts[1][0]).toUpperCase();
    }
    return parts[0][0].toUpperCase();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final profile = context.watch<ProfileProvider>().profile;

    final displayUsername = profile.name.isNotEmpty ? profile.name : username;
    final displayEmail = profile.email.isNotEmpty ? profile.email : email;
    final displayImagePath = profile.imagePath ?? imagePath;

    final fallbackUsername = username.isEmpty ? l10n.appTitle : username;

    return Drawer(
      child: Column(
        children: <Widget>[
          // 1. Profile Header
          UserAccountsDrawerHeader(
            accountName: Text(
              displayUsername.isNotEmpty
                  ? l10n.welcomeMessage(displayUsername)
                  : l10n.appTitle,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
            ),
            accountEmail: Text(
              displayEmail,
              style: TextStyle(
                fontSize: 14.0,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
            ),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Theme.of(context).colorScheme.inversePrimary,
              backgroundImage:
                  displayImagePath != null && displayImagePath.isNotEmpty
                  ? FileImage(File(displayImagePath))
                  : null,
              child: (displayImagePath == null || displayImagePath.isEmpty)
                  ? ClipOval(
                      child:
                          (displayImagePath != null &&
                              displayImagePath.isNotEmpty)
                          ? Image.network(
                              displayImagePath,
                              fit: BoxFit.cover,
                              width: 90,
                              height: 90,
                              errorBuilder: (context, error, stackTrace) =>
                                  Text(
                                    _getInitials(fallbackUsername),
                                    style: TextStyle(
                                      fontSize: 28.0,
                                      color: Theme.of(
                                        context,
                                      ).colorScheme.primary,
                                    ),
                                  ),
                            )
                          : Text(
                              _getInitials(fallbackUsername),
                              style: TextStyle(
                                fontSize: 28.0,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                            ),
                    )
                  : null,
            ),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Theme.of(context).colorScheme.primary,
                  Theme.of(context).colorScheme.primaryContainer,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),

          // 2. Primary Navigation Tiles
          Expanded(
            child: ListView(
              physics: const ClampingScrollPhysics(),
              padding: EdgeInsets.zero,
              children: <Widget>[
                _createDrawerTile(
                  context: context,
                  title: l10n.buttonHomepage,
                  icon: Icons.home_outlined,
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const Homepage()),
                    );
                  },
                ),
                _createDrawerTile(
                  context: context,
                  title: l10n.drawerProfile,
                  icon: Icons.person_outline,
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const ProfileScreen(),
                      ),
                    );
                  },
                ),
                _createDrawerTile(
                  context: context,
                  title: l10n.drawerPortfolio,
                  icon: Icons.analytics_outlined,
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const PortfolioScreen(),
                      ),
                    );
                  },
                ),
                _createDrawerTile(
                  context: context,
                  title: l10n.drawerActivities,
                  icon: Icons.timeline,
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const ActivityListScreen(),
                      ),
                    );
                  },
                ),
                _createDrawerTile(
                  context: context,
                  title: l10n.drawerCurriculum,
                  icon: Icons.library_books_outlined,
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const CurriculumScreen(),
                      ),
                    );
                  },
                ),
                _createDrawerTile(
                  context: context,
                  title: l10n.drawerSettings,
                  icon: Icons.settings_outlined,
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const SettingsScreen(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),

          // 3. Divider and Footer Section
          const Divider(height: 1.0, color: Colors.grey),

          _createDrawerTile(
            context: context,
            title: l10n.drawerInfo,
            icon: Icons.info_outline,
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const InfoScreen()),
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 12.0, top: 8.0),
            child: Text(
              l10n.drawerVersion(CURRENT_VERSION),
              style: const TextStyle(fontSize: 12.0, color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}
