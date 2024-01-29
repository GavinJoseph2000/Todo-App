import 'package:flutter/material.dart';

class bottomNavigationBar extends StatefulWidget {
  const bottomNavigationBar({super.key});

  @override
  State<bottomNavigationBar> createState() => _bottomNavigationBarState();
}

class _bottomNavigationBarState extends State<bottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
          color: const Color.fromARGB(255, 93, 80, 80),
          height: 90,
          child: Row(
            children: [
              Row(
                children: [
                  const SizedBox(
                    width: 25,
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      top: 20,
                    ),
                    child: const Column(children: [
                      Icon(
                        Icons.home,
                        color: Colors.white,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Index',
                        style: TextStyle(color: Colors.white),
                      )
                    ]),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    child: const Column(children: [
                      Icon(
                        Icons.calendar_month_outlined,
                        color: Colors.white,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Calender',
                        style: TextStyle(color: Colors.white),
                      )
                    ]),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 150),
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: const Column(children: [
                        Icon(
                          Icons.access_time,
                          color: Colors.white,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Focuse',
                          style: TextStyle(color: Colors.white),
                        )
                      ]),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 25,
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: const Column(children: [
                  Icon(
                    Icons.person_2,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Profile',
                    style: TextStyle(color: Colors.white),
                  )
                ]),
              )
            ],
          ),
        ),
        Positioned(
          top: -38,
          child: Container(
            height: 70,
            width: 70,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0XFFFF00A8),
            ),
            child: const Icon(
              Icons.add,
              size: 30,
            ),
          ),
        )
      ],
    );
  }
}
