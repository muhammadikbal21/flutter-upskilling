import 'package:flutter/material.dart';
import 'package:flutter_upskilling/screen/todo_detail_screen.dart';
import 'package:flutter_upskilling/screen/todo_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      routes: {
        '/': (context) => TodoScreen(),
        '/detail': (context) => TodoDetailScreen()
      },
    );
  }
}