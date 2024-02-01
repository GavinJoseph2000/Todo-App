import 'package:flutter/material.dart';
import 'package:nothing/custom/BottomNavigationBar.dart';
import 'package:nothing/indexlist.dart';

class Index extends StatelessWidget {
  const Index({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: bottomNavigationBar(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // index
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image(
                    image: AssetImage(
                      "images/sortmenu.png",
                    ),
                  ),
                  Text(
                    "Index",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                  Icon(Icons.person)
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              // search
              Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.all(Radius.circular(5))),
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
                      'Search for yor task...',
                      style: TextStyle(fontSize: 17),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              // today
              Container(
                padding: EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color(0xFF363636)),
                width: 80,
                height: 40,
                child: const Row(
                  children: [
                    Text('Today'),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(Icons.keyboard_arrow_down)
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              // list view,
            ],
          ),
        ),
      ),
    );
  }
}
