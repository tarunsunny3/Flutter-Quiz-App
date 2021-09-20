import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;

  Result({this.score});
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Center(
        child: Container(padding: EdgeInsets.all(10), child: Text("Your score is $score", style: TextStyle(color: Colors.deepOrange, fontSize: 20))),
      ),
      ElevatedButton(
        child: Text('Play again'),
        onPressed: null,
      )
    ]);
  }
}
