import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todos/custom/bottomnavbar.dart';

class Remainder extends StatefulWidget {
  const Remainder({super.key});

  @override
  State<Remainder> createState() => _RemainderState();
}

class _RemainderState extends State<Remainder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavBar(),
      body: SafeArea(
        child: Column(
          children: [
             Padding(
              padding: const EdgeInsets.all(25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: (){Get.back();}, 
                          icon: const Icon(Icons.arrow_back_ios)),
                  const Text(
                    "Remainders",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                  const Icon(Icons.person)
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                  color: Color(0XFF363636),
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              child: Row(
                children: [
                  const Image(image: AssetImage("images/ellipse.png")),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Expanded(
                                flex: 2,
                                child: Text(
                                  'Do Math Homework',
                                  style: TextStyle(fontSize: 18),
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                    backgroundColor: MaterialStatePropertyAll(
                                        Colors.blue[400]),
                                    shape: MaterialStatePropertyAll(
                                        ContinuousRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(15)))),
                                child: const Text(
                                  'Move',
                                  style: TextStyle(color: Colors.white),
                                ),
                              )
                            ],
                          ),
                          const Row(
                            children: [
                              Expanded(child: Text('Todat At 18:00')),
                              Text('Completed'),
                              Image(image: AssetImage("images/doublecheck.png"))
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                  color: Color(0XFF363636),
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              child: Row(
                children: [
                  const Image(image: AssetImage("images/ellipse.png")),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Expanded(
                                flex: 2,
                                child: Text(
                                  'Tack Out Dogs',
                                  style: TextStyle(fontSize: 18),
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                    backgroundColor: MaterialStatePropertyAll(
                                        Colors.blue[400]),
                                    shape: MaterialStatePropertyAll(
                                        ContinuousRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(15)))),
                                child: const Text(
                                  'Move',
                                  style: TextStyle(color: Colors.white),
                                ),
                              )
                            ],
                          ),
                          const Row(
                            children: [
                              Expanded(child: Text('Todat At 06:00')),
                              Text(
                                'Inprogress',
                                style: TextStyle(color: Colors.red),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
