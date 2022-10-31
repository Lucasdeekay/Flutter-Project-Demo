import 'package:flutter/material.dart';

class AppBarTextWidget extends StatelessWidget {
  final String _text;

  const AppBarTextWidget(this._text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
          _text,
          style: const TextStyle(
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
          )
        ),
    );
  }
}
