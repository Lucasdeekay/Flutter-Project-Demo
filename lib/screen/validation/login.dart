import 'package:flutter/material.dart';
import 'package:new_app/components/appbar.dart';
import 'package:new_app/screen/validation/components/form.dart';

import '../../components/drawer.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = '/login';
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniStartDocked,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/hannah-rodrigo-mf_3yZnC6ug-unsplash.jpg',
            fit: BoxFit.cover,
            color: Colors.black.withOpacity(0.7),
            colorBlendMode: BlendMode.darken,
          ),
          const LoginFormWidget(),
        ],
      ),
    );
  }
}
