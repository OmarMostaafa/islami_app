import 'package:flutter/material.dart';
import 'package:islami/my_theme.dart';
import 'package:provider/provider.dart';

import '../../Providers/app_config_provider.dart';

class itemSuraContent extends StatelessWidget {
  String content;
  int index;

  itemSuraContent({required this.content, required this.index});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);

    return Text('$content{${index + 1}}',
        style: provider.isDarkMode()
            ? Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(color: myTheme.yellowColor)
            : Theme.of(context).textTheme.titleMedium,
        textAlign: TextAlign.center);
  }
}
