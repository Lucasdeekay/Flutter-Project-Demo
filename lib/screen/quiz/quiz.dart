import 'package:flutter/material.dart';
import 'package:new_app/screen/quiz/sections/bodySection.dart';

import '../../components/appbar.dart';
import '../../components/drawer.dart';

class QuizScreen extends StatelessWidget {
  static const String routeName = '/quiz';
  const QuizScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarTextWidget("Quiz"),
      ),
      body: const BodySection(),
      drawer: const DrawerWidget(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pop(context),
        child: const Icon(
          Icons.arrow_back,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniStartDocked,
    );
  }
}
