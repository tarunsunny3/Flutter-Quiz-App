import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answerClickHandler;
  final String optionText;
  Answer(this.answerClickHandler, this.optionText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(bottom: 15, left: 20, right: 20),
      child: ElevatedButton(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            optionText,
            style: TextStyle(fontSize: 20),
          ),
        ),
        onPressed: answerClickHandler,
      ),
    );
  }
}
