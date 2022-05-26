import 'package:flutter/material.dart';

class AppThemeController extends ChangeNotifier {
  static AppThemeController instance = AppThemeController();

  bool is_dark_theme = false;

  change_theme() {
    is_dark_theme = !is_dark_theme;
    notifyListeners();
  }
}
