import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../todolist.dart';

class Menubar extends StatefulWidget {
  const Menubar({super.key});

  @override
  State<Menubar> createState() => _MenubarState();
}

class _MenubarState extends State<Menubar> {
  @override
  Widget build(BuildContext context) {
    return Container(
          color: Colors.purple[200],
          child: ListView(
            children:  [
              const DrawerHeader(child: Image(image: AssetImage("images/uptodo.png"))),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(children: [
                    const Icon(Icons.task),
                    TextButton(
                      onPressed: () {
                        Get.put(TodoListPage());
                      },
                      child: const Text(
                        'Todo list',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ],),
              )
            ],
          ),
        );
  }   
}