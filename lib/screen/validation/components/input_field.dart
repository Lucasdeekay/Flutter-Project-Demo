import 'package:flutter/material.dart';

class InputWidget extends StatelessWidget {
  final TextEditingController _inputController;
  final String _label;
  final String _hintText;
  final IconData _icon;
  final TextInputType _keyboardType;

  const InputWidget(this._label, this._hintText, this._icon,
      this._inputController, this._keyboardType,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: TextFormField(
        controller: _inputController,
        decoration: InputDecoration(
          label: Text(_label),
          hintText: _hintText,
          icon: Icon(_icon),
        ),
        keyboardType: _keyboardType,
        keyboardAppearance: Brightness.dark,
        onTap: () => {},
      ),
    );
  }
}
