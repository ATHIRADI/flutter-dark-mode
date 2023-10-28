import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  late bool _isDark;
  bool get isDark => _isDark;

  ThemeProvider() {
    _isDark = false;
  }

  set isDarkSetter(bool value) {
    _isDark = value;
    notifyListeners();
  }
}
