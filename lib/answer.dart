import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answerClickHandler;
  final String optionText;
  Answer(this.answerClickHandler, this.optionText);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: RaisedButton(
          textColor: Colors.white,
          color: Colors.purpleAccent,
          child: Text(optionText),
          onPressed: answerClickHandler,
        ));
  }
}
