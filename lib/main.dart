import 'package:flutter/material.dart';
import 'package:islami/home/HomeScreen.dart';
import 'package:islami/home/quran/sura_details_screen.dart';
import 'package:islami/my_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: HomeScreen.routename,
        routes: {
          HomeScreen.routename: (context) => HomeScreen(),
          sureDetailsScreen.routename: (context) => sureDetailsScreen()
        },
        theme: myTheme.LightMode);
  }
}
