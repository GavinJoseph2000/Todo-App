import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nothing/intro.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State createState() {
    return Home3();
  }
}

class Home3 extends State {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Get.to(const Intro())
            );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          child: const Center(
            child: Image(image: AssetImage("images/Upto.png")),
          ),
 )
 );
 }
}