import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/home/quran/item_suracontent.dart';
import 'package:islami/my_theme.dart';
import 'package:provider/provider.dart';

import '../../Providers/app_config_provider.dart';

class sureDetailsScreen extends StatefulWidget {
  static const String routename = 'sure-details';

  @override
  State<sureDetailsScreen> createState() => _sureDetailsScreenState();
}

class _sureDetailsScreenState extends State<sureDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);

    var args = ModalRoute.of(context)?.settings.arguments as suraDetailsArgs;
    if (verses.isEmpty) {
      loadFile(args.index);
    }
    return Stack(children: [
      provider.isDarkMode()
          ? Image.asset(
              'assets/images/main_backgrounddark.png',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.fill,
            )
          : Image.asset(
              'assets/images/islami_background.png',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.fill,
            ),
      Scaffold(
        appBar: AppBar(
          title: Text('${args.name}',
              style: Theme.of(context).textTheme.titleLarge),
        ),
        body: verses.length == 0
            ? Center(child: CircularProgressIndicator())
            : Container(
          margin: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.03,
              vertical: MediaQuery.of(context).size.height * 0.03),
          padding: EdgeInsets.all(9),
          decoration: BoxDecoration(
                    color: provider.isDarkMode()
                        ? Theme.of(context).primaryColor
                        : myTheme.WhiteColor,
                    borderRadius: BorderRadius.circular(23)),
          child: ListView.builder(
              itemBuilder: (context, index) {
                return itemSuraContent(
                  content: verses[index],
                  index: index,
                );
              },
              itemCount: verses.length),
        ),
      )
    ]);
  }

  void loadFile(int index) async {
    String content =
        await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> lines = content.split('\n');
    verses = lines;
    //print(lines);
    setState(() {});
  }
}

class suraDetailsArgs {
  String name;
  int index;

  suraDetailsArgs({required this.name, required this.index});
}
