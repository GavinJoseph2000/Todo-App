import 'package:flutter/material.dart';

class DialogBox extends StatefulWidget {
  const DialogBox({super.key});

  @override
  State<DialogBox> createState() => DialogBoxState();
}

class DialogBoxState extends State<DialogBox> {
  void showDailog() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('title'),
            content: const TextField(),
            actions: [
              MaterialButton(
                onPressed: () {},
                child: const Text('button'),
              )
            ],
          );
        }
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      body: Center(
        child: ElevatedButton(
          onPressed: showDailog,
          // ba: Colors.deepPurple[100],
          child: const Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              'Show dialog',
              style: TextStyle(fontSize: 30),
            ),
          ),
        ),
      ),
    );
  }
}
