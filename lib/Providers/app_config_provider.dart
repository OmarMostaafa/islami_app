import 'package:flutter/material.dart';

class AppConfigProvider extends ChangeNotifier {
  String appLanguage = 'en';
  ThemeMode apptheme = ThemeMode.light;
  void changeLanguage(String NewLanguage) {
    if (appLanguage == NewLanguage) {
      return;

    }
    else{
      appLanguage = NewLanguage;
      notifyListeners();
    }
  }
  void changeTheme(ThemeMode newMode){
    if (apptheme == newMode) {
      return;

    }
    else{
      apptheme = newMode;
      notifyListeners();
    }
  }
  bool isDarkMode(){
    return apptheme == ThemeMode.dark;
  }
  }

