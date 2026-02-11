// SPDX-License-Identifier: BSD-3-Clause
// Copyright (c) 2026 medlav

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// A state management provider for application-wide configurations.
///
/// This provider handles user preferences regarding the visual theme (Light/Dark mode)
/// and the localization settings. It ensures these preferences are persisted
/// across application restarts using `SharedPreferences`.
class SettingsProvider with ChangeNotifier {
  /// The current visual theme mode of the application.
  ThemeMode _themeMode = ThemeMode.light;

  /// The current locale used for internationalization and localization.
  Locale _appLocale = const Locale('en');

  /// A list of languages officially supported by the application.
  final List<Locale> supportedLocales = const [Locale('en'), Locale('it')];

  /// Key used for persisting the language code in local storage.
  static const String _localeKey = 'app_locale';

  /// Key used for persisting the theme preference in local storage.
  static const String _themeKey = 'app_theme';

  /// Returns the current [ThemeMode].
  ThemeMode get themeMode => _themeMode;

  /// Returns the current [Locale].
  Locale get appLocale => _appLocale;

  /// Indicates whether the application is currently using dark mode.
  bool get isDarkMode => _themeMode == ThemeMode.dark;

  /// Initializes the provider and triggers the retrieval of saved preferences.
  SettingsProvider() {
    loadSettings();
  }

  /// Retrieves and applies saved settings from [SharedPreferences].
  ///
  /// Falls back to default values (Light mode, English locale) if no
  /// persisted data is found. Once data is fetched, it notifies all listeners.
  Future<void> loadSettings() async {
    final prefs = await SharedPreferences.getInstance();

    final String? themeString = prefs.getString(_themeKey);
    _themeMode = (themeString == 'dark') ? ThemeMode.dark : ThemeMode.light;

    final String? localeCode = prefs.getString(_localeKey);
    _appLocale = (localeCode == 'it') ? const Locale('it') : const Locale('en');

    notifyListeners();
  }

  /// Updates the application's [ThemeMode] and persists the choice.
  ///
  /// * [newMode]: The target theme mode to be applied.
  ///
  /// Only triggers an update and notification if the [newMode] is different
  /// from the current state.
  Future<void> setThemeMode(ThemeMode newMode) async {
    if (_themeMode == newMode) return;

    _themeMode = newMode;

    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(
      _themeKey,
      (newMode == ThemeMode.dark) ? 'dark' : 'light',
    );

    notifyListeners();
  }

  /// Updates the application's [Locale] and persists the choice.
  ///
  /// * [newLocale]: The target locale to be applied.
  ///
  /// Saves the language code to local storage and updates the UI by
  /// notifying listeners.
  Future<void> setLocale(Locale newLocale) async {
    if (_appLocale == newLocale) return;

    _appLocale = newLocale;

    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_localeKey, newLocale.languageCode);

    notifyListeners();
  }
}
