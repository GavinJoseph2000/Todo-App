import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controls/todocontroller.dart';
import '../models/todomodal.dart';


class TodoListPage extends StatelessWidget {
  final TodoController todoController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo List'),
      ),
      body: GetBuilder<TodoController>(
        builder: (controller) {
          return ListView.builder(
            itemCount: controller.todos.length,
            itemBuilder: (context, index) {
              Todo todo = controller.todos[index];
              return ListTile(
                title: Text(todo.title),
                subtitle: Text('Category: ${todo.category}'),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: Icon(Icons.edit),
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text('Update Todo'),
                              content: UpdateTodoDialogContent(todo: todo),
                            );
                          },
                        );
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text('Delete Todo?'),
                              content: Text(
                                  'Are you sure you want to delete this todo?'),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Get.back();
                                  },
                                  child: Text('Cancel'),
                                ),
                                TextButton(
                                  onPressed: () async {
                                    await controller.deleteTodo(todo.id);
                                    controller.update();
                                    Get.back();
                                  },
                                  child: Text('Delete'),
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
          );
        },
      ),
    );
  }
}

class UpdateTodoDialogContent extends StatefulWidget {
  final Todo todo;

  UpdateTodoDialogContent({required this.todo});

  @override
  _UpdateTodoDialogContentState createState() =>
      _UpdateTodoDialogContentState();
}

class _UpdateTodoDialogContentState extends State<UpdateTodoDialogContent> {
  late TextEditingController titleController;
  late TextEditingController categoryController;

  @override
  void initState() {
    super.initState();
    titleController = TextEditingController(text: widget.todo.title);
    categoryController = TextEditingController(text: widget.todo.category);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: titleController,
          decoration: InputDecoration(labelText: 'Title'),
        ),
        TextField(
          controller: categoryController,
          decoration: InputDecoration(labelText: 'Category'),
        ),
        // Add more form fields as needed
        ElevatedButton(
          onPressed: () {
            // Handle updating the todo here
            TodoController todoController = Get.find();
            todoController.updateTodo(
              widget.todo.id,
              titleController.text,
              categoryController.text,
              widget.todo.dateTime,
              widget.todo.status,
            );

            Get.back(); // Close the dialog after updating
          },
          child: Text('Update'),
        ),
      ],
    );
  }
}