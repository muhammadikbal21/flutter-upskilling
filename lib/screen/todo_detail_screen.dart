import 'package:flutter/material.dart';
import 'package:flutter_upskilling/model/todo_model.dart';

class TodoDetailScreen extends StatefulWidget {
  final TodoModel todoModel;

  const TodoDetailScreen({ Key? key, required this.todoModel }) : super(key: key);

  @override
  _TodoDetailScreenState createState() => _TodoDetailScreenState();
}

class _TodoDetailScreenState extends State<TodoDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("To Do Detail")),
        body: Column(
          children: [
            Flexible(
              flex: 1,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    children: [
                      Text(
                        widget.todoModel.name,
                        style: TextStyle(fontSize: 25)
                      ),
                      Text(
                        widget.todoModel.number,
                        style: TextStyle(fontSize: 25)
                      )
                    ]
                  ),
                ),
              )
            ),
            Flexible(flex: 2, child: Container())
          ],
        ),
      ),
    );
  }
}