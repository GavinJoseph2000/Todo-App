import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todos/Screens/profile.dart';
import 'package:todos/custom/bottomnavbar.dart';

class IndexHome extends StatelessWidget {
  IndexHome({super.key});
  final _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Image(
                    image: AssetImage(
                      "images/menu.png",
                    ),
                  ),
                  const Text(
                    "Home",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                  IconButton(icon: const Icon(Icons.person_2), onPressed:(){ Get.to(Profile()); },)
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: _controller,
                decoration: const InputDecoration(
                    hintText: 'Search for your task...',
                    prefixIcon: Icon(
                      Icons.search,
                      size: 35,
                    ),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white))),
              ),
              const SizedBox(
                height: 10,
              ),
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
            ],
          ),
        ),
      ),
    );
  }
}
