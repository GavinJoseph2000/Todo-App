import 'package:flutter/material.dart';
import 'package:nothing/custom/BottomNavigationBar.dart';

class IndexScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 80, left: 25, right: 25),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image(image: AssetImage("images/sortmenu.png")),
                Text(
                  'Index',
                  style: TextStyle(fontSize: 30),
                ),
                Icon(Icons.person)
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 100),
            child: const Column(children: [
              Image(image: AssetImage("images/checklist.png")),
              Text(
                'What do you want to do today?',
                style: TextStyle(fontSize: 25),
              ),
              SizedBox(height: 20),
              Text(
                'Tap + to add your tasks',
                style: TextStyle(fontSize: 20),
              )
            ]),
          ),
        ],
      ),
      bottomNavigationBar: const bottomNavigationBar(),
    );
  }

  //
}
