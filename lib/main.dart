import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_help/page1.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Page1(),
    );
  }
}