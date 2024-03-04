import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controls/todocontroller.dart';
import '../models/todomodal.dart';


class TodoListPage extends StatelessWidget {
  final TodoController todoController = Get.find();

   TodoListPage({super.key});

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo List'),
      ),
      body: ListView.builder(
        itemCount: todoController.todos.length,
        itemBuilder: (context, index) {
          Todo todo = todoController.todos[index];
          return ListTile(
            title: Text(todo.title),
            subtitle: Text(todo.category),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: const Icon(Icons.edit),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.delete),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text('Delete Todo?'),
                          content: const Text(
                              'Are you sure you want to delete this todo?'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Get.back();
                              },
                              child: const Text('Cancel'),
                            ),
                            TextButton(
                              onPressed: () {
                                todoController.deleteTodo(todo.id);
                                Get.back();
                              },
                              child: const Text('Delete'),
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
