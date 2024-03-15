import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:todos/models/categorymodel.dart';

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
        color 
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

Future<List<CategoryModel>> fetchAllCategories() async {
  final Database db = await database;

  var categoryMaps = await db.query(categoryTableName);
  List<CategoryModel> catList = [];
  for (Map<String, dynamic> categoryMap in categoryMaps) {
    String colorString = categoryMap['color'];
    String colorValue = colorString.replaceAll("MaterialColor(primary value: Color(","").replaceAll("))", "");
    // categoryMap['color'] = colorValue;
    CategoryModel catModel = CategoryModel(category: categoryMap['name'] , color: colorValue);
    catList.add(catModel);
  }

  return catList;
}

// Future<List<Map<String, dynamic>>> fetchAllCategories() async {
//   final Database db = await database;

//   List<Map<String, dynamic>> categoryMaps = await db.query(categoryTableName);
 
//   // for (Map<String, dynamic> categoryMap in categoryMaps) {
//   //   String colorString = categoryMap['color'];
//   //   int colorValue = int.parse(colorString.replaceAll("MaterialColor(primary value: Color(","").replaceAll("))", ""));
//   //   categoryMap['color'] = colorValue;
//   // }

//   // return categoryMaps;
// }


}