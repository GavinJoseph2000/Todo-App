import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nothing/Screens/Login.dart';
import 'package:nothing/Screens/indexhome.dart';

class Onboarding2 extends StatelessWidget {
  const Onboarding2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: const BackButton(color: Colors.white),
      ),
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
              child: const Text(
                'Welcome to UPTodo',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
              child: const Text(
                'Please Login to Your to your account or create your account to continue',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 400),
              height: 50,
              width: 300,
              child: TextButton(
                onPressed: () {
                  // Get.to(const LoginPage());
                  Get.to(IndexHome());
                },
                style: const ButtonStyle(
                    shape: MaterialStatePropertyAll(ContinuousRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)))),
                    backgroundColor:
                        MaterialStatePropertyAll(Color(0XFFA020F0))),
                child: const Text(
                  'LOGIN',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 30),
              height: 50,
              width: 300,
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.deepPurple)),
              child: TextButton(
                onPressed: () {
                  // Get.to(LoginPage());
                  Get.to(IndexHome());               },
                style: const ButtonStyle(
                  shape: MaterialStatePropertyAll(ContinuousRectangleBorder(
                      borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ))),
                ),
                child: const Text(
                  'CREATE ACCOUNT',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
