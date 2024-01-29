import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[100],
        body: Center(
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                width: 200,
                height: 200,
                color: Colors.green[300],
              ),
              Positioned(
                top: -170,
                right: -30,
                child: Container(
                  width: 150,
                  height: 150,
                  color: Colors.green,
                ),
              ),
              Positioned(
                bottom: -170,
                left: -30,
                child: Container(
                  decoration: const BoxDecoration(color: Colors.pink),
                  width: 130,
                  height: 130,
                ),
              ),
            ],
          ),
        ));
  }
}
