import 'dart:async';

import 'package:flutter/material.dart';
import 'package:nothing/intro.dart';

class Splash1 extends StatefulWidget {
  const Splash1({super.key});

  @override
  SplashScreen1 createState() => SplashScreen1();
}

class SplashScreen1 extends State<Splash1> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => const Intro())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Colors.black,
          Color(0XFFFF00A8),
          Colors.black,
          Color.fromARGB(255, 247, 157, 187)
        ], stops: [
          0.5,
          0.3,
          0.6,
          0.4
        ], transform: GradientRotation(5))),
        child: Center(
          child: Container(
              decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.white,
                        blurRadius: 15,
                        offset: Offset(5, 5),
                        blurStyle: BlurStyle.outer,
                        spreadRadius: 3),
                    BoxShadow(
                        color: Colors.black,
                        blurRadius: 15,
                        offset: Offset(-10, -10),
                        blurStyle: BlurStyle.outer,
                        spreadRadius: 3)
                  ]),
              child: Image.asset("images/uptodo.png")),
        ),
      ),
    );
  }
}
