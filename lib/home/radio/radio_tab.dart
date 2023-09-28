import 'package:flutter/material.dart';
import 'package:islami/my_theme.dart';
import 'package:provider/provider.dart';

import '../../Providers/app_config_provider.dart';

class RadioTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);

    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Image.asset('assets/images/radiophoto.png'),
      SizedBox(
        height: 23,
      ),
      Text(
        'اذاعه القران الكريم',
        style: TextStyle(fontSize: 29),
      ),
      Padding(
        padding: const EdgeInsets.all(25.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.skip_previous,
                color: provider.isDarkMode()
                    ? myTheme.yellowColor
                    : myTheme.primaryLight,
                size: 50),
            Icon(Icons.play_arrow_rounded,
                color: provider.isDarkMode()
                    ? myTheme.yellowColor
                    : myTheme.primaryLight,
                size: 50),
            Icon(Icons.skip_next,
                color: provider.isDarkMode()
                    ? myTheme.yellowColor
                    : myTheme.primaryLight,
                size: 50)
          ],
        ),
      )
    ]);
  }
}
