import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final Function() _function;
  final String _text;

  const ButtonWidget(this._text, this._function, {super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: _function,
      child: Text(_text),
    );
  }
}
