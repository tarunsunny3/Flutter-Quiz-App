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
  final questions = const [
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
  int _curr = 0;
  void _checkAnswer() {
    setState(() {
      _curr = _curr + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: _curr < questions.length
            ? Column(
                children: [
                  Question(questions[_curr]["question"]),
                  ...(questions[_curr]['options'] as List<String>).map((option) {
                    return Answer(_checkAnswer, option);
                  }).toList()
                ],
              )
            : Center(
                child: Text("Hey, Nice work we are done with the QUIZ"),
              ),
      ),
    );
  }
}
