import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_todo/providers/todo_list_provider.dart';
import 'package:simple_todo/tokens/colors.dart';
import 'package:simple_todo/widgets/home_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: _mainDecoration(),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: const HomeList(),
        floatingActionButton: _buildFAB(),
      ),
    );
  }

  _buildFAB() {
    return FloatingActionButton.large(
      onPressed: () {},
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.add),
          Text("Add"),
        ],
      ),
    );
  }

  _mainDecoration() {
    return const BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          ToDoColors.deepDarkBlue,
          ToDoColors.deepLightBlue,
        ],
      ),
    );
  }
}
