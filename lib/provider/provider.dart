import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class StatusProvider extends ChangeNotifier {    
  ThemeMode _themeMode = ThemeMode.system;
  ThemeMode get themeMode => _themeMode;
  bool get isDarkModeActive => _themeMode == ThemeMode.dark;

   String get theme {
    switch (_themeMode) {
      case ThemeMode.system:
        return "System";
      case ThemeMode.light:
        return "Light";
      case ThemeMode.dark:
        return "Dark";
      default:
        return "Unknown";
    }
  }

  void changeTheme(ThemeMode themeMode) {
    _themeMode = themeMode;
    notifyListeners();
  }
  
  bool _status = false;
  int _currentIndex = 0;
  int pilihcolor = 0;

  bool get status => _status;
  int get currentIndex => _currentIndex;
  int get Pilihcolor => pilihcolor;

  void updateStatus(bool newStatus) {
    _status = newStatus;
    notifyListeners();
  }

  void updateCurrentIndex(int newIndex) {
    _currentIndex = newIndex;
    notifyListeners();
  }
  void updateColor(int newIndex) {
    pilihcolor = newIndex;
    notifyListeners();
  }
}