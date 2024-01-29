import 'package:flutter/material.dart';
import 'package:nothing/Intro2.dart';

class Intro1 extends StatelessWidget {
  const Intro1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: TextButton(
                onPressed: () {},
                child: const Text(
                  'SKIP',
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 20, color: Colors.white),
                )),
          ),
          Container(
              margin: const EdgeInsets.only(top: 25),
              child: Image.asset("images/members.png")),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 60, left: 15),
                child: Container(
                  margin: const EdgeInsets.only(right: 10),
                  width: 35,
                  height: 5,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60),
                child: Container(
                  margin: const EdgeInsets.only(right: 10),
                  width: 35,
                  height: 5,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60),
                child: Container(
                  margin: const EdgeInsets.only(right: 20),
                  width: 35,
                  height: 5,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(20)),
                ),
              )
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 30),
            child: const Text(
              'Create daily routine',
              style: TextStyle(
                fontSize: 40,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
            child: const Text(
              'In uptodo you can create your personalized routine to stay productive',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              textAlign: TextAlign.center,
            ),
          ),
          Row(
            children: [
              Padding(
                  padding: const EdgeInsets.only(top: 100, left: 10),
                  child: TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: const ButtonStyle(
                      shape: MaterialStatePropertyAll(BeveledRectangleBorder()),
                    ),
                    child: const Text(
                      'BACK',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  )),
              Padding(
                  padding: const EdgeInsets.only(top: 100, left: 260),
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Intro2()));
                      },
                      style: const ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Color(0XFFFF00A8)),
                        shape: MaterialStatePropertyAll(
                            ContinuousRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)))),
                      ),
                      child: const Text(
                        'NEXT',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      )))
            ],
          ),
        ],
      ),
    ));
  }
}
