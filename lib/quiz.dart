import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, List<String>>> questions;
  final int _curr;
  final Function _checkAnswer;

  Quiz(this.questions, this._curr, this._checkAnswer);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[_curr].keys.elementAt(0)),
        ...(questions[_curr]['options']).map((option) {
          return Answer(_checkAnswer, option);
        }).toList()
      ],
    );
  }
}
