import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todos/Screens/Addcategories.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
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
                          IconButton(onPressed: (){Get.back();}, 
                          icon: const Icon(Icons.arrow_back_ios)),
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
                        height: 300,
                        width: 400,
                        child: Scaffold(
                          body: GridView.count(
                            crossAxisCount: 3,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 50,
                                      width: 50,
                                      color: Colors.blue,
                                      child:
                                          const Icon(Icons.local_grocery_store),
                                    ),
                                    const Text("Grocery")
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 50,
                                      width: 50,
                                      color: Colors.pink,
                                      child: const Icon(Icons.work),
                                    ),
                                    const Text("Work"),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 50,
                                      width: 50,
                                      color: Colors.purple,
                                      child: const Icon(Icons.sports),
                                    ),
                                    const Text("Sport")
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 50,
                                      width: 50,
                                      color: Colors.red,
                                      child: const Icon(Icons.movie),
                                    ),
                                    const Text("Movie")
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 250),
              child: Container(
                 decoration: BoxDecoration( borderRadius: BorderRadius.circular(20),
                color: const Color.fromARGB(255, 78, 167, 70),
               ),
               child: TextButton(onPressed: (){
                Get.to( const AddCategories());
               }, child: const Text("Add category",style: TextStyle(fontSize: 15),)),
              ),
            )
          ],
        ),
      ),

    );
  }
}
