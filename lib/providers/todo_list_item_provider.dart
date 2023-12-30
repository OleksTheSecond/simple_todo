import 'package:flutter/material.dart';
import 'package:simple_todo/model/todo_model.dart';

class ToDoListItemProvider extends ChangeNotifier {
  ToDo toDo;

  ToDoListItemProvider(this.toDo);

  void update(ToDo toDo) {
    if (this.toDo.id == toDo.id) {
      this.toDo = toDo;
    }
    notifyListeners();
  }
}
