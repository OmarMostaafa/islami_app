import 'package:flutter/material.dart';
import 'package:islami/home/hadeth/hadeth_details_screen.dart';
import 'package:islami/home/quran/sura_details_screen.dart';
import 'package:provider/provider.dart';

import '../../Providers/app_config_provider.dart';
import 'hadeth_tab.dart';

class itemHadethName extends StatelessWidget {
Hadeth hadeth ;
  itemHadethName({required this.hadeth});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);

    return InkWell(
       onTap: () {
         Navigator.of(context).pushNamed(hadethDetailsScreen.routename,
             arguments: hadeth );
       },
      child: Text(hadeth.title,
          style: Theme.of(context).textTheme.titleSmall,
          textAlign: TextAlign.center),
    );
  }
}
