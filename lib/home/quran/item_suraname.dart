import 'package:flutter/material.dart';
import 'package:islami/home/quran/sura_details_screen.dart';
import 'package:islami/my_theme.dart';
import 'package:provider/provider.dart';

import '../../Providers/app_config_provider.dart';

class itemSuraName extends StatelessWidget {
  String name;
  int index;

  itemSuraName({required this.name, required this.index});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);

    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(sureDetailsScreen.routename,
            arguments: suraDetailsArgs(name: name, index: index));
      },
      child: Text(name,
          style: provider.isDarkMode()
              ? Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .copyWith(color: myTheme.WhiteColor)
              : Theme.of(context).textTheme.titleSmall,
          textAlign: TextAlign.center),
    );
  }
}
