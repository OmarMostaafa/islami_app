import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/settings/language_bottom_sheet.dart';
import 'package:islami/settings/theme_bottom_sheet.dart';
import 'package:provider/provider.dart';

import '../Providers/app_config_provider.dart';

class settingTab extends StatefulWidget {
  @override
  State<settingTab> createState() => _settingTabState();
}

class _settingTabState extends State<settingTab> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(25),
          child: Text(AppLocalizations.of(context)!.language,
              style: Theme.of(context).textTheme.titleMedium),
        ),
        SizedBox(height: 15),
        InkWell( onTap: (){
          showLanguageBottomSheet();
        },
          child: Container(
            margin: EdgeInsets.all(15),
            padding: EdgeInsets.all(14),
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(20)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(provider.appLanguage == 'en'?  AppLocalizations.of(context)!.english : AppLocalizations.of(context)!.arabic,
                    style: Theme.of(context).textTheme.titleMedium),
                Icon(
                  Icons.arrow_drop_down,
                )
              ],
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(12),
          child: Text(AppLocalizations.of(context)!.theme,
              style: Theme.of(context).textTheme.titleMedium),
        ),
        SizedBox(height: 15),
        InkWell( onTap: (){
          showThemeBottomSheet();
        },
          child: Container(
            margin: EdgeInsets.all(15),
            padding: EdgeInsets.all(14),
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(20)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(provider.isDarkMode()? AppLocalizations.of(context)!.dark:AppLocalizations.of(context)!.light ,
                    style: Theme.of(context).textTheme.titleMedium),
                Icon(
                  Icons.arrow_drop_down,
                )
              ],
            ),
          ),
        )
      ],

    );
  }
  void showLanguageBottomSheet() {
    showModalBottomSheet(context: context ,
        builder: (context)=> LanguageBottomSheet());
  }

  void showThemeBottomSheet() {
    showModalBottomSheet(context: context,
        builder: (context)=> ThemeBottomSheet());
  }

}

