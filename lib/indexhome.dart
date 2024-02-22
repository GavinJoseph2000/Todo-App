import 'package:flutter/material.dart';
import 'package:nothing/Categories.dart';
import 'package:nothing/custom/BottomNavigationBar.dart';

class IndexHome extends StatelessWidget {
 IndexHome({Key? key}) : super(key: key);
 
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const bottomNavigationBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Index header
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image(
                    image: AssetImage(
                      "images/menu.png",
                    ),
                  ),
                  Text(
                    "Home",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                  Icon(Icons.person)
                ],
              ),
              const SizedBox(
                height: 20,
            ),
              // Search bar
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: const BorderRadius.all(Radius.circular(5))),
                child: const Row(
                  children: [
                    Icon(
                      Icons.search,
                      size: 35,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Search for your task...',
                      style: TextStyle(fontSize: 17),
                    )
                  ],
                ),
              ), 
            ],
          ),
        ),
      ),
    );
  }
  }
