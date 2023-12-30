import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_todo/model/todo_model.dart';
import 'package:simple_todo/pages/home_page.dart';
import 'package:simple_todo/providers/todo_list_provider.dart';
import 'package:simple_todo/tokens/colors.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(colorSchemeSeed: ToDoColors.deepDarkBlue),
      home: ChangeNotifierProvider<ToDoListProvider>(
        create: (context) => ToDoListProvider([
          ToDo(id: 0, title: "Test", body: "Test", isDone: false),
        ]),
        child: HomePage(),
      ),
    );
  }
}
