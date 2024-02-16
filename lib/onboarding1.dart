import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nothing/onboarding2.dart';

class Onboarding1 extends StatelessWidget {
  const Onboarding1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Align(
                alignment: Alignment.topLeft,
                child: TextButton(
                  onPressed: () {
                    Get.to(const Onboarding2());
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
                  child: Image.asset("images/Onbd1.png")),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 50, left: 100),
                    child: Container(
                      margin: const EdgeInsets.only(right: 10),
                      height: 4,
                      width: 35,
                      decoration: const BoxDecoration(
                        color: Colors.white24,
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
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
                child: const Text(
                  'Organize your tasks',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.w700),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 2),
                child: const Text(
                  'You can organige your daily tasks by adding your tasks into separate categories ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
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
                        padding: const EdgeInsets.only(right: 80, top: 80),
                        child: TextButton(
                          onPressed: () {
                            Get.back();
                          },
                          child: const Text(
                            'Back',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        margin: const EdgeInsets.only(left: 50, top: 80),
                        height: 40,
                        child: TextButton(
                          onPressed: () {
                            Get.to(const Onboarding2());
                          },
                          style: const ButtonStyle(
                              shape: MaterialStatePropertyAll(
                                  ContinuousRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(5)))),
                              backgroundColor:
                                  MaterialStatePropertyAll(Color(0XFFA020F0))),
                          child: const Text(
                            'Get Started',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
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