import 'package:flutter/material.dart';
import 'package:new_app/components/button.dart';
import 'package:new_app/screen/quiz/sections/textSection.dart';

class BodySection extends StatefulWidget {
  const BodySection({Key? key}) : super(key: key);

  @override
  State<BodySection> createState() => _BodySectionState();
}

class _BodySectionState extends State<BodySection> {
  static const _quiz = [
    {
      'question': 'What is your favorite color?',
      'answers': ['Blue', 'Green', 'Yellow', 'Red'],
    },
    {
      'question': 'What is your favorite sport?',
      'answers': ['Football', 'Basketball', 'Volleyball'],
    },
    {
      'question': 'What is your favorite food?',
      'answers': ['Rice', 'Yam', 'Beans', 'Porridge'],
    },
  ];

  var _quizIndex = 0;

  void _updateQuestion() {
    setState(() {
      _quizIndex < _quiz.length - 1 ? _quizIndex += 1 : _quizIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextSection("${_quiz.elementAt(_quizIndex)['question']}"),
        ...(_quiz.elementAt(_quizIndex)['answers'] as List<String>)
            .map((answer) => ButtonWidget(answer, _updateQuestion)),
      ],
    );
  }
}
