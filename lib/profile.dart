import 'package:flutter/material.dart';

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
                  Text(
                    'Profile',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFFFFFDE),
                      decoration: TextDecoration.none,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('images/profileimg.png'),
                    ),
                  ),
                  Padding(
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
                        padding: EdgeInsets.only(top: 20.0, left: 5.0),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(),
                            primary: Color(0xFF363636),
                            onPrimary: Color(0xFFFFFFDE),
                            padding: EdgeInsets.fromLTRB(45, 24, 45, 24),
                          ),
                          child: Text('10 Task left'),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20.0, right: 5.0),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(),
                            primary: Color(0xFF363636),
                            onPrimary: Color(0xFFFFFFDE),
                            padding: EdgeInsets.fromLTRB(45, 24, 45, 24),
                          ),
                          child: Text('5 Task done'),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0, left: 5.0),
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
                          padding: EdgeInsets.only(left: 5.0, right: 5.0),
                          child: Image.asset(
                            'images/setting.png',
                            color: Color(0xFFFFFFDE),
                          )),
                      Text(
                        'App Settings',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFFFFFDE),
                            decoration: TextDecoration.none),
                      ),
                      Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.keyboard_arrow_right,
                          size: 40,
                        ),
                      )
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0, left: 5.0),
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
                          padding: EdgeInsets.only(left: 5.0, right: 5.0),
                          child: Image.asset(
                            'images/user.png',
                            color: Color(0xFFFFFFDE),
                          )),
                      Text(
                        'Change account name',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFFFFFDE),
                            decoration: TextDecoration.none),
                      ),
                      Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
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
                          padding: EdgeInsets.only(left: 5.0, right: 5.0),
                          child: Image.asset(
                            'images/key.png',
                            color: Color(0xFFFFFFDE),
                          )),
                      Text(
                        'Enable password',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFFFFFDE),
                            decoration: TextDecoration.none),
                      ),
                      Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
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
                          padding: EdgeInsets.only(left: 5.0, right: 5.0),
                          child: Image.asset(
                            'images/camera.png',
                            color: Color(0xFFFFFFDE),
                          )),
                      Text(
                        'Change account Image',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFFFFFDE),
                            decoration: TextDecoration.none),
                      ),
                      Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.keyboard_arrow_right,
                          size: 40,
                        ),
                      )
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0, left: 5.0),
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
                          padding: EdgeInsets.only(left: 5.0, right: 5.0),
                          child: Image.asset(
                            'images/menu.png',
                            color: Color(0xFFFFFFDE),
                          )),
                      Text(
                        'About US',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFFFFFDE),
                            decoration: TextDecoration.none),
                      ),
                      Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
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
                          padding: EdgeInsets.only(left: 5.0, right: 5.0),
                          child: Image.asset(
                            'images/flash.png',
                            color: Color(0xFFFFFFDE),
                          )),
                      Text(
                        'Help & Feedback',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFFFFFDE),
                            decoration: TextDecoration.none),
                      ),
                      Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
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
                          padding: EdgeInsets.only(left: 5.0, right: 5.0),
                          child: Image.asset(
                            'images/like.png',
                            color: Color(0xFFFFFFDE),
                          )),
                      Text(
                        'Support US',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFFFFFDE),
                            decoration: TextDecoration.none),
                      ),
                      Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
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
                          color: Color(0xFFFF4949),
                        ),
                      ),
                      Text(
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
