
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nothing/intro.dart';
import 'package:nothing/onboarding1.dart';
import 'package:nothing/onboarding2.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

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
                  child: Image.asset("images/Onbd.png")),
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
                        color: Colors.white,
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
                        color: Colors.white38,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
                child: const Text(
                  'Create daily routine',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 2),
                child: const Text(
                  'in Uptodo you can create your personalized routine to stay productive',
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
                        padding: const EdgeInsets.only(right: 80),
                        child: TextButton(
                          onPressed: () {
                            Get.to(const Intro());
                          },
                          child: const Text(
                            'BACK',
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        margin: const EdgeInsets.only(left: 50),
                        height: 40,
                        child: TextButton(
                          onPressed: () {
                             Get.to(const Onboarding1());
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) => const Onboarding1()),
                            // );
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