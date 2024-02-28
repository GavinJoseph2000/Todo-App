import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Screens/focus.dart';
import '../Screens/profile.dart';
import '../Screens/settings.dart';
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
              content: Task(),
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
                                Get.to(const Settings());
                              },
                              icon: const Icon(
                                Icons.settings,
                                color: Colors.white,
                              )),
                          const Text(
                            'Settings',
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
                                Icons.access_time,
                                color: Colors.white,
                              )),
                          const Text(
                            'Focuse',
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
                                Get.to(const Profile());
                              },
                              icon: const Icon(
                                Icons.person_2,
                                color: Colors.white,
                              )),
                          const Text(
                            'Profile',
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
        Positioned(
            top: -38,
            child: Container(
                width: 65,
                height: 65,
                decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(50)),
                child: IconButton(
                    onPressed: showDailog,
                    icon: const Icon(
                      Icons.add,
                      size: 35,
                    )))),
      ],
    );
  }
}