import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'modules/app.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget
{
  MyApp({Key? key}) : super(key: key);

  static const String _title = 'Money';

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: _title,
      home: MainWidget(),
    );
  }

}

