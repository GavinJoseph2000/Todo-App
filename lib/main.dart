import 'package:flutter/material.dart';
import 'package:nothing/Login1.dart';
import 'package:nothing/buttons.dart';
import 'package:nothing/custom/BottomNavigationBar.dart';
import 'package:nothing/custom/task.dart';

import 'package:nothing/indexscreen.dart';
import 'package:nothing/index.dart';
import 'package:nothing/pro/homepage.dart';

import 'package:nothing/splashscreen.dart';
import 'package:nothing/splashscreen1.dart';
import 'package:nothing/startscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        home: Index());
  }
}
