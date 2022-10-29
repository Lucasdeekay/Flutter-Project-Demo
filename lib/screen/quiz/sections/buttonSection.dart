import 'package:flutter/material.dart';

class ButtonSection extends StatelessWidget {
  final _function;
  final String _text;

  const ButtonSection(this._function, this._text, {super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: Colors.blue,
      ),
      onPressed: _function,
      child: Text(
        _text,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
