import 'package:flutter/material.dart';

class Icon1 extends StatelessWidget {
  const Icon1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12), color: Colors.blue),
        child: const Icon(
          Icons.star,
          color: Colors.amber,
        ));
  }
}
