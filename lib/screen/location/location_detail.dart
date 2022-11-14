import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:new_app/components/appbar.dart';
import 'package:new_app/components/button.dart';
import 'package:new_app/components/drawer.dart';
import 'package:new_app/screen/list.dart';
import 'package:new_app/screen/validation/login.dart';
import '../quiz/quiz.dart';
import 'section/buttonSection.dart';
import 'section/imageSection.dart';
import 'section/textSection.dart';
import 'section/titleSection.dart';
import 'section/imageCardSection.dart';

class LocationScreen extends StatelessWidget {
  static const String routeName = '/';
  const LocationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarTextWidget("My Location"),
      ),
      drawer: const DrawerWidget(),
      body: ListView(
        children: [
          imageSection,
          const TitleSection(),
          buttonSection,
          textSection,
          imageCardSection,
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ButtonWidget(
                  "Go To Quiz",
                  () => Navigator.pushNamed(context, QuizScreen.routeName),
                ),
                ButtonWidget(
                  "Go To Login",
                  () => Navigator.pushNamed(context, LoginScreen.routeName),
                ),
                ButtonWidget(
                  "Fetch Data",
                  () => Navigator.pushNamed(context, ListScreen.routeName),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
