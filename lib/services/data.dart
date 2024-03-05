import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:nothing/custom/task.dart';

class DatabaseHelper {
  static Database? _database;
  static const String tableName = 'todos';
  static const String categoryTableName = 'categories';

  Future<Database> get database async {
    if (_database != null) return _database!;

    // If _database is null, instantiate it
    _database = await initDatabase();
    return _database!;
  }

  Future<Database> initDatabase() async {
    var databasesPath = await getDatabasesPath();
    String path = join(databasesPath, 'todo_database.db');

    return await openDatabase(path, version: 1, onCreate: (db, version) async {
      await db.execute('''
          CREATE TABLE $tableName (
            id INTEGER PRIMARY KEY,
            title TEXT,
            dateTime TEXT,
            status INTEGER,
            category TEXT,
            isActive INTEGER,
            createdDateTime TEXT
          )
      ''');
      await db.execute('''
          CREATE TABLE $categoryTableName (
            id INTEGER PRIMARY KEY,
            name TEXT
          )
      ''');
    });
  }

  Future<int> insertCategory(String name) async {
    final Database db = await database;

    int id = await db.insert(
      categoryTableName,
      {'name': name},
      conflictAlgorithm: ConflictAlgorithm.replace,
    );

    return id;
  }

  Future<List<String>> fetchAllCategories() async {
    final Database db = await database;

    List<Map<String, dynamic>> results = await db.query(categoryTableName);

    return results.map<String>((map) {
      return map['name'] as String;
    }).toList();
  }

  Future<int> insertTodo(String title, DateTime dateTime, bool status,
      String category, bool isActive, String createdDateTime) async {
    final Database db = await database;

    int id = await db.insert(
      tableName,
      {
        'title': title,
        'dateTime': dateTime.toIso8601String(),
        'status': status ? 1 : 0,
        'category': category,
        'isActive': isActive ? 1 : 0,
        'createdDateTime': createdDateTime,
      },
      conflictAlgorithm: ConflictAlgorithm.replace,
    );

    return id;
  }

  Future<List<Todo>> fetchAllTodos() async {
    final Database db = await database;

    List<Map<String, dynamic>> results = await db.query(tableName);

    return results.map((map) {
      return Todo(
        id: map['id'],
        title: map['title'],
        dateTime: DateTime.parse(map['dateTime']),
        status: map['status'] == 1 ? true : false,
        category: map['category'],
        isActive: map['isActive'] == 1 ? true : false,
        createdDateTime: DateTime.parse(map['createdDateTime']),
      );
    }).toList();
  }

  Future<void> updateTodoStatus(int id, bool newStatus) async {
    final Database db = await database;

    await db.update(
      tableName,
      {'status': newStatus ? 1 : 0},
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  Future<void> updateTodo(
    int id,
    String title,
    DateTime dateTime,
    bool status,
    String category,
    bool isActive,
    String createdDateTime,
  ) async {
    final Database db = await database;

    await db.update(
      tableName,
      {
        'title': title,
        'dateTime': dateTime.toIso8601String(),
        'status': status ? 1 : 0,
        'category': category,
        'isActive': isActive ? 1 : 0,
        'createdDateTime': createdDateTime,
      },
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  Future<void> deleteTodo(int id) async {
    final Database db = await database;

    await db.delete(
      tableName,
      where: 'id = ?',
      whereArgs: [id],
    );
  }
}
