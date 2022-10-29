import 'package:flutter/material.dart';

Widget icon = const Icon(
  Icons.star,
  color: Colors.black,
);

Widget iconList = Container(
  padding: const EdgeInsets.all(10.0),
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.only(right: 8.0),
            child: Row(
              children: [
                icon,
                icon,
                icon,
                icon,
                icon,
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 8.0),
            child: const Text("195 reviews"),
          ),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.min,
        children: [
          _infoColumn(Icons.kitchen, "PREP", "25 mins"),
          _infoColumn(Icons.timer, "COOK", "1 hr"),
          _infoColumn(Icons.restaurant, "FEED", "4 - 6"),
        ],
      ),
    ],
  ),
);

Widget title = Container(
  padding: const EdgeInsets.all(10.0),
  child: const Text(
    "Friendly Game",
    style: TextStyle(
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.italic,
    ),
  ),
);

Widget subtitle = const SizedBox(
  width: 230.0,
  child: Text(
    "This is a game that brings the family together to build "
    "togetherness, love and oneness.",
    softWrap: true,
  ),
);

Container _infoColumn(IconData icon, String label, String duration) {
  return Container(
    padding: const EdgeInsets.fromLTRB(8.0, 12.0, 8.0, 12.0),
    child: Column(
      children: [
        Icon(
          icon,
          color: Colors.green,
        ),
        Container(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text("$label:"),
        ),
        Container(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text(duration),
        ),
      ],
    ),
  );
}

Widget leftColumn = Container(
  padding: const EdgeInsets.all(10.0),
  child: Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      title,
      subtitle,
      iconList,
    ],
  ),
);

Widget imageColumn = Expanded(
  child: Image.asset(
    "assets/images/hannah-rodrigo-mf_3yZnC6ug-unsplash.jpg",
  ),
);

Widget imageCardSection = Center(
  child: Container(
    padding: const EdgeInsets.all(10.0),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        leftColumn,
        imageColumn,
      ],
    ),
  ),
);
