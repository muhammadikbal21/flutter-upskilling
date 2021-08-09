import 'package:flutter_upskilling/model/todo_model.dart';

class TodoRepository {
  List<TodoModel> todos = <TodoModel>[];

  String name = "";

  setName(String name) {
    this.name = name;
  }

  getName() {
    return name;
  }

  List<TodoModel> getListTodo() {
    return todos;
  }

  addTodo(TodoModel todoModel) {
    todos.add(todoModel);
  }

  deleteTodo(int id) {
    todos.removeWhere((element) => element.id == id);
  }
}