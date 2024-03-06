import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';




class CategoryHelper {
  static Database? _database;

  static const String categoryTableName = 'categories'; // Renamed to 'categories'

  Future<Database> get database async {
    if (_database != null) return _database!;

    // If _database is null, instantiate it
    _database = await init();
    return _database!;
  }

 Future<Database> init() async {
  var databasesPath = await getDatabasesPath();
  String path = join(databasesPath, 'database.db');

  return await openDatabase(path, version: 2, onCreate: (db, version) async {
    print("Creating categories table...");
    await db.execute('''
      CREATE TABLE IF NOT EXISTS categories (
        id INTEGER PRIMARY KEY,
        name TEXT,
        color TEXT
      )
    ''');
  });
}


  Future<int> insertCategory(String name, String color) async {
    final Database db = await database;

    int id = await db.insert(
      categoryTableName,
      {'name': name, 'color': color}, // Added color field
      conflictAlgorithm: ConflictAlgorithm.replace,
    );

    return id;
  }

  Future<List<Map<String, dynamic>>> fetchAllCategories() async { // Modified return type
    final Database db = await database;

    return await db.query(categoryTableName); // Modified query
  }

}