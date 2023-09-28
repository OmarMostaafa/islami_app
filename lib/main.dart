import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/Providers/app_config_provider.dart';
import 'package:islami/home/HomeScreen.dart';
import 'package:islami/home/hadeth/hadeth_details_screen.dart';
import 'package:islami/home/quran/sura_details_screen.dart';
import 'package:islami/my_theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => AppConfigProvider(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: HomeScreen.routename,
        routes: {
          HomeScreen.routename: (context) => HomeScreen(),
          sureDetailsScreen.routename: (context) => sureDetailsScreen(),
          hadethDetailsScreen.routename: (context) => hadethDetailsScreen()
        },
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        locale: Locale(provider.appLanguage),
        theme: myTheme.LightMode,
        darkTheme: myTheme.DarkMode,
        themeMode: provider.apptheme);
  }
}
