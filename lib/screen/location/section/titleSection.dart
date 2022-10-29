import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TitleSection extends StatefulWidget {
  const TitleSection({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _TitleSectionState();
  }
}

class _TitleSectionState extends State<TitleSection> {
  var _isLiked = true;
  var _ratingCount = 4.0;

  void _toggleRating() {
    setState(() {
      if (_isLiked) {
        _ratingCount -= 1;
        _isLiked = false;
      } else {
        _ratingCount += 1;
        _isLiked = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        padding: const EdgeInsets.all(32),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: const Text(
                      "Welcome To My World",
                      style: TextStyle(
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                const Text("This is the world I dream of",
                    style: TextStyle(
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w300,
                    )),
              ],
            )),
            GestureDetector(
              onTap: _toggleRating,
              child: Container(
                padding: const EdgeInsets.only(right: 4.0),
                child: Icon(
                  _isLiked ? Icons.star : Icons.star_border,
                  color: Colors.red,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 4.0),
              child: Text("$_ratingCount"),
            ),
          ],
        ));
  }
}
