import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final Function playAgain;
  Result({this.score, this.playAgain});
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Center(
        child: Container(padding: EdgeInsets.all(10), child: Text("Your score is \$score", style: TextStyle(color: Colors.deepOrange, fontSize: 30, fontWeight: FontWeight.bold))),
      ),
      ElevatedButton(
        style: ButtonStyle(foregroundColor: MaterialStateProperty.all(Colors.white)),
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Text(
            'Play again',
            style: TextStyle(fontSize: 30),
          ),
        ),
        onPressed: playAgain,
      )
    ]);
  }
}
