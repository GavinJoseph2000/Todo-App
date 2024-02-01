import 'package:flutter/material.dart';

class IndexList extends StatelessWidget {
  final String text;
  final String time;
  final image;
  final String name;
  final String num;
  final color;
  final double boxSize;

  const IndexList(
      {super.key,
      required this.text,
      required this.time,
      required this.image,
      required this.name,
      required this.num,
      required this.color,
      required this.boxSize});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Color(0xFF363636), borderRadius: BorderRadius.circular(5)),
          child: Row(
            children: [
              Container(
                width: 17,
                height: 17,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.white),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text,
                    style: const TextStyle(fontSize: 16),
                  ),
                  Row(
                    children: [
                      Container(child: Text(time)),
                      SizedBox(
                        width: this.boxSize,
                      ),
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: color,
                        ),
                        child: Row(
                          children: [
                            Image(image: AssetImage(image)),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(name)
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        padding: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                            border: Border.all(color: Color(0XFFFF00A8)),
                            borderRadius: BorderRadius.circular(5)),
                        child: Row(
                          children: [
                            Icon(Icons.flag),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(num)
                          ],
                        ),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
