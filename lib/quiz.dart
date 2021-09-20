import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int currQuestionIndex;
  final Function checkAnswer;

  Quiz({
    @required this.questions,
    @required this.currQuestionIndex,
    @required this.checkAnswer,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[currQuestionIndex]["question"]),
        ...(questions[currQuestionIndex]['options'] as List<String>).map((option) {
          return Answer(() => checkAnswer(option, currQuestionIndex), option);
        }).toList()
      ],
    );
  }
}
