import 'package:flutter/material.dart';

import '../../components/drawer.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  var msg = "";

  void _displayDetails() {
    setState(() {
      msg = "My name is ${_nameController.text} and my email is ${_emailController.text}";
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Tourism & Co"),
        ),
      ),
      drawer: const DrawerWidget(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(60.0),
          child: SingleChildScrollView(
            child: Card(
              child: Column(
                children: [
                  Image.asset(
                      "assets/images/hannah-rodrigo-mf_3yZnC6ug-unsplash.jpg"),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(4.0, 16.0, 4.0, 4.0),
                    child: TextField(
                      controller: _nameController,
                      decoration: const InputDecoration(
                        label: Text("Full Name"),
                        hintText: "Enter Your Name",
                        border: OutlineInputBorder(),
                        icon: Icon(Icons.person),
                      ),
                      keyboardType: TextInputType.text,
                      keyboardAppearance: Brightness.dark,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: TextField(
                      controller: _emailController,
                      decoration: const InputDecoration(
                        label: Text("Email Address"),
                        hintText: "Enter Your Email Address",
                        border: OutlineInputBorder(),
                        icon: Icon(Icons.mail),
                      ),
                      keyboardType: TextInputType.emailAddress,
                      keyboardAppearance: Brightness.dark,
                      onTap: () => {},
                    ),
                  ),
                  Center(
                    child: ElevatedButton(
                      onPressed: _displayDetails,
                      child: const Text("Login"),
                    ),
                  ),
                  Text(msg),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
