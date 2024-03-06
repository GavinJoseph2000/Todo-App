import 'package:get/get.dart';
import 'package:todos/models/categorymodel.dart';
import 'package:todos/services/categorydata.dart';

class CategoryController extends GetxController {
  RxList<CategoryModel> categories = <CategoryModel>[].obs;
  CategoryHelper catHelper = CategoryHelper(); 
  Future<void> addCategory(String categoryName, String color) async {
    try {
      int categoryId = await catHelper.insertCategory(categoryName, color); 
      
      categories.add(CategoryModel(category: categoryName, color: color)); 
    } catch (e) {
      print("Error adding category: $e");
    }
  }
}
