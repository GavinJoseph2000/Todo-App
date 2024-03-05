import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todos/custom/todolist.dart';
import '../controls/todocontroller.dart'; // Import TodoController

class Menubar extends StatelessWidget {
  const Menubar({super.key}); // Key parameter should be Key, not super.key

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple[200],
      child: ListView(
        children: [
          const DrawerHeader(child: Image(image: AssetImage("images/uptodo.png"))),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const Icon(Icons.task),
                TextButton(
                  onPressed: () async {
                    var todoController = Get.find<TodoController>();
                    await todoController.getAllTodos(); // Refresh the task list
                    Get.to(() => TodoListPage()); // Navigate to TodoListPage
                  },
                  child: const Text(
                    'Todo list',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
