import 'package:flutter/material.dart';

import 'package:new_app/screen/quiz/sections/appBarSection.dart';
import 'package:new_app/screen/quiz/sections/bodySection.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarSection,
      body: const BodySection(),
    );
  }
}
