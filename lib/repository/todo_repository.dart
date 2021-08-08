import 'package:flutter_upskilling/model/todo_model.dart';

class TodoRepository {
  List<TodoModel> todos = <TodoModel>[];

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