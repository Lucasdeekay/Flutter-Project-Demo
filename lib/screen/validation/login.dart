import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:new_app/components/appbar.dart';
import 'package:new_app/components/button.dart';
import 'package:new_app/screen/validation/components/input_field.dart';

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
  var url;
  var data;

  fetchData()async{
    var res = await http.get(url);
    data = jsonDecode(res.body);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  void _displayDetails() {
    setState(() {
      fetchData();
      msg =
          "My name is ${_nameController.text} and my email is ${_emailController.text}";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarTextWidget("Login Page"),
      ),
      drawer: const DrawerWidget(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pop(context),
        child: const Icon(
          Icons.arrow_back,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniStartDocked,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(60.0),
          child: SingleChildScrollView(
            child: Card(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 24.0),
                    child: Image.asset(
                        "assets/images/hannah-rodrigo-mf_3yZnC6ug-unsplash.jpg"),
                  ),
                  InputWidget("Full Name", "Enter Your Name",
                      Icons.person, _nameController, TextInputType.text),
                  InputWidget("Email Address", "Enter Your Email Address",
                      Icons.mail, _emailController, TextInputType.emailAddress),
                  Center(
                    child: ButtonWidget("Login", _displayDetails),
                  ),
                  Text(msg),
                  data != null ? Container() : const CircularProgressIndicator(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
