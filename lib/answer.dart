import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answerClickHandler;
  final String optionText;
  Answer(this.answerClickHandler, this.optionText);
  @override
  Widget build(BuildContext context) {
    return Container(width: double.infinity, margin: EdgeInsets.all(10), child: ElevatedButton(child: Text(optionText), onPressed: answerClickHandler));
  }
}
