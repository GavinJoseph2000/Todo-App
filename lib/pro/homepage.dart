import 'package:flutter/material.dart';
import 'package:nothing/pro/icon.dart';
import 'package:nothing/pro/tile.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[700],
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
        BottomNavigationBarItem(icon: Icon(Icons.person_3), label: 'Profile'),
      ]),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Hi, kusuma!
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Hi,Kusuma!',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          '24 Jan 2024',
                          style: TextStyle(color: Colors.blue[200]),
                        ),
                      ],
                    ),

                    // notification
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.blue[600],
                          borderRadius: BorderRadius.circular(12)),
                      padding: EdgeInsets.all(12),
                      child: const Icon(
                        Icons.notifications,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),

                const SizedBox(
                  height: 25,
                ),
                // Search bar
                Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      color: Colors.blue[600],
                      borderRadius: BorderRadius.circular(12)),
                  child: const Row(
                    children: [
                      Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Search',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                // how do you feel?
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'How do you feel?',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.more_horiz,
                      color: Colors.white,
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                // Icons
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [Icon1(), Icon1(), Icon1(), Icon1(), Icon1()],
                ),
              ]),
            ),
            const SizedBox(
              height: 25,
            ),
            // second container
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25)),
                  color: Colors.grey[200],
                ),
                // exercises heading

                child: Padding(
                  padding: EdgeInsets.all(25.0),
                  child: Column(
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Exercises',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Icon(Icons.more_horiz)
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      // Exercise tile
                      Expanded(
                        child: ListView(
                          children: const [
                            ExerciseTile(
                              color: Colors.orange,
                              icon: Icons.favorite,
                              exercisename: 'Speaking skills',
                              noOfexercises: '16',
                            ),
                            ExerciseTile(
                              color: Colors.blue,
                              icon: Icons.person,
                              exercisename: 'Reading speed',
                              noOfexercises: '8',
                            ),
                            ExerciseTile(
                              color: Colors.pink,
                              icon: Icons.star,
                              exercisename: 'Writing skills',
                              noOfexercises: '10',
                            ),
                            ExerciseTile(
                              color: Colors.green,
                              icon: Icons.speaker_notes,
                              exercisename: 'Communication skills',
                              noOfexercises: '17',
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
