import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_todo/model/todo_model.dart';
import 'package:simple_todo/providers/todo_list_item_provider.dart';

class HomeListItem extends StatelessWidget {
  ToDo toDo;

  HomeListItem({super.key, required this.toDo});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ToDoListItemProvider>(
      create: (context) => ToDoListItemProvider(toDo),
      child: Card(
        child: Text(toDo.title),
      ),
    );
  }
}
