import 'package:flutter/material.dart';
import 'package:islami/my_theme.dart';
import 'package:provider/provider.dart';

import '../../Providers/app_config_provider.dart';

class SebhaTab extends StatefulWidget {
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  double turns = 0.0;

  String textNum = '';
  int index = 0;

  int counter = 0;
  List<String> texts = [
    "الله اكبر",
    "سبحان الله",
    "الحمدلله",
    "لا اله الا الله",
  ];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);

    return Center(
      child: Column(children: [
        provider.isDarkMode()
            ? Image.asset('assets/images/headseb7adark.png')
            : Image.asset('assets/images/headsebhaphoto.png'),
        InkWell(
          onTap: () {
            setState(() {
              turns += 1 / 4;
              counter++;
              if (counter == 33) {
                counter = 0;
                index++;
                index = index % 4;
              }
            });
          },
          child: AnimatedRotation(
            turns: turns,
            duration: const Duration(milliseconds: 3),
            child: provider.isDarkMode()
                ? Image.asset('assets/images/sebhadark.png')
                : Image.asset('assets/images/sebhaphoto.png'),
          ),
        ),
        SizedBox(
          height: 23,
        ),
        Text(
          'عدد التسبيحات',
          style: TextStyle(fontSize: 29),
        ),
        Container(
          margin: EdgeInsets.all(23),
          padding: EdgeInsets.all(20),
          color: provider.isDarkMode()
              ? myTheme.yellowColor
              : myTheme.primaryLight,
          child: Text('$counter', style: TextStyle(fontSize: 30)),
        ),
        Container(
          margin: EdgeInsets.all(23),
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: provider.isDarkMode()
                ? myTheme.yellowColor
                : myTheme.primaryLight,
            borderRadius: BorderRadius.circular(32),
          ),
          child: Text(texts[index],
              style: TextStyle(fontSize: 30, color: Colors.white)),
        )
      ]),
    );
  }
}
