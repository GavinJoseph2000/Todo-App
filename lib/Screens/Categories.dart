  import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todos/Screens/addcategories.dart';
import 'package:todos/models/categorymodel.dart';
import 'package:todos/services/categorydata.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<CategoryModel> _categories = [];
  CategoryHelper _categoryHelper = CategoryHelper();

  @override
  void initState() {
    super.initState();
    fetchAllCategories();
  }

  Future<void> fetchAllCategories() async {
    try {
      // List<Map<String, dynamic>> categoryMaps = await _categoryHelper.fetchAllCategories();
      // List<CategoryModel> categories = categoryMaps.map((categoryMap) =>
      //     CategoryModel(
      //       category: categoryMap['name'],
      //       color: categoryMap['color'],
      //     )
      // ).toList();
    
    // List<CategoryModel> categories = 
    await _categoryHelper.fetchAllCategories().then((cats) { 
      setState(() {
        _categories = cats;
      });
    });


    } catch (e) {
      print("Error fetching categories: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        icon: const Icon(Icons.arrow_back_ios),
                      ),
                      const Text(
                        "Categories",
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      ),
                      const Icon(Icons.person)
                    ],
                  ),
                  SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: SizedBox(
                        height: 400,
                        width: 400,
                        child: ListView.builder(
                          itemCount: _categories.length,
                          itemBuilder: (context, index) {
                            // CategoryModel categoryModel = _categories[index];
                          
                           print("COLOR VALUE : ${_categories[index].color}");

                            return Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Card(
                                child: ListTile(
                                  title: Text(_categories[index].category),
                                  
                                 
                                  // tileColor: const Color(0xfff44336),
                                  tileColor: Color(int.parse(_categories[index].color)),
                                 
                                  
                                  // tileColor: Color(int.parse(categoryModel.color.substring(1), radix: 16) + 0xFF000000),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromARGB(255, 78, 167, 70),
              ),
              child: TextButton(
                onPressed: () {
                  Get.to(const AddCategories());
                },
                child: const Text(
                  "Add category",
                  style: TextStyle(fontSize: 15),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  int getColorValue(String strClrVal)
  { 
    return int.parse(strClrVal.replaceAll("MaterialColor(primary value: Color(","").replaceAll("))", ""));
  }
}
