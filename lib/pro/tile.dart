import 'package:flutter/material.dart';

class ExerciseTile extends StatelessWidget {
  final color;
  final icon;
  final String exercisename;
  final String noOfexercises;

  const ExerciseTile(
      {super.key,
      required this.color,
      required this.icon,
      required this.exercisename,
      required this.noOfexercises});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 25,
        ),
        Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: color,
                          borderRadius: BorderRadius.circular(12)),
                      child: Icon(
                        icon,
                        color: Colors.white,
                      )),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // title
                      Text(exercisename),
                      // subtitle
                      Text('$noOfexercises Exercises')
                    ],
                  ),
                ],
              ),
              const Icon(Icons.more_horiz),
            ],
          ),
        ),
      ],
    );
  }
}
