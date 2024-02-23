import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Profile extends StatelessWidget {
  const Profile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      height: screenHeight,
      width: screenWidth,
      color: Colors.black,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40.0),
              child: Column(
                children: [
<<<<<<< HEAD:lib/profile.dart
                  const Text(
                    'Profile',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFFFFFDE),
                      decoration: TextDecoration.none,
                    ),
=======
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            Get.back();
                          },
                          icon: const Icon(Icons.arrow_back_ios)),
                      const Padding(
                        padding: EdgeInsets.only(left: 100),
                        child: Text(
                          'Profile',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFFFFFDE),
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                    ],
>>>>>>> d637de200ccefbaf4d620a7cb1bf936d482e0663:lib/Screens/profile.dart
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('images/girl.png'),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      'Martha Hays',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          color: Color(0xFFFFFFDE),
                          decoration: TextDecoration.none),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0, left: 5.0),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            shape: const RoundedRectangleBorder(),
                            primary: const Color(0xFF363636),
                            onPrimary: const Color(0xFFFFFFDE),
                            padding: const EdgeInsets.fromLTRB(45, 24, 45, 24),
                          ),
                          child: const Text('10 Task left'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0, right: 5.0),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            shape: const RoundedRectangleBorder(),
                            primary: const Color(0xFF363636),
                            onPrimary: const Color(0xFFFFFFDE),
                            padding: const EdgeInsets.fromLTRB(45, 24, 45, 24),
                          ),
                          child: const Text('5 Task done'),
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 20.0, left: 5.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Settings',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Color(0xFFAFAFAF),
                              decoration: TextDecoration.none),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Row(children: [
                      Padding(
                          padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                          child: Image.asset(
<<<<<<< HEAD:lib/profile.dart
                            'images/setting.png',
=======
                            'images/settings.png',
>>>>>>> d637de200ccefbaf4d620a7cb1bf936d482e0663:lib/Screens/profile.dart
                            color: const Color(0xFFFFFFDE),
                          )),
                      const Text(
                        'App Settings',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFFFFFDE),
                            decoration: TextDecoration.none),
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.keyboard_arrow_right,
                          size: 40,
                        ),
                      )
                    ]),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 20.0, left: 5.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Accounts',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Color(0xFFAFAFAF),
                              decoration: TextDecoration.none),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Row(children: [
                      Padding(
                          padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                          child: Image.asset(
                            'images/user.png',
                            color: const Color(0xFFFFFFDE),
                          )),
                      const Text(
                        'Change account name',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFFFFFDE),
                            decoration: TextDecoration.none),
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.keyboard_arrow_right,
                          size: 40,
                        ),
                      )
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Row(children: [
                      Padding(
                          padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                          child: Image.asset(
                            'images/key.png',
                            color: const Color(0xFFFFFFDE),
                          )),
                      const Text(
                        'Enable password',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFFFFFDE),
                            decoration: TextDecoration.none),
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.keyboard_arrow_right,
                          size: 40,
                        ),
                      )
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Row(children: [
                      Padding(
                          padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                          child: Image.asset(
                            'images/camera.png',
                            color: const Color(0xFFFFFFDE),
                          )),
                      const Text(
                        'Change account Image',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFFFFFDE),
                            decoration: TextDecoration.none),
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.keyboard_arrow_right,
                          size: 40,
                        ),
                      )
                    ]),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 20.0, left: 5.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Uptodo',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Color(0xFFAFAFAF),
                              decoration: TextDecoration.none),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Row(children: [
                      Padding(
                          padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                          child: Image.asset(
<<<<<<< HEAD:lib/profile.dart
                            'images/menu.png',
=======
                            'images/profilemenu.png',
>>>>>>> d637de200ccefbaf4d620a7cb1bf936d482e0663:lib/Screens/profile.dart
                            color: const Color(0xFFFFFFDE),
                          )),
                      const Text(
                        'About US',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFFFFFDE),
                            decoration: TextDecoration.none),
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.keyboard_arrow_right,
                          size: 40,
                        ),
                      )
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Row(children: [
                      Padding(
                          padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                          child: Image.asset(
                            'images/flash.png',
                            color: const Color(0xFFFFFFDE),
                          )),
                      const Text(
                        'Help & Feedback',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFFFFFDE),
                            decoration: TextDecoration.none),
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.keyboard_arrow_right,
                          size: 40,
                        ),
                      )
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Row(children: [
                      Padding(
                          padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                          child: Image.asset(
                            'images/like.png',
                            color: const Color(0xFFFFFFDE),
                          )),
                      const Text(
                        'Support US',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFFFFFDE),
                            decoration: TextDecoration.none),
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.keyboard_arrow_right,
                          size: 40,
                        ),
                      )
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 70.0),
                    child: Row(children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: Colors.transparent,
                          elevation: 0,
                        ),
                        child: Image.asset(
                          'images/logout.png',
                          color: const Color(0xFFFF4949),
                        ),
                      ),
                      const Text(
                        'Logout',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFFF4949),
                            decoration: TextDecoration.none),
                      ),
                    ]),
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
