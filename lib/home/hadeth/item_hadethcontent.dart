import 'package:flutter/material.dart';
import 'package:islami/my_theme.dart';
import 'package:provider/provider.dart';

import '../../Providers/app_config_provider.dart';

class itemHadethContent extends StatelessWidget {
  String content;


  itemHadethContent({required this.content});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);

    return Text('$content',
        style: provider.isDarkMode() ?Theme.of(context).textTheme.titleMedium!.copyWith(color: myTheme.yellowColor):
        Theme.of(context).textTheme.titleMedium,
        textAlign: TextAlign.center);
  }
}
