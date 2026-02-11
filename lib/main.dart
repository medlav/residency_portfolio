// SPDX-License-Identifier: BSD-3-Clause
// Copyright (c) 2026 medlav
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:sqflite/sqflite.dart';
import 'package:sqflite_common_ffi_web/sqflite_ffi_web.dart';
import 'dart:async';

import 'package:residency_portfolio/src/providers/portfolio_search_provider.dart';
import 'package:residency_portfolio/src/screens/splash_screen.dart'
    show SplashScreen;
import 'package:residency_portfolio/src/providers/portfolio_provider.dart';
import 'package:residency_portfolio/src/providers/profile_provider.dart';
import 'package:residency_portfolio/src/providers/settings_provider.dart';
import 'package:residency_portfolio/src/providers/category_provider.dart';
import 'package:residency_portfolio/src/screens/homepage_screen.dart';
import 'package:residency_portfolio/l10n/app_localizations.dart';

/// The main entry point for the Portfolio application.
///
/// This function executes the following startup sequence:
/// 1. **Framework Initialization**: Ensures [WidgetsFlutterBinding] is ready.
/// 2. **Platform Configuration**: Sets up the [databaseFactory] specifically for Web
///    environments using FFI.
/// 3. **Dependency Injection**: Initializes global state using [MultiProvider].
///    * Note: [CategoryProvider] is reactive and depends on [ProfileProvider]
///      to reload data whenever the user's specialty changes.
/// 4. **UI Launch**: Mounts the [PortfolioApp] widget tree.
void main() {
  WidgetsFlutterBinding.ensureInitialized();

  if (kIsWeb) {
    databaseFactory = databaseFactoryFfiWeb;
  }

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => PortfolioProvider()),
        ChangeNotifierProvider(create: (_) => ProfileProvider()),
        ChangeNotifierProvider(create: (_) => SettingsProvider()),

        ChangeNotifierProvider(create: (_) => PortfolioSearchProvider()),
        ChangeNotifierProxyProvider<ProfileProvider, CategoryProvider>(
          create: (context) => CategoryProvider(),
          update: (context, profileProvider, categoryProvider) {
            // This ensures that whenever the profile (and specialty) changes,
            // the categories are reloaded automatically.
            categoryProvider!.loadCategories(
              profileProvider.selectedSpecialty.name,
            );
            return categoryProvider;
          },
        ),
      ],
      child: const PortfolioApp(),
    ),
  );
}

/// The root widget of the application.
///
/// Configures global themes, localizations, and coordinates the
/// initial data loading sequence via [SplashScreen].
class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  /// Builds the light theme configuration for the application.
  ThemeData _buildLightTheme(Color primaryColor) {
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
      useMaterial3: true,
      fontFamily: 'Roboto',
      appBarTheme: const AppBarTheme(
        elevation: 0,
        titleTextStyle: TextStyle(
          color: Colors.black87,
          fontSize: 22,
          fontWeight: FontWeight.w700,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          textStyle: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  /// Builds the dark theme configuration for the application.
  ThemeData _buildDarkTheme(Color primaryColor) {
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(
        seedColor: primaryColor,
        brightness: Brightness.dark,
      ),
      useMaterial3: true,
      fontFamily: 'Roboto',
      appBarTheme: const AppBarTheme(
        elevation: 0,
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 22,
          fontWeight: FontWeight.w700,
        ),
        backgroundColor: Color(0xFF1F1F1F),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          textStyle: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  /// Aggregates asynchronous initialization tasks required for app stability.
  ///
  /// This method ensures [SettingsProvider] and [PortfolioProvider] data
  /// are fetched before the user proceeds.
  ///
  /// Note: [CategoryProvider] is omitted here as it is managed reactively
  /// via ProxyProvider in 'main.dart'.
  Future<void> _initializeAppData(BuildContext context) async {
    // Note: To prevent a "setState during build" error, avoid notifying
    // listeners in the providers' constructors. Instead, this explicit call
    // manages the initialization lifecycle safely.
    await Future.wait([
      context.read<SettingsProvider>().loadSettings(),
      // context.read<CategoryProvider>().loadCategories(), TODO if there are UX/performance issue: create a loadEntriesFuture function
      context.read<PortfolioProvider>().getEntriesFuture(),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<SettingsProvider>(
      builder: (context, settings, child) {
        final primaryColor = Colors.indigo.shade700;

        return MaterialApp(
          theme: _buildLightTheme(primaryColor),
          darkTheme: _buildDarkTheme(primaryColor),
          themeMode: settings.themeMode,
          locale: settings.appLocale,
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          title: "R Portfolio App",
          debugShowCheckedModeBanner: false,
          home: InitializationGate(onInit: () => _initializeAppData(context)),
        );
      },
    );
  }
}

/// A gatekeeper widget that manages the app's initialization lifecycle.
///
/// It displays a [SplashScreen] while executing the [onInit] logic and
/// performs a smooth transition to the [Homepage] once complete.
class InitializationGate extends StatefulWidget {
  /// The asynchronous initialization logic to execute.
  final Future<void> Function() onInit;

  const InitializationGate({super.key, required this.onInit});

  @override
  State<InitializationGate> createState() => _InitializationGateState();
}

class _InitializationGateState extends State<InitializationGate> {
  /// Manages the state of the initialization process.
  final Completer<void> _initCompleter = Completer<void>();

  @override
  void initState() {
    super.initState();

    /// Executes the initialization AFTER the first frame is rendered.
    /// This prevents 'setState during build' errors from providers.
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      try {
        await widget.onInit();
        if (mounted && !_initCompleter.isCompleted) {
          _initCompleter.complete();
        }
      } catch (error) {
        debugPrint('Initialization Error: $error');
        if (mounted && !_initCompleter.isCompleted) {
          _initCompleter.completeError(error);
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<void>(
      future: _initCompleter.future,
      builder: (context, snapshot) {
        // We use AnimatedSwitcher for a professional 'fade' transition
        return AnimatedSwitcher(
          duration: const Duration(milliseconds: 600),
          child: _buildCurrentScreen(snapshot),
        );
      },
    );
  }

  /// Determines which screen to show based on the [snapshot] state.
  Widget _buildCurrentScreen(AsyncSnapshot<void> snapshot) {
    if (snapshot.connectionState == ConnectionState.done) {
      if (snapshot.hasError) {
        return _buildErrorScreen(snapshot.error);
      }
      return const Homepage(key: ValueKey('homepage'));
    }

    // Default state: Loading
    return const SplashScreen(key: ValueKey('splash'));
  }

  /// Simple fallback UI in case the Database or Settings fail to load.
  Widget _buildErrorScreen(Object? error) {
    return Scaffold(body: Center(child: Text('Critical Load Error: $error')));
  }
}
