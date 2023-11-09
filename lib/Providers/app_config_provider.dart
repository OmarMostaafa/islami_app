import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum ThemeType { light, dark }

class AppConfigProvider extends ChangeNotifier {
  String appLanguage = 'en';
  ThemeMode apptheme = ThemeMode.light;

  void changeLanguage(String newLanguage) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (appLanguage != newLanguage) {
      appLanguage = newLanguage;
      if (appLanguage == 'en') {
        prefs.setString('lang', 'en');
      } else {
        prefs.setString('lang', 'ar');
      }
      notifyListeners();
    }
  }

  void changeTheme(ThemeMode newTheme) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (appTheme != newTheme) {
      appTheme = newTheme;
      if (appTheme == ThemeMode.light) {
        prefs.setBool('isDark', false);
      } else {
        prefs.setBool('isDark', true);
      }
      notifyListeners();
    }
  }

  bool isDarkMode() {
    return apptheme == ThemeMode.dark;
  }

  SharedPreferences? sharedPreferences;

  initializePreferences() async {
    if (sharedPreferences == null) {
      sharedPreferences = await SharedPreferences.getInstance();
    }
  }

  bool isDarkTheme = false;
  String language = 'en';

  ThemeMode appTheme = ThemeMode.light;

  AppConfigProvider() {
    loadPrefrences();
  }

  loadPrefrences() async {
    await initializePreferences();
    isDarkTheme = sharedPreferences!.getBool('isDark') ?? false;
    appTheme = isDarkTheme ? ThemeMode.dark : ThemeMode.light;
    language = sharedPreferences!.getString('lang') ?? 'en';
    if (language == 'en') {
      appLanguage = 'en';
    } else {
      appLanguage = 'ar';
    }
    notifyListeners();
  }
}

