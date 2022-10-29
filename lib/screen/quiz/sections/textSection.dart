import 'package:flutter/material.dart';

class TextSection extends StatelessWidget {

  final String _text;
  const TextSection(this._text, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Text(
        _text,
        style: const TextStyle(
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.bold,
          fontSize: 24,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
