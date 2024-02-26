import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nothing/Screens/Addcategories.dart';
<<<<<<< HEAD

import 'package:nothing/custom/BottomNavigationBar.dart';
=======
>>>>>>> saritha

import 'package:nothing/custom/BottomNavigationBar.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const bottomNavigationBar(),
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image(
                      image: AssetImage("images/menu.png"),
                    ),
                    Text(
                      "Categories",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                    Icon(Icons.person)
                  ],
                ),
                SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Container(
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
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: const Color.fromARGB(
                                          255, 78, 167, 70),
                                    ),
                                    width: 50,
                                    height: 50,
                                    child: IconButton(
                                      onPressed: () {
                                        Get.to(const AddCategories());
                                      },
                                      icon: const Icon(Icons.add),
                                    ),
                                  ),
                                  const Text("new",
                                      textAlign: TextAlign.center),
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
        ),
      ),
    );
  }
}
