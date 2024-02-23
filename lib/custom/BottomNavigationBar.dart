<<<<<<< HEAD
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nothing/Categories.dart';
import 'package:nothing/custom/task.dart';
import 'package:nothing/focus.dart';
import 'package:nothing/profile.dart';
import 'package:nothing/settings.dart';

class bottomNavigationBar extends StatefulWidget {
  const bottomNavigationBar({super.key});

  @override
  State<bottomNavigationBar> createState() => _bottomNavigationBarState();
}

class _bottomNavigationBarState extends State<bottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    void showDailog() {
      showDialog(
          context: context,
          builder: (context) {
            return const AlertDialog(
              title: Text(
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
                                Get.to(Categories());
                              },
                              icon: const Icon(
                                Icons.settings,
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
                                Get.to(FocusMode());
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
                                Get.to(Profile());
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

=======
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nothing/custom/task.dart';
import 'package:nothing/Screens/focus.dart';
import 'package:nothing/Screens/profile.dart';
import 'package:nothing/Screens/settings.dart';

class bottomNavigationBar extends StatefulWidget {
  const bottomNavigationBar({super.key});

  @override
  State<bottomNavigationBar> createState() => _bottomNavigationBarState();
}

class _bottomNavigationBarState extends State<bottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    void showDailog() {
      showDialog(
          context: context,
          builder: (context) {
            return const AlertDialog(
              title: Text(
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
                                Get.to(Settings());
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
                                Get.to(FocusMode());
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
                                Get.to(Profile());
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
        Container(
            width: 65,
            height: 65,
            decoration: BoxDecoration(
                color: Colors.pink, borderRadius: BorderRadius.circular(50)),
            child: IconButton(
                onPressed: showDailog,
                icon: const Icon(
                  Icons.add,
                  size: 35,
                ))),
      ],
    );
  }
}
>>>>>>> d637de200ccefbaf4d620a7cb1bf936d482e0663
