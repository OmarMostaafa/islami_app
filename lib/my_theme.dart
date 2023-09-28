import 'package:flutter/material.dart';

class myTheme {
  static Color primaryLight = Color(0xffB7935F);
  static Color primarydark = Color(0xff141A2E);
  static Color yellowColor = Color(0xffFACC1D);
  static Color BlackColor = Color(0xff242424);
  static Color WhiteColor = Color(0xffF8F8F8);
  static ThemeData LightMode = ThemeData(
    primaryColor: primaryLight,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
        color: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(color: BlackColor)),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: primaryLight,
        selectedItemColor: BlackColor,
        unselectedItemColor: WhiteColor,
        selectedIconTheme: IconThemeData(size: 30)),
    textTheme: TextTheme(
        titleLarge: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        titleMedium: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
        titleSmall: TextStyle(fontSize: 20, fontWeight: FontWeight.w200)),
  );
  static ThemeData DarkMode = ThemeData(
    primaryColor: primarydark,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
        color: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(color: WhiteColor)),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: primaryLight,
        selectedItemColor: yellowColor,
        unselectedItemColor: WhiteColor,
        selectedIconTheme: IconThemeData(size: 30)),
    textTheme: TextTheme(
        titleLarge: TextStyle(
            fontSize: 30, fontWeight: FontWeight.bold, color: WhiteColor),
        titleMedium: TextStyle(
            fontSize: 25, fontWeight: FontWeight.w400, color: WhiteColor),
        titleSmall: TextStyle(
            fontSize: 20, fontWeight: FontWeight.w200, color: yellowColor)),
  );
}
