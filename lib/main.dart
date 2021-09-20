import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _curr = 0;
  void _checkAnswer() {
    print(_curr);
    setState(() {
      _curr = _curr + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        "question": "What is your name",
        "options": [
          "Tarun",
          "Yashi",
          "Roopa",
          "Koushik"
        ]
      },
      {
        "question": "What's your favorite color?",
        "options": [
          "Red",
          "Blue",
          "Green",
          "Black"
        ]
      },
      {
        "question": "What's your favorite animal?",
        "options": [
          "Rhino",
          "Hippo",
          "Dog",
          "Cat"
        ]
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: Column(
          children: [
            Question(questions[_curr]["question"]),
            Answer(_checkAnswer),
            Answer(_checkAnswer),
            Answer(_checkAnswer),
          ],
        ),
      ),
    );
  }
}
