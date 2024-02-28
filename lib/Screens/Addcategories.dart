import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddCategories extends StatefulWidget {
  const AddCategories({Key? key}) : super(key: key);

  @override
  State<AddCategories> createState() => _AddCategoriesState();
}

class _AddCategoriesState extends State<AddCategories> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  bool validate = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Container(
            margin:const EdgeInsets.all(15),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Create New Category',
                    style: TextStyle(fontSize: 20),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Column(
                        children: [const Padding(
                          padding: EdgeInsets.only(right: 250),
                          child: Text("Category name:"),
                        ),
                          TextFormField(
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: "Enter category name",
                            ),
                            controller: nameController,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Full name is required';
                              } else if (!RegExp(r'^[a-zA-Z ]+$').hasMatch(value)) {
                                return 'Enter a valid name with only letters and spaces';
                              }
                              return null;
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 500),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          flex: 4,
                          child: TextButton(
                            onPressed: () {
                             Get.back();
                              // if (!validate) {
                              //   Get.back();
                              // }
                            },
                            style: ButtonStyle(
                              side: const MaterialStatePropertyAll(
                                BorderSide(color: Colors.white60),
                              ),
                              shape: MaterialStatePropertyAll(
                                ContinuousRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                            child: const Text('Cancel'),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(),
                        ),
                        Expanded(
                          flex: 4,
                          child: TextButton(
                            onPressed: () {
                              setState(() {
                                validate = nameController.text.isEmpty;
                                validate = nameController.text.isEmpty;
                              });
                              if (!validate) {
                                Get.back();
                              }
                            },
                            style: ButtonStyle(
                              side: const MaterialStatePropertyAll(
                                BorderSide(color: Colors.white60),
                              ),
                              shape: MaterialStatePropertyAll(
                                ContinuousRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                            child: const Text('Save'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
