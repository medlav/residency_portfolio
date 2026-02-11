// SPDX-License-Identifier: BSD-3-Clause
// Copyright (c) 2026 medlav

// TODO this whole page is a TODO
import 'package:flutter/material.dart';

class PortfolioSearchProvider extends ChangeNotifier {
  String _query = '';

  String get query => _query;

  void updateQuery(String newQuery) {
    if (_query != newQuery) {
      _query = newQuery;
      notifyListeners();
    }
  }

  void clearQuery() {
    updateQuery('');
  }
}
