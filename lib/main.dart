import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todos/Screens/indexhome.dart';
import 'package:todos/Screens/splashscreen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      theme: ThemeData.dark(),
    );
  }
}
