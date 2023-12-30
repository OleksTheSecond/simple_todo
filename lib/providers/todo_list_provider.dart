import 'package:flutter/material.dart';
import 'package:simple_todo/model/todo_model.dart';

class ToDoListProvider extends ChangeNotifier {
  List<ToDo> toDoList;

  ToDoListProvider(this.toDoList);

  void add(ToDo toDo) {
    toDoList.add(toDo);
    notifyListeners();
  }

  void remove(ToDo toDo) {
    toDoList.removeWhere((value) => value.id == toDo.id);
    notifyListeners();
  }
}
