import 'package:flutter/material.dart';
import 'package:nothing/custom/BottomNavigationBar.dart';
import 'package:nothing/indexlist.dart';

class ListView1 extends StatelessWidget {
  const ListView1({super.key});

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
                  color: Color.fromARGB(255, 82, 74, 74),
                ),
                width: 80,
                height: 40,
                child: const Row(
                  children: [Text('Today'), Icon(Icons.arrow_drop_down)],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              // list view
              Expanded(
                child: ListView(
                  children: [
                    const IndexList(
                      text: 'Do Math Homework',
                      time: 'Today At 16:45',
                      image: 'images/mortarboard 1cap.png',
                      name: 'University',
                      num: '1',
                      color: Color(0xFF809CFF),
                    ),
                    const IndexList(
                      text: 'Tack Out Dogs',
                      time: 'Today At 18:20',
                      image: 'images/home.png',
                      name: 'Home',
                      num: '2',
                      color: Color(0xFFFF8080),
                    ),
                    const IndexList(
                      text: 'Business Meeting With CEO',
                      time: 'Today At 8:15',
                      image: 'images/briefcase.png',
                      name: 'Work',
                      num: '3',
                      color: Color(0xFFFFCC80),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 275),
                      padding: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color.fromARGB(255, 82, 74, 74),
                      ),
                      height: 40,
                      child: const Row(
                        children: [
                          Text('Completed'),
                          Icon(Icons.arrow_drop_down)
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.all(19),
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 82, 74, 74),
                          borderRadius: BorderRadius.circular(5)),
                      child: Row(
                        children: [
                          const Icon(Icons.circle),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Buy Grocery',
                                style: TextStyle(fontSize: 16),
                              ),
                              Container(child: Text('Today At 16:45')),
                              const SizedBox(
                                width: 60,
                              ),
                            ],
                          )
                        ],
                      ),
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
