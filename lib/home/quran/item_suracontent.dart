import 'package:flutter/material.dart';

class itemSuraContent extends StatelessWidget {
  String content;
  int index;

  itemSuraContent({required this.content, required this.index});

  @override
  Widget build(BuildContext context) {
    return Text('$content{${index + 1}}',
        style: Theme.of(context).textTheme.titleMedium,
        textAlign: TextAlign.center);
  }
}
