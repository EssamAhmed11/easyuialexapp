import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: SafeArea(
        child: MyHomePage(title: 'اختيار المدينة'),
      ),
    );
  }
}
