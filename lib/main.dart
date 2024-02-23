import 'package:flutter/material.dart';
import 'package:get/get.dart';
<<<<<<< HEAD

import 'package:nothing/splashscreen.dart';
=======
import 'package:nothing/Screens/indexhome.dart';
import 'package:nothing/Screens/remainder.dart';
import 'package:nothing/Screens/remainder.dart';

import 'package:nothing/Screens/splashscreen.dart';
>>>>>>> d637de200ccefbaf4d620a7cb1bf936d482e0663

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
<<<<<<< HEAD
      home: const SplashScreen(),
=======
      home: Remainder(),
>>>>>>> d637de200ccefbaf4d620a7cb1bf936d482e0663
      theme: ThemeData.dark(),
    );
  }
}

