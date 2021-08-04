import 'package:flutter/material.dart';
import 'package:flutter_upskilling/calculator.dart';
import 'package:flutter_upskilling/my_home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Calculator(title: 'Calculator Page'),
    );
  }
}