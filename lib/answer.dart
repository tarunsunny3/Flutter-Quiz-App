import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answerClickHandler;
  Answer(this.answerClickHandler);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: RaisedButton(
          textColor: Colors.white,
          color: Colors.purpleAccent,
          child: Text("Answer"),
          onPressed: answerClickHandler,
        ));
  }
}
