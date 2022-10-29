import 'package:flutter/material.dart';

Widget buttonSection = Padding(
  padding: const EdgeInsets.all(8.0),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    mainAxisSize: MainAxisSize.min,
    children: [
      buildButton(Icons.call, Colors.lightBlue, "CALL"),
      buildButton(Icons.location_on, Colors.lightBlue, "ROUTE"),
      buildButton(Icons.share, Colors.lightBlue, "SHARE"),
    ],
  ),
);

Column buildButton(IconData icon, Color color, String label) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(
        icon,
        color: color,
      ),
      Container(
        padding: const EdgeInsets.only(top: 6.0),
        child: Text(
          label,
          style: TextStyle(
            color: color,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ],
  );
}
