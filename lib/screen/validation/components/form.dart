import 'package:flutter/material.dart';
import 'package:new_app/components/button.dart';
import 'package:new_app/screen/validation/components/input_field.dart';

class LoginFormWidget extends StatefulWidget {
  const LoginFormWidget({Key? key}) : super(key: key);

  @override
  State<LoginFormWidget> createState() => _LoginFormWidgetState();
}

class _LoginFormWidgetState extends State<LoginFormWidget> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  var msg = "";

  void _displayDetails() {
    setState(() {
      msg =
      "My name is ${_nameController.text} and my email is ${_emailController.text}";
    });
  }


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: SingleChildScrollView(
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Form(
                    key: formKey,
                    child: Column(
                      children: [
                        InputWidget("Full Name", "Enter Your Name", Icons.person,
                            _nameController, TextInputType.text),
                        const SizedBox(
                          height: 12,
                        ),
                        InputWidget("Email Address", "Enter Your Email Address",
                            Icons.mail, _emailController, TextInputType.emailAddress),
                        const SizedBox(
                          height: 12,
                        ),
                        Center(
                          child: ButtonWidget("Login", _displayDetails),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );

  }
}
