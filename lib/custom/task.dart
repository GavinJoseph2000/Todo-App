import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todos/models/todomodal.dart';
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
  DateTime _dateTime = DateTime.now();
  bool validate = false;

  showDatePickerDialog() {
    showDatePicker(
      context: context, 
      initialDate: _dateTime,
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
            // Padding(
            //   padding: const EdgeInsets.only(top: 10),
            //   child: TextFormField(
            //     controller: widget.descriptionController,
            //     maxLength: 100,
            //     minLines: 1,
            //     maxLines: 3,
            //     decoration: InputDecoration(
            //       errorText: validate ? "please enter description" : null,
            //       labelText: 'Description',
            //       border: const OutlineInputBorder(
            //         borderSide: BorderSide(color: Colors.white),
            //       ),
            //     ),
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: TextField(
                controller: widget.categoryController,
                decoration: const InputDecoration(
                  labelText: 'Category',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
              ),
            ),
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
                          side: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min, 
                      children: [
                        const Icon(Icons.calendar_month),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
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
                  TextButton(
                    onPressed: () {
                      showTimePickerDialog();
                    },
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          side: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    child: Row(
                      children: [
                        const Icon(Icons.access_time),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            "${_dateTime.hour}:${_dateTime.minute}",
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only( top: 10),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: ElevatedButton(onPressed: (){
                      Get.back();
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
                     // ignore: prefer_const_constructors
                     child: Text('Cancel'))),
                    Container(width: 20,),
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
                    
                        validate = widget.titleController.text.isEmpty ;
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
    );
  }
}
