import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todos/models/categorymodel.dart';
import 'package:todos/models/todomodal.dart';
import 'package:todos/services/categorydata.dart';
import '../controls/todocontroller.dart';
import 'todolist.dart';

class Task extends StatefulWidget {
  final TodoController todoController = Get.put(TodoController());
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController categoryController = TextEditingController();
  final TextEditingController titleController = TextEditingController();
  Task({super.key, required void Function(Todo newTodo) onTaskAdded});

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  final CategoryHelper _categoryHelper = CategoryHelper();
  String dropDownValue = '';

  List<CategoryModel> items = [];

  // Fetch categories before the build method
  @override
  void initState() {
    super.initState();
    _fetchCategories('');
  }

  Future<void> _fetchCategories(String query) async {
    List<CategoryModel> categories = await _categoryHelper.fetchAllCategories();
    setState(() {
      items = categories;
      // Set dropDownValue to the first category if not already set
      if (dropDownValue.isEmpty && categories.isNotEmpty) {
        dropDownValue = categories[0].category;
      }
    });
  }

  showDatePickerDialog() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1990),
      lastDate: DateTime(2030),
    ).then((value) {
      if (value != null) {
        setState(() {
          _dateTime = value;
          print("$_dateTime :date");
        });
      }
    });
  }

  showTimePickerDialog() async {
    TimeOfDay? selectedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    print("$selectedTime :time");
    if (selectedTime != null) {
      setState(() {
        _dateTime = DateTime(
          _dateTime.year,
          _dateTime.month,
          _dateTime.day,
          selectedTime.hour,
          selectedTime.minute,
        );
      });
    }
  }

  DateTime _dateTime = DateTime.now();

  bool validate = false;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      child: SizedBox(
        width: screenWidth,
        height: 300,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: TextField(
                controller: widget.titleController,
                decoration: InputDecoration(
                  labelText: 'Task',
                  errorText: validate ? "please enter title" : null,
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white60),
                      borderRadius: BorderRadius.circular(5)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const Text('Category'),
                      DropdownButton(
                        value: dropDownValue,
                        items: items.map((CategoryModel category) {
                          return DropdownMenuItem(
                            value: category.category,
                            child: Text(category.category),
                          );
                        }).toList(),
                        onChanged: (String? value) {
                          if (value != null) {
                            setState(() {
                              dropDownValue = value;
                            });
                          }
                        },
                      ),
                    ],
                  ),
                )),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  TextButton(
                    onPressed: () {
                      showDatePickerDialog();
                    },
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          side: const BorderSide(color: Colors.white60),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(Icons.calendar_month),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(
                            '${_dateTime.day.toString()}/${_dateTime.month.toString()}/${_dateTime.year.toString()}',
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  txtBtnTime(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: ElevatedButton(
                          onPressed: () {
                            Get.back();
                          },
                          style: ButtonStyle(
                            side: const MaterialStatePropertyAll(
                              BorderSide(color: Colors.white60),
                            ),
                            shape: MaterialStatePropertyAll(
                              ContinuousRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                          ),
                          child: const Text('Cancel'))),
                  Container(
                    width: 20,
                  ),
                  Expanded(
                    flex: 1,
                    child: ElevatedButton(
                      onPressed: () async {
                        DateTime selectedDateTime = _dateTime;

                        print(selectedDateTime);

                        await widget.todoController.addTodo(
                          widget.titleController.text,
                          widget.descriptionController.text,
                          selectedDateTime,
                          false, // Default status is false (not completed)
                          widget.categoryController.text,
                        );
                        await Future.delayed(const Duration(milliseconds: 500));
                        print(
                            'Details Saved: ${widget.titleController.text}, ${widget.categoryController.text},${selectedDateTime}');

                        validate = widget.titleController.text.isEmpty;
                        // widget.descriptionController.text.isEmpty;

                        if (!validate) {
                          await widget.todoController
                              .getAllTodos(); // Refresh the task list
                          Get.to(() => TodoListPage());
                          Get.snackbar(
                            'Success',
                            'Task created successfully!',
                            backgroundColor: Colors.green,
                            colorText: Colors.white,
                          );

                          widget.titleController.clear();
                          // widget.descriptionController.clear();
                          widget.categoryController.clear();
                        }
                      },
                      style: ButtonStyle(
                        side: const MaterialStatePropertyAll(
                          BorderSide(color: Colors.white60),
                        ),
                        shape: MaterialStatePropertyAll(
                          ContinuousRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
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
    );
  }

  Widget txtBtnTime() {
    return TextButton(
      onPressed: () {
        showTimePickerDialog();
      },
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            side: const BorderSide(color: Colors.white60),
            borderRadius: BorderRadius.circular(5),
          ),
        ),
      ),
      child: Row(
        children: [
          const Icon(Icons.access_time),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: SizedBox(
                width: 65,
                child: Text(
                  "${_dateTime.hour}:${_dateTime.minute}",
                )),
          ),
        ],
      ),
    );
  }
}
