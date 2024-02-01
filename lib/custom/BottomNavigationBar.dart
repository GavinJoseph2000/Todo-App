import 'package:flutter/material.dart';
import 'package:nothing/custom/task.dart';

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
            return AlertDialog(
              title: const Text(
                'Add Task',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              ),
              content: Task(),
              actions: [
                MaterialButton(
                    onPressed: () {},
                    child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.send)))
              ],
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
                          top: 20,
                        ),
                        child: const Column(children: [
                          Icon(
                            Icons.home,
                            color: Colors.white,
                          ),
                          Text(
                            'Index',
                            style: TextStyle(color: Colors.white),
                          )
                        ]),
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Container(
                        margin: const EdgeInsets.only(top: 20),
                        child: const Column(children: [
                          Icon(
                            Icons.calendar_month_outlined,
                            color: Colors.white,
                          ),
                          Text(
                            'Calender',
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
                        margin: const EdgeInsets.only(top: 20),
                        child: const Column(children: [
                          Icon(
                            Icons.access_time,
                            color: Colors.white,
                          ),
                          Text(
                            'Focuse',
                            style: TextStyle(color: Colors.white),
                          )
                        ]),
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Container(
                        margin: const EdgeInsets.only(top: 20),
                        child: const Column(children: [
                          Icon(
                            Icons.person_2,
                            color: Colors.white,
                          ),
                          Text(
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
