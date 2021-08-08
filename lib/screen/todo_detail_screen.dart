import 'package:flutter/material.dart';

class TodoDetailScreen extends StatefulWidget {
  const TodoDetailScreen({ Key? key }) : super(key: key);

  @override
  _TodoDetailScreenState createState() => _TodoDetailScreenState();
}

class _TodoDetailScreenState extends State<TodoDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("To Do Detail")),
        body: Container(),
      ),
    );
  }
}