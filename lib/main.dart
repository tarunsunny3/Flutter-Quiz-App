import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

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
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: _curr < questions.length ? Quiz(questions, _curr, _checkAnswer) : Result(),
      ),
    );
  }
}
