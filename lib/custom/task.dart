import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Task extends StatefulWidget {
  const Task({Key? key}) : super(key: key);

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  DateTime _dateTime = DateTime.now();
  final titleController = TextEditingController();
  final descriptionController = TextEditingController();
  bool validate = false;

  // date picker
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
        });
      }
    });
  }

  // Time picker
  showTimePickerDialog() async {
    TimeOfDay? selectedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

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
                controller: titleController,
                decoration: InputDecoration(
                  labelText: 'Title',
                  errorText: validate ? "please enter title" : null,
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Expanded(
                flex: 4,
                child: TextFormField(
                  controller: descriptionController,
                  maxLength: 100,
                  minLines: 1,
                  maxLines: 3,
                  decoration: InputDecoration(
                    errorText: validate ? "please enter description" : null,
                    labelText: 'Description',
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
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
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(left: 180, top: 10),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      validate = titleController.text.isEmpty;
                      validate = titleController.text.isEmpty;
                    });
                    if (!validate) {
                      Get.back();
                    }
                  },
                  style: ButtonStyle(
                      side: const MaterialStatePropertyAll(
                          BorderSide(color: Colors.white60)),
                      shape: MaterialStatePropertyAll(ContinuousRectangleBorder(
                          borderRadius: BorderRadius.circular(10)))),
                  child: const Text('Save'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
