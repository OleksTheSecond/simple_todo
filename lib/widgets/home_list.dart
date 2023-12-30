import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_todo/providers/todo_list_provider.dart';
import 'package:simple_todo/widgets/home_list_item.dart';

class HomeList extends StatelessWidget {
  const HomeList({super.key});

  @override
  Widget build(BuildContext context) {
    final list = context.watch<ToDoListProvider>().toDoList;
    return ListView.builder(
      itemBuilder: (context, index) {
        return HomeListItem(
          toDo: list[index],
        );
      },
      itemCount: list.length,
    );
  }
}
