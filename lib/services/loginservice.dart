import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static Database? _database;
  static const String tableName = 'users';

  Future<Database> get database async {
    if (_database != null) return _database!;

    // If _database is null, instantiate it
    _database = await initDatabase();
    return _database!;
  }

  Future<Database> initDatabase() async {
    var databasesPath = await getDatabasesPath();
    String path = join(databasesPath, 'login_database.db');

    return await openDatabase(path, version: 1, onCreate: (db, version) async {
      await db.execute('''
          CREATE TABLE $tableName (
            UID INTEGER PRIMARY KEY,
            username TEXT,
            phoneNumber TEXT,
            isActive INTEGER,
            createdDateTime TEXT
          )
      ''');
    });
  }

  Future<void> insertUser(String username, String phoneNumber, int isActive,
      String createdDateTime) async {
    final Database db = await database;

    await db.insert(
      tableName,
      {
        'username': username,
        'phoneNumber': phoneNumber,
        'isActive': isActive,
        'createdDateTime': createdDateTime,
      },
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  insertTodo(String description, DateTime dateTime, bool status,
      String category, bool bool, String formattedDateTime) {}
}
