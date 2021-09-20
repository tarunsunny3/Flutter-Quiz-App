import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answerClickHandler;
  Answer(this.answerClickHandler);
  @override
  Widget build(BuildContext context) {
    return Container(width: double.infinity, child: ElevatedButton(child: Text("Answer"), onPressed: () => print("answer button is clicked")));
  }
}
