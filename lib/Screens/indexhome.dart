import 'package:flutter/material.dart';
import 'package:nothing/custom/BottomNavigationBar.dart';

class IndexHome extends StatelessWidget {
  const IndexHome({super.key});

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
              // index
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image(
                    image: AssetImage(
                      "images/menu.png",
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
                padding: const EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: const Color(0xFF363636)),
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
