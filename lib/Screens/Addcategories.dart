import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:todos/controls/categorycontroller.dart';

class AddCategories extends StatefulWidget {
  const AddCategories({Key? key}) : super(key: key);

  @override
  State<AddCategories> createState() => _AddCategoriesState();
}

class _AddCategoriesState extends State<AddCategories> {
  final CategoryController category = Get.put(CategoryController());
  late TextEditingController nameController;

  Color? selectedColor = Colors.blue; // Set default color

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController();
  }

  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Container(
            margin: const EdgeInsets.all(15),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Create New Category',
                    style: TextStyle(fontSize: 20),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: "Enter category name",
                          ),
                          controller: nameController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Category name is required';
                            } else if (!RegExp(r'^[a-zA-Z ]+$').hasMatch(value)) {
                              return 'Enter a valid name with only letters and spaces';
                            }
                            return null;
                          },
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: BlockPicker(
                              pickerColor: selectedColor!,
                              onColorChanged: (Color color) {
                                setState(() {
                                  selectedColor = color;
                                });
                              },
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 160),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          flex: 4,
                          child: TextButton(
                            onPressed: () {
                              Get.back();
                            },
                            style: ButtonStyle(
                              side: MaterialStateProperty.all(
                                const BorderSide(color: Colors.white60),
                              ),
                              shape: MaterialStateProperty.all(
                                ContinuousRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                            child: const Text('Cancel'),
                          ),
                        ),
                        const Expanded(
                          flex: 1,
                          child: SizedBox(),
                        ),
                        Expanded(
                          flex: 4,
                          child: TextButton(
                            onPressed: () async {
                              if (_formKey.currentState!.validate()) {
                                 await category.addCategory(nameController.text, selectedColor.toString());
                                print("${nameController.text}, ${selectedColor.toString()}");

    // Show a snackbar with success message
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Category Created Successfully'),
      ),
    );

    // Navigate back after a delay
    Future.delayed(Duration(seconds: 2), () {
      Get.back();
    });
                                 // Pass selectedColor to addCategory
                              
                              } else {
                                // Show a snackbar or toast to inform the user about validation errors.
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text('Please enter a valid category name.'),
                                  ),
                                );
                              }
                            },
                            style: ButtonStyle(
                              side: MaterialStateProperty.all(
                                const BorderSide(color: Colors.white60),
                              ),
                              shape: MaterialStateProperty.all(
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
