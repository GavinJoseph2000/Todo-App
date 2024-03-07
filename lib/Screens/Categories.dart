import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todos/Screens/addcategories.dart';
import 'package:todos/models/categorymodel.dart';
import 'package:todos/services/categorydata.dart';


class Categories extends StatefulWidget {
  const Categories({Key? key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
 
  List<CategoryModel> _addCategory=[];
  CategoryHelper categoryHelper = CategoryHelper();
  
  @override
  void initState() {
    super.initState();
    fetchAllCategories();
  }

Future<void> fetchAllCategories() async {
  try {
    List<Map<String, dynamic>> categoryMaps = await categoryHelper.fetchAllCategories();
    List<CategoryModel> categories = categoryMaps.map((categoryMap) =>
        CategoryModel(
          category: categoryMap['name'],
          color: categoryMap['color'],
        )
    ).toList();
    setState(() {
      _addCategory = categories;
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
                        child: Scaffold(
                          
                        body:ListView.builder(
                    itemCount: _addCategory.length,
               itemBuilder: (context, index) {
             CategoryModel categoryModel = _addCategory[index];
           return Padding(
             padding: const EdgeInsets.all(15.0),
             child: ListTile(
              title: Text(categoryModel.category),
              tileColor: Colors.blue,
              
             ),
           );
  },
),

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
}
