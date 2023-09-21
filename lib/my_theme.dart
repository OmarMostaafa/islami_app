import 'package:flutter/material.dart';

class myTheme {
  static Color primaryLight = Color(0xffB7935F);
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
}
