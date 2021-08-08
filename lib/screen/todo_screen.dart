import 'package:flutter/material.dart';
import 'package:flutter_upskilling/model/todo_model.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({ Key? key }) : super(key: key);

  @override
  _TodoScreenState createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  List<TodoModel> todos = <TodoModel>[];
  TextEditingController todoName = new TextEditingController();
  TextEditingController todoNumber = new TextEditingController();
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("To Do List Page"),
        ),
        body: Column(
          children: [
            Form(
              key: _formKey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(hintText: "Enter Your Name"),
                      controller: todoName,
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your Name';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(hintText: "Enter Your Number"),
                      controller: todoNumber,
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your Number';
                        }
                        return null;
                      },
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        setState(() {
                          todos.add(new TodoModel(todos.length + 1, todoName.text, todoNumber.text));
                        });
                      }
                    }, 
                    child: Text('Submit')
                  )
                ],
              )
            ),
            Expanded(
              child: Card(
                margin: EdgeInsets.fromLTRB(20, 30, 20, 0),
                child: Scrollbar(
                  child: ListView.builder(
                    itemCount: todos.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          ListTile(
                            leading: Icon(
                              Icons.account_box,
                              size: 40,
                            ),
                            title: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("Name: ${todos[index].name},"),
                                    Text("Number: ${todos[index].number},"),
                                  ]
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      todos.remove(todos[index]);
                                    });
                                  }, 
                                  child: Icon(Icons.delete_forever, size: 25)
                                )
                              ]
                            ),
                            onTap: () {
                              Navigator.pushNamed(context, '/detail');
                            },
                          )
                        ],
                      );
                    }
                  )
                ),
              )
            )
          ]
        ),
      )
      
    );
  }
}