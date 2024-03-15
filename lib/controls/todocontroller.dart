import 'package:get/get.dart';
import '../models/todomodal.dart';
import '../services/data.dart';

class TodoController extends GetxController {
  Future<void> updateTodo(
    int id,
    String newTitle,
    String newCategory,
    DateTime newDateTime,
    bool newStatus,
  ) async {
    DatabaseHelper dbHelper = DatabaseHelper();
    await dbHelper.updateTodo(
      id,
      newTitle,
      newDateTime,
      newStatus,
      newCategory,
      true, // Assuming todos are always active after update
      DateTime.now().toIso8601String(),
    );
    Todo todo = todos.firstWhere((element) => element.id == id);
    todo.title = newTitle;
    todo.category = newCategory;
    todo.dateTime = newDateTime;
    todo.status = newStatus;

    // Trigger UI update
    update();
  }

  List<Todo> todos = <Todo>[].obs;

  @override
  void onInit() {
    super.onInit();
    getAllTodos();
  }

  Future<void> addTodo(String title, String description, DateTime dateTime,
      bool status, String category) async {
    DatabaseHelper dbHelper = DatabaseHelper();

    DateTime now = DateTime.now();
    String formattedDateTime = now.toIso8601String();

    int todoId = await dbHelper.insertTodo(
      title,
      // description,
      dateTime,
      status,
      category,
      true, // Assume new todos are active
      formattedDateTime,
    );

    Todo newTodo = Todo(
      title: title,
      id: todoId,
      // description: description,
      dateTime: dateTime,
      status: status,
      category: category,
      isActive: true,
      createdDateTime: now,
    );

    todos.add(newTodo);
  }

  Future<void> getAllTodos() async {
    DatabaseHelper dbHelper = DatabaseHelper();
    todos = await dbHelper.fetchAllTodos();
  }

  Future<void> updateTodoStatus(int id, bool newStatus) async {
    DatabaseHelper dbHelper = DatabaseHelper();
    await dbHelper.updateTodoStatus(id, newStatus);

    Todo todo = todos.firstWhere((element) => element.id == id);
    todo.status = newStatus;
  }

  Future<void> deleteTodo(int id) async {
    DatabaseHelper dbHelper = DatabaseHelper();
    await dbHelper.deleteTodo(id);

    todos.removeWhere((element) => element.id == id);
  }
}