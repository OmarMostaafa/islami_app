import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/home/hadeth/hadeth_tab.dart';
import 'package:islami/home/hadeth/item_hadethcontent.dart';
import 'package:islami/home/quran/item_suracontent.dart';
import 'package:islami/my_theme.dart';
import 'package:provider/provider.dart';

import '../../Providers/app_config_provider.dart';

class hadethDetailsScreen extends StatefulWidget {
  static const String routename = 'hadeth-details';

  @override
  State<hadethDetailsScreen> createState() => _hadethDetailsScreenState();
}

class _hadethDetailsScreenState extends State<hadethDetailsScreen> {


  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);

    var args = ModalRoute
        .of(context)
        ?.settings
        .arguments as Hadeth;

    return Stack(children: [ provider.isDarkMode()?Image.asset(
      'assets/images/main_backgrounddark.png',
      width: double.infinity,
      height: double.infinity,
      fit: BoxFit.fill,
    ) :
    Image.asset(
        'assets/images/islami_background.png',
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.fill,
      ),
      Scaffold(
        appBar: AppBar(
          title: Text(' ${args.title}',
              style: Theme
                  .of(context)
                  .textTheme
                  .titleLarge),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(
              horizontal: MediaQuery
                  .of(context)
                  .size
                  .width * 0.03,
              vertical: MediaQuery
                  .of(context)
                  .size
                  .height * 0.03),
          padding: EdgeInsets.all(9),
          decoration: BoxDecoration(
              color: provider.isDarkMode() ? Theme.of(context).primaryColor:
              myTheme.WhiteColor,
              borderRadius: BorderRadius.circular(23)),
          child: ListView.builder(
              itemBuilder: (context, index) {
                return itemHadethContent( content:args.content[index]);
              },
              itemCount: args.content.length),
        ),
      )
    ]);
  }
}

