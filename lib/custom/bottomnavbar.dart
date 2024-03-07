import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todos/Screens/categories.dart';
import 'package:todos/Screens/remainder.dart';
import 'package:todos/models/todomodal.dart';
import '../Screens/focus.dart';
import 'task.dart';


class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => BottomNavBarState();
}

class BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    void showDailog() {
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text(
                'Add Task',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              ),
              content: Task(onTaskAdded: (Todo newTodo) {  },),
            );
          });
    }

    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
          color: const Color(0xFF363636),
          height: 75,
          child: Row(
            children: [
              Expanded(
                flex: 4,
                child: Row(
                  children: [
                    Expanded(
                      flex: 5,
                      child: Container(
                        margin: const EdgeInsets.only(
                          top: 5,
                        ),
                        child: Column(children: [
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.home,
                                color: Colors.white,
                              )),
                          const Text(
                            'Index',
                            style: TextStyle(color: Colors.white),
                          )
                        ]),
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Container(
                        margin: const EdgeInsets.only(top: 5),
                        child: Column(children: [
                          IconButton(
                              onPressed: () {
                                Get.to(const Categories());
                              },
                              icon: const Icon(
                                Icons.category,
                                color: Colors.white,
                              )),
                          const Text(
                            'Categories',
                            style: TextStyle(color: Colors.white),
                          )
                        ]),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(flex: 2, child: Container()),
              Expanded(
                flex: 4,
                child: Row(
                  children: [
                    Expanded(
                      flex: 5,
                      child: Container(
                        margin: const EdgeInsets.only(top: 5),
                        child: Column(children: [
                          IconButton(
                              onPressed: () {
                                Get.to(const FocusMode());
                              },
                              icon: const Icon(
                                Icons.center_focus_strong,
                                color: Colors.white,
                              )),
                          const Text(
                            'Focus',
                            style: TextStyle(color: Colors.white),
                          )
                        ]),
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Container(
                        margin: const EdgeInsets.only(top: 5),
                        child: Column(children: [
                          IconButton(
                              onPressed: () {
                                Get.to(const Remainder());
                              },
                              icon: const Icon(
                                Icons.access_time,
                                color: Colors.white,
                              )),
                          const Text(
                            'Remainder',
                            style: TextStyle(color: Colors.white),
                          )
                        ]),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
            height: 65,
            width: 65,
            decoration: BoxDecoration(
                color: Color(0XFFA020F0),
                borderRadius: BorderRadius.circular(50)),
            child: IconButton(
                onPressed: showDailog,
                icon: const Icon(
                  Icons.add,
                  size: 35,
        )
       )
       ),
      ],
    );
  }
}
