import 'package:flutter/material.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:new_app/screen/location/location_detail.dart';

import 'package:new_app/screen/quiz/quiz.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'My App',
      initialRoute: '/',
      theme: FlexThemeData.light(
        scheme: FlexScheme.aquaBlue,
      ),
      routes: {
        '/': (context) => const LocationScreen(),
        '/quiz': (context) => const QuizScreen(),
      },
    );
  }
}