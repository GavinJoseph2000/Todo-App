import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todos/Screens/indexhome.dart';
import 'package:todos/Screens/onboarding.dart';


class Intro extends StatelessWidget {
  const Intro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Align(
                alignment: Alignment.topLeft,
                child: TextButton(
                  onPressed: () {
                    Get.to( IndexHome());
                  },
                  child: const Text(
                    'SKIP',
                    style:
                        TextStyle(height: 5, color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
              Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: Image.asset("images/manage.png")),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 50, left: 100),
                    child: Container(
                      margin: const EdgeInsets.only(right: 10),
                      height: 5,
                      width: 35,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Container(
                      margin: const EdgeInsets.only(right: 10),
                      height: 5,
                      width: 35,
                      decoration: const BoxDecoration(
                        color: Colors.white38,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50, right: 80),
                    child: Container(
                      margin: const EdgeInsets.only(right: 10),
                      height: 5,
                      width: 35,
                      decoration: const BoxDecoration(
                        color: Colors.white24,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
                child: const Text(
                  'Manage your tasks',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 2),
                child: const Text(
                  'You can easily manage all of your tasks daily tasks in DoMe for free',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 2,
                      child: Container(
                        decoration: BoxDecoration(border: Border.all()),
                        margin: const EdgeInsets.only(left: 250, top: 60),
                        height: 40,
                        child: TextButton(
                          onPressed: () {
                            Get.to(const Onboarding());
                          },
                          style: const ButtonStyle(
                              shape: MaterialStatePropertyAll(
                                  ContinuousRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(5)))),
                              backgroundColor:
                                  MaterialStatePropertyAll(Color(0XFFA020F0))),
                          child: const Text(
                            'NEXT',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
