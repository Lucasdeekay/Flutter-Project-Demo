import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget textSection = Column(
  mainAxisAlignment: MainAxisAlignment.start,
  crossAxisAlignment: CrossAxisAlignment.stretch,
  children: [
    Container(
      padding: const EdgeInsets.all(12.0),
      child: const Text(
        'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
        'Alps. Situated 1,578 meters above sea level, it is one of the '
        'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
        'half-hour walk through pastures and pine forest, leads you to the '
        'lake, which warms to 20 degrees Celsius in the summer. Activities '
        'enjoyed here include rowing, and riding the summer toboggan run.',
        style: TextStyle(
          fontWeight: FontWeight.normal,
        ),
        softWrap: true,
      ),
    ),
  ],
);
