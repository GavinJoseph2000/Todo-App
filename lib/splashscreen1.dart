import 'dart:async';

import 'package:flutter/material.dart';
import 'package:nothing/intro.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  SplashScreen createState() => SplashScreen();
}

class SplashScreen extends State<Splash> {
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
      body: Center(child: Image.asset("images/uptodo.png")),
    );
  }
}
