import 'package:flutter/material.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:new_app/screen/list.dart';
import 'package:new_app/screen/location/location_detail.dart';

import 'package:new_app/screen/quiz/quiz.dart';
import 'package:new_app/screen/validation/login.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'My App',
      initialRoute: LocationScreen.routeName,
      theme: FlexThemeData.light(
        scheme: FlexScheme.aquaBlue,
      ),
      routes: {
        LocationScreen.routeName: (context) => const LocationScreen(),
        QuizScreen.routeName: (context) => const QuizScreen(),
        LoginScreen.routeName: (context) => const LoginScreen(),
        ListScreen.routeName: (context) => const ListScreen(),
      },
    );
  }
}